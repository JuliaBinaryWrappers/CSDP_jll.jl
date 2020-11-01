# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule CSDP_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("CSDP")
JLLWrappers.@generate_main_file("CSDP", UUID("9ce75daa-2788-5e2c-ba1d-cf8c48367b27"))
end  # module CSDP_jll
