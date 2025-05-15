----------Asset Structure----------
do
    local GLOBAL = GLOBAL
    local modEnv = GLOBAL.getfenv(1)
    local rawget, setmetatable = GLOBAL.rawget, GLOBAL.setmetatable
    setmetatable(modEnv, { __index = function(_, index) return rawget(GLOBAL, index) end })
    _G = GLOBAL
end

PrefabFiles = {
    "fryfocals_charge",
    "goggles",
    "hiddendanger_fx",
    "telebrella",
    "telipad",
    "thumper",
    "wagstaff",
    "wagstaff_skins",
}

math.clamp = math.clamp
table.invert = table.invert
table.contains = table.contains
table.removearrayvalue = table.removearrayvalue

modimport("scripts/utility/wagstaff_assets")
modimport("scripts/utility/wagstaff_tuning")
modimport("scripts/utility/wagstaff_strings")
modimport("scripts/utility/wagstaff_recipes")
modimport("scripts/utility/wagstaff_postinits")
modimport("scripts/utility/wagstaff_states")
modimport("scripts/utility/wagstaff_shaders")

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

AddModCharacter("wagstaff", "MALE", skin_modes)

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

----------Forge/Gorge Compatability----------

if GorgeEnv ~= nil then
	GorgeEnv.AddLobbyVoice("wagstaff", "wagstaff")
end

----------Winona Skilltree Application (Temporary for testing)----------
local SkillTreeDefs = require("prefabs/skilltree_defs")
local BuildSkillsData = require("prefabs/skilltree_winona")

local data = BuildSkillsData(SkillTreeDefs.FN)

if data then
    SkillTreeDefs.CreateSkillTreeFor("wagstaff", data.SKILLS)
    SkillTreeDefs.SKILLTREE_ORDERS["wagstaff"] = data.ORDERS
end

AddPrefabPostInit("wagstaff", function(inst)
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

----------Menu Rift Compatability----------

if TUNING.MENUREMIX_MODDEDCHAR_VOICES then
    TUNING.MENUREMIX_MODDEDCHAR_VOICES.wagstaff = "wagstaff_voice/wagstaff/talk_LP"
    
end

--Optional
if STRINGS.MENUREMIX then
    STRINGS.MENUREMIX.MODDEDCHARACTER_LINES.wagstaff= 
    {
        "Progress waits for no one!",


    }

end