# 2025-08-13T15:26:55.340811
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/top.xsa")

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/top.xsa")

status = platform.build()

