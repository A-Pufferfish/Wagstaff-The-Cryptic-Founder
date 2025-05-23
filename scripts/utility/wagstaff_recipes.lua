local recipes = {}
--
recipes.wag_thumper = {
    "wag_thumper",
    { unpack(TUNING.WAG_THUMPER_RECIPE), },
    TECH.NONE,
    {
        product = "wag_thumper",
        builder_tag = "tinkerer",
        placer = "thumper_placer",
        atlas = "images/inventoryimages/thumper.xml",
        image = "thumper.tex",
    },
    {
        "MODS",
        "STRUCTURES",
    }
}
--
recipes.wag_telipad = {
    "wag_telipad",
    { unpack(TUNING.WAG_TELIPAD_RECIPE), },
    TECH.NONE,
    {
        product = "wagstaff_telipad",
        builder_tag = "tinkerer",
        placer = "telipad_placer",
        atlas = "images/inventoryimages/wagstaff_telipad.xml",
        image = "wagstaff_telipad.tex",
    },
    {
        "MODS",
        "STRUCTURES",
    }
}
--
recipes.waggoggles_normal_hat = {
    "waggoggles_normal_hat",
    { unpack(TUNING.WAGGOGGLES_NORMAL_RECIPE), },
    TECH.NONE,
    {
        product = "waggoggles_normal_hat",
        builder_tag = "tinkerer",
        atlas = "images/inventoryimages/waggoggles_normal.xml",
        image = "waggoggles_normal.tex",
    },
    {
        "MODS",
        "CLOTHING",
    }
}
--
recipes.wag_telebrella = {
    "wag_telebrella",
    { unpack(TUNING.WAG_TELEBRELLA_RECIPE), },
    TECH.NONE,
    {
        product = "wag_telebrella",
        builder_tag = "tinkerer",
        atlas = "images/inventoryimages/wagstaff_telebrella.xml",
        image = "wagstaff_telebrella.tex",
    },
    {
        "MODS",
        "TOOLS",
    }
}
--
recipes.waggoggles_shoot_hat = {
    "waggoggles_shoot_hat",
    { unpack(TUNING.WAGGOGGLES_SHOOT_RECIPE), },
    TECH.NONE,
    {
        product = "waggoggles_shoot_hat",
        builder_tag = "tinkerer",
        atlas = "images/inventoryimages/waggoggles_shoot.xml",
        image = "waggoggles_shoot.tex",
    },
    {
        "MODS",
        "CLOTHING",
    }
}
--
recipes.waggoggles_heat_hat = {
    "waggoggles_heat_hat",
    { unpack(TUNING.WAGGOGGLES_HEAT_RECIPE), },
    TECH.NONE,
    {
        product = "waggoggles_heat_hat",
        builder_tag = "tinkerer",
        atlas = "images/inventoryimages/waggoggles_heat.xml",
        image = "waggoggles_heat.tex",
    },
    {
        "MODS",
        "CLOTHING",
    }
}
--
recipes.waggoggles_armor_hat = {
    "waggoggles_armor_hat",
    { unpack(TUNING.WAGGOGGLES_ARMOR_RECIPE), },
    TECH.NONE,
    {
        product = "waggoggles_armor_hat",
        builder_tag = "tinkerer",
        atlas = "images/inventoryimages/waggoggles_armor.xml",
        image = "waggoggles_armor.tex",
    },
    {
        "MODS",
        "CLOTHING",
    }
}

for _, recipe in pairs(recipes) do AddCharacterRecipe(unpack(recipe)) end