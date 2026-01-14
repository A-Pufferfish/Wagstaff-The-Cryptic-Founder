GLOBAL.MC_WAGSTAFF_ATLAS = MODROOT.."images/mc_wagstaff_images.xml"

local MC_WAGSTAFF_ICONS = GLOBAL.resolvefilepath("images/mc_wagstaff_images.xml")

Assets = {
	Asset("IMAGE", "images/mc_wagstaff_images.tex"),
	Asset("ATLAS", "images/mc_wagstaff_images.xml"),
	Asset("ATLAS_BUILD", "images/mc_wagstaff_images.xml", 256),
	
	Asset("IMAGE", "images/mc_wagstaff_minimap.tex"),
	Asset("ATLAS", "images/mc_wagstaff_minimap.xml"),
	
	Asset("ATLAS", "images/fx5.xml"),
	Asset("IMAGE", "images/fx5.tex"),
	
	Asset("ATLAS", "images/fx6.xml"),
	Asset("IMAGE", "images/fx6.tex"),
	
	Asset("IMAGE", "images/colour_cubes/heat_vision_cc.tex"),
	Asset("IMAGE", "images/colour_cubes/shooting_goggles_cc.tex"),
	
	Asset("ATLAS", "images/saveslot_portraits/mc_wagstaff.xml"),
	Asset("IMAGE", "images/saveslot_portraits/mc_wagstaff.tex"),
	
	Asset("ATLAS", "bigportraits/mc_wagstaff.xml"),
	Asset("IMAGE", "bigportraits/mc_wagstaff.tex"),
	
	Asset("ATLAS", "images/avatars/avatar_mc_wagstaff.xml"),
	Asset("IMAGE", "images/avatars/avatar_mc_wagstaff.tex"),
	
	Asset("ATLAS", "images/avatars/avatar_ghost_mc_wagstaff.xml"),
	Asset("IMAGE", "images/avatars/avatar_ghost_mc_wagstaff.tex"),
	
	Asset("ATLAS", "images/avatars/self_inspect_mc_wagstaff.xml"),
	Asset("IMAGE", "images/avatars/self_inspect_mc_wagstaff.tex"),
	
	Asset("ATLAS", "images/names_mc_wagstaff.xml"),
	Asset("IMAGE", "images/names_mc_wagstaff.tex"),
	
	Asset("ATLAS", "bigportraits/mc_wagstaff.xml"),
	Asset("IMAGE", "bigportraits/mc_wagstaff.tex"),
	
	Asset("ATLAS", "bigportraits/ms_mc_wagstaff_young.xml"),
	Asset("IMAGE", "bigportraits/ms_mc_wagstaff_young.tex"),
	
	Asset("ATLAS", "bigportraits/mc_wagstaff_none.xml"),
	Asset("IMAGE", "bigportraits/mc_wagstaff_none.tex"),
	
	Asset("ATLAS", "images/crafting_menu_avatars/avatar_mc_wagstaff.xml"),
	Asset("IMAGE", "images/crafting_menu_avatars/avatar_mc_wagstaff.tex"),
	
	-- Asset("ANIM", "anim/wagstaff_telebrella.zip"),
	-- Asset("ANIM", "anim/wagstaff_telebrella_fx.zip"),
	-- Asset("ANIM", "anim/wagstaff_telebrella_mount_fx.zip"),
	
	Asset("ANIM", "anim/player_wagstaff.zip"),
	
	Asset("SOUNDPACKAGE","sound/wagstaff_voice.fev"),
	Asset("SOUND", "sound/wagstaff_voice.fsb"),
	
	Asset("SOUNDPACKAGE","sound/wagstaff_items.fev"),
	Asset("SOUND", "sound/wagstaff_items.fsb"),
	
	Asset("SOUNDPACKAGE","sound/wagstaff_structures.fev"),
	Asset("SOUND", "sound/wagstaff_structures.fsb"),
	
	Asset("SHADER", "shaders/postprocess_blur.ksh"),
}

AddMinimapAtlas("images/mc_wagstaff_minimap.xml")

local OldGetInventoryItemAtlas_Internal = GLOBAL.GetInventoryItemAtlas_Internal
function GLOBAL.GetInventoryItemAtlas_Internal(imagename, ...)
	return GLOBAL.TheSim:AtlasContains(MC_WAGSTAFF_ICONS, imagename) and MC_WAGSTAFF_ICONS or OldGetInventoryItemAtlas_Internal(imagename, ...)
end