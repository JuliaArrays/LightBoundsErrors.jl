using LightBoundsErrors
using Test
using Aqua

@testset "LightBoundsErrors.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(LightBoundsErrors)
    end
    # Write your tests here.
end
