load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Moya",
    srcs = glob(
        [
            "Sources/Moya/**/*.swift",
            "Sources/Moya/Plugins/**/*.swift",
            "Sources/RxMoya/**/*.swift",
        ],
    ),
    module_name = "Moya",
    visibility = ["//visibility:public"],
    deps = [
        "@//Vendor/Alamofire:Alamofire",
        "@Rx//:RxSwift",
    ],
)
