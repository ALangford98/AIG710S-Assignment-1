### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

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

# ╔═╡ d92994c0-b401-11eb-2499-4597cc53e2d6
md"""
#### Edit the Below Values to determine the depth and number of children each parent should have 
"""

# ╔═╡ 5587bd30-aea8-11eb-3fc8-591804491a04
@bind depth NumberField(2:10, default=5)

# ╔═╡ 686e3452-b3fe-11eb-1c43-53d09df29c4b
@bind children NumberField(2:10, default=2)

# ╔═╡ 201440d0-b400-11eb-0dab-efaa60e28962
#Geometric Progression
with_terminal() do
	for i in UnitRange(0:depth-1)
		nums = 1 * ^(children, i)
		boardSize =[nums]
			println(boardSize)
	end
end

# ╔═╡ 38f242e0-b401-11eb-2375-cb92746539c7


# ╔═╡ 38d9fff0-b401-11eb-22e6-9b337b789b31


# ╔═╡ 38c0ab92-b401-11eb-146e-25ce6bc7d366


# ╔═╡ fe429c30-b400-11eb-0fd8-a1c6619adb2f


# ╔═╡ Cell order:
# ╟─602793b0-aea7-11eb-20ed-b1da41e858ee
# ╟─81d678a0-aea7-11eb-1bf9-f38f73bffe5d
# ╟─819fff4e-aea7-11eb-146f-219639743c87
# ╟─981693c0-aea7-11eb-02ba-c16d560bd5e7
# ╟─d92994c0-b401-11eb-2499-4597cc53e2d6
# ╠═5587bd30-aea8-11eb-3fc8-591804491a04
# ╠═686e3452-b3fe-11eb-1c43-53d09df29c4b
# ╠═201440d0-b400-11eb-0dab-efaa60e28962
# ╠═38f242e0-b401-11eb-2375-cb92746539c7
# ╠═38d9fff0-b401-11eb-22e6-9b337b789b31
# ╠═38c0ab92-b401-11eb-146e-25ce6bc7d366
# ╠═fe429c30-b400-11eb-0fd8-a1c6619adb2f
