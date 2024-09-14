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


minetest.register_craftitem("bamboo_biome:bamboo_cooked", {
	description = S("Bamboo Cooked"),
	inventory_image = "bamboo_biome_cooked_bamboo.png",
	on_use = minetest.item_eat(2),
	groups = {food_bread = 1},
})

minetest.register_craftitem("bamboo_biome:fiber_bamboo", {
	description = S("Bamboo Fiber"),
	inventory_image = "bamboo_biome_bamboo_fiber.png",

})