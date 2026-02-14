```@meta
CurrentModule = LightBoundsErrors
```

# LightBoundsErrors

[LightBoundsErrors](https://github.com/JuliaArrays/LightBoundsErrors.jl) is a Julia package providing a subtype of `Exception`, `LightBoundsError`, that is suitable as a replacement for `BoundsError`. Meant to be depended on by `AbstractArray` implementations and similar indexable types.

The advantage over `BoundsError` is that `LightBoundsError` does not store the array (or other indexable collection).
Thus throwing `LightBoundsError` does not escape the array, unlike throwing `BoundsError`.
This implies that `LightBoundsError` makes it possible for the Julia compiler to eliminate more heap allocations.
Some of these benefits will only be realized as the compiler becomes capable of interprocedural escape analysis.
*Intra*procedural escape analysis is already here, but its success heavily depends on inlining behavior.

```@index
```

```@autodocs
Modules = [LightBoundsErrors]
```
