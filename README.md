# LightBoundsErrors

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://JuliaArrays.github.io/LightBoundsErrors.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://JuliaArrays.github.io/LightBoundsErrors.jl/dev/)
[![Build Status](https://github.com/JuliaArrays/LightBoundsErrors.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/JuliaArrays/LightBoundsErrors.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/JuliaArrays/LightBoundsErrors.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/JuliaArrays/LightBoundsErrors.jl)
[![Package version](https://juliahub.com/docs/General/LightBoundsErrors/stable/version.svg)](https://juliahub.com/ui/Packages/General/LightBoundsErrors)
[![Package dependencies](https://juliahub.com/docs/General/LightBoundsErrors/stable/deps.svg)](https://juliahub.com/ui/Packages/General/LightBoundsErrors?t=2)
[![PkgEval](https://JuliaCI.github.io/NanosoldierReports/pkgeval_badges/L/LightBoundsErrors.svg)](https://JuliaCI.github.io/NanosoldierReports/pkgeval_badges/L/LightBoundsErrors.html)
[![Aqua](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

Julia package providing a subtype of `Exception`, `LightBoundsError`, that is suitable as a replacement for `BoundsError`. Meant to be depended on by `AbstractArray` implementations and similar indexable types.

The advantage over `BoundsError` is that `LightBoundsError` does not store the array (or other indexable collection).
Thus throwing `LightBoundsError` does not escape the array, unlike throwing `BoundsError`.
This implies that `LightBoundsError` makes it possible for the Julia compiler to eliminate more heap allocations.
Some of these benefits will only be realized as the compiler becomes capable of interprocedural escape analysis.
*Intra*procedural escape analysis is already here, but its success heavily depends on inlining behavior.
