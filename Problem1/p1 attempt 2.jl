### A Pluto.jl notebook ###
# v0.14.5

using Markdown
using InteractiveUtils

# ╔═╡ c97b90e2-b3d0-11eb-1463-dbfcdd26c520
using Pkg, PlutoUI, DataStructures

# ╔═╡ afa51ed2-5e1b-474d-a0f6-24e65794afd3
Pkg.activate("Project.toml")

# ╔═╡ cd4125f0-6cb2-4627-ad5f-a4d8a74a2336
struct Action 
	Name::String
	Cost::Int64
end

# ╔═╡ 4f7bddcd-8553-47c8-a379-135d75e85838
me = Action("Move East", 3)

# ╔═╡ 9552e7f0-b1f8-47ec-be64-ed8fdf936508
mw = Action("Move West", 3)

# ╔═╡ 88d74b9d-602d-48a6-84f3-23280b136514
re = Action("Remain", 1)

# ╔═╡ ceec3e4d-fa44-4180-bfbd-9ee7bf9ba9a6
co = Action("Collect", 5)

# ╔═╡ 3b485d11-5feb-4a78-bd73-77eef7f3a97c
struct Office
	Name::String
end

# ╔═╡ da7ac8bb-9133-4e77-9bfb-129c1f68410a
W = Office("West Office")

# ╔═╡ 100bf4a1-ba61-4e0c-a0d4-327785fda7ba
C1 = Office("Center Left Office")

# ╔═╡ 68d34d59-07b7-4817-b08c-7607649240b2
C2 = Office("Center Right Office")

# ╔═╡ 2dca149b-afae-4273-8584-d64cb500395a
E = Office("East Office")

# ╔═╡ 78914073-3bdb-4e3b-b67d-52a25a451099
struct ItemCount
	count::Int64
end

# ╔═╡ 89bc26d9-97bd-4dd4-af24-d9ea79a4dc2f
goal = ItemCount(0)

# ╔═╡ a9f789cc-0242-4f97-950f-5f4880c70097
one = ItemCount(1)

# ╔═╡ 5c596931-1441-4477-a0bf-93f9d043d1dd
two = ItemCount(2)

# ╔═╡ 7ce53b87-80c9-44c5-8b47-680b0782c2c1
three = ItemCount(3)

# ╔═╡ cbdf422a-b4bc-4a2b-bf37-29534c3ceeef
struct State
	Name::String
	Location::Office
	ic::ItemCount
end

# ╔═╡ f01d52ce-5036-4e30-a648-96b48bcd112a
Start = State("Starting Position", C1, three)

# ╔═╡ 229119cd-7deb-4179-bd84-683807aa460c


# ╔═╡ 40faa4c7-306c-4845-a118-620951ec4e1a
Moves = Dict(Start => (re, C1))

# ╔═╡ 50d61480-b3ab-494c-af02-17fe0a2a4200
push!(Moves, Start => (mw, W))

# ╔═╡ 420a9819-77ac-4f58-bd10-77b836e34972
push!(Moves, Start => (me, C2))

# ╔═╡ da020812-89ec-4ec3-8913-5214bd818e19
function pickup(Start, Moves, State)
	h = 7
	if Action == co
		if ItemCount not goal
			h = h - 1
			newItemCount = Start(Itemcount) - 1
			newState = State("Neighbor State", C1, 2)
			return newState
		else 
			return "No Items to Collect"
		end	
	end
end

# ╔═╡ a27fcadd-ec1f-48e4-a378-cc8a946b29ae
function neighbors(newState)
	
end

# ╔═╡ Cell order:
# ╠═c97b90e2-b3d0-11eb-1463-dbfcdd26c520
# ╠═afa51ed2-5e1b-474d-a0f6-24e65794afd3
# ╠═cd4125f0-6cb2-4627-ad5f-a4d8a74a2336
# ╟─4f7bddcd-8553-47c8-a379-135d75e85838
# ╟─9552e7f0-b1f8-47ec-be64-ed8fdf936508
# ╟─88d74b9d-602d-48a6-84f3-23280b136514
# ╟─ceec3e4d-fa44-4180-bfbd-9ee7bf9ba9a6
# ╠═3b485d11-5feb-4a78-bd73-77eef7f3a97c
# ╟─da7ac8bb-9133-4e77-9bfb-129c1f68410a
# ╟─100bf4a1-ba61-4e0c-a0d4-327785fda7ba
# ╟─68d34d59-07b7-4817-b08c-7607649240b2
# ╟─2dca149b-afae-4273-8584-d64cb500395a
# ╠═78914073-3bdb-4e3b-b67d-52a25a451099
# ╟─89bc26d9-97bd-4dd4-af24-d9ea79a4dc2f
# ╟─a9f789cc-0242-4f97-950f-5f4880c70097
# ╟─5c596931-1441-4477-a0bf-93f9d043d1dd
# ╟─7ce53b87-80c9-44c5-8b47-680b0782c2c1
# ╠═cbdf422a-b4bc-4a2b-bf37-29534c3ceeef
# ╠═f01d52ce-5036-4e30-a648-96b48bcd112a
# ╠═229119cd-7deb-4179-bd84-683807aa460c
# ╟─40faa4c7-306c-4845-a118-620951ec4e1a
# ╟─50d61480-b3ab-494c-af02-17fe0a2a4200
# ╟─420a9819-77ac-4f58-bd10-77b836e34972
# ╠═da020812-89ec-4ec3-8913-5214bd818e19
# ╠═a27fcadd-ec1f-48e4-a378-cc8a946b29ae
