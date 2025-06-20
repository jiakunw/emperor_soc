# 2025-06-18T23:22:33.460909
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../hardware/top.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../hardware/top.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

status = client.rescan_embedded_sw_repo()

status = client.set_embedded_sw_repo(level="LOCAL", path=["/tools/Vitis/Vitis/2024.2/data/embeddedsw"])

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../hardware/top.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

vitis.dispose()

