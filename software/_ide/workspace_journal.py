# 2025-08-22T23:06:01.283048
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/top.xsa")

status = platform.build()

comp = client.get_component(name="hello_world_test")
comp.build()

status = platform.build()

comp.build()

