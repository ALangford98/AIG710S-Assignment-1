### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# ╔═╡ 976978ee-aea9-11eb-3490-2dc85bcf7de0
using Pkg

# ╔═╡ 4e301760-aeaa-11eb-3141-9f8472436e97
using PlutoUI

# ╔═╡ 4e95de10-aeaa-11eb-1f13-9bd981b26130
Pkg.activate("Project.toml")

# ╔═╡ 4dc6a730-aeaa-11eb-1abd-8118d44a639d
struct Variable
	Name::String
	value::Int64
	#Domain::Vector{Int64}
	#Constraint::Vector{Variable}
end

# ╔═╡ e1d5d80e-aeaf-11eb-1fe4-5d9ef44b1d78
x1 = Variable("X1", 1)

# ╔═╡ eb173a90-aeaf-11eb-28e9-51bb588014af
x2 = Variable("X2", 2)

# ╔═╡ ead5ebd0-aeaf-11eb-39a4-7dbb41830954
x3 = Variable("X3", 3)

# ╔═╡ ea975c30-aeaf-11eb-2521-2fbdffd9afd2
x4 = Variable("X4", 4)

# ╔═╡ ea5ec000-aeaf-11eb-1b65-5727031b3675
x5 = Variable("X5", 5)

# ╔═╡ e9ddf740-aeaf-11eb-30f1-59f66239f48c
x6 = Variable("X6", 6)

# ╔═╡ e994e050-aeaf-11eb-2e08-b90e5c2cffa8
x7 = Variable("X7", 7)

# ╔═╡ 32560f30-aeb0-11eb-11dd-316d6691f21c
struct Constraint
	arc::Vector{Variable}
end

# ╔═╡ 316bd63e-aeb0-11eb-30fd-331bcddaa4b2
Constraints = Dict(x1 =>[x2,x3,x4,x5,x6])

# ╔═╡ e4d9d3ce-aeb0-11eb-0fca-313d38e837f7
push!(Constraints, x2 =>[x1,x5])

# ╔═╡ 12e230b0-aeb1-11eb-112e-c5fa0e6cfdcb
push!(Constraints, x3 =>[x1,x4])

# ╔═╡ 29cda700-aeb1-11eb-26af-27eae6618846
push!(Constraints, x4 =>[x1,x3,x5,x6])

# ╔═╡ 1b20f040-aeb1-11eb-2421-bbc5f641500b
push!(Constraints, x5 =>[x1,x2,x4,x6])

# ╔═╡ 40284f00-aeb1-11eb-1d03-c1293e5cd026
push!(Constraints, x6 =>[x1,x4,x5,x7])

# ╔═╡ 400b7830-aeb1-11eb-3de5-7f59946be43d
push!(Constraints, x7 =>[x6])

# ╔═╡ 3fcd5dc0-aeb1-11eb-09e2-4f5507130dc9
struct domain
	var::Variable
	value::Int64
end	

# ╔═╡ 4ca781f0-aeb2-11eb-1684-23cb5cf75d84
unaryConstr = domain(x3, 1)

# ╔═╡ 11579f00-b415-11eb-2545-5dfaacb4ecdd


# ╔═╡ a79d7ce0-aeb2-11eb-39ae-55661fc79e5e
md"""
## PseudoSolutions

##### Naive Inference
	function NaiveBayes(Constraints, Variable)
		variables = [7]
		checked = []
		check = [Variable]
		for variables.length in Constraints
			while domain == 0 
				return UnitRange{1:4} #wont work
				#if Variable.Constraints are equal
					#domain !=
			end
		end
	end

##### Backtracking with forward checking and propagation
	function BT-FC(Constraints, Variable)
		variables = [7]
		checked = []
		check = [Variable]
		for variables.length in Constraints
			
	end

"""

# ╔═╡ Cell order:
# ╠═976978ee-aea9-11eb-3490-2dc85bcf7de0
# ╠═4e95de10-aeaa-11eb-1f13-9bd981b26130
# ╠═4e301760-aeaa-11eb-3141-9f8472436e97
# ╠═4dc6a730-aeaa-11eb-1abd-8118d44a639d
# ╠═e1d5d80e-aeaf-11eb-1fe4-5d9ef44b1d78
# ╠═eb173a90-aeaf-11eb-28e9-51bb588014af
# ╠═ead5ebd0-aeaf-11eb-39a4-7dbb41830954
# ╠═ea975c30-aeaf-11eb-2521-2fbdffd9afd2
# ╠═ea5ec000-aeaf-11eb-1b65-5727031b3675
# ╠═e9ddf740-aeaf-11eb-30f1-59f66239f48c
# ╠═e994e050-aeaf-11eb-2e08-b90e5c2cffa8
# ╠═32560f30-aeb0-11eb-11dd-316d6691f21c
# ╠═316bd63e-aeb0-11eb-30fd-331bcddaa4b2
# ╠═e4d9d3ce-aeb0-11eb-0fca-313d38e837f7
# ╠═12e230b0-aeb1-11eb-112e-c5fa0e6cfdcb
# ╠═29cda700-aeb1-11eb-26af-27eae6618846
# ╠═1b20f040-aeb1-11eb-2421-bbc5f641500b
# ╠═40284f00-aeb1-11eb-1d03-c1293e5cd026
# ╠═400b7830-aeb1-11eb-3de5-7f59946be43d
# ╠═3fcd5dc0-aeb1-11eb-09e2-4f5507130dc9
# ╠═4ca781f0-aeb2-11eb-1684-23cb5cf75d84
# ╠═11579f00-b415-11eb-2545-5dfaacb4ecdd
# ╠═a79d7ce0-aeb2-11eb-39ae-55661fc79e5e
