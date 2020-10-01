workspace( name = "rpc_parallel" )

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "obazl_rules_ocaml",
    branch = "master",
    remote = "https://github.com/mobileink/obazl",
)

load("@obazl_rules_ocaml//ocaml:deps.bzl",
     "ocaml_configure",
     "ocaml_register_toolchains",
     "opam_configure")

opam_configure()

ocaml_configure()

ocaml_register_toolchains(installation="host")
