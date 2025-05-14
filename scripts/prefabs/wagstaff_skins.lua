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

-- table.insert(prefabs, CreatePrefabSkin("ms_wagstaff_triumphant", {
--     assets = {
--         Asset("ANIM", "anim/ms_wagstaff_triumphant.zip"),
--         Asset("ANIM", "anim/ghost_wagstaff_build.zip"),
--     },
--     skins = {
--         normal_skin = "ms_wagstaff_triumphant",
--         ghost_skin = "ghost_wagstaff_build",
--     },

--     base_prefab = "wagstaff",
--     build_name_override = "ms_wagstaff_triumphant",

--     type = "base",
--     rarity = "ModMade",

--     skin_tags = { "BASE", "WAGSTAFF", "SHADOW" },
-- }))

-- table.insert(prefabs, CreatePrefabSkin("ms_wagstaff_snowfallen", {
--     assets = {
--         Asset("ANIM", "anim/ms_wagstaff_snowfallen.zip"),
--         Asset("ANIM", "anim/ghost_wagstaff_build.zip"),
--     },
--     skins = {
--         normal_skin = "ms_wagstaff_snowfallen",
--         ghost_skin = "ghost_wagstaff_build",
--     },

--     base_prefab = "wagstaff",
--     build_name_override = "ms_wagstaff_snowfallen",

--     type = "base",
--     rarity = "ModMade",

--     skin_tags = { "BASE", "WAGSTAFF", "WINTER" },
-- }))

-- table.insert(prefabs, CreatePrefabSkin("ms_wagstaff_magmatic", {
--     assets = {
--         Asset("ANIM", "anim/ms_wagstaffk_magmatic.zip"),
--         Asset("ANIM", "anim/ghost_wagstaff_build.zip"),
--     },
--     skins = {
--         normal_skin = "ms_wagstaff_magmatic",
--         ghost_skin = "ghost_wagstaff_build",
--     },

--     base_prefab = "wagstaff",
--     build_name_override = "ms_wagstaff_magmatic",

--     type = "base",
--     rarity = "ModMade",

--     skin_tags = { "BASE", "WAGSTAFFK", "LAVA" },
-- }))

-- table.insert(prefabs, CreatePrefabSkin("ms_wagstaff_roseate", {
--     assets = {
--         Asset("ANIM", "anim/ms_wagstaff_roseate.zip"),
--         Asset("ANIM", "anim/ghost_wagstaff_build.zip"),
--     },
--     skins = {
--         normal_skin = "ms_wagstaff_roseate",
--         ghost_skin = "ghost_wagstaff_build",
--     },

--     base_prefab = "wagstaff",
--     build_name_override = "ms_wagstaff_roseate",

--     type = "base",
--     rarity = "ModMade",

--     skin_tags = { "BASE", "WAGSTAFF", "ROSE" },
-- }))

-- table.insert(prefabs, CreatePrefabSkin("ms_wagstaff_moonbound", {
--     assets = {
--         Asset("ANIM", "anim/ms_wagstaff_moonbound.zip"),
--         Asset("ANIM", "anim/ghost_wagstaff_build.zip"),
--     },
--     skins = {
--         normal_skin = "ms_wagstaff_moonbound",
--         ghost_skin = "ghost_wagstaff_build",
--     },

--     base_prefab = "wagstaff",
--     build_name_override = "ms_wagstaff_moonbound",

--     type = "base",
--     rarity = "ModMade",

--     skin_tags = { "BASE", "WAGSTAFF", "LUNAR" },
-- }))

-- --ITEM SKINS

-- table.insert(prefabs, CreatePrefabSkin("ms_gogglesnormalhat_triumphant", {
--     assets = {
--         Asset("ANIM", "anim/ms_gogglesnormalhat_triumphant.zip"),
--     },
--     base_prefab = "gogglesnormalhat",
--     build_name_override = "ms_gogglesnormalhat_triumphant",

--     type = "item",
--     rarity = "ModMade",

--     skin_tags = { "GOGGLESNORMALHAT", "SHADOW" },
-- }))

-- table.insert(prefabs, CreatePrefabSkin("ms_gogglesnormalhat_snowfallen", {
--     assets = {
--         Asset("ANIM", "anim/ms_gogglesnormalhat_snowfallen.zip"),
--     },
--     base_prefab = "gogglesnormalhat",
--     build_name_override = "ms_gogglesnormalhat_snowfallen",

--     type = "item",
--     rarity = "ModMade",

--     skin_tags = { "GOGGLESNORMALHAT", "WINTER" },
-- }))

-- table.insert(prefabs, CreatePrefabSkin("ms_gogglesnormalhat_magmatic", {
--     assets = {
--         Asset("ANIM", "anim/ms_gogglesnormalhat_magmatic.zip"),
--     },
--     base_prefab = "gogglesnormalhat",
--     build_name_override = "ms_gogglesnormalhat_magmatic",

--     type = "item",
--     rarity = "ModMade",

--     skin_tags = { "GOGGLESNORMALHAT", "LAVA" },
-- }))

-- table.insert(prefabs, CreatePrefabSkin("ms_gogglesnormalhat_roseate", {
--     assets = {
--         Asset("ANIM", "anim/ms_gogglesnormalhat_roseate.zip"),
--     },
--     base_prefab = "gogglesnormalhat",
--     build_name_override = "ms_gogglesnormalhat_roseate",

--     type = "item",
--     rarity = "ModMade",

--     skin_tags = { "GOGGLESNORMALHAT", "ROSE" },
-- }))

-- table.insert(prefabs, CreatePrefabSkin("ms_gogglesnormalhat_moonbound", {
--     assets = {
--         Asset("ANIM", "anim/ms_gogglesnormalhat_moonbound.zip"),
--     },
--     base_prefab = "gogglesnormalhat",
--     build_name_override = "ms_gogglesnormalhat_moonbound",

--     type = "item",
--     rarity = "ModMade",

--     skin_tags = { "GOGGLESNORMALHAT", "LUNAR" },
-- }))

-- return unpack(prefabs)
