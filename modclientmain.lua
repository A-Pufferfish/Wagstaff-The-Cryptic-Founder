----------Asset Structure----------
do
    local GLOBAL = GLOBAL
    local modEnv = GLOBAL.getfenv(1)
    local rawget, setmetatable = GLOBAL.rawget, GLOBAL.setmetatable
    setmetatable(modEnv, { __index = function(_, index) return rawget(GLOBAL, index) end })
    _G = GLOBAL
end

PrefabFiles = {
	"wagstaff",
	"wagstaff_skins",
	"goggles",
	"fryfocals_charge",
	"thumper",
	"telipad",
	"telebrella",
	"hiddendanger_fx",
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
modimport("scripts/utility/wagstaff_sounds")

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

----------External Notes----------

-- GLOBAL.ACTIONS.LOOKAT.blind_ok = true

--Skins
-- local _G = GLOBAL
-- local PREFAB_SKINS = _G.PREFAB_SKINS
-- local PREFAB_SKINS_IDS = _G.PREFAB_SKINS_IDS
-- local SKIN_AFFINITY_INFO = GLOBAL.require("skin_affinity_info")

-- modimport("skins")

-- SKIN_AFFINITY_INFO.wagstaff = {
	--"wagstaff_victorian", --Hornet: These skins will show up for the character when the Survivor filter is enabled
-- }

-- PREFAB_SKINS["wagstaff"] = {"wagstaff_none"}
-- PREFAB_SKINS["wagstaff"] = {"wagstaff_none"}--, "wagstaff_victorian"}
--[[	--Hornet: The table of skins youre going to have, You can have as many skins as you want!
	PREFAB_SKINS["wagstaff"] = {
		"wagstaff_none", 
		"wagstaffa_roseate",
		"wagstaff_victorian",
	} --And So on!
]]
-- PREFAB_SKINS["wagstaff"] = {"wagstaff_none"}

-- PREFAB_SKINS_IDS = {}
-- for prefab,skins in pairs(PREFAB_SKINS) do
--     PREFAB_SKINS_IDS[prefab] = {}
--     for k,v in pairs(skins) do
--         PREFAB_SKINS_IDS[prefab][v] = k
--     end
-- end

-- Niko: I hate how things about the sandstorm being bound to the overlay

-- AddClientModRPCHandler("HCR", "disablegogglevision", function(player) 
-- 	player:DoTaskInTime(0.15, function(player) 
-- 		player:PushEvent("gogglevision", { enabled = false }) 
-- 		print("disabling gogglevision for: " .. player.name) 
-- 	end)
-- end)

--AddSkinnableCharacter("wagstaff") --Hornet: The character you'd like to skin, make sure you use the prefab name