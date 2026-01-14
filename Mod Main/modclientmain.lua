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

GLOBAL.wagstaffgoggles_normalhat_init_fn = function(inst, build_name)
    GLOBAL.basic_init_fn(inst, build_name, "wagstaffgoggles_normal" )
end

GLOBAL.wagstaffgoggles_normalhat_clear_fn = function(inst)
    GLOBAL.basic_clear_fn(inst, "wagstaffgoggles_normal" )
end

PrefabFiles = {
    "fryfocals_charge",
    "wagstaffgoggles",
    "hiddendanger_fx",
    -- "telebrella",
    -- "telipad",
    -- "thumper",
    "mc_wagstaff",
    "wagstaffskins",
}

GLOBAL.continuous_mode = (GetModConfigData("music_mode")~="busy")
GLOBAL.require("components/dsp")._ctor = function(self, inst) end
Assets = {
	Asset("SOUNDPACKAGE", "sound/wagstaff_music.fev"),
    Asset("SOUND", "sound/music_mod.fsb"),
}
RemapSoundEvent( "dontstarve/music/music_FE", "wagstaff_music/music_mmenu/music_mmenu" )

GLOBAL.FE_MUSIC = "wagstaff_music/music_mmenu/music_mmenu"

----------Character Creation----------

local skin_modes = {
    {
        type = "ghost_skin",
        anim_bank = "ghost_wagstaff",
        idle_anim = "idle",
        scale = 0.75,
        offset = { 0, -25 }
    },
}

AddModCharacter("mc_wagstaff", "MALE", skin_modes)

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