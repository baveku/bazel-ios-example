load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "4161b2283f80f33b93579627c3bd846169b2d58848b0ffb29b5d4db35263156a",
    url = "https://github.com/bazelbuild/rules_apple/releases/download/0.34.0/rules_apple.0.34.0.tar.gz",
)

http_archive(
    name = "rules_pods",
    sha256 = "d697642a6ca9d4d0441a5a6132e9f2bf70e8e9ee0080c3c780fe57e698e79d82",
    urls = ["https://github.com/pinterest/PodToBUILD/releases/download/4.0.0-5787125/PodToBUILD.zip"],
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

http_archive(
    name = "Rx",
    build_file = "@//Pods/RxSwift:BUILD",
    sha256 = "64d79e18d200ad5fd122e4c74faae8fa7909287ba4942b71cc060fd4e45d8162",
    strip_prefix = "RxSwift-6.5.0",
    url = "https://github.com/ReactiveX/RxSwift/archive/6.5.0.zip",
)

http_archive(
    name = "Comier",
    build_file = "@//Pods/Comier:BUILD",
    sha256 = "7b05d9dac52979c9fbf79222999040fbbad42242c0649dc2db1721c6575aeaef",
    strip_prefix = "Comier-0.8.0",
    url = "https://github.com/baveku/Comier/archive/0.8.0.zip",
)

http_archive(
    name = "Moya",
    build_file = "@//Pods/Moya:BUILD",
    sha256 = "68cfa3b5c7914899f0c7e9f7c0dd5aa4ed62daedd3b16948d5c5a80d0a72fd2a",
    strip_prefix = "Moya-15.0.0",
    url = "https://github.com/Moya/Moya/archive/15.0.0.zip",
)
