using myOmniscape
using Documenter

DocMeta.setdocmeta!(myOmniscape, :DocTestSetup, :(using myOmniscape); recursive=true)

makedocs(;
    modules=[myOmniscape],
    authors="Sumuses",
    repo="https://github.com/Sumuses/myOmniscape.jl/blob/{commit}{path}#{line}",
    sitename="myOmniscape.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Sumuses.github.io/myOmniscape.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Sumuses/myOmniscape.jl",
    devbranch="master",
)
