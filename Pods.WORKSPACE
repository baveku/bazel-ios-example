new_pod_repository(
    name = "Texture",
    # Undefined symbols
    # Compilation error: triggered module compilation from ObjC code
    generate_module_map = False,
    url = "https://github.com/TextureGroup/Texture/archive/3.1.0.zip",
)

new_pod_repository(
    name = "PINRemoteImage",
    generate_header_map = True,
    generate_module_map = False,
    url = "https://github.com/pinterest/PINRemoteImage/archive/3.0.3.zip",
    # PINRemoteImage_Core conditionally compiles in PINCache based on these
    # headers
    user_options = [
        "PINRemoteImage_Core.deps += //Vendor/PINCache:PINCache",
    ],
)

new_pod_repository(
    name = "PINOperation",
    generate_header_map = True,
    url = "https://github.com/pinterest/PINOperation/archive/1.2.1.zip",
)

new_pod_repository(
    name = "PINCache",
    generate_header_map = True,
    url = "https://github.com/pinterest/PINCache/archive/3.0.3.zip",
)

new_pod_repository(
    name = "IGListKit",
    generate_module_map = False,
    url = "https://github.com/Instagram/IGListKit/archive/4.0.0.zip",
)

new_pod_repository(
    name = "IGListDiffKit",
    generate_module_map = False,
    url = "https://github.com/Instagram/IGListKit/archive/4.0.0.zip",
)

new_pod_repository(
    name = "DifferenceKit",
    generate_module_map = False,
    url = "https://github.com/ra1028/DifferenceKit/archive/1.2.0.zip",
)

new_pod_repository(
    name = "ObjectMapper",
    generate_module_map = False,
    url = "https://github.com/tristanhimmelman/ObjectMapper/archive/4.2.0.zip",
)

new_pod_repository(
    name = "Swinject",
    generate_header_map = False,
    url = "https://github.com/Swinject/Swinject/archive/2.8.1.zip",
)

new_pod_repository(
    name = "PromisesSwift",
    generate_header_map = False,
    url = "https://github.com/google/promises/archive/2.0.0.zip",
)

new_pod_repository(
    name = "PromisesObjC",
    generate_header_map = False,
    url = "https://github.com/google/promises/archive/2.0.0.zip",
)

new_pod_repository(
    name = "NVActivityIndicatorView",
    generate_header_map = False,
    url = "https://github.com/ninjaprox/NVActivityIndicatorView/archive/5.1.1.zip",
)

new_pod_repository(
    name = "Alamofire",
    generate_header_map = False,
    url = "https://github.com/Alamofire/Alamofire/archive/5.6.1.zip",
)
