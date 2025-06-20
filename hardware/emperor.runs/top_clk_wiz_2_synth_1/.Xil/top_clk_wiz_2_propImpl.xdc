set_property SRC_FILE_INFO {cfile:/home/wangjiakun/Development/emperor_soc/hardware/emperor.gen/sources_1/bd/top/ip/top_clk_wiz_2/top_clk_wiz_2.xdc rfile:../../../emperor.gen/sources_1/bd/top/ip/top_clk_wiz_2/top_clk_wiz_2.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.050
