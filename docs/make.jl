using Documenter, Konig

makedocs(;
    modules=[Konig],
    format=:html,
    pages=[
        "Introduction" => "index.md",
    ],
    repo="https://github.com/SyxP/Konig.jl/blob/{commit}{path}#L{line}",
    sitename="Konig.jl",
    authors="Syx Pek",
    assets=[],
)

deploydocs(
    repo = "github.com/SyxP/Konig.jl.git",
)
