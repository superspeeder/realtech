-- lib/libproto.lua
--
-- This file will contain all data stage utilities (prototype factories, data helpers, etc)

if lib == nil then
    lib = {}
end

if lib.graphics == nill then
    lib.graphics = {}
end

if lib.entity == nill then
    lib.entity = {}
end

function lib.graphics.png(name)
    return "__realtech__/graphics/"..name..".png"
end

function lib.graphics.icon(name)
    return lib.graphics.png("icons/"..name)
end

function lib.graphics.item_icon(name)
    return lib.graphics.icon("item/"..name)
end

lib.standard_item_icon_size = 32
lib.standard_tech_icon_size = 128
lib.standard_achievement_icon_size = 128
lib.standard_recipe_icon_size = 32
lib.standard_tile_size = 32
lib.standard_entity_collision_margin = 0.1

function lib.entity.create_selection_box(width, height)
    return {
        {-width/2.0, -height/2.0},
        {width/2.0, height/2.0}
    }
end

function lib.entity.calculate_std_collision_box(selection_box)
    return {
        {selection_box[1][1] + lib.standard_entity_collision_margin, selection_box[1][2] + lib.standard_entity_collision_margin},
        {selection_box[2][1] - lib.standard_entity_collision_margin, selection_box[2][2] - lib.standard_entity_collision_margin}
    }
end

-- @param size_ a table with format {width,height}
function lib.graphics.make_sprite(graphics_path, size_)
    return {
        filename = lib.graphics.png(graphics_path),
        size = size_
    }
end

return lib