# 2025-06-20T02:55:24.453783
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/top.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="hello_world_test")
comp.build()

