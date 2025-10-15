local prefabs = {}

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

-- if CLIENT_MOD_RPC["ModdedSkins"] == nil then
--     return unpack(prefabs)
-- end

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
return unpack(prefabs)
