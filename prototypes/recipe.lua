require("__realtech__/lib/libbase.lua")
require("__realtech__/lib/libproto.lua")

data:extend({
    {
        type = "recipe",
        enables = true,
        energy_required = 1,
        ingredients = {},
        name = "testitem-1",
        result = "testitem"
    },
    {
        type = "recipe",
        category = "crafting-with-fluid",
        enables = true,
        energy_required = 1,
        ingredients = {
            { "raw-fish", 2 },
            { "coal", 4 },
            { "uranium-ore", 2 },
            { "concrete", 6 },
            { type="fluid", name="lubricant", amount=25}
        },
        name = "lean-1",
        result = "lean"
    }
})