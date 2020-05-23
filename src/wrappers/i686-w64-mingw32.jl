# Autogenerated wrapper script for CSDP_jll for i686-w64-mingw32
export libcsdp

using OpenBLAS32_jll
using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libcsdp`
const libcsdp_splitpath = ["bin", "libcsdp.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcsdp_path = ""

# libcsdp-specific global declaration
# This will be filled out by __init__()
libcsdp_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcsdp = "libcsdp.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"CSDP")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (OpenBLAS32_jll.PATH_list, CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (OpenBLAS32_jll.LIBPATH_list, CompilerSupportLibraries_jll.LIBPATH_list,))

    global libcsdp_path = normpath(joinpath(artifact_dir, libcsdp_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcsdp_handle = dlopen(libcsdp_path)
    push!(LIBPATH_list, dirname(libcsdp_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(LIBPATH_list, ';')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

