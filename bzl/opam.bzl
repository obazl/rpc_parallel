PACKAGES = {
    "async": ["v0.12.0"],
    "core": ["v0.12.1", [
        "core.daemon",
        "core.uuid"
    ]],
    "ctypes": ["0.17.1", ["ctypes.foreign", "ctypes.stubs"]],
    "ctypes-foreign": ["0.4.0"], # WARNING: requires libffi-dev
    "ppx_assert": ["v0.12.0", ["ppx_assert.runtime-lib"]],
    "ppx_bench": ["v0.12.0", ["ppx_bench.runtime-lib"]],
    "ppx_compare": ["v0.12.0", ["ppx_compare.runtime-lib"]],
    "ppx_enumerate": ["v0.12.0", ["ppx_enumerate.runtime-lib"]],
    "ppx_expect": ["v0.12.0", ["ppx_expect.collector"]],
    "ppx_hash": ["v0.12.0", ["ppx_hash.runtime-lib"]],
    "ppx_inline_test": ["v0.12.0", ["ppx_inline_test.runtime-lib"]],
    "ppx_jane": ["v0.12.0"],
    "ppx_module_timer": ["v0.12.0", ["ppx_module_timer.runtime"]],
    "ppx_sexp_conv": ["v0.12.0", ["ppx_sexp_conv.runtime-lib"]],
    "ppxlib": ["0.8.1", ["ppxlib.metaquot"]],
    "sexplib": ["v0.12.0"],
    # "core_kernel": ["v0.12.3"],
    # "lens": ["1.2.3", ["lens.ppx_deriving"]],
    # "ocaml-compiler-libs": ["v0.11.0"],
    # "compiler-libs.common": [],
    # "ppx_bin_prot": ["v0.12.1"],
    # "ppx_compare": ["v0.12.0"], # ["ppx_compare.runtime-lib"]],
    # "ppx_deriving": ["4.4.1", [
    #     "ppx_deriving.std",
    # ]],
    # "ppx_deriving_yojson": ["3.5.2", ["ppx_deriving_yojson.runtime"]],
    # "ppx_enumerate": ["v0.12.0"], # ["ppx_enumerate.runtime-lib"]],
    # "ppx_fields_conv": ["v0.12.0"],
    # "ppx_hash": ["v0.12.0"], # ["ppx_hash.runtime-lib"]],
    # "ppx_sexp_conv": ["v0.12.0"], # , ["ppx_sexp_conv.runtime-lib"]],
}

opam = struct(
    version = "2.0",
    switches  = {
        "mina-0.1.0": struct(
            default  = True,
            compiler = "4.07.1",
            packages = PACKAGES
        ),
        "4.07.1": struct(
            compiler = "4.07.1",
            packages = PACKAGES
        )
    }
)
