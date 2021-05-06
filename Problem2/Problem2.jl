### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# ╔═╡ 602793b0-aea7-11eb-20ed-b1da41e858ee
using Pkg

# ╔═╡ 819fff4e-aea7-11eb-146f-219639743c87
using PlutoUI

# ╔═╡ 81d678a0-aea7-11eb-1bf9-f38f73bffe5d
Pkg.activate("Project.toml")

# ╔═╡ 981693c0-aea7-11eb-02ba-c16d560bd5e7
struct Player
	Name::String
	ID::Int64
end

# ╔═╡ b40b4122-aea7-11eb-0e93-813020476100
struct Game
	initState::Vector{Int64}
end

# ╔═╡ 5587bd30-aea8-11eb-3fc8-591804491a04


# ╔═╡ Cell order:
# ╠═602793b0-aea7-11eb-20ed-b1da41e858ee
# ╠═81d678a0-aea7-11eb-1bf9-f38f73bffe5d
# ╠═819fff4e-aea7-11eb-146f-219639743c87
# ╠═981693c0-aea7-11eb-02ba-c16d560bd5e7
# ╠═b40b4122-aea7-11eb-0e93-813020476100
# ╠═5587bd30-aea8-11eb-3fc8-591804491a04
