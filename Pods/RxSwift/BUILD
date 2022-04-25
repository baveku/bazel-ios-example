load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
# Based on RxSwift.podspec

swift_library(
    name = "RxSwift",
    srcs = glob(
        [
            "Platform/**/*.swift",
            "RxSwift/**/*.swift",
        ],
        exclude = ["RxSwift/Platform/**/*.swift"],
    ),
    module_name = "RxSwift",
    visibility = ["//visibility:public"],
)

# Based on RxCocoa.podspec

swift_library(
    name = "RxCocoa",
    srcs = glob(
        [
            "Platform/**/*.swift",
            "RxCocoa/**/*.{swift,h,m}",
        ],
        exclude = ["RxCocoa/Platform/**/*.swift"],
    ),
    module_name = "RxCocoa",
    visibility = ["//visibility:public"],
    deps = [":RxSwift"],
)
