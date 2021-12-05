# Autogenerated wrapper script for CSDP_jll for aarch64-apple-darwin
export libcsdp

using OpenBLAS32_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("CSDP")
JLLWrappers.@declare_library_product(libcsdp, "@rpath/libcsdp.dylib")
function __init__()
    JLLWrappers.@generate_init_header(OpenBLAS32_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libcsdp,
        "lib/libcsdp.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()