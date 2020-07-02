---WIP---
---REDO RECIPE---
RECIPE {
    type = "recipe",
    name = "space-sap-extractor-mk01",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"stone-brick", 30},
        {"soil", 100},
        {"pipe", 15},
        {"inserter", 2},
        {"electronic-circuit", 5},
        {"iron-plate", 30},
    },
    results = {
        {"space-sap-extractor-mk01", 1}
    }
}

ITEM {
    type = "item",
    name = "space-sap-extractor-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/sap-extractor-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "e",
    place_result = "space-sap-extractor-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-sap-extractor-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/sap-extractor-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-sap-extractor-mk01"},
    fast_replaceable_group = "sap-extractor",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    fixed_recipe = "sap-01",
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", 'productivity'},
    crafting_categories = {"sap"},
    crafting_speed = 0.1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -15,
    },
    energy_usage = "150kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/sap-extractor/i.png",
                width = 160,
                height = 178,
                line_length = 10,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -10)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/sap-extractor/i-mask.png",
                width = 160,
                height = 178,
                line_length = 10,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(0, -10),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/sap-extractor/shadow.png",
                width = 160,
                height = 160,
                line_length = 10,
                frame_count = 100,
                animation_speed = 0.3,
                shift = util.by_pixel(5, -5),
                draw_as_shadow = true,
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/dome/dome.png",
                frame_count = 1,
                width = 437,
                height = 571,
                shift = util.by_pixel(0, -64),
                priority = "low",
                --animation_speed = 0.75,
                scale = 1
            },
        }
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/sap-extractor.ogg", volume = 0.6},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/sap-extractor.ogg", volume = 0.4},
        apparent_volume = 2.5
    }
}