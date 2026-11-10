#!/bin/bash
set -e

# Jupyter kernel for Julia (installed in the global environment, registers "julia-1.13")
julia -e 'using Pkg; Pkg.add("IJulia"); using IJulia; IJulia.installkernel("Julia")'

# Project packages + Python dependencies (CondaPkg) so the notebook runs without waiting
julia --project=. -e 'using Pkg; Pkg.instantiate(); Pkg.precompile(); using CondaPkg; CondaPkg.resolve(); using PythonCall'
