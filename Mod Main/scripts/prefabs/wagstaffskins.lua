local groupid = 1919

local prefabs = {}

-- Base Wagstaff
table.insert(prefabs, CreatePrefabSkin("mc_wagstaff_none", {
    assets = {
        Asset("ANIM", "anim/mc_wagstaff.zip"),
        Asset("ANIM", "anim/ghost_wagstaff.zip"),
    },
    skins = {
        normal_skin = "mc_wagstaff",
        ghost_skin = "ghost_wagstaff",
    },

    base_prefab = "mc_wagstaff",
    build_name_override = "mc_wagstaff",

    type = "base",
    rarity = "Character",

    skin_tags = { "BASE", "MC_WAGSTAFF" },
}))

-- Young Wagstaff
table.insert(prefabs, CreatePrefabSkin("ms_mc_wagstaff_young", {
    assets = {
        Asset("DYNAMIC_ANIM", "anim/dynamic/ms_mc_wagstaff_young.zip"),
        Asset("PKGREF", "anim/dynamic/ms_mc_wagstaff_young.dyn"),
    },
    skins = {
        normal_skin = "ms_mc_wagstaff_young",
        ghost_skin = "ghost_wagstaff_build",
    },

    base_prefab = "mc_wagstaff",
    build_name_override = "ms_mc_wagstaff_young",

    type = "base",
    rarity = "ModMade",

    skin_tags = { "YOUNG", "MC_WAGSTAFF" },
}))

-- Young Spectoggles
table.insert(prefabs, CreatePrefabSkin("ms_wagstaffgoggles_normal_young", {
    assets = {
        Asset("ANIM", "anim/ms_wagstaffgoggles_normal_young.zip"),
    },
    base_prefab = "wagstaffgoggles_normal",
    build_name_override = "ms_wagstaffgoggles_normal_young",

    type = "item",
    rarity = "ModMade",

    skin_tags = { "WAGSTAFFGOGGLES_NORMAL", "YOUNG" }
}))

-- -- Doohickey Pickaxe (Standard)
-- table.insert(prefabs, CreatePrefabSkin("ms_pickaxe_doohickey", {
-- 	assets = {
-- 		Asset("ANIM", "anim/ms_pickaxe_doohickey.zip"),
-- 	},
-- 	base_prefab = "pickaxe",
-- 	build_name_override = "ms_pickaxe_doohickey",
-- 	type = "item",
-- 	rarity = "ModMade",

-- 	skin_tags = { "PICKAXE", "DOOHICKEY",},
-- 	release_group = groupid,
-- }))

-- -- Doohickey Pickaxe (Golden)
-- table.insert(prefabs, CreatePrefabSkin("ms_goldenpickaxe_doohickey", {
-- 	assets = {
-- 		Asset("DYNAMIC_ANIM", "anim/dynamic/ms_goldenpickaxe_doohickey.zip"),
-- 		Asset("PKGREF", "anim/dynamic/ms_goldenpickaxe_doohickey.dyn"),
-- 	},
-- 	base_prefab = "goldenpickaxe",
-- 	build_name_override = "ms_goldenpickaxe_doohickey",
-- 	type = "item",
-- 	rarity = "ModMade",

-- 	skin_tags = { "GOLDENPICKAXE", "DOOHICKEY",},
-- 	release_group = groupid,
-- }))

-- Doohickey Axe (Standard)
table.insert(prefabs, CreatePrefabSkin("doohickeyaxe", {
 	assets = {
 		Asset("DYNAMIC_ANIM", "anim/dynamic/doohickeyaxe.zip"),
 		Asset("PKGREF", "anim/dynamic/doohickeyaxe.dyn"),
 	},
 	base_prefab = "axe",
 	build_name_override = "doohickeyaxe",
 	type = "item",
 	rarity = "ModMade",

 	skin_tags = { "AXE", "DOOHICKEY",},
 	release_group = groupid,
}))

