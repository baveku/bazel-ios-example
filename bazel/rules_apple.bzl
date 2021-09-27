load(
    "@build_bazel_rules_apple//apple:ios.bzl",
    "ios_application",
    "ios_unit_test",
)

load(
    "@build_bazel_rules_apple//apple:apple.bzl", 
    "apple_dynamic_framework_import",
    "apple_static_framework_import",
)

load(
    "@build_bazel_rules_swift//swift:swift.bzl", 
    "swift_library",
)

load(
    "//bazel:configs.bzl", 
    "swift_library_compiler_flags",
)

load(
    "//bazel:constants.bzl", 
    "SWIFT_VERSION",
    "MINIMUM_OS_VERSION",
    "PRODUCT_BUNDLE_IDENTIFIER_PREFIX",
)

def dynamic_framework(
    name,
    path,
    visibility = ["//visibility:public"],
	**kwargs
    ):
    apple_dynamic_framework_import(
        name = name,
        framework_imports = native.glob(["%s/**" % path,]),
        visibility = visibility,
		**kwargs
    )

def static_framework(
    name,
    path,
    visibility = ["//visibility:public"],
	**kwargs
    ):
    apple_static_framework_import(
        name = name,
        framework_imports = native.glob(["%s/**" % path,]),
        visibility = visibility,
		**kwargs
    )

def swift_unit_test(
    name, 
    srcs = [],
    deps = [],
    visibility = ["//visibility:public"],
    ):
    test_lib_name = name + "TestLib"
    swift_library(
        name = test_lib_name,
        srcs = srcs,
        deps = deps + [":" + name],
        module_name = test_lib_name,
        visibility = ["//visibility:private"],
    )

    ios_unit_test(
        name = name + "Tests",
        deps = [test_lib_name],
        minimum_os_version = MINIMUM_OS_VERSION,
        visibility = visibility,
    )

def submodule_dynamic(
    name,
    deps = [],
    test_deps = [],
    swift_compiler_flags = [],
    swift_version = SWIFT_VERSION,
    visibility = ["//visibility:public"],
    ):

    native.filegroup(
        name = "Resources",
        srcs = native.glob(["Resources/**/*"]),
        visibility = ["//visibility:public"],
    )
    
    swift_unit_test(
        name = name,
        srcs = native.glob(["Tests/**/*.swift"]),
        deps = test_deps,
    )

    swift_library(
        name = name,
        module_name = name,
        srcs = native.glob(["Sources/**/*.swift"]),
        deps = deps,
        copts = swift_compiler_flags + swift_library_compiler_flags() + ["-swift-version", swift_version],
        data = [":Resources"],
        visibility = visibility,
    )

def submodule_unit_test(
    name,
    deps = [],
    test_deps = [],
    swift_compiler_flags = [],
    swift_version = SWIFT_VERSION,
    visibility = ["//visibility:public"],
    ):
    
    swift_unit_test(
        name = name,
        srcs = native.glob(["Tests/**/*.swift"]),
        deps = test_deps,
    )

    swift_library(
        name = name,
        module_name = name,
        srcs = native.glob(["Sources/**/*.swift"]),
        deps = deps,
        copts = swift_compiler_flags + swift_library_compiler_flags() + ["-swift-version", swift_version],
        visibility = visibility,
    )

def submodule(
    name,
    deps = [],
    swift_compiler_flags = [],
    swift_version = SWIFT_VERSION,
    visibility = ["//visibility:public"],
    ):

    swift_library(
        name = name,
        module_name = name,
        srcs = native.glob(["Sources/**/*.swift"]),
        deps = deps,
        copts = swift_compiler_flags + swift_library_compiler_flags() + ["-swift-version", swift_version],
        visibility = visibility,
    )

def dynamic_xcframwork(name, path, **kwargs):
    apple_dynamic_framework_import(
        name = name,
        framework_imports = select({
            "//config:develop": native.glob(["{path}/ios-arm64_i386_x86_64-simulator/{name}.framework/**".format(path = path, name = name)]),
            "//config:release": native.glob(["{path}/ios-arm64_armv7/{name}.framework/**".format(path = path, name = name)]),
            "//conditions:default": native.glob(["{path}/ios-arm64_i386_x86_64-simulator/{name}.framework/**".format(path = path, name = name)]),
        }),
        visibility = ["//visibility:public"],
        **kwargs
    )

def static_xcframework(name, path, **kwargs):
    apple_static_framework_import(
        name = name,
        framework_imports = select({
            "//config:develop": native.glob(["{path}/ios-arm64_i386_x86_64-simulator/{name}.framework/**".format(path = path, name = name)]),
            "//config:release": native.glob(["{path}/ios-arm64_armv7/{name}.framework/**".format(path = path, name = name)]),
            "//conditions:default": native.glob(["{path}/ios-arm64_i386_x86_64-simulator/{name}.framework/**".format(path = path, name = name)]),
        }),
        visibility = ["//visibility:public"],
        **kwargs
    )