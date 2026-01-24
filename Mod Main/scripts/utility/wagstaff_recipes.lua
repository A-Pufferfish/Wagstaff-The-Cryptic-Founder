local recipes = {}
--
-- recipes.wag_thumper = {
--     "wag_thumper",
--     { unpack(TUNING.WAG_THUMPER_RECIPE), },
--     TECH.NONE,
--     {
--         product = "wag_thumper",
--         builder_tag = "tinkerer",
--         placer = "thumper_placer",
--         atlas = "images/inventoryimages/thumper.xml",
--         image = "thumper.tex",
--     },
--     {
--         "MODS",
--         "STRUCTURES",
--     }
-- }
--
-- recipes.wag_telipad = {
--     "wag_telipad",
--     { unpack(TUNING.WAG_TELIPAD_RECIPE), },
--     TECH.NONE,
--     {
--         product = "wagstaff_telipad",
--         builder_tag = "tinkerer",
--         placer = "telipad_placer",
--         atlas = "images/inventoryimages/wagstaff_telipad.xml",
--         image = "wagstaff_telipad.tex",
--     },
--     {
--         "MODS",
--         "STRUCTURES",
--     }
-- }
--
recipes.wagstaffgoggles_normal = {
    "wagstaffgoggles_normal",
    { unpack(TUNING.WAGSTAFFGOGGLES_NORMAL_RECIPE), },
    TECH.NONE,
    {
        product = "wagstaffgoggles_normal",
        builder_tag = "tinkerer", atlas = "images/inventoryimages/wagstaffgoggles_normal.xml", image = "wagstaffgoggles_normal.tex"
    },
    {
        "MODS",
        "CLOTHING",
    }
}
-- --
-- recipes.wag_telebrella = {
--     "wag_telebrella",
--     { unpack(TUNING.WAG_TELEBRELLA_RECIPE), },
--     TECH.NONE,
--     {
--         product = "wag_telebrella",
--         builder_tag = "tinkerer",
--         atlas = "images/inventoryimages/wagstaff_telebrella.xml",
--         image = "wagstaff_telebrella.tex",
--     },
--     {
--         "MODS",
--         "TOOLS",
--     }
-- }
--
recipes.wagstaffgoggles_shoot = {
    "wagstaffgoggles_shoot",
    { unpack(TUNING.WAGSTAFFGOGGLES_SHOOT_RECIPE), },
    TECH.NONE,
    {
        product = "wagstaffgoggles_shoot",
        builder_tag = "tinkerer",
        atlas = "images/inventoryimages/wagstaffgoggles_shoot.xml",
        image = "wagstaffgoggles_shoot.tex",
    },
    {
        "MODS",
        "CLOTHING",
    }
}
--
recipes.wagstaffgoggles_nightvision = {
    "wagstaffgoggles_nightvision",
    { unpack(TUNING.WAGSTAFFGOGGLES_NIGHTVISION_RECIPE), },
    TECH.NONE,
    {
        product = "wagstaffgoggles_nightvision",
        builder_tag = "tinkerer",
        atlas = "images/inventoryimages/wagstaffgoggles_nightvision.xml",
        image = "wagstaffgoggles_nightvision.tex",
    },
    {
        "MODS",
        "CLOTHING",
    }
}
--
recipes.wagstaffgoggles_armor = {
    "wagstaffgoggles_armor",
    { unpack(TUNING.WAGSTAFFGOGGLES_ARMOR_RECIPE), },
    TECH.NONE,
    {
        product = "wagstaffgoggles_armor",
        builder_tag = "tinkerer",
        atlas = "images/inventoryimages/wagstaffgoggles_armor.xml",
        image = "wagstaffgoggles_armor.tex",
    },
    {
        "MODS",
        "CLOTHING",
    }
}

for _, recipe in pairs(recipes) do AddCharacterRecipe(unpack(recipe)) end