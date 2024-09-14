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

--minetest.register_alias("sakura_leaves", "bamboo_biome:sakura_leaves")


local function after_place_leaves(...)
	return default.after_place_leaves(...)
end

minetest.register_node("bamboo_biome:bamboo_wood", {
	description = S("Bamboo Wood"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"bamboo_biome_bamboo_wood.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

stairs.register_stair_and_slab("bamboo_wood", "bamboo_biome:bamboo_wood",
     {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	{"bamboo_biome_bamboo_wood.png"},
	S("Bamboo Wood Stair"),
	S("Bamboo Wood Slab"),
	default.node_sound_wood_defaults()
)

minetest.register_node("bamboo_biome:dirt_with_bamboo_grass", {
	description = S("Dirt with Bamboo Grass"),
	tiles = {"bamboo_biome_bamboo_grass.png", "default_dirt.png",
		{name = "default_dirt.png^bamboo_biome_bamboo_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("bamboo_biome:bamboo_glass", {
	description = S("Glass With Bamboo"),
	drawtype = "allfaces",
	tiles = {"bamboo_biome_bamboo_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("bamboo_biome:bamboo_block", {
	description = S("Bamboo Block"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"bamboo_biome_bamboo_block.png"},
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

stairs.register_stair_and_slab("bamboo_block", "bamboo_biome:bamboo_block",
     {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	{"bamboo_biome_bamboo_block.png"},
	S("Bamboo Block Stair"),
	S("Bamboo Block Slab"),
	default.node_sound_wood_defaults()
)

doors.register_trapdoor("bamboo_biome:bamboo_trapdoor", {
	description = S("Bamboo Trapdoor"),
	inventory_image = "bamboo_biome_bamboo_trapdoor.png",
	wield_image = "bamboo_biome_bamboo_trapdoor.png",
	tile_front = "bamboo_biome_bamboo_trapdoor.png",
	tile_side = "bamboo_biome_bamboo_trapdoor_side.png",
	gain_open = 0.06,
	gain_close = 0.13,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, door = 1},
})



doors.register("bamboo_door", {
		tiles = {{ name = "bamboo_biome_doors_bamboo_door.png", backface_culling = true }},
		description = S("Bamboo Door"),
		inventory_image = "bamboo_biome_bamboo_door_item.png",
		groups = {node = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		gain_open = 0.06,
		gain_close = 0.13,
		recipe = {
			{"bamboo_biome:fiber_bamboo", "bamboo_biome:bamboo_wood"},
			{"bamboo_biome:bamboo_wood", "bamboo_biome:fiber_bamboo"},
			{"bamboo_biome:fiber_bamboo", "bamboo_biome:bamboo_wood"},
		}
})

minetest.register_node("bamboo_biome:granite", {
	description = S("Granite"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"bamboo_biome_granite.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bamboo_biome:granite_block", {
	description = S("Granite Block"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"bamboo_biome_granite_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 2, level = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bamboo_biome:granite_brick", {
	description = S("Granite Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"bamboo_biome_granite_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

stairs.register_stair_and_slab("granite", "bamboo_biome:granite",
	{cracky = 3, stone = 2, level = 1},
	{"bamboo_biome_granite.png"},
	S("Granite Stair"),
	S("Granite Slab"),
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab("granite_block", "bamboo_biome:granite_block",
	{cracky = 3, stone = 2, level = 1},
	{"bamboo_biome_granite_block.png"},
	S("Granite Block Stair"),
	S("Granite Block Slab"),
	default.node_sound_wood_defaults()
)

stairs.register_stair_and_slab("granite_brick", "bamboo_biome:granite_brick",
	{cracky = 3, stone = 2, level = 1},
	{"bamboo_biome_granite_brick.png"},
	S("Granite Brick Stair"),
	S("Granite Brick Slab"),
	default.node_sound_wood_defaults()
)

default.register_fence("bamboo_biome:fence_bamboo_wood", {
	description = S("Bamboo Wood Fence"),
	texture = "bamboo_biome_bamboo_wood.png",
	inventory_image = "default_fence_overlay.png^bamboo_biome_bamboo_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^bamboo_biome_bamboo_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	material = "bamboo_biome:bamboo_wood",
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	sounds = default.node_sound_wood_defaults()
})

	default.register_fence_rail("bamboo_biome:fence_rail_bamboo_wood", {
		description = S("Bamboo Wood Fence Rail"),
		texture = "bamboo_biome_bamboo_wood.png",
		inventory_image = "default_fence_rail_overlay.png^bamboo_biome_bamboo_wood.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^bamboo_biome_bamboo_wood.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "bamboo_biome:bamboo_wood",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

doors.register_fencegate("bamboo_biome:gate_bamboo_wood", {
	description = (S"Bamboo Wood Fence Gate"),
	texture = "bamboo_biome_bamboo_wood.png",
	material = "bamboo_biome:bamboo_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

	default.register_fence("bamboo_biome:fence_bamboo_block", {
		description = S("Bamboo Wood Fence"),
		texture = "bamboo_biome_bamboo_block.png",
		inventory_image = "default_fence_overlay.png^bamboo_biome_bamboo_block.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^bamboo_biome_bamboo_block.png^" ..
					"default_fence_overlay.png^[makealpha:255,126,126",
		material = "bamboo_biome:bamboo_block",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

	default.register_fence_rail("bamboo_biome:fence_rail_bamboo_block", {
		description = S("Bamboo Wood Fence Rail"),
		texture = "bamboo_biome_bamboo_block.png",
		inventory_image = "default_fence_rail_overlay.png^bamboo_biome_bamboo_block.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_rail_overlay.png^bamboo_biome_bamboo_block.png^" ..
					"default_fence_rail_overlay.png^[makealpha:255,126,126",
		material = "bamboo_biome:bamboo_block",
		groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
		sounds = default.node_sound_wood_defaults()
	})

doors.register_fencegate("bamboo_biome:gate_bamboo_block", {
	description = S("Bamboo Block Fence Gate"),
	texture = "bamboo_biome_bamboo_block.png",
	material = "bamboo_biome:bamboo_block",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})

minetest.register_node("bamboo_biome:bamboo", {
	description = S("Bamboo"),
	drawtype = "plantlike",
	tiles = {"bamboo_biome_bamboo.png"},
	inventory_image = "bamboo_biome_bamboo.png",
	wield_image = "bamboo_biome_bamboo.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	drop = {
		max_items = 1,
		items = {
			{items = {"bamboo_biome:bamboo_sapling"}, rarity = 20},
			{items = {"bamboo_biome:bamboo"}}
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.10, -0.5, -0.10, 0.10, 0.5, 0.10}
	},
        collision_box = {
            type = "fixed",
		fixed = {-0.10, -0.5, -0.10, 0.10, 0.5, 0.10}
        },
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end

})

minetest.register_node("bamboo_biome:bamboo_leaves", {
	description = S("Bamboo Leaves"),
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"bamboo_biome_bamboo_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"bamboo_biome:bamboo_leaves_sprout"}, rarity = 20},
			{items = {"bamboo_biome:bamboo_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})


if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("bamboo_wood", "wood", "bamboo_biome:bamboo_wood", {
		description = "Bamboo Wood",
		tiles = {"bamboo_biome_bamboo_wood.png"},
      	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("bamboo_glass", "glass", "bamboo_biome:bamboo_glass", {
		description = "Bamboo Glass",
		tiles = {"bamboo_biome_bamboo_glass.png"},
    	groups = {cracky = 3, oddly_breakable_by_hand = 3},
    	sounds = default.node_sound_glass_defaults(),
	})

	stairsplus:register_all("bamboo_block", "wood", "bamboo_biome:bamboo_block", {
		description = "Bamboo Block",
		tiles = {"bamboo_biome_bamboo_block.png"},
	    groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	    sounds = default.node_sound_wood_defaults(),
	})

	stairsplus:register_all("granite", "stone", "bamboo_biome:granite", {
		description = "Granite",
		tiles = {"bamboo_biome_granite.png"},
	groups = {cracky = 3, stone = 2, level = 1},
	    sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("granite_block", "stone", "bamboo_biome:granite_block", {
		description = "Granite Block",
		tiles = {"bamboo_biome_granite_block.png"},
	groups = {cracky = 3, stone = 2, level = 1},
	    sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("granite_brick", "stone", "bamboo_biome:granite_brick", {
		description = "Granite Brick",
		tiles = {"bamboo_biome_granite_brick.png"},
	groups = {cracky = 3, stone = 2, level = 1},
	    sounds = default.node_sound_stone_defaults(),
	})

end

---------------------------------------------
-------------WALLS
---------------------------------------------

if minetest.get_modpath("walls") then


walls.register(":walls:bamboo_block", "Bamboo Block Wall", "bamboo_biome_bamboo_block.png",
		"bamboo_biome:bamboo_block", default.node_sound_wood_defaults())

walls.register(":walls:granite_brick", "Granite Brick Wall", "bamboo_biome_granite_brick.png",
		"bamboo_biome:granite_brick", default.node_sound_stone_defaults())
end

minetest.register_craft({
	output = "walls:granite_brick 6",
	recipe = {
		{"bamboo_biome:granite", "bamboo_biome:granite", "bamboo_biome:granite"},
		{"bamboo_biome:granite", "bamboo_biome:granite", "bamboo_biome:granite"},
		{"", "", ""},
	}
})
