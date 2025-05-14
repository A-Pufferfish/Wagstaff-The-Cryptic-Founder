local wilson_attack = 34
local wilson_health = 150
local seg_time = 30
local total_day_time = seg_time*16
local night_segs = 2
local night_time = seg_time * night_segs

TUNING.HCRDEBUG = GetModConfigData("debug")

TUNING.PRESET = GetModConfigData("preset")
---------[ Tuning Settings ]---------
TUNING.GOGGLES_HEAT_PERISHTIME = 2 * total_day_time
TUNING.GOGGLES_ARMOR_ARMOR = wilson_health * 4 * 0.7
TUNING.GOGGLES_ARMOR_ABSORPTION = 0.85
TUNING.GOGGLES_SHOOT_USES = 10
TUNING.NEARSIGHTED_BLUR_START_RADIUS = 0.0
TUNING.NEARSIGHTED_BLUR_STRENGTH = 3.0
TUNING.TELEBRELLA_USES = 10
TUNING.NEARSIGHTED_ACTION_RANGE = 4
TUNING.GAMEMODE_STARTING_ITEMS.LAVAARENA.WAGSTAFF = {}
TUNING.GAMEMODE_STARTING_ITEMS.QUAGMIRE.WAGSTAFF = {"gogglesnormalhat", "quagmire_telebrella"}
TUNING.MYSTERY_CHANCE = 0.05
TUNING.MYSTERY_NIL_CHANCE = 0.4
TUNING.MYSTERY_MID_CHANCE = 0.7
TUNING.WEAKSTOMACHPAIN = -3
TUNING.TELEBRELLA_SPELLTYPE = "point"
TUNING.TELEBRELLA_RANDOM = false
TUNING.GOGGLES_RESTRICTED = false
TUNING.VISIONBLUR_ENABLED = true
TUNING.FLICKERTHRESHOLD = 0.75
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.WAGSTAFF = {
    "waggoggles_normal",
}
TUNING.GOGGLES_HEAT =
{
	HOT=
	{
		BLOOM = true,
		DESATURATION = 1.0,
		MULT_COLOUR = {0.0, 1.0, 0.5, 1.0},
		ADD_COLOUR  = {1.0, 0.1, 0.3, 1.0},
	},
	COLD=
	{
		BLOOM = false,
		DESATURATION = 0.7,
		MULT_COLOUR = {0.0, 0.0, 0.3, 1.0},
		ADD_COLOUR  = {0.1, 0.1, 0.5, 1.0},
	},
	GROUND=
	{
		MULT_COLOUR = {0.0, 0.1, 0.3, 1.0},
       	ADD_COLOUR  = {0.1, 0.1, 0.5, 1.0}
	},
	WAVES=
	{
		MULT_COLOUR = {0.0, 0.0, 0.3, 1.0},
		ADD_COLOUR  = {0.1, 0.1, 0.6, 1.0},
	},
	BLUR=
	{
		ENABLED = true,
		START_RADIUS = -5.0,
		STRENGTH = 0.16,
	}
}
---------[Recipes]---------

local GogglesIngredient = Ingredient("waggoggles_normal", 1, "images/inventoryimages/waggoggles_normal.xml", nil, "waggoggles_normal.tex")

TUNING.STARTING_ITEM_IMAGE_OVERRIDE["waggoggles_normal"] = {
    atlas = "images/inventoryimages/waggoggles_normal.xml",
    image = "waggoggles_normal.tex"
}

TUNING.WAG_THUMPER_RECIPE = {
    Ingredient("gears", 1), Ingredient("flint", 6), Ingredient("hammer", 2)
}

TUNING.WAG_TELIPAD_RECIPE = {
    Ingredient("gears", 1), Ingredient("transistor", 1), Ingredient("cutstone", 2)
}

TUNING.WAG_TELEBRELLA_RECIPE = {
    Ingredient("grass_umbrella", 1), Ingredient("transistor", 1)
}

TUNING.WAGGOGGLES_SHOOT_RECIPE = {
    GogglesIngredient, Ingredient("redgem", 1)
}

TUNING.WAGGOGGLES_ARMOR_RECIPE = {
    GogglesIngredient, Ingredient("cutstone", 1)
}

TUNING.WAGGOGGLES_HEAT_RECIPE = {
    GogglesIngredient, Ingredient("transistor", 1), Ingredient("torch", 2)
}

TUNING.WAGGOGGLES_NORMAL_RECIPE = {
    Ingredient("goldnugget", 1), Ingredient("pigskin", 1)
}