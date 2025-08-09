----------Asset Structure----------
do
    local GLOBAL = GLOBAL
    local modEnv = GLOBAL.getfenv(1)
    local rawget, setmetatable = GLOBAL.rawget, GLOBAL.setmetatable
    setmetatable(modEnv, { __index = function(_, index) return rawget(GLOBAL, index) end })
    _G = GLOBAL
end

modimport("scripts/utility/wagstaff_assets")
modimport("scripts/utility/wagstaff_tuning")
modimport("scripts/utility/wagstaff_strings")
modimport("scripts/utility/wagstaff_recipes")
modimport("scripts/utility/wagstaff_postinits")
modimport("scripts/utility/wagstaff_states")
modimport("scripts/utility/wagstaff_shaders")

GLOBAL.wagstaffgoggles_normal_init_fn = function(inst, build_name)
    GLOBAL.basic_init_fn(inst, build_name, "wagstaffgoggles_normal" )
end

GLOBAL.wagstaffgoggles_normal_clear_fn = function(inst)
    GLOBAL.basic_clear_fn(inst, "wagstaffgoggles_normal" )
end

RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/ms_wagstaffgoggles_normal_young.xml"), "ms_wagstaffgoggles_normal_young.tex")

PrefabFiles = {
    "fryfocals_charge",
    "wagstaffgoggles",
    "hiddendanger_fx",
    -- "telebrella",
    -- "telipad",
    -- "thumper",
    "mc_wagstaff",
    "mc_wagstaff_skins",
}

----------Character Creation----------

local skin_modes = {
    {
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle",
        scale = 0.75,
        offset = { 0, -25 }
    },
}

AddModCharacter("mc_wagstaff", "MALE", skin_modes)

----------Wagstaff Stategraphs----------

local function SGWilsonPostInit(sg)
    local oldtalk = sg.states["talk"].onenter

    sg.states["talk"].onenter = function(inst, noanim)
        oldtalk(inst)

        if inst:HasTag("hasvoiceintensity_health") then
            local percent = inst.components.health:GetPercent()
            inst.SoundEmitter:SetParameter("talk", "intensity", percent)
        end
    end
end

AddStategraphPostInit("wilson", SGWilsonPostInit)

local function SGWilsonPostInit(sg, data)
    local oldemote = sg.states["emote"].onenter
    sg.states["emote"].onenter = function(inst, data)
        oldemote(inst, data)
        

        if inst:HasTag("hasvoiceintensity_health") then
            local percent = inst.components.health:GetPercent()
            inst.SoundEmitter:SetParameter("emote", "intensity", percent)
        end
    end
end


AddStategraphPostInit("wilson", SGWilsonPostInit)

local function SGWilsonPostInit(sg)
    local oldhit = sg.states["hit"].onenter

    sg.states["hit"].onenter = function(inst, noanim)
        oldhit(inst)

        if inst:HasTag("hasvoiceintensity_health") then
            local percent = inst.components.health:GetPercent()
            inst.SoundEmitter:SetParameter("hit", "intensity", percent)
        end
    end
end

----------Forge/Gorge Compatability----------

if GorgeEnv ~= nil then
	GorgeEnv.AddLobbyVoice("mc_wagstaff", "wagstaff")
end

----------Winona Skilltree Application (Temporary for testing)----------
local SkillTreeDefs = require("prefabs/skilltree_defs")
local BuildSkillsData = require("prefabs/skilltree_winona")

local data = BuildSkillsData(SkillTreeDefs.FN)

if data then
    SkillTreeDefs.CreateSkillTreeFor("mc_wagstaff", data.SKILLS)
    SkillTreeDefs.SKILLTREE_ORDERS["mc_wagstaff"] = data.ORDERS
end

AddPrefabPostInit("mc_wagstaff", function(inst)
    inst:AddTag("handyperson")
    inst:AddComponent("inspectaclesparticipant")
    inst.customidleanim = "emote_impatient"
end)

AddPrefabPostInit("inspectacleshat", function(inst)
    inst:AddTag("nearsighted_glasses")
	inst:AddTag("goggles")
end)

AddPrefabPostInit("roseglaseshat", function(inst)
    inst:AddTag("nearsighted_glasses")
	inst:AddTag("goggles")
end)