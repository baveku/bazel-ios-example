
load('//config:rules_carthage.bzl', 'dynamic_xcframwork', 'static_xcframework', 'dynamic_framework', 'static_framework')
dynamic_xcframwork(
	name = "AsyncDisplayKit",
	path = "Carthage/Build/AsyncDisplayKit.xcframework",
	deps = [":PINRemoteImage"]
)

static_framework(
	name = "PINRemoteImage",
	path = "Carthage/iOS/PINRemoteImage.framework",
	deps = [":PINCache", ":PINOperation"]
)

static_framework(
	name = "PINCache",
	path = "Carthage/Build/iOS/PINCache.framework",
)

static_framework(
	name = "PINOperation",
	path = "Carthage/Build/iOS/PINOperation.framework",
)