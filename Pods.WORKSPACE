new_pod_repository(
  name = "Texture",
  url = "https://github.com/TextureGroup/Texture/archive/3.0.0.zip",
  inhibit_warnings = True,
  # Undefined symbols
  # Compilation error: triggered module compilation from ObjC code
  generate_module_map = False,
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
  name = "PINRemoteImage",
  url = "https://github.com/pinterest/PINRemoteImage/archive/3.0.3.zip",
  # PINRemoteImage_Core conditionally compiles in PINCache based on these
  # headers
  user_options = ["PINRemoteImage_Core.deps += //Vendor/PINCache:PINCache"],
  generate_module_map = False,
  generate_header_map = True,
)

new_pod_repository(
	name = "Moya",
	url = "https://github.com/Moya/Moya/archive/15.0.0.zip",
	user_options = ["Core.deps += //Vendor/Alamofire:Alamofire", "RxSwift.deps += Vendor/RxSwift:RxSwift"],
	generate_module_map = False,
  	generate_header_map = True,
)

new_pod_repository(
	name = "Alamofire",
	url = "https://github.com/Alamofire/Alamofire/archive/5.4.3.zip",
	generate_header_map = True,
)

new_pod_repository(
	name = "RxSwift",
	url = "https://github.com/ReactiveX/RxSwift/archive/6.2.0.zip",
	generate_header_map = True,
)

new_pod_repository(
	name = "RxCocoa",
	url = "https://github.com/ReactiveX/RxSwift/archive/6.2.0.zip",
	generate_header_map = True,
)

new_pod_repository(
	name = "Comier",
	url = "https://github.com/baveku/Comier/archive/0.6.5.zip",
	install_script = """
		git submodule update --remote
		__INIT_REPO__
	""",
	generate_module_map = False,
  	generate_header_map = True,
)

new_pod_repository(
	name = "Swinject",
	url = "https://github.com/Swinject/Swinject/archive/2.8.0.zip",
	generate_header_map = False,
)


new_pod_repository(
	name = "FDFullscreenPopGesture",
	url = "https://github.com/forkingdog/FDFullscreenPopGesture/archive/1.1.zip",
	generate_header_map = True,
)

new_pod_repository(
	name = "NVActivityIndicatorView",
	url = "https://github.com/ninjaprox/NVActivityIndicatorView/archive/5.1.1.zip",
)

new_pod_repository(
	name = "DifferenceKit",
	url = "https://github.com/ra1028/DifferenceKit/archive/1.2.0.zip",
)

new_pod_repository(
	name = "ObjectMapper",
	url = "https://github.com/tristanhimmelman/ObjectMapper/archive/4.2.0.zip",
)

new_pod_repository(
	name = "RxKeyboard",
	url = "https://github.com/RxSwiftCommunity/RxKeyboard/archive/2.0.0.zip",
	user_options = ["RxKeyboard.deps += //Vendor/RxSwift:RxSwift, //Vendor/RxCocoa:RxCocoa"],
	generate_module_map = False,
  	generate_header_map = True,
)