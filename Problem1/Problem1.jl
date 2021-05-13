### A Pluto.jl notebook ###
# v0.14.5

using Markdown
using InteractiveUtils

# ╔═╡ b5997020-ae84-11eb-0919-f5b4ddbe02f0
using Pkg

# ╔═╡ 10861c6e-528a-41ff-ab72-b5536cce9351
Pkg.activate("Project.toml")

# ╔═╡ 2aa8164e-01b3-4e04-837f-d124f4ab21a0
using PlutoUI

# ╔═╡ 440ec5a3-93bc-4b91-b239-fa4bd910b263
using DataStructures

# ╔═╡ 3f6419f2-8fd5-4635-b35f-9276f5f0dc3e
mutable struct Office
	Name::String
	ItemCount::Int64
end

# ╔═╡ 6cd5ce7c-c66e-4a0e-85d0-6347fb4a5b8a
W = Office("Western Office", 1)

# ╔═╡ 3b5d5e9e-2ab1-43f3-8f54-5fd829cd831f
C1 = Office("Center-Left Office", 3)

# ╔═╡ 155257ef-61a9-4ac1-9b4f-8f38332bf53f
C2 = Office("Center-Right Office", 2)

# ╔═╡ cf5cbf5f-984d-46d4-bca5-489fc6fa36d1
E = Office("Eastern Office", 1)

# ╔═╡ fc3a4257-2e8d-456e-b8be-7d23b539517d
mutable struct Action 
	Name::String
	Cost::Int64
	pickup::Int64
end

# ╔═╡ d7e29f48-0ab5-45f7-befc-dd13a79b79ba
me = Action("Move East", 3, 0)

# ╔═╡ 20614069-3518-45b2-b2ef-a75a9c29b919
mw = Action("Move West", 3, 0)

# ╔═╡ 7ece0675-9be5-4a73-8d59-5bec39b885fe
re = Action("Remain", 1, 0)

# ╔═╡ 31ba0303-0c98-4b6a-8b44-386f72c66430
co = Action("Collect", 5, 1)

# ╔═╡ b7b82c99-cfe3-4a15-b904-744db7e81aeb
struct Position
	Verbal::Office
end

# ╔═╡ 0de7e393-a153-44bf-9507-88e63cb48d79
Start = Position(C1)

# ╔═╡ 5a9431a4-811d-45c9-86ec-1e23a4edc860
Actions = Dict(Start => (re, C1))

# ╔═╡ 202ce34a-c094-4b88-a992-7801b149929e
push!(Actions, Start => (mw, W)) 

# ╔═╡ 5b863887-e805-4392-a682-0c7fad9a8149
push!(Actions, Start => (me, C2)) 

# ╔═╡ bc686db4-3d9a-4c55-9624-c6527f058e6d
push!(Actions, Start => (co, C1)) 

# ╔═╡ 241598fa-8350-4ca0-9615-b61e03e6e5f9
function aS(Start, isgoal, getNeighbours, h)
	startH = h(Start)
end
	

# ╔═╡ bd7a37ad-bfc7-4ed9-a924-0f9d859b369e
function A_Star(Actions, Start)
	h = 7
	explored = []
	explore = Queue{Position}()
	enqueue!(explore, Start)
	while true 
		if empty(explore)
			return []
		else
			currentState = dequeue!(explore)
			push!(explored, currentState)
			for element in nextPosition
				if !(element[2] in explored)
					if element[2] in goal
						return CreateResult()
						
					else
						enqueue!(explore, element[2])
					end
				end
			end
		end
	end
end

# ╔═╡ 1feec9e8-78cf-4d41-9d11-d4fdc6b19b99
function createResult(Actions, explored, path)
	result = []
	for i in 1:(length(explored)-1)
		var1 = Actions[explored[i]]
		for element in var1
			if i == (length(explored)-1)
				if element[2] == Path
				push!(result, element[1])
				end
			else
				if element[2] == explored[i+1]
				push!(result, element[1])
				end
			end
		end
	end
	return result
end

# ╔═╡ da082324-4904-4d48-97bd-5802edd13c22


# ╔═╡ Cell order:
# ╠═b5997020-ae84-11eb-0919-f5b4ddbe02f0
# ╠═10861c6e-528a-41ff-ab72-b5536cce9351
# ╠═2aa8164e-01b3-4e04-837f-d124f4ab21a0
# ╠═440ec5a3-93bc-4b91-b239-fa4bd910b263
# ╠═3f6419f2-8fd5-4635-b35f-9276f5f0dc3e
# ╠═6cd5ce7c-c66e-4a0e-85d0-6347fb4a5b8a
# ╠═3b5d5e9e-2ab1-43f3-8f54-5fd829cd831f
# ╠═155257ef-61a9-4ac1-9b4f-8f38332bf53f
# ╠═cf5cbf5f-984d-46d4-bca5-489fc6fa36d1
# ╠═fc3a4257-2e8d-456e-b8be-7d23b539517d
# ╠═d7e29f48-0ab5-45f7-befc-dd13a79b79ba
# ╠═20614069-3518-45b2-b2ef-a75a9c29b919
# ╠═7ece0675-9be5-4a73-8d59-5bec39b885fe
# ╠═31ba0303-0c98-4b6a-8b44-386f72c66430
# ╠═b7b82c99-cfe3-4a15-b904-744db7e81aeb
# ╠═0de7e393-a153-44bf-9507-88e63cb48d79
# ╠═5a9431a4-811d-45c9-86ec-1e23a4edc860
# ╠═202ce34a-c094-4b88-a992-7801b149929e
# ╠═5b863887-e805-4392-a682-0c7fad9a8149
# ╠═bc686db4-3d9a-4c55-9624-c6527f058e6d
# ╠═241598fa-8350-4ca0-9615-b61e03e6e5f9
# ╠═bd7a37ad-bfc7-4ed9-a924-0f9d859b369e
# ╠═1feec9e8-78cf-4d41-9d11-d4fdc6b19b99
# ╠═da082324-4904-4d48-97bd-5802edd13c22
