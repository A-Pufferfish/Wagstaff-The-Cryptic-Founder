-- This speech.lua template is the creation of A_Pufferfish, using this template agrees that this line will not be deleted and/or altered in any form in any re-distribution as to maintain proper credit.

return {
	----------[ ...In with the New]----------
	DESCRIBE =
	{
		MOONROCKSEED = "There's science inside!",
		MOONROCKNUGGET = "That rock came from the moon.",
		ROCK_MOON = "That rock came from the moon.",
		WALL_MOONROCK = "Spacey and smooth!",
		WALL_MOONROCK_ITEM = "Very light, but surprisingly tough.",
	},
	----------[ Stuck in the Middle with Ewe ]----------
	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "This ought to be a scientific impossibility.",
		SPAT = "What a crusty looking animal.",
		STEELWOOL = "Scratchy metal fibers.",
		PHLEGM = "It's thick and pliable. And salty.",
		WARG = "You might be something to reckon with, big dog.",
	},
	----------[ Reign of Giants ]----------

	----------[ Caves ]----------

	----------[ A New Reign: East or West, Base is Best ]----------
	DESCRIBE =
	{
		SENTRYWARD = "That's an entirely scientific mapping tool.",
		REDMOONEYE = "It can see and be seen for miles!",
		PURPLEMOONEYE = "Makes a good marker, but I wish it'd stop looking at me.",
		GREENMOONEYE = "That'll keep a watchful eye on the place.",
		ORANGEMOONEYE = "No one could get lost with that thing looking out for them.",
		YELLOWMOONEYE = "That ought to show everyone the way.",
		BLUEMOONEYE = "It's always smart to keep an eye out.",
		MOONROCKCRATER = "I should stick something shiny in it. For research.",

			
		BERRYBUSH =
		{
			DISEASED = "It looks pretty sick.",--removed
			DISEASING = "Err, something's not right.",--removed
		},

		BERRYBUSH_JUICY =
		{
			DISEASED = "It looks pretty sick.",--removed
			DISEASING = "Err, something's not right.",--removed
		},

		TWIGGYTREE =
		{
			DISEASED = "It looks sick. More so than usual.", --unimplemented
		},

		GRASS =
		{
			DISEASED = "It looks pretty sick.", --unimplemented
			DISEASING = "Err, something's not right.", --unimplemented
		},

		GRASSGEKKO =
		{
			DISEASED = "It looks really sick.", --unimplemented
		},

		SAPLING =
		{
			DISEASED = "It looks pretty sick.", --removed
			DISEASING = "Err, something's not right.", --removed
		},

		ROCK_AVOCADO_BUSH =
		{
		DISEASED = "It looks pretty sick.", --unimplemented
		DISEASING = "Err, something's not right.", --unimplemented
		},
	},

	ANNOUNCE_DIG_DISEASE_WARNING = "It looks better already.",
	ANNOUNCE_PICK_DISEASE_WARNING = "Uh, is it supposed to smell like that?",
	----------[ A New Reign: A Little Fixer Upper ]----------
	DESCRIBE = 
	{
		CARTOGRAPHYDESK =
		{
			GENERIC = "Now I can show everyone what I found!",
			BURNING = "So much for that.",
			BURNT = "Nothing but ash now.",
		},

		STAGEHAND =
		{
			AWAKE = "Just keep your hand to yourself, alright?",
			HIDING = "Something's odd here, but I can't put my finger on it.",
		},

		ENDTABLE =
		{
			BURNT = "A burnt vase on a burnt table.",
			GENERIC = "A flower in a vase on a table.",
			EMPTY = "I should put something in there.",
			WILTED = "Not looking too fresh.",
			FRESHLIGHT = "It's nice to have a little light.",
			OLDLIGHT = "Did we remember to pick up new bulbs?", -- will be wilted soon, light radius will be very small at this point
		},

		SCULPTURE_KNIGHTHEAD = "Where's the rest of it?",
		SCULPTURE_KNIGHTBODY =
		{
			COVERED = "It's an odd marble statue.",
			UNCOVERED = "I guess he cracked under the pressure.",
			FINISHED = "At least it's back in one piece now.",
			READY = "Something's moving inside.",
		},

		SCULPTURE_BISHOPHEAD = "Is that a head?",
		SCULPTURE_BISHOPBODY =
		{
			COVERED = "It looks old, but it feels new.",
			UNCOVERED = "There's a big piece missing.",
			FINISHED = "Now what?",
			READY = "Something's moving inside.",
		},

		SCULPTURE_ROOKNOSE = "Where did this come from?",
		SCULPTURE_ROOKBODY =
		{
			COVERED = "It's some sort of marble statue.",
			UNCOVERED = "It's not in the best shape.",
			FINISHED = "All patched up.",
			READY = "Something's moving inside.",
		},

		STATUE_MARBLE =
		{
			GENERIC = "It's a fancy marble statue.",
			TYPE1 = "Don't lose your head now!",
			TYPE2 = "Statuesque.",
			TYPE3 = "I wonder who the artist is.", --bird bath type statue
		},

		MOONROCK_PIECES = "I could probably break that.",
		MOONBASE =
		{
			GENERIC = "There's a hole in the middle for something to go in.",
			BROKEN = "It's all smashed up.",
			STAFFED = "Now what?",
			WRONGSTAFF = "I have a distinct feeling this isn't right.",
			MOONSTAFF = "The stone lit it up somehow.",
		},

		MAPSCROLL = "A blank map. Doesn't seem very useful.",
		OPALSTAFF = "It's scientifically proven that gems look better on top of sticks.",
		OPALPRECIOUSGEM = "This gem seems special.",
		STAFFCOLDLIGHT = "Brr! Chilling.",
		GARGOYLE_HOUND = "I don't like how it's looking at me.",
		GARGOYLE_WEREPIG = "It looks very lifelike.",

		FEATHERPENCIL = "The feather increases the scientific properties of the writing.",
	},


		
	ACTIONFAIL =
	{
		TEACH = 
			{
			--MapRecorder/MapExplorer
			WRONGWORLD = "This map was made for some other place.",
		},
	},
	----------[ A New Reign: Warts and All ]----------
	DESCRIBE =
	{
		MUSHROOMBOMB = "A mushroom cloud in the making!",
		SHROOM_SKIN = "Warts and all!",

		TOADSTOOL_CAP =
		{
			EMPTY = "Just a hole in the ground.",
			INGROUND = "There's something poking out.",
			GENERIC = "That toadstool's just asking to be cut down.",
		},

		TOADSTOOL =
		{
			GENERIC = "Yeesh! I'm not kissing that!",
			RAGE = "He's hopping mad now!",
		},

		DRAGONFLYFURNACE =
		{
			HAMMERED = "I don't think it's supposed to look like that.",
			GENERIC = "Produces a lot of heat, but not much light.", --no gems
			NORMAL = "Is it winking at me?", --one gem
			HIGH = "It's scalding!", --two gems
		},

		SCARECROW =
		{
			GENERIC = "All dressed up and no where to crow.",
			BURNING = "Someone made that strawman eat crow.",
			BURNT = "Someone MURDERed that scarecrow!",
		},

		CANARY =
		{
			GENERIC = "Some sort of yellow creature made of science.",
			HELD = "I'm not squishing you, am I?",
		},

	},
	----------[ A New Reign: Arts and Crafts ]----------
	DESCRIBE = 
	{
		MOONDIAL =
		{
			GENERIC = "Water amplifies the science, allowing us to measure the moon.",
			NIGHT_NEW = "It's a new moon.",
			NIGHT_WAX = "The moon is waxing.",
			NIGHT_FULL = "It's a full moon.",
			NIGHT_WANE = "The moon is waning.",
			CAVE = "There's no moon down here to measure.",
			WEREBEAVER = "only_used_by_woodie", --woodie specific
			GLASSED = "I have the strangest feeling I'm being watched.",
		},

		SCULPTINGTABLE=
		{
			EMPTY = "We can make stone sculptures with this.",
			BLOCK = "Ready for sculpting.",
			SCULPTURE = "A masterpiece!",
			BURNT = "Burnt right down.",
		},

		MUSHROOM_FARM =
		{
			STUFFED = "That's a lot of mushrooms!",
			LOTS = "The mushrooms have really taken to the log.",
			SOME = "It should keep growing now.",
			EMPTY = "It could use a spore. Or a mushroom transplant.",
			ROTTEN = "The log is dead. We should replace it with a live one.",
			BURNT = "The power of science compelled it.",
			SNOWCOVERED = "I don't think it can grow in this cold.",
		},

		FOSSIL_PIECE = "Science bones! We should put them back together.",

		FOSSIL_STALKER =
		{
			GENERIC = "Still missing some pieces.",
			FUNNY = "My scientific instincts say this isn't quite right.",
			COMPLETE = "It's alive! Oh wait, no, it's not.",
		},

		SHADOWHEART = "The power of science must have reanimated it...",

	},

	----------[ A New Reign: Cute Fuzzy Animals ]----------
	DESCRIBE =
	{
		CRITTERLAB = "Is there something in there?",
		CRITTER_GLOMLING = "What an aerodynamical creature!",
		CRITTER_DRAGONLING = "It's wyrmed its way into my heart.",
		CRITTER_LAMB = "Much less mucusy than its momma.",
		CRITTER_PUPPY = "Pretty cute for a lil monster!",
		CRITTER_KITTEN = "You'd make a good lab assistant.",
		CRITTER_PERDLING = "My feathered friend.",

		BEEQUEEN = "Keep that stinger away from me!",
		BEEQUEENHIVE =
		{
			GENERIC = "It's too sticky to walk on.",
			GROWING = "Was that there before?",
		},
		BEEQUEENHIVEGROWN = "How in science did it get so big?!",
		BEEGUARD = "It's guarding the queen.",

		MARBLEBEAN = "I traded the old family cow for it.",
		MARBLEBEAN_SAPLING = "It looks carved.",
		MARBLESHRUB = "Makes sense to me.",

		FENCE = "It's just a wood fence.",
		FENCE_ITEM = "All we need to build a nice, sturdy fence.",
		FENCE_GATE = "It opens. And closes sometimes, too.",
		FENCE_GATE_ITEM = "All we need to build a nice, sturdy gate.",



	},

	----------[ A New Reign: Herd Mentality ]----------
	DESCRIBE = 
	{
		MINISIGN =
		{
			GENERIC = "I could draw better than that!",
			UNDRAWN = "We should draw something on there.",
		},
		MINISIGN_ITEM = "It's not much use like this. We should place it.",

		BUNDLEWRAP = "Wrapping things up should make them easier to carry.",
		BUNDLE = "Our supplies are in there!",

		DEER =
		{
			GENERIC = "Is it staring at me? ...No, I guess not.",
			ANTLER = "What an impressive antler!",
		},

		WRAPBUNDLE =
		{
			EMPTY = "I need to have something to wrap.",
		},
	},
	BATTLECRY = 
	{
		DEER = "Die, doe!",
	},
	----------[ A New Reign: Against the Grain ]----------
	DESCRIBE =
	{
		ANTLION =
		{
			GENERIC = "It wants something from me.",
			VERYHAPPY = "I think we're on good terms.",
			UNHAPPY = "It looks mad.",
		},

		
		ANTLIONTRINKET = "Someone might be interested in this.",

		TOWNPORTAL =
		{
			GENERIC = "This pyramid controls the sands.",
			ACTIVE = "Ready for departiculation.",
		},

		TOWNPORTALTALISMAN =
		{
			GENERIC = "A mini departiculator.",
			ACTIVE = "A more sane person would walk.",
		},

		SUCCULENT_POTTED = "A succulent in a pot.",
		SUCCULENT_PLANT = "Aloe there.",
		SUCCULENT_PICKED = "I could eat that, but I'd rather not.",
	  
		GOGGLESHAT = "What a stylish pair of goggles.",
		DESERTHAT = "Quality eye protection.",
	},

	ANNOUNCE_TOWNPORTALTELEPORT = "I'm not sure that was science.",

	----------[ A New Reign: Heart of the Ruins ]----------
	DESCRIBE =
	{
		ATRIUM_LIGHT =
		{
			ON = "A truly unsettling light.",
			OFF = "Something must power it.",
		},
		ATRIUM_OVERGROWTH = "I don't recognize any of these symbols.",
		ATRIUM_RUBBLE =
		{
			LINE_1 = "It depicts an old civilization. The people look hungry and scared.",
			LINE_2 = "This tablet is too worn to make out.",
			LINE_3 = "Something dark creeps over the city and its people.",
			LINE_4 = "The people are shedding their skins. They look different underneath.",
			LINE_5 = "It shows a massive, technologically advanced city.",
		},
		ATRIUM_GATE =
		{
			ON = "Back in working order.",
			OFF = "The essential components are still intact.",
			CHARGING = "It's gaining power.",
			DESTABILIZING = "The gateway is destabilizing.",
			COOLDOWN = "It needs time to recover. Me too.",
		},
		ATRIUM_STATUE = "It doesn't seem fully real.",

	},
	----------[ Hollowed Nights (2016) ]----------
	DESCRIBE =
	{
		CANDYBAG = "It's some sort of delicious pocket dimension for sugary treats.",
		TRINKET_32 = "I know someone who'd have a ball with this!", --Cubic Zirconia Ball
		TRINKET_33 = "I hope this doesn't attract spiders.", --Spider Ring
		TRINKET_34 = "Let's make a wish. For science.", --Monkey Paw
		TRINKET_35 = "Hard to find a good flask around here.", --Empty Elixir
		TRINKET_36 = "I might need these after all that candy.", --Faux fangs
		TRINKET_37 = "I don't believe in the supernatural.", --Broken Stake
		HALLOWEENCANDY_1 = "The cavities are probably worth it, right?",
		HALLOWEENCANDY_2 = "What corruption of science grew these?",
		HALLOWEENCANDY_3 = "It's... corn.",
		HALLOWEENCANDY_4 = "They wriggle on the way down.",
		HALLOWEENCANDY_5 = "My teeth are going to have something to say about this tomorrow.",
		HALLOWEENCANDY_6 = "I... don't think I'll be eating those.",
		HALLOWEENCANDY_7 = "Everyone'll be raisin' a fuss over these.",
		HALLOWEENCANDY_8 = "Only a sucker wouldn't love this.",
		HALLOWEENCANDY_9 = "Sticks to your teeth.",
		HALLOWEENCANDY_10 = "Only a sucker wouldn't love this.",
		HALLOWEENCANDY_11 = "Much better tasting than the real thing.",
		HALLOWEENCANDY_12 = "Did that candy just move?", --ONI meal lice candy
		HALLOWEENCANDY_13 = "Oh, my poor jaw.", --Griftlands themed candy
		HALLOWEENCANDY_14 = "I don't do well with spice.", --Hot Lava pepper candy

	},
	----------[ Winter's Feast (2016) ]----------
	DESCRIBE =
	{
		WINTER_TREE =
		{
			BURNT = "That puts a damper on the festivities.",
			BURNING = "That was a mistake, I think.",
			CANDECORATE = "Happy Winter's Feast!",
			YOUNG = "It's almost Winter's Feast!",
		},
		WINTER_TREESTAND =
		{
			GENERIC = "I need a pine cone for that.",
			BURNT = "That puts a damper on the festivities.",
		},

		GIFTWRAP = "That's a wrap!",
		GIFT = "Is that for me?",

		WINTER_ORNAMENT = "Every scientist appreciates a good bauble.",
		WINTER_ORNAMENTLIGHT = "A tree's not complete without some electricity.",




		WINTER_FOOD1 = "The anatomy's not right, but I'll overlook it.", --gingerbread cookie
		WINTER_FOOD2 = "I'm going to eat forty. For science.", --sugar cookie
		WINTER_FOOD3 = "A Yuletide toothache waiting to happen.", --candy cane
		WINTER_FOOD4 = "That experiment may have been a tiny bit unethical.", --fruitcake
		WINTER_FOOD5 = "It's nice to eat something other than berries for once.", --yule log cake
		WINTER_FOOD6 = "I'm puddin' that straight in my mouth!", --plum pudding
		WINTER_FOOD7 = "It's a hollowed apple filled with yummy juice.", --apple cider
		WINTER_FOOD8 = "How does it stay warm? A thermodynamical mug?", --hot cocoa
		WINTER_FOOD9 = "Can science explain why it tastes so good?", --eggnog

	},
	----------[ Year of the Gobbler ]----------

	----------[ Bonus Update ]----------

	----------[ Hallowed Nights (2017) ]----------
	DESCRIBE =
	{
	TRINKET_38 = "I think it came from another world. One with grifts.", -- Binoculars Griftlands trinket
	TRINKET_39 = "I wonder where the other one is?", -- Lone Glove Griftlands trinket
	TRINKET_40 = "Holding it makes me feel like bartering.", -- Snail Scale Griftlands trinket
	TRINKET_41 = "It's a little warm to the touch.", -- Goop Canister Hot Lava trinket
	TRINKET_42 = "It's full of someone's childhood memories.", -- Toy Cobra Hot Lava trinket
	TRINKET_43= "It's not very good at jumping.", -- Crocodile Toy Hot Lava trinket
	TRINKET_44 = "It's some sort of plant specimen.", -- Broken Terrarium ONI trinket
	TRINKET_45 = "It's picking up frequencies from another world.", -- Odd Radio ONI trinket
	TRINKET_46 = "Maybe a tool for testing aerodynamics?", -- Hairdryer ONI trinket

	},
	----------[ The Forge: Season 1 ]----------

	----------[ Winter's Feast (2017) ]----------

	----------[ Year of the Varg ]----------

	----------[ The Gorge ]----------

	----------[ Celestial Update ]----------

	----------[ Hallowed Nights (2018) ]----------
	ANNOUNCE_SPOOKED = "Did you see that?!",
	DESCRIBE =
	{
		MADSCIENCE_LAB = "Sanity is a small price to pay for science!",
		HALLOWEENPOTION_BRAVERY = "Full of grit.",
		HALLOWEENPOTION_DRINKS_WEAK = "I was hoping for something bigger.",
		HALLOWEENPOTION_DRINKS_POTENT = "A potent potion.",
		HALLOWEENPOTION_FIRE_FX = "Crystallized inferno.",
		LIVINGTREE_ROOT = "Something's in there! I'll have to root it out.",
		LIVINGTREE_SAPLING = "It'll grow up big and horrifying.",
		HALLOWEEN_ORNAMENT_1 = "A spectornament I could hang in a tree.",
		HALLOWEEN_ORNAMENT_2 = "Completely batty decoration.",
		HALLOWEEN_ORNAMENT_3 = "This wood look good hanging somewhere.",
		HALLOWEEN_ORNAMENT_4 = "Almost i-tentacle to the real ones.",
		HALLOWEEN_ORNAMENT_5 = "Eight-armed adornment.",
		HALLOWEEN_ORNAMENT_6 = "Everyone's raven about tree decorations these days.",
	},
	----------[ The Forge: Season 2 ]----------

	----------[ Winter's Feast (2018) ]----------
	DESCRIBE =
	{
		WINTER_ORNAMENTGORGE = "For some reason it makes me hungry.",
		WINTER_ORNAMENTFORGE = "I should hang this one over a fire.",
		WINTER_ORNAMENTBOSS = "This one is especially impressive.",


	},
	----------[ Year of the Pig King ]----------

	----------[ Winona Character Refresh ]----------

	----------[ Wortox Character Release ]----------

	----------[ Willow Character Refresh ]----------

	----------[ Wormwood Character Release ]----------

	----------[ Warly Character Release ]----------

	----------[ Return of Them: Turn of Tides ]----------

	----------[ Return of Them: Salty Dog ]----------

	----------[ Return of Them: Hook, Line, and Inker ]----------

	----------[ Return of Them: She Sells Sea Shells ]----------

	----------[ Return of Them: Troubled Waters ]----------

	----------[ Return of Them: Forgotten Knowledge ]----------

	----------[ Return of Them: Reap What You Sow ]----------

	----------[ Return of Them: Eye of the Storm ]----------

	----------[ Woodie Character Refresh ]----------

	----------[ Wurt Character Release ]----------

	----------[ Hallowed Nights (2019) ]----------
	DESCRIBE =
	{
		HALLOWEENPOTION_MOON = "Infused with transforming such-and-such.",

	},
	----------[ Winter's Feast 2019 ]----------
	DESCRIBE =
	{
		GINGERBREADPIG = "I'd better follow him.",
		GINGERBREADHOUSE = "Room and board all rolled into one.",
		GINGERBREADWARG = "Time to desert this dessert.",
		CRUMBS = "A crummy way to hide yourself.",
		WINTERSFEASTFUEL = "The spirit of the season!",

		WINTERSFEASTOVEN =
			{
				GENERIC = "A festive furnace for flame-grilled foodstuffs!",
				COOKING = "Cooking really is a science.",
				ALMOST_DONE_COOKING = "The science is almost done!",
				DISH_READY = "Science says it's done.",
			},

		TABLE_WINTERS_FEAST =
			{
				GENERIC = "A feastival table.",
				HAS_FOOD = "Time to eat!",
				WRONG_TYPE = "It's not the season for that.",
				BURNT = "Who would do such a thing?",
			},

		BERRYSAUCE = "Equal parts merry and berry.",
		BIBINGKA = "Soft and spongy.",
		CABBAGEROLLS = "The meat hides inside the cabbage to avoid predators.",
		FESTIVEFISH = "I wouldn't mind sampling some seasonal seafood.",
		GRAVY = "It's all gravy.",
		LATKES = "I could eat a latke more of these.",
		LUTEFISK = "Is there any trumpetfisk?",
		MULLEDDRINK = "This punch has a kick to it.",
		PANETTONE = "This Yuletide bread really rose to the occasion.",
		PAVLOVA = "I lova good Pavlova.",
		PICKLEDHERRING = "You won't be herring any complaints from me.",
		POLISHCOOKIE = "I'll polish off this whole plate!",
		PUMPKINPIE = "I should probably just eat the whole thing... for science.",
		ROASTTURKEY = "I see a big juicy drumstick with my name on it.",
		STUFFING = "That's the good stuff!",
		SWEETPOTATO = "Science has created a hybrid between dinner and dessert.",
		TAMALES = "If I eat much more I'm going to start feeling a bit husky.",
		TOURTIERE = "Pleased to eat you.",
	},

	----------[ Year of the Carrat ]----------

	----------[ Wendy Character Refresh ]----------

	----------[ May 2020 QoL ]----------

	----------[ Walter Character Release ]----------

	----------[ August 2020 QoL ]----------

	----------[ Wigfrid Character Refresh ]----------

	----------[ Year of the Beefalo ]----------

	----------[ March 2021 QoL ]----------

	----------[ Wes Character Refresh ]----------

	----------[ Midsummer Cawnival (2021) ]----------

	----------[ Webber Character Refresh ]----------

	----------[ Waterlogged ]----------

	----------[ Wanda Character Release ]----------

	----------[ October 2021 QoL ]----------

	----------[ Wolfgang Character Refresh ]----------

	----------[ Year of the Catcoon ]----------

	----------[ March 2022 QoL ]----------

	----------[ WX-78 Character Refresh ]----------

	----------[ Midsummer Cawnival (2022) ]----------

	----------[ The Curse of Moon Quay ]----------

	----------[ Wickerbottom Character Refresh ]----------

	----------[ A Little Drama ]----------

	----------[ Maxwell Character Refresh ]----------

	----------[ Winter's Feast (2022) ]----------

	----------[ Year of the Bunnyman ]----------

	----------[ Wilson Character Refresh ]----------

	----------[ From Beyond: Taking Root ]----------

	----------[ From Beyond: Terrors Below ]----------

	----------[ From Beyond: Host of Horrors ]----------

	----------[ From Beyond: Scrappy Scavengers ]----------

	----------[ From Beyond: Staying Afloat ]----------

	----------[ From Beyond: Depths of Duplicity ]----------

	----------[ From Beyond: Hostile Takeover ]----------

	----------[ From Beyond: Hostile Takeover: Phase Two ]----------

	----------[ Skill Spotlight: Wormwood, Wolfgang & Woodie ]----------

	----------[ Cult of the Lamb Crossover ]----------

	----------[ Hallowed Nights (2023) ]----------

	----------[ Winter's Feast (2023) ]----------

	----------[ Skill Spotlight: Wigfrid & Willow ]----------

	----------[ Year of the Dragonfly ]----------

	----------[ Skill Spotlight: Wurt & Winona ]----------

	----------[ Hallowed Nights (2024) ]----------
	DESCRIBE =
	{
		PUMPKINCARVER = "Who's up for a gourd time?",

	},

	----------[ Winter's Feast (2024) ]----------
	DESCRIBE =
	{
		SNOWMAN =
		{
			GENERIC = "It's snow laughing matter!",
			SNOWBALL = "Someone knew their roll!",
		},
			SNOWBALL_ITEM = "Not throwing this chance away...",
	},
	----------[ Skill Spotlight: Walter, Wendy & Wortox ]----------

	----------[ A Royal Welcome for Jimbo ]----------

	----------[ Year of the Depths Worm ]----------
}