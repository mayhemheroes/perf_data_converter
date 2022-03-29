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
http_archive(
    name = "rules_python",
    urls = ["https://codeload.github.com/bazelbuild/rules_python/tar.gz/main"],
    strip_prefix = "rules_python-main",
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
    # Gitiles creates gzip files with an embedded timestamp, so we cannot use
    # sha256 to validate the archives.  We must rely on the commit hash and
    # https. Commits must come from the master-with-bazel branch.
    urls = ["https://codeload.github.com/google/boringssl/zip/master-with-bazel"],
    strip_prefix = "boringssl-master-with-bazel",
    type = "zip",
)

# zlib is a dependency of protobuf.
http_archive(
    name = "zlib",
    sha256 = "91844808532e5ce316b3c010929493c0244f3d37593afd6de04f71821d5136d9",
    # This is the zlib BUILD file used in kythe:
    # https://github.com/kythe/kythe/blob/v0.0.30/third_party/zlib.BUILD
    build_file = "zlib.BUILD",
    urls = ["https://www.zlib.net/zlib-1.2.12.tar.gz"],
    strip_prefix = "zlib-1.2.12",
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
