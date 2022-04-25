load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Comier",
    srcs = glob(
        [
            "Comier/Classes/**/*.swift",
            "Comier/Extensions/**/*.swift",
        ],
    ),
    module_name = "Comier",
    visibility = ["//visibility:public"],
    deps = [
        "@//:PodsVendor",
        "@Moya",
        "@Rx//:RxSwift",
    ],
)
