-- ----------------------------------------------------------------------------
-- Upvalued Lua API.
-- ----------------------------------------------------------------------------
-- Functions
local pairs = _G.pairs
local tonumber = _G.tonumber

-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local FOLDER_NAME, private = ...

-- ----------------------------------------------------------------------------
-- Constants
-- ----------------------------------------------------------------------------
function private.InitializeDigsiteTemplates()
	local RaceID = private.RaceID

	local DIGSITE_TEMPLATES = {
		-- ----------------------------------------------------------------------------
		-- Kalimdor
		-- ----------------------------------------------------------------------------
		["12:0:0"] = {
			-- Abyssal Sands Fossil Ridge
			id = 56375,
			mapID = 161,
			typeID = RaceID.ArchRaceFossil,
		},
		["12:0:0"] = {
			-- Akhenet Fields Digsite
			id = 60356,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Bael Modan Digsite
			id = 55410,
			mapID = 607,
			typeID = RaceID.ArchRaceDwarf,
		},
		["12:0:0"] = {
			-- Broken Commons Digsite
			id = 56329,
			mapID = 121,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Broken Pillar Digsite
			id = 56367,
			mapID = 161,
			typeID = RaceID.ArchRaceTroll,
		},
		["12:0:0"] = {
			-- Constellas Digsite
			id = 56343,
			mapID = 182,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Cursed Landing Digsite
			id = 60352,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Darkmist Digsite
			id = 56337,
			mapID = 121,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Dire Maul Digsite
			id = 56327,
			mapID = 121,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Dunemaul Fossil Ridge
			id = 56373,
			mapID = 161,
			typeID = RaceID.ArchRaceFossil,
		},
		["12:0:0"] = {
			-- Eastmoon Ruins Digsite
			id = 56369,
			mapID = 161,
			typeID = RaceID.ArchRaceTroll,
		},
		["12:0:0"] = {
			-- Ethel Rethor Digsite
			id = 55420,
			mapID = 101,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Fields of Blood Fossil Bank
			id = 56358,
			mapID = 607,
			typeID = RaceID.ArchRaceFossil,
		},
		["12:2902:-3118"] = {
			id = 175, -- Forest Song Digsite
			mapID = 63, --Ashenvale
			typeID = RaceID.ArchRaceNightElf
		},
		["12:0:0"] = {
			-- Frostwhisper Gorge Digsite
			id = 56356,
			mapID = 281,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Grove of Aessina Digsite
			id = 56570,
			mapID = 606,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Ironwood Digsite
			id = 56349,
			mapID = 182,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Jaedenar Digsite
			id = 56347,
			mapID = 182,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Keset Pass Digsite
			id = 60354,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Khartut's Tomb Digsite
			id = 56591,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:-1335:1842"] = {
			id = 199, -- Kodo Graveyard
			mapID = 66, --Desolace
			typeID = RaceID.ArchRaceFossil,
		},
		["12:0:0"] = {
			-- Lake Kel'Theril Digsite
			id = 56351,
			mapID = 281,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Lower Lakkari Tar Pits
			id = 56380,
			mapID = 201,
			typeID = RaceID.ArchRaceFossil,
		},
		["12:0:0"] = {
			-- Mannoroc Coven Digsite
			id = 55424,
			mapID = 101,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Marshlands Fossil Bank
			id = 56388,
			mapID = 201,
			typeID = RaceID.ArchRaceFossil,
		},
		["12:0:0"] = {
			-- Morlos'Aran Digsite
			id = 56345,
			mapID = 182,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Nazj'vel Digsite
			id = 55354,
			mapID = 42,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Neferset Digsite
			id = 56597,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Nightmare Scar Digsite
			id = 56362,
			mapID = 607,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- North Isildien Digsite
			id = 56341,
			mapID = 121,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Obelisk of the Stars Digsite
			id = 60358,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Oneiros Digsite
			id = 56333,
			mapID = 121,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Orsis Digsite
			id = 56599,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Owl Wing Thicket Digsite
			id = 56354,
			mapID = 281,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Quagmire Fossil Field
			id = 55757,
			mapID = 141,
			typeID = RaceID.ArchRaceFossil,
		},
		["12:0:0"] = {
			-- Ravenwind Digsite
			id = 56331,
			mapID = 121,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- River Delta Digsite
			id = 60350,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Ruins of Ahmtul Digsite
			id = 56607,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Ruins of Ammon Digsite
			id = 56601,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Ruins of Arkkoran
			id = 55414,
			mapID = 181,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:3479:-5157"] = {
			id = 185, -- Ruins of Eldarath
			mapID = 76, -- Azshara
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Ruins of Eldre'Thar
			id = 55406,
			mapID = 81,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Ruins of Khintaset Digsite
			id = 56603,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Ruins of Lar'donir Digsite
			id = 56566,
			mapID = 606,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Ruins of Ordil'Aran
			id = 55398,
			mapID = 43,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:2089:-245"] = {
			id = 173, -- Ruins of Stardust
			mapID = 63, -- Ashenvale
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Sahket Wastes Digsite
			id = 60361,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Sanctuary of Malorne Digsite
			id = 56572,
			mapID = 606,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Sargeron Digsite
			id = 55428,
			mapID = 101,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Schnottz's Landing
			id = 60363,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:4624:-3191"] = {
			id = 469, -- Scorched Plain Digsite
			mapID = 198, --Mount Hyjal
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Screaming Reaches Fossil Field
			id = 56386,
			mapID = 201,
			typeID = RaceID.ArchRaceFossil,
		},
		["12:0:0"] = {
			-- Shrine of Goldrinn Digsite
			id = 56568,
			mapID = 606,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Slitherblade Shore Digsite
			id = 55418,
			mapID = 101,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Solarsal Digsite
			id = 56335,
			mapID = 121,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- South Isildien Digsite
			id = 56339,
			mapID = 121,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Southmoon Ruins Digsite
			id = 56371,
			mapID = 161,
			typeID = RaceID.ArchRaceTroll,
		},
		["12:0:0"] = {
			-- Southwind Village Digsite
			id = 56390,
			mapID = 261,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Steps of Fate Digsite
			id = 56595,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Stonetalon Peak
			id = 55404,
			mapID = 81,
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:0:0"] = {
			-- Temple of Uldum Digsite
			id = 56605,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Terror Run Fossil Field
			id = 56384,
			mapID = 201,
			typeID = RaceID.ArchRaceFossil,
		},
		["12:0:0"] = {
			-- Tombs of the Precursors Digsite
			id = 56593,
			mapID = 720,
			typeID = RaceID.ArchRaceTolvir,
		},
		["12:0:0"] = {
			-- Unearthed Grounds
			id = 55408,
			mapID = 81,
			typeID = RaceID.ArchRaceFossil,
		},
		["12:0:0"] = {
			-- Upper Lakkari Tar Pits
			id = 56382,
			mapID = 201,
			typeID = RaceID.ArchRaceFossil,
		},
		["12:0:0"] = {
			-- Valley of Bones
			id = 55422,
			mapID = 101,
			typeID = RaceID.ArchRaceFossil,
		},
		["12:0:0"] = {
			-- Wyrmbog Fossil Field
			id = 55755,
			mapID = 141,
			typeID = RaceID.ArchRaceFossil,
		},
		["12:3969:900"] = {
			id = 169, -- Zoram Strand Digsite
			mapID = 63, -- Ashenvale
			typeID = RaceID.ArchRaceNightElf,
		},
		["12:-6854:-2920"] = {
			id = 315, -- Zul'Farrak Digsite
			mapID = 71, -- Tanaris
			typeID = RaceID.ArchRaceTroll,
		},

		-- ----------------------------------------------------------------------------
		-- Eastern Kingdoms
		-- ----------------------------------------------------------------------------
		["13:0:0"] = {
			-- Aerie Peak Digsite
			id = 54136,
			mapID = 26,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Agol'watha Digsite
			id = 54141,
			mapID = 26,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Altar of Zul Digsite
			id = 54138,
			mapID = 26,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Andorhal Fossil Bank
			id = 55482,
			mapID = 22,
			typeID = RaceID.ArchRaceFossil,
		},
		["13:0:0"] = {
			-- Bal'lal Ruins Digsite
			id = 55458,
			mapID = 37,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Balia'mah Digsite
			id = 55460,
			mapID = 37,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Dreadmaul Fossil Field
			id = 55436,
			mapID = 19,
			typeID = RaceID.ArchRaceFossil,
		},
		["13:-1247:-1140"] = {
			id = 20, -- Dun Garok Digsite
			mapID = 25, --Hillsbrad Foothills
			typeID = RaceID.ArchRaceDwarf
		},
		["13:0:0"] = {
			-- Dunwald Ruins Digsite
			id = 56583,
			mapID = 700,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Eastern Ruins of Thaurissan
			id = 55444,
			mapID = 29,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Eastern Zul'Kunda Digsite
			id = 55454,
			mapID = 37,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Eastern Zul'Mamwe Digsite
			id = 55464,
			mapID = 37,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Felstone Fossil Field
			id = 55478,
			mapID = 22,
			typeID = RaceID.ArchRaceFossil,
		},
		["13:0:0"] = {
			-- Greenwarden's Fossil Bank
			id = 54127,
			mapID = 40,
			typeID = RaceID.ArchRaceFossil,
		},
		["13:0:0"] = {
			-- Grimsilt Digsite
			id = 55438,
			mapID = 28,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Gurubashi Arena Digsite
			id = 55474,
			mapID = 673,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Hammertoe's Digsite
			id = 54832,
			mapID = 17,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Humboldt Conflagration Digsite
			id = 56587,
			mapID = 700,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Infectis Scar Fossil Field
			id = 55452,
			mapID = 23,
			typeID = RaceID.ArchRaceFossil,
		},
		["13:0:0"] = {
			-- Ironband's Excavation Site
			id = 54097,
			mapID = 35,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Ironbeard's Tomb
			id = 54124,
			mapID = 40,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Jintha'Alor Lower City Digsite
			id = 54139,
			mapID = 26,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Jintha'Alor Upper City Digsite
			id = 54140,
			mapID = 26,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:-9670:-2485"] = {
			id = 189, -- Lakeridge Highway Fossil Bank
			mapID = 49, -- Redridge Mountains
			typeID = RaceID.ArchRaceFossil,
		},
		["13:0:0"] = {
			-- Misty Reed Fossil Bank
			id = 54864,
			mapID = 38,
			typeID = RaceID.ArchRaceFossil,
		},
		["13:0:0"] = {
			-- Nek'mani Wellspring Digsite
			id = 55476,
			mapID = 673,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Northridge Fossil Field
			id = 55480,
			mapID = 22,
			typeID = RaceID.ArchRaceFossil,
		},
		["13:0:0"] = {
			-- Plaguewood Digsite
			id = 60444,
			mapID = 23,
			typeID = RaceID.ArchRaceNerubian,
		},
		["13:-6769:-1220"] = {
			id = 209, -- Pyrox Flats Digsite
			mapID = 32, --Searing Gorge
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Quel'Lithien Lodge Digsite
			id = 55450,
			mapID = 23,
			typeID = RaceID.ArchRaceNightElf,
		},
		["13:0:0"] = {
			-- Red Reaches Fossil Bank
			id = 55434,
			mapID = 19,
			typeID = RaceID.ArchRaceFossil,
		},
		["13:0:0"] = {
			-- Ruins of Aboraz
			id = 55470,
			mapID = 673,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Ruins of Jubuwal
			id = 55472,
			mapID = 673,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Savage Coast Raptor Fields
			id = 55468,
			mapID = 37,
			typeID = RaceID.ArchRaceFossil,
		},
		["13:0:0"] = {
			-- Shadra'Alor Digsite
			id = 54137,
			mapID = 26,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:-500:-929"] = {
			id = 21, -- Southshore Fossil Field
			mapID = 25, --Hillsbrad Foothills
			typeID = RaceID.ArchRaceFossil,
		},
		["13:0:0"] = {
			-- Sunken Temple Digsite
			id = 54862,
			mapID = 38,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Terror Wing Fossil Field
			id = 55446,
			mapID = 29,
			typeID = RaceID.ArchRaceFossil,
		},
		["13:0:0"] = {
			-- Terrorweb Tunnel Digsite
			id = 60442,
			mapID = 23,
			typeID = RaceID.ArchRaceNerubian,
		},
		["13:0:0"] = {
			-- Thandol Span
			id = 54133,
			mapID = 40,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Thoradin's Wall
			id = 54129,
			mapID = 16,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Thundermar Ruins Digsite
			id = 56585,
			mapID = 700,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Tomb of the Watchers Digsite
			id = 54834,
			mapID = 17,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Twilight Grove Digsite
			id = 55350,
			mapID = 34,
			typeID = RaceID.ArchRaceNightElf,
		},
		["13:0:0"] = {
			-- Uldaman Entrance Digsite
			id = 54838,
			mapID = 17,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Vul'Gol Fossil Bank
			id = 55352,
			mapID = 34,
			typeID = RaceID.ArchRaceFossil,
		},
		["13:0:0"] = {
			-- Western Ruins of Thaurissan
			id = 55442,
			mapID = 29,
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Western Zul'Kunda Digsite
			id = 55456,
			mapID = 37,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Western Zul'Mamwe Digsite
			id = 55466,
			mapID = 37,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:-3487:-1811"] = {
			id = 12, -- Whelgar's Excavation Site
			mapID = 56, -- Wetlands
			typeID = RaceID.ArchRaceDwarf,
		},
		["13:0:0"] = {
			-- Witherbark Digsite
			id = 54132,
			mapID = 16,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:0:0"] = {
			-- Ziata'jai Digsite
			id = 55462,
			mapID = 37,
			typeID = RaceID.ArchRaceTroll,
		},
		["13:3374:-4904"] = {
			id = 217, -- Zul'Mashar Digsite
			mapID = 23, --Eastern Plaguelands
			typeID = RaceID.ArchRaceTroll,
		},

		-- ----------------------------------------------------------------------------
		-- Outland
		-- ----------------------------------------------------------------------------
		["101:-2157:8835"] = {
			id = 359, -- Ancestral Grounds Digsite
			mapID = 107, --Nagrand
			typeID = RaceID.ArchRaceOrc,
		},
		["101:0:0"] = {
			-- Arklon Ruins Digsite
			id = 56408,
			mapID = 479,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Bleeding Hollow Ruins Digsite
			id = 56428,
			mapID = 478,
			typeID = RaceID.ArchRaceOrc,
		},
		["101:0:0"] = {
			-- Boha'mu Ruins Digsite
			id = 56402,
			mapID = 467,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Bone Wastes Digsite
			id = 56432,
			mapID = 478,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Bonechewer Ruins Digsite
			id = 56430,
			mapID = 478,
			typeID = RaceID.ArchRaceOrc,
		},
		["101:0:0"] = {
			-- Burning Blade Digsite
			id = 56420,
			mapID = 477,
			typeID = RaceID.ArchRaceOrc,
		},
		["101:0:0"] = {
			-- Coilskar Point Digsite
			id = 56441,
			mapID = 473,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:-4198:400"] = {
			id = 399, -- Dragonmaw Fortress
			mapID = 104, --Shadowmoon Valley
			typeID = RaceID.ArchRaceOrc,
		},
		["101:0:0"] = {
			-- East Auchindoun Digsite
			id = 56434,
			mapID = 478,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Eclipse Point Digsite
			id = 56448,
			mapID = 473,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Gor'gaz Outpost Digsite
			id = 56392,
			mapID = 465,
			typeID = RaceID.ArchRaceOrc,
		},
		["101:0:0"] = {
			-- Grangol'var Village Digsite
			id = 56424,
			mapID = 478,
			typeID = RaceID.ArchRaceOrc,
		},
		["101:0:0"] = {
			-- Halaa Digsite
			id = 56422,
			mapID = 477,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Hellfire Basin Digsite
			id = 56396,
			mapID = 465,
			typeID = RaceID.ArchRaceOrc,
		},
		["101:0:0"] = {
			-- Hellfire Citadel Digsite
			id = 56398,
			mapID = 465,
			typeID = RaceID.ArchRaceOrc,
		},
		["101:-3896:2568"] = {
			id = 385, -- Illidari Point Digsite
			mapID = 104, --Shadowmoon Valley
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0.836172:0.804444"] = {
			 -- Illidari Point Digsite
			id = 385,
			mapID = 108,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Laughing Skull Digsite
			id = 56418,
			mapID = 477,
			typeID = RaceID.ArchRaceOrc,
		},
		["101:0:0"] = {
			-- Ruins of Baa'ri Digsite
			id = 56446,
			mapID = 473,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Ruins of Enkaat Digsite
			id = 56406,
			mapID = 479,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Ruins of Farahlon Digsite
			id = 56410,
			mapID = 479,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Sha'naar Digsite
			id = 56400,
			mapID = 465,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:-1536:8542"] = {
			id = 363, -- Sunspring Post Digsite
			mapID = 107, --Nagrand
			typeID = RaceID.ArchRaceOrc,
		},
		["101:0:0"] = {
			-- Tuurem Digsite
			id = 56426,
			mapID = 478,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Twin Spire Ruins Digsite
			id = 56404,
			mapID = 467,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Warden's Cage Digsite
			id = 56450,
			mapID = 473,
			typeID = RaceID.ArchRaceOrc,
		},
		["101:0:0"] = {
			-- West Auchindoun Digsite
			id = 56437,
			mapID = 478,
			typeID = RaceID.ArchRaceDraenei,
		},
		["101:0:0"] = {
			-- Zeth'Gor Digsite
			id = 56394,
			mapID = 465,
			typeID = RaceID.ArchRaceOrc,
		},

		-- ----------------------------------------------------------------------------
		-- Northrend
		-- ----------------------------------------------------------------------------
		["113:0:0"] = {
			-- Altar of Quetz'lun Digsite
			id = 56539,
			mapID = 496,
			typeID = RaceID.ArchRaceTroll,
		},
		["113:0:0"] = {
			-- Altar of Sseratus Digsite
			id = 56533,
			mapID = 496,
			typeID = RaceID.ArchRaceTroll,
		},
		["113:1493:-5270"] = {
			id = 409, -- Baleheim Digsite
			mapID = 117, --Howling Fjord
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Brunnhildar Village Digsite
			id = 56549,
			mapID = 495,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Drakil'Jin Ruins Digsite
			id = 56547,
			mapID = 490,
			typeID = RaceID.ArchRaceTroll,
		},
		["113:5048:-3601"] = {
			id = 421, -- Kolramas Digsite
			mapID = 121, --Zul'Drak
			typeID = RaceID.ArchRaceNerubian,
		},
		["113:0.600951:0.787208"] = {
			 -- Kolramas Digsite
			id = 421,
			mapID = 121,
			typeID = RaceID.ArchRaceNerubian,
		},
		["113:0.600951:0.787208"] = {
			 -- Kolramas Digsite
			id = 421,
			mapID = 121,
			typeID = RaceID.ArchRaceNerubian
		},	
		["113:3913:3613"] = {
			id = 419, -- En'kilah Digsite
			mapID = 114, --Borean Tundra
			typeID = RaceID.ArchRaceNerubian
		},
		["113:0:0"] = {
			-- Gjalerbron Digsite
			id = 56516,
			mapID = 491,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Halgrind Digsite
			id = 56506,
			mapID = 491,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:7024:4201"] = {
			id = 457, -- Jotunheim Digsite
			mapID = 118, --Icecrown
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0.626266:0.090732"] = {
			 -- Jotunheim Digsite
			id = 457,
			mapID = 119,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Moonrest Gardens Digsite
			id = 56520,
			mapID = 488,
			typeID = RaceID.ArchRaceNightElf,
		},
		["113:0:0"] = {
			-- Nifflevar Digsite
			id = 56514,
			mapID = 491,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Njorndar Village Digsite
			id = 56564,
			mapID = 492,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Pit of Fiends Digsite
			id = 60367,
			mapID = 492,
			typeID = RaceID.ArchRaceNerubian,
		},
		["113:0:0"] = {
			-- Pit of Narjun Digsite
			id = 56518,
			mapID = 488,
			typeID = RaceID.ArchRaceNerubian,
		},
		["113:0:0"] = {
			-- Riplash Ruins Digsite
			id = 56526,
			mapID = 486,
			typeID = RaceID.ArchRaceNightElf,
		},
		["113:0:0"] = {
			-- Ruins of Shandaral Digsite
			id = 56530,
			mapID = 510,
			typeID = RaceID.ArchRaceNightElf,
		},
		["113:0:0"] = {
			-- Sands of Nasam
			id = 60369,
			mapID = 486,
			typeID = RaceID.ArchRaceNerubian,
		},
		["113:0:0"] = {
			-- Scourgeholme Digsite
			id = 56555,
			mapID = 492,
			typeID = RaceID.ArchRaceNerubian,
		},
		["113:0:0"] = {
			-- Shield Hill Digsite
			id = 56510,
			mapID = 491,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Sifreldar Village Digsite
			id = 56551,
			mapID = 495,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Skorn Digsite
			id = 56504,
			mapID = 491,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Talramas Digsite
			id = 56541,
			mapID = 486,
			typeID = RaceID.ArchRaceNerubian,
		},
		["113:0:0"] = {
			-- Valkyrion Digsite
			id = 56553,
			mapID = 495,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Violet Stand Digsite
			id = 56528,
			mapID = 510,
			typeID = RaceID.ArchRaceNightElf,
		},
		["113:0:0"] = {
			-- Voldrune Digsite
			id = 56543,
			mapID = 490,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Wyrmskull Digsite
			id = 56508,
			mapID = 491,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Ymirheim Digsite
			id = 56560,
			mapID = 492,
			typeID = RaceID.ArchRaceVrykul,
		},
		["113:0:0"] = {
			-- Zim'Rhuk Digsite
			id = 56535,
			mapID = 496,
			typeID = RaceID.ArchRaceTroll,
		},
		["113:0:0"] = {
			-- Zol'Heb Digsite
			id = 56537,
			mapID = 496,
			typeID = RaceID.ArchRaceTroll,
		},

		-- ----------------------------------------------------------------------------
		-- Pandaria
		-- ----------------------------------------------------------------------------
		["424:0:0"] = {
			-- Amber Quarry Digsite
			id = 177517,
			mapID = 858,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Chow Farmstead Digsite
			id = 66987,
			mapID = 809,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Den of Sorrow Digsite
			id = 67035,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Destroyed Village Digsite
			id = 66979,
			mapID = 809,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- East Snow Covered Hills Digsite
			id = 66971,
			mapID = 809,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- East Sra'vess Digsite
			id = 177495,
			mapID = 810,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- East Summer Fields Digsite
			id = 92166,
			mapID = 811,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Emperor's Approach Digsite
			id = 92156,
			mapID = 811,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Emperor's Omen Digsite
			id = 66817,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Fallsong Village Digsite
			id = 66943,
			mapID = 857,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Fire Camp Osul Digsite
			id = 92178,
			mapID = 810,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Five Sisters Digsite
			id = 92026,
			mapID = 811,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Forest Heart Digsite
			id = 67021,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Gate to Golden Valley Digsite
			id = 66967,
			mapID = 809,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Gong of Hope Digsite
			id = 67023,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Great Bridge Digsite
			id = 67025,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Grumblepaw Ranch Digsite
			id = 66985,
			mapID = 809,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Hatred's Vice Digsite
			id = 92180,
			mapID = 810,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Ikz'ka Ridge Digsite
			id = 177501,
			mapID = 810,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Jade Temple Grounds Digsite
			id = 67031,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Kor'vess Digsite
			id = 177485,
			mapID = 858,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Krasarang Wilds Digsite
			id = 66949,
			mapID = 857,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Kun-Lai Peak Digsite
			id = 67005,
			mapID = 809,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Kypari Vor Digsite
			id = 177529,
			mapID = 858,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Kypari'ik Digsite
			id = 177511,
			mapID = 858,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Kypari'zar Digsite
			id = 177523,
			mapID = 858,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Kzzok Warcamp Digsite
			id = 177493,
			mapID = 810,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Lake of Stars Digsite
			id = 177525,
			mapID = 858,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Lake of Stars Digsite
			id = 92200,
			mapID = 858,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Lost Dynasty Digsite
			id = 66951,
			mapID = 857,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Mistfall Village Digsite
			id = 92022,
			mapID = 811,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Niuzao Temple Digsite
			id = 92174,
			mapID = 810,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- North Fruited Fields Digsite
			id = 66935,
			mapID = 807,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- North Great Wall Digsite
			id = 66919,
			mapID = 807,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- North Ruins of Dojan Digsite
			id = 92212,
			mapID = 857,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- North Ruins of Guo-Lai Digsite
			id = 92030,
			mapID = 811,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- North Sik'vess Digsite
			id = 177507,
			mapID = 810,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- North Summer Fields Digsite
			id = 92162,
			mapID = 811,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- North Temple of the Red Crane Digsite
			id = 66957,
			mapID = 857,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Old Village Digsite
			id = 66983,
			mapID = 809,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Orchard Digsite
			id = 67027,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Paoquan Hollow Digsite
			id = 66933,
			mapID = 807,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Pools of Purity Digsite
			id = 66941,
			mapID = 807,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Remote Village Digsite
			id = 66973,
			mapID = 809,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Ruins of Gan Shi Digsite
			id = 66795,
			mapID = 806,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Ruins of Korja Digsite
			id = 66945,
			mapID = 857,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- NEEDS UPDATE
			id = 92020,
			mapID = 811,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Shanze'Dao Digsite
			id = 92196,
			mapID = 810,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- NEEDS UPDATE
			id = 67037,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Shrine of the Dawn Digsite
			id = 66789,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Sik'vess Digsite
			id = 177503,
			mapID = 810,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Singing Marshes Digsite
			id = 66917,
			mapID = 807,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Small Gate Digsite
			id = 66991,
			mapID = 809,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Snow Covered Hills Digsite
			id = 66969,
			mapID = 809,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- South Fruited Fields Digsite
			id = 66939,
			mapID = 807,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- South Great Wall Digsite
			id = 66923,
			mapID = 807,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- South Orchard Digsite
			id = 67033,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- South Ruins of Dojan Digsite
			id = 92210,
			mapID = 857,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0.900313:0.861110"] = {
			 -- South Ruins of Guo-Lai Digsite
			id = 1294,
			mapID = 388,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0.226283:0.407063"] = {
			 -- South Ruins of Guo-Lai Digsite
			id = 1294,
			mapID = 390,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:1261:1908"] = {
			id = 1294, -- South Ruins of Guo-Lai Digsite
			mapID = 390, --Vale of Eternal Blossoms
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Sra'thik Digsite
			id = 92172,
			mapID = 810,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Sra'thik Swarmdock Digsite
			id = 177487,
			mapID = 810,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Terrace of Gurthan Digsite
			id = 92202,
			mapID = 858,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- The Arboretum Digsite
			id = 66854,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- The Briny Muck Digsite
			id = 177519,
			mapID = 858,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- The Clutches of Shek'zeer Digsite
			id = 177509,
			mapID = 858,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:2400:5972"] = {
			id = 1469, -- The Feeding Pits Digsite
			mapID = 388, --Townlong Steppes
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- The Spring Road Digsite
			id = 66929,
			mapID = 873,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- The Underbough Digsite
			id = 177497,
			mapID = 810,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Thunderwood Digsite
			id = 66890,
			mapID = 806,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Tian Digsite
			id = 66784,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Tiger's Wood Digsite
			id = 66767,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- Torjari Pit Digsite
			id = 66925,
			mapID = 807,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Tu Shen Digsite
			id = 92038,
			mapID = 811,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:3631:1311"] = {
			id = 1003, -- Valley of Kings Digsite
			mapID = 379, --Kun-Lai Summit
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Venomous Ledge Digsite
			id = 177515,
			mapID = 858,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- NEEDS UPDATE
			id = 67039,
			mapID = 806,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- NEEDS UPDATE
			id = 66989,
			mapID = 809,
			typeID = RaceID.ArchRacePandaren,
		},
		["424:0:0"] = {
			-- West Ruins of Guo-Lai Digsite
			id = 92046,
			mapID = 811,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- West Sik'vess Digsite
			id = 177505,
			mapID = 810,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- West Sra'vess Digsite
			id = 177489,
			mapID = 810,
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Winterbough Digsite
			id = 92150,
			mapID = 811,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:0:0"] = {
			-- Writhingwood Digsite
			id = 92206,
			mapID = 858,
			typeID = RaceID.ArchRaceMogu,
		},
		["424:-1156:4869"] = {
			id = 1491, -- Zan'vess Digsite
			mapID = 422, --Dread Wastes
			typeID = RaceID.ArchRaceMantid,
		},
		["424:0:0"] = {
			-- Zhu Province Digsite
			id = 66961,
			mapID = 857,
			typeID = RaceID.ArchRacePandaren,
		},

		-- ----------------------------------------------------------------------------
		-- Draenor
		-- ----------------------------------------------------------------------------
		["572:0:0"] = {
			-- Ancestral Grounds Digsite
			id = 307987,
			mapID = 950,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Ango'rosh Digsite
			id = 307971,
			mapID = 946,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- Anguish Fortress Digsite
			id = 307928,
			mapID = 947,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:307:2524"] = {
			id = 1774, -- Apexis Excavation Digsite
			mapID = 542, --Spires of Arak
			typeID = RaceID.ArchRaceArakkoa,
		},
		["572:0:0"] = {
			-- Bloodmane Pridelands Digsite
			id = 307950,
			mapID = 948,
			typeID = RaceID.ArchRaceArakkoa,
		},
		["572:0:0"] = {
			-- Bloodmane Valley Digsite
			id = 307954,
			mapID = 948,
			typeID = RaceID.ArchRaceArakkoa,
		},
		["572:0:0"] = {
			-- Burial Fields Digsite
			id = 307926,
			mapID = 947,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Burning Plateau Digsite
			id = 307997,
			mapID = 950,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Coldsnap Bluffs Digsite
			id = 307922,
			mapID = 941,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:1909:821"] = {
			id = 1746, -- Cursed Woods Digsite
			mapID = 539, --Shadowmoon Valley
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:7683:5388"] = {
			id = 1685, -- Daggermaw Flows Digsite
			mapID = 525, --Frostfire Ridge
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:5648:1828"] = {
			id = 1820, -- Deadgrin Ruins Digsite
			mapID = 543, -- Gorgrond
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Drowning Plateau Digsite
			id = 307995,
			mapID = 950,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:2269:1739"] = {
			id = 1780, -- Duskfall Island Digsite
			mapID = 535, -- Talador
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- East Coldsnap Bluffs Digsite
			id = 307920,
			mapID = 941,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Forgotten Ogre Ruin Digsite
			id = 307973,
			mapID = 946,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- Frostboar Drifts Digsite
			id = 307916,
			mapID = 941,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Frostwind Crag Digsite
			id = 264237,
			mapID = 941,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Frozen Lake Digsite
			id = 264223,
			mapID = 941,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Gloomshade Digsite
			id = 307940,
			mapID = 947,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Gordal Fortress Digsite
			id = 307960,
			mapID = 946,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- Grom'gar Digsite
			id = 264233,
			mapID = 941,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Highmaul Watchtower Digsite
			id = 308001,
			mapID = 950,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- Howling Plateau Digsite
			id = 307991,
			mapID = 950,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Icewind Drifts Digsite
			id = 307918,
			mapID = 941,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Kag'ah Digsite
			id = 307985,
			mapID = 950,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Lashwind Cleft Digsite
			id = 264229,
			mapID = 941,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Mar'gok's Overwatch Digsite
			id = 308003,
			mapID = 950,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- North Spirit Woods Digsite
			id = 307983,
			mapID = 950,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Overgrown Highmaul Road Digsite
			id = 307977,
			mapID = 950,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- Overlook Ruins Digsite
			id = 308011,
			mapID = 949,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- Pinchwhistle Point Digsite
			id = 307952,
			mapID = 948,
			typeID = RaceID.ArchRaceArakkoa,
		},
		["572:3296:5349"] = {
			id = 1794, -- Razed Warsong Outpost Digsite
			mapID = 550, --Nagrand
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Ring of Trials Sludge Digsite
			id = 307989,
			mapID = 950,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Ruins of Na'gwa Digsite
			id = 307975,
			mapID = 950,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- Ruins of the First Bastion Digsite
			id = 308015,
			mapID = 949,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:4334:4750"] = {
			id = 1808, -- Rumbling Plateau Digsite
			mapID = 550, -- Nagrand
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Sethekk Hollow North Digsite
			id = 307944,
			mapID = 948,
			typeID = RaceID.ArchRaceArakkoa,
		},
		["572:-527:572"] = {
			id = 1758, -- Sethekk Hollow South Digsite
			mapID = 542, -- Spires of Arak
			typeID = RaceID.ArchRaceArakkoa,
		},
		["572:0:0"] = {
			-- Shaz'gul Digsite
			id = 307924,
			mapID = 947,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Shimmering Moor Digsite
			id = 307936,
			mapID = 947,
			typeID = RaceID.ArchRaceArakkoa,
		},
		["572:0:0"] = {
			-- Southwind Cliffs Digsite
			id = 308018,
			mapID = 941,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Stonecrag Excavation Digsite
			id = 307981,
			mapID = 950,
			maxFindCount = 13,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:5792:1452"] = {
			id = 1822, -- The Broken Spine Digsite
			mapID = 543, -- Gorgrond
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- The Crackling Plains Digsite
			id = 264231,
			mapID = 941,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Umbrafen Digsite
			id = 307934,
			mapID = 947,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- Veil Akraz Digsite
			id = 307946,
			mapID = 948,
			typeID = RaceID.ArchRaceArakkoa,
		},
		["572:0:0"] = {
			-- Veil Shadar Digsite
			id = 307962,
			mapID = 946,
			typeID = RaceID.ArchRaceArakkoa,
		},
		["572:0:0"] = {
			-- Veil Zekk Digsite
			id = 307956,
			mapID = 948,
			typeID = RaceID.ArchRaceArakkoa,
		},
		["572:0:0"] = {
			-- Wildwood Wash Dam Digsite
			id = 308013,
			mapID = 949,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- Wor'gol Ridge Digsite
			id = 264225,
			mapID = 941,
			typeID = RaceID.ArchRaceDraenorOrc,
		},
		["572:0:0"] = {
			-- Writhing Mire Digsite
			id = 307948,
			mapID = 948,
			typeID = RaceID.ArchRaceOgre,
		},
		["572:0:0"] = {
			-- Zangarra Digsite
			id = 307966,
			mapID = 946,
			typeID = RaceID.ArchRaceOgre,
		},
		-- ----------------------------------------------------------------------------
		-- Broken Isles
		-- ----------------------------------------------------------------------------
		["619:0:0"] = {
			-- Digsite: Aggramar's Vault
			id = 346440,
			mapID = 1017,
			typeID = RaceID.ArchRaceDemons
		},
		["619:0:0"] = {
			-- Digsite: Amberfall Mesa
			id = 353961,
			mapID = 1017,
			typeID = RaceID.ArchRaceDemons
		},
		["619:2885:5836"] = {
			id = 1900, -- Digsite: Andu'talah
			mapID = 641, --Val'sharah
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Anora Hollow
			id = 363064,
			mapID = 1033,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:3546:5539"] = {
			id = 2002, -- Digsite: Ashmane's Fall
			mapID = 641, --Val'sharah
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:3016:7478"] = {
			id = 1998, -- Digsite: Black Rook Hold
			mapID = 641, -- Val'sharah
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Bloodhunt Highland
			id = 353983,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren,
		},
		["619:0:0"] = {
			-- Digsite: Bradensbrook
			id = 346502,
			mapID = 1018,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Citrine Bay
			id = 353967,
			mapID = 1017,
			typeID = RaceID.ArchRaceDemons
		},
		["619:0:0"] = {
			-- Digsite: Cliffpaw Ridge
			id = 353970,
			mapID = 1017,
			typeID = RaceID.ArchRaceDemons
		},
		["619:0:0"] = {
			-- Digsite: Crimson Thicket
			id = 363027,
			mapID = 1033,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Crimson Thicket
			id = 363060,
			mapID = 1033,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Darkfeather Valley
			id = 353987,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren,
		},
		["619:0:0"] = {
			-- Digsite: Dragon's Falls
			id = 353993,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren,
		},
		["619:0:0"] = {
			-- Digsite: Dreadroot
			id = 354251,
			mapID = 1018,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Eastern Ambervale
			id = 363017,
			mapID = 1033,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Fallen Kings
			id = 353965,
			mapID = 1017,
			typeID = RaceID.ArchRaceDemons
		},
		["619:0:0"] = {
			-- Digsite: Farondale
			id = 354020,
			mapID = 1015,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Feathermane Hunting Grounds
			id = 346527,
			mapID = 1033,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Felsoul Hold
			id = 363056,
			mapID = 1033,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Fields of An'she
			id = 346475,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren,
		},
		["619:0:0"] = {
			-- Digsite: Garden of Elune
			id = 354033,
			mapID = 1015,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Gates of the City
			id = 363021,
			mapID = 1033,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Gates of Valor
			id = 350063,
			mapID = 1017,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:1687:7345"] = {
			id = 1896, -- Digsite: Kal'delar
			mapID = 641, --Val'sharah
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Koralune Estate
			id = 363029,
			mapID = 1033,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Legion Camp: Chaos
			id = 346517,
			mapID = 1015,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Lightsong
			id = 346506,
			mapID = 1018,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Llothien
			id = 346522,
			mapID = 1015,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Llothien Highlands
			id = 354018,
			mapID = 1015,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Makrana
			id = 354031,
			mapID = 1015,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Meredil
			id = 363025,
			mapID = 1033,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Meredil
			id = 363036,
			mapID = 1033,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Moonwhisper Gulch
			id = 346531,
			mapID = 1033,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Nor'Danil Wellspring
			id = 354049,
			mapID = 1015,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Northern Helmouth Shallows
			id = 346449,
			mapID = 1017,
			typeID = RaceID.ArchRaceDemons
		},
		["619:0:0"] = {
			-- Digsite: Northern Moonfall Retreat
			id = 363019,
			mapID = 1033,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Northern Snowblind Mesa
			id = 353991,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren,
		},
		["619:0:0"] = {
			-- Digsite: Northern Watcher Isle
			id = 354027,
			mapID = 1015,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Old Coast Path
			id = 354041,
			mapID = 1015,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Pinerock Basin
			id = 353979,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren,
		},
		["619:0:0"] = {
			-- Digsite: Prowler's Scratch
			id = 353977,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren,
		},
		["619:0:0"] = {
			-- Digsite: Rhut'van Passage
			id = 354022,
			mapID = 1015,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Ruins of Zarkhenar
			id = 354045,
			mapID = 1015,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Screeching Bend
			id = 346478,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren
		},
		["619:0:0"] = {
			-- Digsite: Shala'nir
			id = 346512,
			mapID = 1018,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Skold-Ashil
			id = 353972,
			mapID = 1017,
			typeID = RaceID.ArchRaceDemons
		},
		["619:0:0"] = {
			-- Digsite: Sky Sepulcher
			id = 353989,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren,
		},
		["619:0:0"] = {
			-- Digsite: Southern Helmouth Shallows
			id = 346447,
			mapID = 1017,
			typeID = RaceID.ArchRaceDemons
		},
		["619:0:0"] = {
			-- Digsite: Southern Snowblind Mesa
			id = 346481,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren,
		},
		["619:0:0"] = {
			-- Digsite: Southern Suramar
			id = 363058,
			mapID = 1033,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Southern Wash
			id = 354093,
			mapID = 1018,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Southern Watcher Isle (copy)
			id = 354029,
			mapID = 1015,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Storm's Reach
			id = 353963,
			mapID = 1017,
			typeID = RaceID.ArchRaceDemons
		},
		["619:0:0"] = {
			-- Digsite: Stormdrake Peak
			id = 346445,
			mapID = 1017,
			typeID = RaceID.ArchRaceDemons
		},
		["619:0:0"] = {
			-- Digsite: Sundered Shoals
			id = 363062,
			mapID = 1033,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:3074:5591"] = {
			id = 2000, -- Digsite: Sundersong Glade
			mapID = 641, -- Val'sharah
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Temple of a Thousand Lights
			id = 354043,
			mapID = 1015,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Thas'talah
			id = 354245,
			mapID = 1018,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: The Crescent Vale
			id = 346514,
			mapID = 1018,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: The Haglands
			id = 353985,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren,
		},
		["619:0:0"] = {
			-- Digsite: The Ruined Sancum
			id = 354037,
			mapID = 1015,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: The Tidal Marsh
			id = 354047,
			mapID = 1015,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: The Wildwood
			id = 354249,
			mapID = 1018,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: The Witchwood
			id = 353981,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren,
		},
		["619:0:0"] = {
			-- Digsite: Timeworn Strand
			id = 350662,
			mapID = 1015,
			typeID = RaceID.ArchRaceHighborneNightElves,
		},
		["619:0:0"] = {
			-- Digsite: Timeworn Strand
			id = 354025,
			mapID = 1015,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Warden's Bluff
			id = 353957,
			mapID = 1017,
			typeID = RaceID.ArchRaceDemons,
		},
		["619:0:0"] = {
			-- Digsite: Whitewater Wash
			id = 344517,
			mapID = 1024,
			typeID = RaceID.ArchRaceHighmountainTauren,
		},
		["619:0:0"] = {
			-- Digsite: Wretched Hollow
			id = 354247,
			mapID = 1018,
			typeID = RaceID.ArchRaceDemons,
		},

		-- ----------------------------------------------------------------------------
		-- Kul Tiras
		-- ----------------------------------------------------------------------------

		["876:1109:403"] = {
			id = 2401, -- Digsite: Brokenbough Roost
			mapID = 895, -- Drustvar
			typeID = RaceID.ArchRaceDrust,
		},
		["876:0:0"] = {
			id = 0, -- Digsite: Rockslip Woodlands
			mapID = 895, -- Tiragarde Sound
			typeID = RaceID.ArchRaceDrust,
		},
		["876:1429:-296"] = {
			id = 2403, -- Digsite: Fernwood Ridge
			mapID = 895, -- Tiragarde Sound
			typeID = RaceID.ArchRaceDrust,
		},
		["876:-671:961"] = {
			id = 2407, -- Digsite: Vigil Hill
			mapID = 895, -- Tiragarde Sound
			typeID = RaceID.ArchRaceDrust,
		},
		["876::0:0"] = {
			id = 0, -- Digsite: Stagheart Cliffs
			mapID = 895, -- Tiragarde Sound
			typeID = RaceID.ArchRaceDrust,
		},
		["876:0:0"] = {
			id = 0, -- Digsite: Placid Springs
			mapID = 895, -- Tiragarde Sound
			typeID = RaceID.ArchRaceDrust,
		},
		["876:-1324:-1159"] = {
			id = 2413, -- Digsite: Deathmist Hills
			mapID = 895, -- Tiragarde Sound
			typeID = RaceID.ArchRaceDrust,
		},
		["876:-1311:1858"] = {
			id = 2415, -- Digsite: Gol Koval
			mapID = 896, -- Drustvar
			typeID = RaceID.ArchRaceDrust,
		},
		["876:0:0"] = {
			id = 0, -- Digsite: Arom's Crossing
			mapID = 896, -- Drustvar
			typeID = RaceID.ArchRaceDrust,
		},
		["876:341:1539"] = {
			id = 2419, -- Digsite: Brackish Coast
			mapID = 896, -- Drustvar
			typeID = RaceID.ArchRaceDrust,
		},
		["876:-7:3839"] = {
			id = 2423, -- Digsite: Corlain
			mapID = 896, -- Drustvar
			typeID = RaceID.ArchRaceDrust,
		},
		["876:0:0"] = {
			id = 0, -- Digsite: Hunter's Run
			mapID = 896, -- Drustvar
			typeID = RaceID.ArchRaceDrust,
		},
		["876:-922:3815"] = {
			id = 2427, -- Digsite: Crimson Forest
			mapID = 896, -- Drustvar
			typeID = RaceID.ArchRaceDrust,
		},
		["876:-1506:3324"] = {
			id = 2429, -- Digsite: Iceveil Glacier
			mapID = 896, -- Drustvar
			typeID = RaceID.ArchRaceDrust,
		},
		["876:0:0"] = {
			id = 0, -- Digsite: Whitegrove Chapel
			mapID = 896, -- Drustvar
			typeID = RaceID.ArchRaceDrust,
		},
		["876:2573:2017"] = {
			id = 2431, -- Digsite: Seabreeze Shallows
			mapID = 942, -- Stormsong Valley
			typeID = RaceID.ArchRaceDrust,
		},
		["876:2539:548"] = {
			id = 2435, -- Digsite: Goldfield Farmstead
			mapID = 942, -- Stormsong Valley
			typeID = RaceID.ArchRaceDrust,
		},		
		["876:2281:-227"] = {
			id = 2437, -- Digsite: Roaming Hills
			mapID = 942, -- Stormsong Valley
			typeID = RaceID.ArchRaceDrust,
		},
		["876:3311:-225"] = {
			id = 2439, -- Digsite: Dire Hills
			mapID = 942, -- Stormsong Valley
			typeID = RaceID.ArchRaceDrust,
		},
		["876:3025:649"] = {
			id = 2441, -- Digsite: Drowned Lands
			mapID = 942, -- Stormsong Valley
			typeID = RaceID.ArchRaceDrust,
		},
		["876:3187:1220"] = {
			id = 2443, -- Digsite: Briny Flats
			mapID = 942, -- Stormsong Valley
			typeID = RaceID.ArchRaceDrust,
		},
		["876:0:0"] = {
			id = 0, -- Digsite: Millstone Hills
			mapID = 942, -- Stormsong Valley
			typeID = RaceID.ArchRaceDrust,
		},
		["876:4138:-249"] = {
			id = 2445, -- Digsite: Windwhisper Summit
			mapID = 942, -- Stormsong Valley
			typeID = RaceID.ArchRaceDrust,
		},
		-- ----------------------------------------------------------------------------
		-- Zandalar
		-- ----------------------------------------------------------------------------

		["875:-2343:-620"] = {
			id = 2451, -- Digsite: Dreadpearl Shallows
			mapID = 862, -- Zuldazar
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:-749:-1172"] = {
			id = 2453, -- Digsite: Atal'Gral
			mapID = 862, -- Zuldazar
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:-493:-166"] = {
			id = 2455, -- Digsite: Savagelands
			mapID = 862, -- Zuldazar
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:-516:1502"] = {
			id = 2457, -- Digsite: Old Merchant Road
			mapID = 862, -- Zuldazar
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:628:-815"] = {
			id = 2459, -- Digsite: Zeb'ahari
			mapID = 862, -- Zuldazar
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:566:1168"] = {
			id = 2461, -- Digsite: The Rivermarsh
			mapID = 863, -- Nazmir
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:1109:2069"] = {
			id = 2463, -- Digsite: Plains of Tojek
			mapID = 863, -- Nazmir
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:1475:1355"] = {
			id = 2465, -- Digsite: Terrace of Sorrows
			mapID = 863, -- Nazmir
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:2392:1771"] = {
			id = 2467, -- Digsite: The Far Reach
			mapID = 863, -- Nazmir
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:2305:1002"] = {
			id = 2469, -- Digsite: Natha'vor
			mapID = 863, -- Nazmir
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:0:0"] = {
			id = 0, -- Digsite: Razorjaw River
			mapID = 863, -- Nazmir
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:1982:-745"] = {
			id = 2473, -- Digsite: Upper Frogmarsh
			mapID = 863, -- Nazmir
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:999:658"] = {
			id = 2475, -- Digsite: Xal'vor
			mapID = 863, --Nazmir
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:1223:2895"] = {
			id = 2477, -- Digsite: Verdant Plateau
			mapID = 864, -- Vol'dun
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:750:3550"] = {
			id = 2479, -- Digsite: Arid Basin
			mapID = 864, --Vol'dun
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:0:0"] = {
			id = 0, -- Digsite: The Cracked Coast
			mapID = 864, -- Vol'dun
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:1516:3919"] = {
			id = 2483, -- Digsite: Whistlebloom Oasis
			mapID = 864, -- Vol'dun
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:0:0"] = {
			id = 0, -- Digsite: The Eternal Spring
			mapID = 864, -- Vol'dun
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:2325:3340"] = {
			id = 2489, -- Digsite: Court of Zak'rajan
			mapID = 864, -- Vol'dun
			typeID = RaceID.ArchRaceZandalari,
		},
		["875:3730:2567"] = {
			id = 2491, -- Digsite: Terrace of the Fang
			mapID = 864, -- Vol'dun
			typeID = RaceID.ArchRaceZandalari,
		},
	}

	local CONTINENT_RACES = {}
	private.CONTINENT_RACES = CONTINENT_RACES

	for siteKey, site in pairs(DIGSITE_TEMPLATES) do
		if site.typeID ~= RaceID.Unknown then
			local continentID = tonumber(((":"):split(siteKey)))
			CONTINENT_RACES[continentID] = CONTINENT_RACES[continentID] or {}
			CONTINENT_RACES[continentID][site.typeID] = true
		end
	end


	private.DIGSITE_TEMPLATES = DIGSITE_TEMPLATES
end
