using Test, Agents, Random, LightGraphs, DataFrames
using StatsBase: mean

mutable struct Agent0 <: AbstractAgent
    id::Int
end

mutable struct Agent1 <: AbstractAgent
    id::Int
    pos::Tuple{Int,Int}
end

mutable struct Agent2 <: AbstractAgent
    id::Int
    weight::Float64
end

mutable struct Agent3 <: AbstractAgent
    id::Int
    pos::Tuple{Int,Int}
    weight::Float64
end

mutable struct Agent4 <: AbstractAgent
    id::Int
    pos::Tuple{Int,Int}
    p::Int
end

mutable struct Agent5 <: AbstractAgent
    id::Int
    pos::Int
    weight::Float64
end

mutable struct Agent6 <: AbstractAgent
    id::Int
    pos::NTuple{2,Float64}
    vel::NTuple{2,Float64}
    weight::Float64
end

mutable struct Agent7 <: AbstractAgent
    id::Int
    pos::Int
    f1::Bool
    f2::Int
end

Agent7(id, pos; f1, f2) = Agent7(id, pos, f1, f2)

mutable struct Agent8 <: AbstractAgent
    id::Int
    pos::NTuple{2,Float64}
    f1::Bool
    f2::Int
end

Agent8(id, pos; f1, f2) = Agent8(id, pos, f1, f2)

mutable struct Agent9 <: AbstractAgent
    id::Int
    pos::NTuple{2,Float64}
    vel::NTuple{2,Float64}
    f1::Union{Int,Nothing}
end

@testset "Agents.jl Tests" begin

    include("api_tests.jl")
    include("scheduler_tests.jl")
    include("model_access.jl")
    include("space_test.jl")
    include("collect_tests.jl")
    include("continuousSpace_tests.jl")
    include("collisions_tests.jl")
    include("graph_tests.jl")

end
