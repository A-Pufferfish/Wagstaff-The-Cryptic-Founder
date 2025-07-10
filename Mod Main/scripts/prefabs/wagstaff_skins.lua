local prefabs = {}

table.insert(prefabs, CreatePrefabSkin("wagstaff_none", {
    assets = {
        Asset("ANIM", "anim/wagstaff.zip"),
        Asset("ANIM", "anim/ghost_wagstaff_build.zip"),
    },
    skins = {
        normal_skin = "wagstaff",
        ghost_skin = "ghost_wagstaff_build",
    },

    base_prefab = "wagstaff",
    build_name_override = "wagstaff",

    type = "base",
    rarity = "Character",

    skin_tags = { "BASE", "WAGSTAFF" },
}))

if CLIENT_MOD_RPC["ModdedSkins"] == nil then
    return unpack(prefabs)
end

table.insert(prefabs, CreatePrefabSkin("ms_wagstaff_young", {
     assets = {
         Asset("ANIM", "anim/ms_wagstaff_young.dyn"),
         Asset("ANIM", "anim/ghost_wagstaff_build.zip"),
     },
     skins = {
         normal_skin = "ms_wagstaff_young",
         ghost_skin = "ghost_wagstaff_build",
     },

     base_prefab = "wagstaff",
     build_name_override = "ms_wagstaff_young",

     type = "base",
     rarity = "ModMade",

     skin_tags = { "BASE", "WAGSTAFF" },
}))

table.insert(prefabs, CreatePrefabSkin("ms_hat_waggoggles_young", {
     assets = {
         Asset("ANIM", "anim/ms_hat_waggoggles_young.dyn"),
     },
     base_prefab = "waggoggles_normal",
     build_name_override = "ms_hat_waggoggles_young",

     type = "item",
     rarity = "ModMade",

     skin_tags = { "WAGGOGGLES_NORMAL_HAT" },
}))

return unpack(prefabs)
