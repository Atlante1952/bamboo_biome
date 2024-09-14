--[[
    Copyright (C) 2023
Atlante
AtlanteWork@gmail.com

                      GNU GENERAL PUBLIC LICENSE
                       Version 3, 29 June 2007

 Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.
5349666272645780583
]]

local S = minetest.get_translator("bamboo_biome")
local path = minetest.get_modpath("bamboo_biome")
local modpath = minetest.get_modpath("bamboo_biome")


minetest.register_alias("sakura_sapling", "bamboo_biome:sakura_sapling")


local function grow_new_bamboo_tree(pos)
	if not default.can_grow(pos) then
		-- Essayer un peu plus tard
			minetest.get_node_timer(pos):start(math.random(300, 1500))
		return
	end

	minetest.remove_node(pos)

	local random_tree = "bamboo_tree_" .. math.random(1, 9) .. ".mts"
	minetest.place_schematic({x = pos.x - 0, y = pos.y, z = pos.z - 0}, minetest.get_modpath("bamboo_biome") .. "/schematics/" .. random_tree, "0", nil, false)
end

minetest.register_node("bamboo_biome:bamboo_sprout", {
	description = S("Bamboo Sprout"),
	drawtype = "plantlike",
	tiles = {"bamboo_biome_bamboo_sprout.png"},
	inventory_image = "bamboo_biome_bamboo_sprout.png",
	wield_image = "bamboo_biome_bamboo_sprout.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_bamboo_tree,
	selection_box = {
		type = "fixed",
		fixed = {-2 / 16, -0.5, -2 / 16, 2 / 16, 5 / 16, 2 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
			minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"bamboo_biome:bamboo_sprout",
			{x = -1, y = 0, z = -1}, -- minp, maxp to be checked, relative to sapling pos
			{x = 1, y = 3, z = 1},
			2 -- maximum interval of interior volume check
		)

		return itemstack
	end,
})


if minetest.get_modpath("bonemeal") ~= nil then
	bonemeal:add_sapling({
		{"bamboo_biome:bamboo_sprout", grow_new_bamboo_tree, "soil"},
	})
end

	default.register_leafdecay({
		trunks = {"bamboo_biome:bamboo"},
		leaves = {"bamboo_biome:bamboo_leaves"},
		radius = 6,
	})
