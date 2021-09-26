load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")

filegroup(
    name = "Assets",
    srcs = glob(["Assets.xcassets/**"]),
    visibility = ["//visibility:public"],
)

swift_library(
    name = "App_Classes",
    srcs = glob(["*.swift"]),
	visibility = ["//visibility:public"],
	data = [":Assets"],
	deps = [
		"//submodules/LibTest:SwiftLib"
	]
)

ios_application(
    name = "Prozer",
    bundle_id = "dev.josbach.prozer",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = ["Info.plist"],
    launch_storyboard = "LaunchScreen.storyboard",
    minimum_os_version = "12.0",
	deps = [":App_Classes"],
    visibility = ["//visibility:public"],
)
