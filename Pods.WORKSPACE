new_pod_repository(
  name = "Texture",
  url = "https://github.com/TextureGroup/Texture/archive/3.0.0.zip",
  inhibit_warnings = True,
  # Undefined symbols
  # Compilation error: triggered module compilation from ObjC code
  generate_module_map = False,
)

new_pod_repository(
  name = "PINRemoteImage",
  url = "https://github.com/pinterest/PINRemoteImage/archive/3.0.3.zip",
  # PINRemoteImage_Core conditionally compiles in PINCache based on these
  # headers
  user_options = ["Core.deps += //Vendor/PINCache:PINCache"],
  generate_module_map = False,
  generate_header_map = True,
)

new_pod_repository(
  name = "PINOperation",
  url = "https://github.com/pinterest/PINOperation/archive/1.2.1.zip",
  generate_header_map = True
)

new_pod_repository(
  name = "PINCache",
  url = "https://github.com/pinterest/PINCache/archive/3.0.3.zip",
  generate_header_map = True
)

new_pod_repository(
	name = "Moya",
	url = "https://github.com/Moya/Moya/archive/15.0.0.zip",
	user_options = ["Core.deps += //Vendor/Alamofire:Alamofire"],
	generate_module_map = False,
  	generate_header_map = True,
)

new_pod_repository(
	name = "Alamofire",
	url = "https://github.com/Alamofire/Alamofire/archive/5.4.3.zip"
)