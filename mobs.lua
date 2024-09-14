if minetest.get_modpath("mobs_monster") then

	mobs:spawn({
		name = "mobs_monster:dirt_monster",
		nodes = {"bamboo_biome:dirt_with_bamboo_grass"},
		min_light = 0,
		max_light = 7,
		chance = 6000,
		active_object_count = 2,
		min_height = 0,
		day_toggle = false,
	})
end


if minetest.get_modpath("mobs_animal") then

	mobs:spawn({
		name = "mobs_animal:cow",
		nodes = {"bamboo_biome:dirt_with_bamboo_grass"},
		neighbors = {"group:grass"},
		min_light = 14,
		interval = 60,
		chance = 8000,
		min_height = 5,
		max_height = 200,
		day_toggle = true,
	})

	mobs:spawn({
		name = "mobs_animal:sheep_white",
		nodes = {"bamboo_biome:dirt_with_bamboo_grass"},
		neighbors = {"group:grass"},
		min_light = 14,
		interval = 60,
		chance = 8000,
		min_height = 0,
		max_height = 200,
		day_toggle = true,
	})

	mobs:spawn({
		name = "mobs_animal:panda",
		nodes = {"bamboo_biome:dirt_with_bamboo_grass"},
--		neighbors = {"group:grass"},
		min_light = 14,
		interval = 60,
		chance = 12000,
		min_height = 5,
		max_height = 200,
		day_toggle = true,
	})
end