-- -- Doohickey Axe (Golden)
-- table.insert(prefabs, CreatePrefabSkin("ms_goldenaxe_doohickey", {
-- 	assets = {
-- 		Asset("DYNAMIC_ANIM", "anim/dynamic/ms_goldenaxe_doohickey.zip"),
-- 		Asset("PKGREF", "anim/dynamic/ms_goldenaxe_doohickey.dyn"),
-- 	},
-- 	base_prefab = "goldenaxe",
-- 	build_name_override = "ms_goldenaxe_doohickey",
-- 	type = "item",
-- 	rarity = "ModMade",

-- 	skin_tags = { "GOLDENAXE", "DOOHICKEY",},
-- 	release_group = groupid,
-- }))

-- -- Doohickey Shovel (Standard)
-- table.insert(prefabs, CreatePrefabSkin("ms_shovel_doohickey", {
-- 	assets = {
-- 		Asset("DYNAMIC_ANIM", "anim/dynamic/ms_shovel_doohickey.zip"),
-- 		Asset("PKGREF", "anim/dynamic/ms_shovel_doohickey.dyn"),
-- 	},
-- 	base_prefab = "shovel",
-- 	build_name_override = "ms_shovel_doohickey",
-- 	type = "item",
-- 	rarity = "ModMade",

-- 	skin_tags = { "SHOVEL", "DOOHICKEY",},
-- 	release_group = groupid,
-- }))

-- -- Doohickey Shovel (Golden)
-- table.insert(prefabs, CreatePrefabSkin("ms_goldenshovel_doohickey", {
-- 	assets = {
-- 		Asset("DYNAMIC_ANIM", "anim/dynamic/ms_goldenshovel_doohickey.zip"),
-- 		Asset("PKGREF", "anim/dynamic/ms_goldenshovel_doohickey.dyn"),
-- 	},
-- 	base_prefab = "goldenshovel",
-- 	build_name_override = "ms_goldenshovel_doohickey",
-- 	type = "item",
-- 	rarity = "ModMade",

-- 	skin_tags = { "GOLDENSHOVEL", "DOOHICKEY",},
-- 	release_group = groupid,
-- }))





-- -- Doohickey Hoe (Standard)
-- table.insert(prefabs, CreatePrefabSkin("ms_quagmire_hoe_doohickey", {
-- 	assets = {
-- 		Asset("DYNAMIC_ANIM", "anim/dynamic/ms_quagmire_hoe_doohickey.zip"),
-- 		Asset("PKGREF", "anim/dynamic/ms_quagmire_hoe_doohickey.dyn"),
-- 	},
-- 	base_prefab = "quagmire_hoe",
-- 	build_name_override = "ms_quagmire_hoe_doohickey",
-- 	type = "item",
-- 	rarity = "ModMade",

-- 	skin_tags = { "QUAGMIRE_HOE", "DOOHICKEY",},
-- 	release_group = groupid,
-- }))

-- -- Doohickey Hoe (Golden)
-- table.insert(prefabs, CreatePrefabSkin("ms_golden_farm_hoe_doohickey", {
-- 	assets = {
-- 		Asset("DYNAMIC_ANIM", "anim/dynamic/ms_golden_farm_hoe_doohickey.zip"),
-- 		Asset("PKGREF", "anim/dynamic/ms_golden_farm_hoe_doohickey.dyn"),
-- 	},
-- 	base_prefab = "golden_farm_hoe",
-- 	build_name_override = "ms_golden_farm_hoe_doohickey",
-- 	type = "item",
-- 	rarity = "ModMade",

-- 	skin_tags = { "GOLDEN_FARM_HOE", "DOOHICKEY",},
-- 	release_group = groupid,
-- }))

-- -- Doohickey Hammer
-- table.insert(prefabs, CreatePrefabSkin("ms_hammer_doohickey", {
-- 	assets = {
-- 		Asset("DYNAMIC_ANIM", "anim/dynamic/ms_hammer_doohickey.zip"),
-- 		Asset("PKGREF", "anim/dynamic/ms_hammer_doohickey.dyn"),
-- 	},
-- 	base_prefab = "hammer",
-- 	build_name_override = "ms_hammer_doohickey",
-- 	type = "item",
-- 	rarity = "ModMade",

-- 	skin_tags = { "HAMMER", "DOOHICKEY",},
-- 	release_group = groupid,
-- }))

return unpack(prefabs)
