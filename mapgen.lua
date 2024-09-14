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

minetest.register_biome({
    name = "bamboo_forest",
	node_top = "bamboo_biome:dirt_with_bamboo_grass",
    depth_top = 1,
    node_filler = "default:dirt",
    depth_filler = 3,
	node_riverbed = "default:sand",
	depth_riverbed = 3,
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
    y_max = 31000,
    y_min = 5,
    heat_point = 89,
    humidity_point = 77,
})

minetest.register_biome({
	name = "bamboo_dunes",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 2,
	node_riverbed = "default:sand",
	depth_riverbed = 2,
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
	vertical_blend = 1,
	y_max = 5,
	y_min = 4,
    heat_point = 89,
    humidity_point = 77,
})

minetest.register_biome({
	name = "bamboo_ocean",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 3,
	node_riverbed = "default:sand",
	depth_riverbed = 2,
	node_cave_liquid = "default:water_source",
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
	y_max = 3,
	y_min = -255,
    heat_point = 89,
    humidity_point = 77,
})

minetest.register_biome({
	name = "bamboo_under",
	node_cave_liquid = {"default:water_source", "default:lava_source"},
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble",
	y_max = -256,
	y_min = -31000,
    heat_point = 89,
    humidity_point = 77,
})

minetest.register_decoration({
    name = "bamboo_biome_granite_boulder_1",
    deco_type = "schematic",
    place_on = {"bamboo_biome:dirt_with_bamboo_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.002035/2,
    biomes = {"bamboo_forest"},
    y_max = 30,
    y_min = 0,
    schematic = minetest.get_modpath("bamboo_biome").."/schematics/bamboo_biome_granite_boulder_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bamboo_biome_granite_boulder_2",
    deco_type = "schematic",
    place_on = {"bamboo_biome:dirt_with_bamboo_grass"},
    place_offset_y = -2,
    sidelen = 16,
    fill_ratio = 0.002035/2,
    biomes = {"bamboo_forest"},
    y_max = 30,
    y_min = 0,
    schematic = minetest.get_modpath("bamboo_biome").."/schematics/bamboo_biome_granite_boulder_2.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bamboo_biome:jungle_tree",
    deco_type = "schematic",
    place_on = {"bamboo_biome:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.007565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("default").."/schematics/jungle_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bamboo_biome_bamboo_tree_1",
    deco_type = "schematic",
    place_on = {"bamboo_biome:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.012565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bamboo_biome").."/schematics/bamboo_biome_bamboo_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bamboo_biome_bamboo_tree_2",
    deco_type = "schematic",
    place_on = {"bamboo_biome:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.012565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bamboo_biome").."/schematics/bamboo_biome_bamboo_tree_1.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bamboo_biome_bamboo_tree_3",
    deco_type = "schematic",
    place_on = {"bamboo_biome:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.012565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bamboo_biome").."/schematics/bamboo_biome_bamboo_tree_3.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bamboo_biome_bamboo_tree_4",
    deco_type = "schematic",
    place_on = {"bamboo_biome:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.012565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bamboo_biome").."/schematics/bamboo_biome_bamboo_tree_4.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bamboo_biome_bamboo_tree_5",
    deco_type = "schematic",
    place_on = {"bamboo_biome:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.012565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bamboo_biome").."/schematics/bamboo_biome_bamboo_tree_5.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bamboo_biome_bamboo_tree_6",
    deco_type = "schematic",
    place_on = {"bamboo_biome:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.012565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bamboo_biome").."/schematics/bamboo_biome_bamboo_tree_6.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_decoration({
    name = "bamboo_biome_bamboo_tree_7",
    deco_type = "schematic",
    place_on = {"bamboo_biome:dirt_with_bamboo_grass"},
    place_offset_y = 0,
    sidelen = 16,
    fill_ratio = 0.012565,
    biomes = {"bamboo_forest"},
    y_max = 31000,
    y_min = -20,
    schematic = minetest.get_modpath("bamboo_biome").."/schematics/bamboo_biome_bamboo_tree_7.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

minetest.register_ore({
    ore_type        = "blob",
    ore             = "bamboo_biome:granite",
    wherein         = {"default:stone"},
    clust_scarcity  = 16 * 16 * 16,
    clust_size      = 5,
    y_max           = -50,
    y_min           = -31000,
    noise_threshold = 0.0,
    noise_params    = {
        offset = 0.5,
        scale = 0.2,
        spread = {x = 5, y = 5, z = 5},
        seed = 766,
        octaves = 1,
        persist = 0.0
    },
})

minetest.register_decoration({
	deco_type = "simple",
    place_on = {"bamboo_biome:dirt_with_bamboo_grass"},
	sidelen = 16,
	fill_ratio = 0.35,
	biomes = {"bamboo_forest"},
	decoration = {
		"default:grass_3", "default:grass_5", "default:grass_4", "default:junglegrass"
	}
})
