package(
    default_visibility = [
        "//src:__subpackages__",
    ],
)

licenses(["notice"])

cc_library(
    name = "string_compat",
    hdrs = [
        "string_compat.h",
    ],
)

cc_library(
    name = "int_compat",
    hdrs = [
        "int_compat.h",
    ],
    deps = [
        "//src:profile_cc_proto",
        "//src/quipper:base",
    ],
)

cc_library(
    name = "test_compat",
    testonly = 1,
    hdrs = [
        "test_compat.h",
    ],
    deps = [
        "@com_google_googletest//:gtest_main",
    ],
)
