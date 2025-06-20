# 2025-06-20T01:55:45.057258
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/top.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="hello_world_test")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

