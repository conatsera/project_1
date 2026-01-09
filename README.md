# WIP KR260 DFX Vitis base platform

## NOTE:
 There are still some unresolved issues that result in occassional stalls at the queue.enqueueTask call as well as during the cl::Program creation (more specifically xclbin programming) when switching to a new kernel. Neither of these stalls has been reliably repeatable. I've put off debugging them for now as I'd like to focus on learning Vitis HLS now that the platform works most of the time. You will likely need to reboot if either stall occurs.

## Steps
### All steps assume the project directory is the working directory, adjust paths as needed
1. Generate bitstreams with vivado.
2. Run `source project_1.srcs/utils_1/create_platform.tcl` in the TCL console to generate kr260_static.xsa and kr260_dynamic.xsa
3. 1. Clone my system-device-tree-xlnx repo to get support for multiple rgmii-to-gmii converter PHYs and a few bug fixes: `git clone https://github.com/conatsera/system-device-tree-xlnx`
3. 2. Run `export CUSTOM_SDT_REPO=path/to/conatsera/system-device-tree-xlnx && sdtgen -xsa kr260_static.xsa -dir path/to/yocto/build/kr260_dts -board_dts zynqmp-sck-kr-g-revb -zocl enable -user_dts user.dtsi`
4. 1. Enter your AMD EDF yocto build environment `cd path/to/yocto`
4. 2. Clone my yocto layer or substitute your own as long as you've made changes that accomplish what I've done in recipes-bsp/image-recovery and recipes-bsp/u-boot: `git clone https://github.com/conatsera/meta-kr260 sources/meta-kr260`
4. 3. Append this layer (and/or your own layer(s)) to `path/to/yocto/build/conf/bblayers.conf`
4. 4. Make adjustments to `path/to/yocto/build/conf/local.conf`
5. Generate the custom machine configuration with a yaml template  `gen-machine-conf --template gen-machine-conf.yaml`. I have found it simpler to avoid using `-g dfx` and instead manually override `MACHINE_FEATURES` with `fpga-overlay`. With `-g dfx`, any changes in user.dtsi don't apply to the generated pl.dtsi. example template:
```yaml
args:
    - --hw-description kr260_dts
    - --machine-name my-k26-smk-sdt
    - -c conf
    - -l conf/local.conf
kconfig:
    CONFIG_YOCTO_BBMC_CORTEXR5_0_BAREMETAL: y
    CONFIG_YOCTO_BBMC_CORTEXR5_1_BAREMETAL: y
    CONFIG_YOCTO_INCLUDE_MACHINE_NAME: include/k26-sm.inc
machine:
    post:
        MACHINE_FEATURES:
            op: '+='
            val: 'mali400 vcu fpga-overlay'
        IMAGE_FSTYPES:remove:
            op: '='
            val: 'cpio cpio.gz cpio.bz2 cpio.xz cpio.lzma cpio.lz4 cpio.gz.u-boot'
        IMAGE_FSTYPES_DEBUGFS:remove:
            op: '='
            val: 'cpio cpio.gz cpio.bz2 cpio.xz cpio.lzma cpio.lz4 cpio.gz.u-boot'
        PACKAGE_INSTSALL:append:
            op: '='
            val: ' tcf-agent packagegroup-opencv xrt xrt-dev xrt-dbg xrt-src zocl zocl-dbg zocl-src opencl-headers-dev opencl-clhpp-dev'

```
6. Run `bitbake xilinx-bootbin` to generate the components required for Vitis. Vitis won't actually use these for Kria, but they're required nonetheless.
7. Create the vitis DFX platform project using the python API. This can be done interactively or saved as a script that you can launch from the Vitis IDE terminal
```python
import vitis
import os

client = vitis.create_client()
client.update_workspace(path=os.getcwd())

advanced_options = client.create_advanced_options_dict(board_dtsi="zynqmp-sck-kr-g-revb",user_dtsi="/home/austin/xilinx/projects/project_1/user.dtsi",dt_overlay="1",dt_zocl="1")
rp_info_args = client.add_rp_info_args(rp_xsa_path="path/to/kr260_dynamic.xsa")
platform = client.create_platform_component(
    name = "kr260_dynamic_dfx",
    hw_design = "path/to/kr260_static.xsa",
    os = "linux",
    cpu = "psu_cortexa53",
    domain_name = "xrt",
    generate_dtb=True, 
    advanced_options = advanced_options,
    rp_info_args = rp_info_args,
    fsbl_path="path/to/yocto/build/tmp/deploy/images/my-k26-smk-sdt/boot.bin-extracted/fsbl.elf",
    hw_boot_bin="path/to/yocto/build/tmp/deploy/images/my-k26-smk-sdt/boot.bin",
    no_boot_bsp=True,
    pmufw_Elf="path/to/yocto/build/tmp/deploy/images/my-k26-smk-sdt/boot.bin-extracted/pmufw.elf")
platform = client.get_component(name = "kr260_dynamic_dfx")

domain = platform.get_domain(name = "xrt")
status = domain.set_boot_dir(path="path/to/yocto/build/tmp/deploy/images/my-k26-smk-sdt/boot.bin-extracted/")
status = domain.update_hw_boot_bin(path="path/to/yocto/build/tmp/deploy/images/my-k26-smk-sdt/boot.bin")
status = domain.set_bif("path/to/build/tmp/deploy/images/my-k26-smk-sdt/boot.bin-extracted/bootgen.bif")
platform.build()
```
8. If you are rebuilding a platform and haven't changed anything for embedded host packages, skip to step 11.
8. 1. Build a yocto SDK for Vitis to use with system projects: `bitbake kria-image-full-cmdline -c do_populate_sdk`. 
8. 2. Install the yocto SDK `./tmp/deploy/sdk/amd-edf-glibc-x86_64-kria-image-full-cmdline-cortexa72-cortexa53-*.sh -d path/to/install/sdk`
9. Finally build the sd card image: `bitbake kria-image-full-cmdline`. While this builds, you can create and build system projects in Vitis. Examples using opencv will need `${SYSROOT}/usr/include/opencv4` added to the include paths for the _host sub-project.
