load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("//bazel:constants.bzl", "app_name", "bundle_id")

filegroup(
    name = "Assets",
    srcs = glob(["Assets.xcassets/**"]),
    visibility = ["//visibility:public"],
)

swift_library(
    name = "App_Classes",
    srcs = glob(["*.swift"]),
    data = [":Assets"],
    visibility = ["//visibility:public"],
    deps = [
        "//Vendor/Texture",
    ],
)

ios_application(
    name = app_name(scheme = "develop"),
    app_icons = glob([":Assets/Assets.xcassets/**"]),
    bundle_id = bundle_id(scheme = "develop"),
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [
        "Info.plist",
    ],
    launch_storyboard = "LaunchScreen.storyboard",
    minimum_os_version = "10.0",
    visibility = ["//visibility:public"],
    deps = [":App_Classes"],
)

ios_application(
    name = app_name(scheme = "staging"),
    app_icons = glob([":Assets/Assets.xcassets/**"]),
    bundle_id = bundle_id(scheme = "staging"),
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [
        "Info.plist",
    ],
    launch_storyboard = "LaunchScreen.storyboard",
    minimum_os_version = "10.0",
    visibility = ["//visibility:public"],
    deps = [":App_Classes"],
)

ios_application(
    name = app_name(scheme = "release"),
    app_icons = glob([":Assets/Assets.xcassets/**"]),
    bundle_id = bundle_id(scheme = "release"),
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [
        "Info.plist",
    ],
    launch_storyboard = "LaunchScreen.storyboard",
    minimum_os_version = "10.0",
    visibility = ["//visibility:public"],
    deps = [":App_Classes"],
)
