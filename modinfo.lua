----------Basic Info----------

name = "Wagstaff, The Cryptic Founder"
description = "Adds in a modified version of Wagstaff!"
description = (
"Adds in a modified version of Wagstaff!"
)
author = "A_Pufferfish"
version = "1.0.45"

----------Compatability----------

dst_compatible = true
forge_compatible = true
gorge_compatible = true

--Not for Singleplayer DS--

dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

--Has to be true for character mods--

all_clients_require_mod = true

----------Mod Icon----------

icon_atlas = "modicon.xml"
icon = "modicon.tex"

----------Server Tags----------

server_filter_tags = {
	"character",
}

----------Config----------

local function title(label)
	return { name = "", label = label, hover = "", options = { { description = "", data = false }, }, default = false, }
end

--configuration_options =

--None! :)