load("@rules_cc//cc:defs.bzl", "objc_library")

objc_library(
    name = "Pods",
    visibility = ["//visibility:public"],
    deps = [
        "//:IGListKit",
        "//Vendor/DifferenceKit",
        "//Vendor/NVActivityIndicatorView",
        "//Vendor/ObjectMapper",
        "//Vendor/Swinject",
        "//Vendor/Texture",
    ],
)

objc_library(
    name = "IGListKit",
    module_name = "IGListKit",
    visibility = ["//visibility:public"],
    deps = ["//Vendor/Texture:IGListKit"],
)
