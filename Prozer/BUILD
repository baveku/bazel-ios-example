load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application", "ios_framework")
load("//bazel:plist_fragment.bzl", "plist_fragment")
load("//bazel:constants.bzl", PRODUCT_BUNDLE_IDENTIFIER_PREFIX)

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
    name = "Prozer",
    bundle_id = "dev.josbach.prozer",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = ["Info.plist"],
    launch_storyboard = "LaunchScreen.storyboard",
    minimum_os_version = "10.0",
	deps = [":App_Classes"],
    frameworks = ["//Vendor:AsyncDisplayKit"],
    visibility = ["//visibility:public"],
)

plist_fragment(
    name = "AsyncDisplayKitInfoPlist",
    extension = "plist",
    template =
    """
    <key>CFBundleIdentifier</key>
    <string>{PRODUCT_BUNDLE_IDENTIFIER_PREFIX}.AsyncDisplayKit</string>
    <key>CFBundleDevelopmentRegion</key>
    <string>en</string>
    <key>CFBundleName</key>
    <string>AsyncDisplayKit</string>
    <key>CFBundlePackageType</key>
    <string>FMWK</string>
    """.format(
        PRODUCT_BUNDLE_IDENTIFIER_PREFIX = PRODUCT_BUNDLE_IDENTIFIER_PREFIX,
    )
)
