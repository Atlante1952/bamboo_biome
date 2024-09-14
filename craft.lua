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

minetest.register_craft({
	output = "bamboo_biome:bamboo_wood 2",
	recipe = {
		{"bamboo_biome:bamboo", "bamboo_biome:bamboo"},
		{"bamboo_biome:bamboo", "bamboo_biome:bamboo"},
	}
})

minetest.register_craft({
	output = "default:paper 5",
	recipe = {
		{"bamboo_biome:bamboo", "bamboo_biome:bamboo", "bamboo_biome:bamboo"},
		{"bamboo_biome:bamboo", "bamboo_biome:bamboo", "bamboo_biome:bamboo"},
	}
})

minetest.register_craft({
	output = "bamboo_biome:fiber_bamboo 8",
	recipe = {
		{"bamboo_biome:bamboo"},
	}
})

minetest.register_craft({
	output = "bamboo_biome:granite 4",
	recipe = {
		{"default:sand", "default:silver_sand"},
		{"default:gravel", "default:stone"},
	}
})

minetest.register_craft({
	output = "bamboo_biome:granite_block 9",
	recipe = {
		{"bamboo_biome:granite", "bamboo_biome:granite", "bamboo_biome:granite"},
		{"bamboo_biome:granite", "bamboo_biome:granite", "bamboo_biome:granite"},
		{"bamboo_biome:granite", "bamboo_biome:granite", "bamboo_biome:granite"},
	}
})

minetest.register_craft({
	output = "bamboo_biome:granite_brick 4",
	recipe = {
		{"bamboo_biome:granite_block", "bamboo_biome:granite_block"},
		{"bamboo_biome:granite_block", "bamboo_biome:granite_block"},
	}
})

minetest.register_craft({
	output = "bamboo_biome:bamboo_glass",
	recipe = {
		{"", "bamboo_biome:bamboo", ""},
		{"bamboo_biome:bamboo", "default:glass", "bamboo_biome:bamboo"},
		{"", "bamboo_biome:bamboo", ""},
	}
})

minetest.register_craft({
	output = "bamboo_biome:bamboo_block",
	recipe = {
		{"bamboo_biome:bamboo_wood", "bamboo_biome:bamboo", "bamboo_biome:bamboo_wood"},
		{"bamboo_biome:bamboo", "bamboo_biome:bamboo_wood", "bamboo_biome:bamboo"},
		{"bamboo_biome:bamboo_wood", "bamboo_biome:bamboo", "bamboo_biome:bamboo_wood"},
	}
})

minetest.register_craft({
	output = "bamboo_biome:bamboo_sapling",
	recipe = {
		{"bamboo_biome:bamboo", "default:dirt"},
		{"default:dirt", "bamboo_biome:bamboo"},
	}
})

minetest.register_craft({
	output = "bamboo_biome:bamboo_trapdoor 2",
	recipe = {
		{"bamboo_biome:fiber_bamboo", "bamboo_biome:bamboo_wood", "bamboo_biome:fiber_bamboo"},
		{"bamboo_biome:bamboo_wood", "bamboo_biome:fiber_bamboo", "bamboo_biome:bamboo_wood"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "walls:bamboo_block 6",
	recipe = {
		{"bamboo_biome:bamboo_block", "bamboo_biome:bamboo_block", "bamboo_biome:bamboo_block"},
		{"bamboo_biome:bamboo_block", "bamboo_biome:bamboo_block", "bamboo_biome:bamboo_block"},
		{"", "", ""},
	}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 20,
	output = "bamboo_biome:bamboo_cooked",
	recipe = "bamboo_biome:bamboo"
})