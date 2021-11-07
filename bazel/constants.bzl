SWIFT_VERSION = "5"
MINIMUM_OS_VERSION = "10.0"
PRODUCT_BUNDLE_IDENTIFIER_PREFIX = "dev.josbach"
BUILD_NUMBER = "22"
APP_NAME = "BazelApp"

APP_VERSION = "1.0.0"

# Compiler flags
SWIFT_COMPILER_FLAGS = [
    # Look at the files as a unit instead of separately: compilation is faster
    # See: https://www.skilled.io/u/swiftsummit/swift-with-a-hundred-engineers
    "-whole-module-optimization",
]
SWIFT_DEBUG_COMPILER_FLAGS = [
    # Enable the DEBUG flag, for using it in macros
    "-DDEBUG",
    # Do not make optimizations: compilation is faster
    "-Onone",
    # Print debug information
    "-g",
    # Make libraries testable
    "-enable-testing",
] + SWIFT_COMPILER_FLAGS

SWIFT_RELEASE_COMPILER_FLAGS = [
    # Enable the DEBUG flag, for using it in macros
    "-DRELEASE",
    # Make optimizations: compilation is faster
    "-Osize",
] + SWIFT_COMPILER_FLAGS

def test_host():
    return "//App:" + app_name()

def app_name(scheme = "develop"):
    if scheme == "develop":
        return APP_NAME + "Dev"

    if scheme == "staging":
        return APP_NAME + "Stg"

    return APP_NAME

def bundle_id(scheme = "develop"):
    return PRODUCT_BUNDLE_IDENTIFIER_PREFIX + app_name(scheme = scheme)
