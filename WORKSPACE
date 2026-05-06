load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# bazel_skylib is a dependency of protobuf; this declaration must come before
# protobuf to override its internally-declared version.
http_archive(
    name = "bazel_skylib",
    urls = ["https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz"],
    sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
)

# GoogleTest/GoogleMock framework. Used by most unit-tests.
# TODO(b/210576094): Unpin dependency after fixing compatibility.
http_archive(
     name = "com_google_googletest",
     urls = ["https://github.com/google/googletest/archive/release-1.11.0.zip"],
     strip_prefix = "googletest-release-1.11.0",
)

# rules_python is a dependency for protobuf.
# Pinned to v0.7.0 for compatibility with protobuf 3.19.x (newer versions require @rules_python_internal).
http_archive(
    name = "rules_python",
    urls = ["https://github.com/bazelbuild/rules_python/archive/refs/tags/v0.7.0.tar.gz"],
    strip_prefix = "rules_python-0.7.0",
    sha256 = "15f84594af9da06750ceb878abbf129241421e3abbd6e36893041188db67f2fb",
    type = "tar.gz",
)

# proto_library, cc_proto_library, and java_proto_library rules implicitly
# depend on @com_google_protobuf for protoc and proto runtimes.
# TODO(b/210576094): Unpin dependency after fixing compatibility.
http_archive(
    name = "com_google_protobuf",
    urls = ["https://codeload.github.com/protocolbuffers/protobuf/zip/3.19.x"],
    strip_prefix = "protobuf-3.19.x",
    type = "zip",
)

http_archive(
    name = "boringssl",  # Must match upstream workspace name.
    # Pinned to Dec 2021 master-with-bazel commit; predates rules_license requirement.
    urls = ["https://github.com/google/boringssl/archive/74b0651bbc58ffd1e0622918da52e82532938e07.zip"],
    strip_prefix = "boringssl-74b0651bbc58ffd1e0622918da52e82532938e07",
    sha256 = "9d2b2cecb25a9d51df4ee961e8eea1fd344b52726e29a9df207a0cf66305e8ed",
    type = "zip",
)

# zlib is a dependency of protobuf.
http_archive(
    name = "zlib",
    sha256 = "9a93b2b7dfdac77ceba5a558a580e74667dd6fede4585b91eefb60f03b72df23",
    # This is the zlib BUILD file used in kythe:
    # https://github.com/kythe/kythe/blob/v0.0.30/third_party/zlib.BUILD
    build_file = "zlib.BUILD",
    urls = ["https://github.com/madler/zlib/releases/download/v1.3.1/zlib-1.3.1.tar.gz"],
    strip_prefix = "zlib-1.3.1",
)

http_archive(
    name   = "com_github_gflags_gflags",
    urls = ["https://github.com/gflags/gflags/archive/master.zip"],
    strip_prefix = "gflags-master",
)

http_archive(
    name = "com_google_re2",
    urls = ["https://github.com/google/re2/archive/master.zip"],
    strip_prefix = "re2-master",
)
