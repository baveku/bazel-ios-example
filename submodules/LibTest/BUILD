load("//bazel:rules_apple.bzl", "submodule_unit_test")
load("//bazel:constants.bzl", "test_host")

submodule_unit_test(
    name = "SwiftLib",
    test_host = test_host(),
    visibility = ["//visibility:public"],
    deps = [
        "//Vendor/Texture",
    ],
)
