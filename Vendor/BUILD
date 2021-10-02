
load('//bazel:rules_apple.bzl', 'dynamic_xcframwork', 'static_xcframework', 'dynamic_framework', 'static_framework')

dynamic_framework(
	name = "AsyncDisplayKit",
	path = "Carthage/Build/iOS/AsyncDisplayKit.framework",
	deps = [":PINRemoteImage", ":PINCache"]
)

dynamic_framework(
	name = "PINRemoteImage",
	path = "Carthage/Build/iOS/PINRemoteImage.framework",
	deps = [":PINCache", ":PINOperation"]
)

dynamic_framework(
	name = "PINCache",
	path = "Carthage/Build/iOS/PINCache.framework",
	deps = [":PINOperation"]
)

dynamic_framework(
	name = "PINOperation",
	path = "Carthage/Build/iOS/PINOperation.framework",
)

dynamic_framework(
    name = "Comier",
    path = "Carthage/Build/iOS/Comier.framework",
    deps = [":AsyncDisplayKit", ":IGListKit", ":IGListDiffKit", ":Moya", ":NVActivityIndicatorView", ":ObjectMapper", ":Swinject", ":RxSwift", ":RxCocoa", ":DifferenceKit"]
)

dynamic_framework(
    name = "IGListKit",
    path = "Carthage/Build/iOS/IGListKit.framework"
)

dynamic_framework(
    name = "IGListDiffKit",
    path = "Carthage/Build/iOS/IGListDiffKit.framework"
)

dynamic_framework(
    name = "DifferenceKit",
    path = "Carthage/Build/iOS/DifferenceKit.framework"
)

dynamic_framework(
    name = "Alamofire",
    path = "Carthage/Build/iOS/Alamofire.framework"
)

dynamic_framework(
    name = "NVActivityIndicatorView",
    path = "Carthage/Build/iOS/NVActivityIndicatorView.framework",
    deps = [":NVActivityIndicatorViewExtended"]
)

dynamic_framework(
    name = "NVActivityIndicatorViewExtended",
    path = "Carthage/Build/iOS/NVActivityIndicatorViewExtended.framework"
)

dynamic_framework(
    name = "ObjectMapper",
    path = "Carthage/Build/iOS/ObjectMapper.framework"
)

dynamic_framework(
    name = "RxSwift",
    path = "Carthage/Build/iOS/RxSwift.framework"
)

dynamic_framework(
    name = "RxCocoa",
    path = "Carthage/Build/iOS/RxCocoa.framework",
    deps = [":RxRelay"]
)

dynamic_framework(
    name = "RxRelay",
    path = "Carthage/Build/iOS/RxRelay.framework"
)

dynamic_framework(
    name = "Moya",
    path = "Carthage/Build/iOS/Moya.framework",
    deps = [":Alamofire", ":RxMoya"]
)

dynamic_framework(
    name = "RxMoya",
    path = "Carthage/Build/iOS/RxMoya.framework",
    deps = [":RxSwift"]
)

dynamic_framework(
    name = "Swinject",
    path = "Carthage/Build/iOS/Swinject.framework"
)
