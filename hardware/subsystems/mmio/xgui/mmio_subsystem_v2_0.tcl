# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "NUM_INPUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_OUTPUT" -parent ${Page_0}


}

proc update_PARAM_VALUE.NUM_INPUT { PARAM_VALUE.NUM_INPUT } {
	# Procedure called to update NUM_INPUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_INPUT { PARAM_VALUE.NUM_INPUT } {
	# Procedure called to validate NUM_INPUT
	return true
}

proc update_PARAM_VALUE.NUM_OUTPUT { PARAM_VALUE.NUM_OUTPUT } {
	# Procedure called to update NUM_OUTPUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_OUTPUT { PARAM_VALUE.NUM_OUTPUT } {
	# Procedure called to validate NUM_OUTPUT
	return true
}


proc update_MODELPARAM_VALUE.NUM_INPUT { MODELPARAM_VALUE.NUM_INPUT PARAM_VALUE.NUM_INPUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_INPUT}] ${MODELPARAM_VALUE.NUM_INPUT}
}

proc update_MODELPARAM_VALUE.NUM_OUTPUT { MODELPARAM_VALUE.NUM_OUTPUT PARAM_VALUE.NUM_OUTPUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_OUTPUT}] ${MODELPARAM_VALUE.NUM_OUTPUT}
}

