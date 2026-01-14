local recipes = {}
--
-- recipes.wag_thumper = {
--	 "wag_thumper",
--	 { unpack(TUNING.WAG_THUMPER_RECIPE), },
--	 TECH.NONE,
--	 {
--		 product = "wag_thumper",
--		 builder_tag = "tinkerer",
--		 placer = "thumper_placer",
--	 },
--	 {
--		 "MODS",
--		 "STRUCTURES",
--	 }
-- }
--
-- recipes.wag_telipad = {
--	 "wag_telipad",
--	 { unpack(TUNING.WAG_TELIPAD_RECIPE), },
--	 TECH.NONE,
--	 {
--		 product = "wagstaff_telipad",
--		 builder_tag = "tinkerer",
--		 placer = "telipad_placer",
--	 },
--	 {
--		 "MODS",
--		 "STRUCTURES",
--	 }
-- }
--
recipes.wagstaffgoggles_normalhat = {
	"wagstaffgoggles_normalhat",
	{ unpack(TUNING.WAGSTAFFGOGGLES_NORMAL_RECIPE), },
	TECH.NONE,
	{
		builder_tag = "tinkerer"
	},
	{
		"MODS",
		"CLOTHING",
	}
}
-- --
-- recipes.wag_telebrella = {
--	 "wag_telebrella",
--	 { unpack(TUNING.WAG_TELEBRELLA_RECIPE), },
--	 TECH.NONE,
--	 {
--		 product = "wag_telebrella",
--		 builder_tag = "tinkerer",
--	 },
--	 {
--		 "MODS",
--		 "TOOLS",
--	 }
-- }
--
recipes.wagstaffgoggles_shoothat = {
	"wagstaffgoggles_shoothat",
	{ unpack(TUNING.WAGSTAFFGOGGLES_SHOOT_RECIPE), },
	TECH.NONE,
	{
		builder_tag = "tinkerer",
	},
	{
		"MODS",
		"CLOTHING",
	}
}
--
recipes.wagstaffgoggles_nightvisionhat = {
	"wagstaffgoggles_nightvisionhat",
	{ unpack(TUNING.WAGSTAFFGOGGLES_NIGHTVISION_RECIPE), },
	TECH.NONE,
	{
		builder_tag = "tinkerer",
	},
	{
		"MODS",
		"CLOTHING",
	}
}
--
recipes.wagstaffgoggles_armorhat = {
	"wagstaffgoggles_armorhat",
	{ unpack(TUNING.WAGSTAFFGOGGLES_ARMOR_RECIPE), },
	TECH.NONE,
	{
		builder_tag = "tinkerer",
	},
	{
		"MODS",
		"CLOTHING",
	}
}

for _, recipe in pairs(recipes) do AddCharacterRecipe(unpack(recipe)) end