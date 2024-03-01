"""
buildfarm definitions that can be imported into other WORKSPACE files
"""

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
load("@com_grail_bazel_toolchain//toolchain:rules.bzl", "llvm_toolchain")
load("@io_grpc_grpc_java//:repositories.bzl", "IO_GRPC_GRPC_JAVA_OVERRIDE_TARGETS", "grpc_java_repositories")

def buildfarm_init(name = "buildfarm"):
    """
    Initialize the WORKSPACE for buildfarm-related targets

    Args:
      name: the name of the repository
    """

    protobuf_deps()

    grpc_java_repositories()

    llvm_toolchain(
        name = "llvm_toolchain",
        llvm_version = "16.0.0",
    )
