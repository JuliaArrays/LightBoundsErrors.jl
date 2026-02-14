using LightBoundsErrors
using Documenter

DocMeta.setdocmeta!(LightBoundsErrors, :DocTestSetup, :(using LightBoundsErrors); recursive=true)

makedocs(;
    modules=[LightBoundsErrors],
    authors="Neven Sajko <s@purelymail.com> and contributors",
    sitename="LightBoundsErrors.jl",
    format=Documenter.HTML(;
        canonical="https://JuliaArrays.github.io/LightBoundsErrors.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaArrays/LightBoundsErrors.jl",
    devbranch="main",
)
