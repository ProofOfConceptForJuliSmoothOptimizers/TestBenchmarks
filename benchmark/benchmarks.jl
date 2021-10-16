using BenchmarkTools

include(normpath(@__DIR__, "..", "src", "sort_functions.jl"))

const SUITE  = BenchmarkGroup()

const sizes = [50, 100, 500]

SUITE[:insertion_sort] = BenchmarkGroup()
SUITE[:selection_sort] = BenchmarkGroup()

for n in sizes
    a = rand(1:(3*n), n)
    SUITE[:selection_sort][n] = @benchmarkable selection_sort!($a)
end

for n in sizes
    a = rand(1:(3*n), n)
    SUITE[:insertion_sort][n] = @benchmarkable insertion_sort!($a)
end
