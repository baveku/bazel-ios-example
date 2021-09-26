
load('//config:rules_carthage.bzl', 'dynamic_xcframwork', 'static_xcframework', 'dynamic_framework', 'static_framework')
dynamic_xcframwork(
	name = "AsyncDisplayKit",
	path = "Carthage/Build/AsyncDisplayKit.xcframework",
	deps = [":PINRemoteImage"]
)

dynamic_framework(
	name = "PINRemoteImage",
	path = "Carthage/Build/iOS/PINRemoteImage.framework",
	deps = [":PINCache", ":PINOperation"]
)

dynamic_framework(
	name = "PINCache",
	path = "Carthage/Build/iOS/PINCache.framework",
)

static_xcframework(
	name = "PINOperation",
	path = "Carthage/Build/PINOperation.xcframework",
)