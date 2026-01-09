open_run impl_1
set_property platform.platform_state "impl" [current_project]
write_hw_platform -hw -force -fixed -static -include_bit -file kr260_static.xsa
write_hw_platform -hw -force -include_bit -rp design_top_i/VitisRegion kr260_dynamic.xsa