using AsteroidThermoPPhysicalModels
using Test
using Aqua
using JLD2
using SPICE
using Git
using Downloads
using Statistics
using LinearAlgebra
using StaticArrays
using Rotations
using DataFrames

ENABLE_JLD = false
Aqua.test_all(AsteroidThermoPPhysicalModels, ambiguities=false)

include("find_visiblefacets.jl")
include("TPM_Ryugu.jl")
include("non-uniform_thermoparams.jl")
include("TPM_Didymos.jl")
include("heat_conduction_1D.jl")
