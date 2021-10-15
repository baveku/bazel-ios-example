load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application", "ios_framework")
load("//bazel:plist_fragment.bzl", "plist_fragment")
load("//bazel:constants.bzl", "PRODUCT_BUNDLE_IDENTIFIER_PREFIX", "BUILD_NUMBER", "APP_VERSION")

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
		"//Submodules/LibTest:SwiftLib"
	]
)

ios_application(
    name = "App",
    bundle_id = "{PRODUCT_BUNDLE_IDENTIFIER_PREFIX}.app".format(PRODUCT_BUNDLE_IDENTIFIER_PREFIX = PRODUCT_BUNDLE_IDENTIFIER_PREFIX),
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [
		"Info.plist"
	],
	app_icons = glob([":Assets/Assets.xcassets/**"]),
    launch_storyboard = "LaunchScreen.storyboard",
    minimum_os_version = "10.0",
	deps = [":App_Classes"],
    visibility = ["//visibility:public"],
)
