
load('//bazel:rules_apple.bzl', 'dynamic_xcframwork', 'static_xcframework', 'dynamic_framework', 'static_framework')
dynamic_xcframwork(
	name = "AsyncDisplayKit",
	path = "Carthage/Build/AsyncDisplayKit.xcframework",
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

dynamic_xcframwork(
	name = "PINOperation",
	path = "Carthage/Build/PINOperation.xcframework",
)


