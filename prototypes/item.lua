require("__realtech__/lib/libbase.lua")
require("__realtech__/lib/libproto.lua")

data:extend({
    {
        type = "item",
        name = "testitem",
        icon = lib.graphics.item_icon("testitem"),
        icon_size = lib.standard_item_icon_size,
        subgroup = "raw-material"
    },
    {
        type = "capsule",
        name = "lean",
        capsule_action = {
            attack_parameters = {
                type = "projectile",
                activation_type = "consume",
                ammo_category = "capsule",
                ammo_type = {
                    action = {
                        action_delivery = {
                            target_effects = {
                                {
                                    type = "damage",
                                    damage = {
                                        amount = 80,
                                        type = "poison"
                                    },
                                    show_in_tooltip = false
                                },
                                {
                                    type = "create-smoke",
                                    entity_name = "poison-cloud-visual-dummy",
                                    show_in_tooltip = false,
                                    initial_height = 0
                                },
                                {
                                    delay = 0,
                                    duration = 120,
                                    ease_in_duration = 5,
                                    ease_out_duration = 60,
                                    effect = "screen-burn",
                                    full_strength_max_distance = 20,
                                    max_distance = 20,
                                    strength = 16,
                                    type = "camera-effect"
                                },
                                {
                                    type = "script",
                                    effect_id = "lean"
                                },
                                {
                                    sound = {
                                        {
                                            filename = "__base__/sound/eat.ogg",
                                            volume = 0.6
                                        },
                                        {
                                            filename = "__base__/sound/eat-1.ogg",
                                            volume = 0.6
                                        },
                                        {
                                            filename = "__base__/sound/eat-2.ogg",
                                            volume = 0.6
                                        },
                                        {
                                            filename = "__base__/sound/eat-3.ogg",
                                            volume = 0.6
                                        },
                                        {
                                            filename = "__base__/sound/eat-4.ogg",
                                            volume = 0.6
                                        }
                                    },
                                    type = "play-sound"
                                }
                            },
                            type = "instant"
                        },
                        type = "direct"
                    },
                    category = "capsule",
                    target_type = "position"
                },
                cooldown = 30,
                range = 0
            },
            type = "use-on-self"
          },
        icon = lib.graphics.item_icon("lean"),
        icon_size = lib.standard_item_icon_size,
        subgroup = "raw-material",
        stack_size = 250,
    }
})