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
		[173] = {
			id = 173, -- Ruins of Stardust
			mapID = 63, -- Ashenvale
			raceID = RaceID.ArchRaceNightElf,
		},
		[169] = {
			id = 169, -- Zoram Strand Digsite
			mapID = 63, -- Ashenvale
			raceID = RaceID.ArchRaceNightElf,
		},
		[175] = {
			id = 175, -- Forest Song Digsite
			mapID = 63, --Ashenvale
			raceID = RaceID.ArchRaceNightElf
		},
		[185] = {
			id = 185, -- Ruins of Eldarath
			mapID = 76, -- Azshara
			raceID = RaceID.ArchRaceNightElf,
		},
		[199] = {
			id = 199, -- Kodo Graveyard
			mapID = 66, --Desolace
			raceID = RaceID.ArchRaceFossil,
		},
		[315] = {
			id = 315, -- Zul'Farrak Digsite
			mapID = 71, -- Tanaris
			raceID = RaceID.ArchRaceTroll,
		},
		[469] = {
			id = 469, -- Scorched Plain Digsite
			mapID = 198, --Mount Hyjal
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Abyssal Sands Fossil Ridge
			id = 56375,
			mapID = 161,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Akhenet Fields Digsite
			id = 60356,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Bael Modan Digsite
			id = 55410,
			mapID = 607,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Broken Commons Digsite
			id = 56329,
			mapID = 121,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Broken Pillar Digsite
			id = 56367,
			mapID = 161,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Constellas Digsite
			id = 56343,
			mapID = 182,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Cursed Landing Digsite
			id = 60352,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Darkmist Digsite
			id = 56337,
			mapID = 121,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Dire Maul Digsite
			id = 56327,
			mapID = 121,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Dunemaul Fossil Ridge
			id = 56373,
			mapID = 161,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Eastmoon Ruins Digsite
			id = 56369,
			mapID = 161,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Ethel Rethor Digsite
			id = 55420,
			mapID = 101,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Fields of Blood Fossil Bank
			id = 56358,
			mapID = 607,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Frostwhisper Gorge Digsite
			id = 56356,
			mapID = 281,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Grove of Aessina Digsite
			id = 56570,
			mapID = 606,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Ironwood Digsite
			id = 56349,
			mapID = 182,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Jaedenar Digsite
			id = 56347,
			mapID = 182,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Keset Pass Digsite
			id = 60354,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Khartut's Tomb Digsite
			id = 56591,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Lake Kel'Theril Digsite
			id = 56351,
			mapID = 281,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Lower Lakkari Tar Pits
			id = 56380,
			mapID = 201,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Mannoroc Coven Digsite
			id = 55424,
			mapID = 101,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Marshlands Fossil Bank
			id = 56388,
			mapID = 201,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Morlos'Aran Digsite
			id = 56345,
			mapID = 182,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Nazj'vel Digsite
			id = 55354,
			mapID = 42,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Neferset Digsite
			id = 56597,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Nightmare Scar Digsite
			id = 56362,
			mapID = 607,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- North Isildien Digsite
			id = 56341,
			mapID = 121,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Obelisk of the Stars Digsite
			id = 60358,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Oneiros Digsite
			id = 56333,
			mapID = 121,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Orsis Digsite
			id = 56599,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Owl Wing Thicket Digsite
			id = 56354,
			mapID = 281,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Quagmire Fossil Field
			id = 55757,
			mapID = 141,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Ravenwind Digsite
			id = 56331,
			mapID = 121,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- River Delta Digsite
			id = 60350,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Ruins of Ahmtul Digsite
			id = 56607,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Ruins of Ammon Digsite
			id = 56601,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Ruins of Arkkoran
			id = 55414,
			mapID = 181,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Ruins of Eldre'Thar
			id = 55406,
			mapID = 81,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Ruins of Khintaset Digsite
			id = 56603,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Ruins of Lar'donir Digsite
			id = 56566,
			mapID = 606,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Ruins of Ordil'Aran
			id = 55398,
			mapID = 43,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Sahket Wastes Digsite
			id = 60361,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Sanctuary of Malorne Digsite
			id = 56572,
			mapID = 606,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Sargeron Digsite
			id = 55428,
			mapID = 101,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Schnottz's Landing
			id = 60363,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Screaming Reaches Fossil Field
			id = 56386,
			mapID = 201,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Shrine of Goldrinn Digsite
			id = 56568,
			mapID = 606,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Slitherblade Shore Digsite
			id = 55418,
			mapID = 101,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Solarsal Digsite
			id = 56335,
			mapID = 121,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- South Isildien Digsite
			id = 56339,
			mapID = 121,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Southmoon Ruins Digsite
			id = 56371,
			mapID = 161,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Southwind Village Digsite
			id = 56390,
			mapID = 261,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Steps of Fate Digsite
			id = 56595,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Stonetalon Peak
			id = 55404,
			mapID = 81,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Temple of Uldum Digsite
			id = 56605,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Terror Run Fossil Field
			id = 56384,
			mapID = 201,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Tombs of the Precursors Digsite
			id = 56593,
			mapID = 720,
			raceID = RaceID.ArchRaceTolvir,
		},
		[0] = {
			-- Unearthed Grounds
			id = 55408,
			mapID = 81,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Upper Lakkari Tar Pits
			id = 56382,
			mapID = 201,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Valley of Bones
			id = 55422,
			mapID = 101,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Wyrmbog Fossil Field
			id = 55755,
			mapID = 141,
			raceID = RaceID.ArchRaceFossil,
		},

		-- ----------------------------------------------------------------------------
		-- Eastern Kingdoms
		-- ----------------------------------------------------------------------------
		[12] = {
			id = 12, -- Whelgar's Excavation Site
			mapID = 56, -- Wetlands
			raceID = RaceID.ArchRaceDwarf,
		},
		[20] = {
			id = 20, -- Dun Garok Digsite
			mapID = 25, --Hillsbrad Foothills
			raceID = RaceID.ArchRaceDwarf
		},
		[21] = {
			id = 21, -- Southshore Fossil Field
			mapID = 25, --Hillsbrad Foothills
			raceID = RaceID.ArchRaceFossil,
		},
		[189] = {
			id = 189, -- Lakeridge Highway Fossil Bank
			mapID = 49, -- Redridge Mountains
			raceID = RaceID.ArchRaceFossil,
		},
		[209] = {
			id = 209, -- Pyrox Flats Digsite
			mapID = 32, --Searing Gorge
			raceID = RaceID.ArchRaceDwarf,
		},
		[217] = {
			id = 217, -- Zul'Mashar Digsite
			mapID = 23, --Eastern Plaguelands
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Aerie Peak Digsite
			id = 54136,
			mapID = 26,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Agol'watha Digsite
			id = 54141,
			mapID = 26,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Altar of Zul Digsite
			id = 54138,
			mapID = 26,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Andorhal Fossil Bank
			id = 55482,
			mapID = 22,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Bal'lal Ruins Digsite
			id = 55458,
			mapID = 37,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Balia'mah Digsite
			id = 55460,
			mapID = 37,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Dreadmaul Fossil Field
			id = 55436,
			mapID = 19,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Dunwald Ruins Digsite
			id = 56583,
			mapID = 700,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Eastern Ruins of Thaurissan
			id = 55444,
			mapID = 29,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Eastern Zul'Kunda Digsite
			id = 55454,
			mapID = 37,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Eastern Zul'Mamwe Digsite
			id = 55464,
			mapID = 37,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Felstone Fossil Field
			id = 55478,
			mapID = 22,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Greenwarden's Fossil Bank
			id = 54127,
			mapID = 40,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Grimsilt Digsite
			id = 55438,
			mapID = 28,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Gurubashi Arena Digsite
			id = 55474,
			mapID = 673,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Hammertoe's Digsite
			id = 54832,
			mapID = 17,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Humboldt Conflagration Digsite
			id = 56587,
			mapID = 700,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Infectis Scar Fossil Field
			id = 55452,
			mapID = 23,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Ironband's Excavation Site
			id = 54097,
			mapID = 35,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Ironbeard's Tomb
			id = 54124,
			mapID = 40,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Jintha'Alor Lower City Digsite
			id = 54139,
			mapID = 26,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Jintha'Alor Upper City Digsite
			id = 54140,
			mapID = 26,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Misty Reed Fossil Bank
			id = 54864,
			mapID = 38,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Nek'mani Wellspring Digsite
			id = 55476,
			mapID = 673,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Northridge Fossil Field
			id = 55480,
			mapID = 22,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Plaguewood Digsite
			id = 60444,
			mapID = 23,
			raceID = RaceID.ArchRaceNerubian,
		},
		[0] = {
			-- Quel'Lithien Lodge Digsite
			id = 55450,
			mapID = 23,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Red Reaches Fossil Bank
			id = 55434,
			mapID = 19,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Ruins of Aboraz
			id = 55470,
			mapID = 673,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Ruins of Jubuwal
			id = 55472,
			mapID = 673,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Savage Coast Raptor Fields
			id = 55468,
			mapID = 37,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Shadra'Alor Digsite
			id = 54137,
			mapID = 26,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Sunken Temple Digsite
			id = 54862,
			mapID = 38,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Terror Wing Fossil Field
			id = 55446,
			mapID = 29,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Terrorweb Tunnel Digsite
			id = 60442,
			mapID = 23,
			raceID = RaceID.ArchRaceNerubian,
		},
		[0] = {
			-- Thandol Span
			id = 54133,
			mapID = 40,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Thoradin's Wall
			id = 54129,
			mapID = 16,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Thundermar Ruins Digsite
			id = 56585,
			mapID = 700,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Tomb of the Watchers Digsite
			id = 54834,
			mapID = 17,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Twilight Grove Digsite
			id = 55350,
			mapID = 34,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Uldaman Entrance Digsite
			id = 54838,
			mapID = 17,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Vul'Gol Fossil Bank
			id = 55352,
			mapID = 34,
			raceID = RaceID.ArchRaceFossil,
		},
		[0] = {
			-- Western Ruins of Thaurissan
			id = 55442,
			mapID = 29,
			raceID = RaceID.ArchRaceDwarf,
		},
		[0] = {
			-- Western Zul'Kunda Digsite
			id = 55456,
			mapID = 37,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Western Zul'Mamwe Digsite
			id = 55466,
			mapID = 37,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Witherbark Digsite
			id = 54132,
			mapID = 16,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Ziata'jai Digsite
			id = 55462,
			mapID = 37,
			raceID = RaceID.ArchRaceTroll,
		},

		-- ----------------------------------------------------------------------------
		-- Outland
		-- ----------------------------------------------------------------------------
		[359] = {
			id = 359, -- Ancestral Grounds Digsite
			mapID = 107, --Nagrand
			raceID = RaceID.ArchRaceOrc,
		},
		[363] = {
			id = 363, -- Sunspring Post Digsite
			mapID = 107, --Nagrand
			raceID = RaceID.ArchRaceOrc,
		},
		[385] = {
			id = 385, -- Illidari Point Digsite
			mapID = 104, -- Shadowmoon Valley
			raceID = RaceID.ArchRaceDraenei,
		},
		[399] = {
			id = 399, -- Dragonmaw Fortress
			mapID = 104, --Shadowmoon Valley
			raceID = RaceID.ArchRaceOrc,
		},
		[0] = {
			-- Arklon Ruins Digsite
			id = 56408,
			mapID = 479,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Bleeding Hollow Ruins Digsite
			id = 56428,
			mapID = 478,
			raceID = RaceID.ArchRaceOrc,
		},
		[0] = {
			-- Boha'mu Ruins Digsite
			id = 56402,
			mapID = 467,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Bone Wastes Digsite
			id = 56432,
			mapID = 478,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Bonechewer Ruins Digsite
			id = 56430,
			mapID = 478,
			raceID = RaceID.ArchRaceOrc,
		},
		[0] = {
			-- Burning Blade Digsite
			id = 56420,
			mapID = 477,
			raceID = RaceID.ArchRaceOrc,
		},
		[0] = {
			-- Coilskar Point Digsite
			id = 56441,
			mapID = 473,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- East Auchindoun Digsite
			id = 56434,
			mapID = 478,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Eclipse Point Digsite
			id = 56448,
			mapID = 473,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Gor'gaz Outpost Digsite
			id = 56392,
			mapID = 465,
			raceID = RaceID.ArchRaceOrc,
		},
		[0] = {
			-- Grangol'var Village Digsite
			id = 56424,
			mapID = 478,
			raceID = RaceID.ArchRaceOrc,
		},
		[0] = {
			-- Halaa Digsite
			id = 56422,
			mapID = 477,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Hellfire Basin Digsite
			id = 56396,
			mapID = 465,
			raceID = RaceID.ArchRaceOrc,
		},
		[0] = {
			-- Hellfire Citadel Digsite
			id = 56398,
			mapID = 465,
			raceID = RaceID.ArchRaceOrc,
		},
		[0] = {
			-- Laughing Skull Digsite
			id = 56418,
			mapID = 477,
			raceID = RaceID.ArchRaceOrc,
		},
		[0] = {
			-- Ruins of Baa'ri Digsite
			id = 56446,
			mapID = 473,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Ruins of Enkaat Digsite
			id = 56406,
			mapID = 479,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Ruins of Farahlon Digsite
			id = 56410,
			mapID = 479,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Sha'naar Digsite
			id = 56400,
			mapID = 465,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Tuurem Digsite
			id = 56426,
			mapID = 478,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Twin Spire Ruins Digsite
			id = 56404,
			mapID = 467,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Warden's Cage Digsite
			id = 56450,
			mapID = 473,
			raceID = RaceID.ArchRaceOrc,
		},
		[0] = {
			-- West Auchindoun Digsite
			id = 56437,
			mapID = 478,
			raceID = RaceID.ArchRaceDraenei,
		},
		[0] = {
			-- Zeth'Gor Digsite
			id = 56394,
			mapID = 465,
			raceID = RaceID.ArchRaceOrc,
		},

		-- ----------------------------------------------------------------------------
		-- Northrend
		-- ----------------------------------------------------------------------------
		[401] = {
			id = 401, -- Skorn Digsite
			mapID = 117, -- Howling Fjord
			raceID = RaceID.ArchRaceVrykul,
		},
		[403] = {
			id = 403, -- Halgrind Digsite
			mapID = 117, -- Howling Fjord
			raceID = RaceID.ArchRaceVrykul,
		},
		[407] = {
			id = 407, -- Shield Hill Digsite
			mapID = 117, -- Howling Fjord
			raceID = RaceID.ArchRaceVrykul,
		},
		[409] = {
			id = 409, -- Baleheim Digsite
			mapID = 117, --Howling Fjord
			raceID = RaceID.ArchRaceVrykul,
		},
		[415] = {
			id = 415, -- Pit of Narjun Digsite
			mapID = 115, -- Dragonblight
			raceID = RaceID.ArchRaceNerubian,
		},
		[417] = {
			id = 417, -- Moonrest Gardens Digsite
			mapID = 115, -- Dragonblight
			raceID = RaceID.ArchRaceNightElf,
		},
		[419] = {
			id = 419, -- En'kilah Digsite
			mapID = 114, --Borean Tundra
			raceID = RaceID.ArchRaceNerubian
		},
		[421] = {
			id = 421, -- Kolramas Digsite
			mapID = 121, --Zul'Drak
			raceID = RaceID.ArchRaceNerubian,
		},
		[431] = {
			id = 431, -- Zim'Rhuk Digsite
			mapID = 121, -- Zul'Drak
			raceID = RaceID.ArchRaceTroll,
		},
		[433] = {
			id = 433, -- Zol'Heb Digsite
			mapID = 121, -- Zul'Drak
			raceID = RaceID.ArchRaceTroll,
		},
		[435] = {
			id = 435, -- Altar of Quetz'lun Digsite
			mapID = 121, -- Zul'Drak
			raceID = RaceID.ArchRaceTroll,
		},
		[445] = {
			id = 445, -- Brunnhildar Village Digsite
			mapID = 120, -- The Storm Peaks
			raceID = RaceID.ArchRaceVrykul,
		},
		[457] = {
			id = 457, -- Jotunheim Digsite
			mapID = 118, --Icecrown
			raceID = RaceID.ArchRaceVrykul,
		},
		[459] = {
			id = 459, -- Njorndar Village Digsite
			mapID = 118, -- Icecrown
			raceID = RaceID.ArchRaceVrykul,
		},
		[587] = {
			id = 587, -- Pit of Fiends Digsite
			mapID = 118, -- Icecrown
			raceID = RaceID.ArchRaceNerubian,
		},
		[0] = {
			-- Sifreldar Village Digsite
			id = 56551,
			mapID = 120, -- The Storm Peaks
			raceID = RaceID.ArchRaceVrykul,
		},
		[0] = {
			-- Valkyrion Digsite
			id = 56553,
			mapID = 120, -- The Storm Peaks
			raceID = RaceID.ArchRaceVrykul,
		},
		[0] = {
			-- Gjalerbron Digsite
			id = 56516,
			mapID = 117, -- Howling Fjord
			raceID = RaceID.ArchRaceVrykul,
		},
		[0] = {
			-- Nifflevar Digsite
			id = 56514,
			mapID = 117, -- Howling Fjord
			raceID = RaceID.ArchRaceVrykul,
		},
		[0] = {
			-- Wyrmskull Digsite
			id = 56508,
			mapID = 117, -- Howling Fjord
			raceID = RaceID.ArchRaceVrykul,
		},
		[0] = {
			-- Altar of Sseratus Digsite
			id = 56533,
			mapID = 121, -- Zul'Drak
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Scourgeholme Digsite
			id = 56555,
			mapID = 118, -- Icecrown
			raceID = RaceID.ArchRaceNerubian,
		},
		[0] = {
			-- Ymirheim Digsite
			id = 56560,
			mapID = 118, -- Icecrown
			raceID = RaceID.ArchRaceVrykul,
		},
		[0] = {
			-- Drakil'Jin Ruins Digsite
			id = 56547,
			mapID = 490,
			raceID = RaceID.ArchRaceTroll,
		},
		[0] = {
			-- Riplash Ruins Digsite
			id = 56526,
			mapID = 486,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Ruins of Shandaral Digsite
			id = 56530,
			mapID = 510,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Sands of Nasam
			id = 60369,
			mapID = 486,
			raceID = RaceID.ArchRaceNerubian,
		},
		[0] = {
			-- Talramas Digsite
			id = 56541,
			mapID = 486,
			raceID = RaceID.ArchRaceNerubian,
		},
		[0] = {
			-- Violet Stand Digsite
			id = 56528,
			mapID = 510,
			raceID = RaceID.ArchRaceNightElf,
		},
		[0] = {
			-- Voldrune Digsite
			id = 56543,
			mapID = 490,
			raceID = RaceID.ArchRaceVrykul,
		},

		-- ----------------------------------------------------------------------------
		-- Pandaria
		-- ----------------------------------------------------------------------------
		[918] = {
			id = 918, -- Tiger's Wood Digsite
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[923] = {
			id = 923, -- Tian Digsite
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[934] = {
			id = 934, -- Ruins of Gan Shi Digsite
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRaceMogu,
		},
		[936] = {
			id = 936, -- Emperor's Omen Digsite
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[938] = {
			id = 938, -- The Arboretum Digsite
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[955] = {
			id = 955, -- Singing Marshes Digsite
			mapID = 376, -- Valley of the Four Winds
			raceID = RaceID.ArchRaceMogu,
		},
		[957] = {
			id = 957, -- North Great Wall Digsite
			mapID = 376, -- Valley of the Four Winds
			raceID = RaceID.ArchRaceMogu,
		},
		[963] = {
			id = 963, -- Torjari Pit Digsite
			mapID = 376, -- Valley of the Four Winds
			raceID = RaceID.ArchRaceMogu,
		},
		[967] = {
			id = 967, -- The Spring Road Digsite
			mapID = 433, -- The Veiled Stair
			raceID = RaceID.ArchRaceMogu,
		},
		[983] = {
			id = 983, -- Ruins of Korja Digsite
			mapID = 418, -- Krasarang Wilds
			raceID = RaceID.ArchRaceMogu,
		},
		[987] = {
			id = 987, -- Krasarang Wilds Digsite
			mapID = 418, -- Krasarang Wilds
			raceID = RaceID.ArchRaceMogu,
		},
		[989] = {
			id = 989, -- Lost Dynasty Digsite
			mapID = 418, -- Krasarang Wilds
			raceID = RaceID.ArchRaceMogu,
		},
		[995] = {
			id = 995, -- North Temple of the Red Crane Digsite
			mapID = 418, -- Krasarang Wilds
			raceID = RaceID.ArchRacePandaren,
		},
		[999] = {
			id = 999, -- Zhu Province Digsite
			mapID = 418, -- Krasarang Wilds
			raceID = RaceID.ArchRacePandaren,
		},
		[1003] = {
			id = 1003, -- Valley of Kings Digsite
			mapID = 379, -- Kun-Lai Summit
			raceID = RaceID.ArchRaceMogu,
		},
		[1007] = {
			id = 1007, -- Snow Covered Hills Digsite
			mapID = 379, -- Kun-Lai Summit
			raceID = RaceID.ArchRaceMogu,
		},
		[1017] = {
			id = 1017, -- Old Village Digsite
			mapID = 379, -- Kun-Lai Summit
			raceID = RaceID.ArchRacePandaren,
		},
		[1019] = {
			id = 1019, -- Grumblepaw Ranch Digsite
			mapID = 379, -- Kun-Lai Summit
			raceID = RaceID.ArchRacePandaren,
		},
		[1029] = {
			id = 1029, -- Kun-Lai Peak Digsite
			mapID = 379, -- Kun-Lai Summit
			raceID = RaceID.ArchRacePandaren,
		},
		[1033] = {
			id = 1033, -- Forest Heart Digsite
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[1037] = {
			id = 1037, -- Great Bridge Digsite
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[1039] = {
			id = 1039, -- Orchard Digsite
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[1047] = {
			id = 1047, -- Den of Sorrow Digsite
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			id = 1294, -- South Ruins of Guo-Lai Digsite
			mapID = 390, --Vale of Eternal Blossoms
			raceID = RaceID.ArchRaceMogu,
		},
		[1286] = {
			id = 1286, -- Mistfall Village Digsite
			mapID = 390, -- Vale of Eternal Blossoms
			raceID = RaceID.ArchRacePandaren,
		},
		[1300] = {
			id = 1300, -- Tu Shen Digsite
			mapID = 390, -- Vale of Eternal Blossoms
			raceID = RaceID.ArchRaceMogu,
		},
		[1308] = {
			id = 1308, -- West Ruins of Guo-Lai Digsite
			mapID = 390, -- Vale of Eternal Blossoms
			raceID = RaceID.ArchRaceMogu,
		},
		[1318] = {
			id = 1318, -- Emperor's Approach Digsite
			mapID = 390, -- Vale of Eternal Blossoms
			raceID = RaceID.ArchRaceMogu,
		},
		[1322] = {
			id = 1322, -- North Summer Fields Digsite
			mapID = 390, -- Vale of Eternal Blossoms
			raceID = RaceID.ArchRaceMogu,
		},
		[1326] = {
			id = 1326, -- East Summer Fields Digsite
			mapID = 390, -- Vale of Eternal Blossoms
			raceID = RaceID.ArchRaceMogu,
		},
		[1332] = {
			id = 1332, -- Sra'thik Digsite
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRacePandaren,
		},
		[1338] = {
			id = 1338, -- Fire Camp Osul Digsite
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRaceMogu,
		},
		[1346] = {
			id = 1346, -- Lake of Stars Digsite
			mapID = 422, -- Dread Wastes
			raceID = RaceID.ArchRaceMogu,
		},
		[1348] = {
			id = 1348, -- Terrace of Gurthan Digsite
			mapID = 422, -- Dread Wastes
			raceID = RaceID.ArchRaceMogu,
		},
		[1352] = {
			id = 1352, -- Writhingwood Digsite
			mapID = 422, -- Dread Wastes
			raceID = RaceID.ArchRaceMogu,
		},
		[1356] = {
			id = 1356, -- South Ruins of Dojan Digsite
			mapID = 418, -- Krasarang Wilds
			raceID = RaceID.ArchRaceMogu,
		},
		[1358] = {
			id = 1358, -- North Ruins of Dojan Digsite
			mapID = 418, -- Krasarang Wilds
			raceID = RaceID.ArchRaceMogu,
		},
		[1463] = {
			id = 1463, -- Kor'vess Digsite
			mapID = 422, -- Dread Wastes
			raceID = RaceID.ArchRaceMantid,
		},
		[1465] = {
			id = 1465, -- Sra'thik Swarmdock Digsite
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRaceMantid,
		},
		[1467] = {
			id = 1467, -- West Sra'vess Digsite
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRaceMantid,
		},
		[1469] = {
			id = 1469, -- The Feeding Pits Digsite
			mapID = 388, --Townlong Steppes
			raceID = RaceID.ArchRaceMantid,
		},
		[1471] = {
			id = 1471, -- Kzzok Warcamp Digsite
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRaceMantid,
		},
		[1473] = {
			id = 1473, -- East Sra'vess Digsite
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRaceMantid,
		},
		[1479] = {
			id = 1479, -- Ikz'ka Ridge Digsite
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRaceMantid,
		},
		[1481] = {
			id = 1481, -- Sik'vess Digsite
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRaceMantid,
		},
		[1485] = {
			id = 1485, -- North Sik'vess Digsite
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRaceMantid,
		},
		[1489] = {
			id = 1489, -- Kypari'ik Digsite
			mapID = 422, -- Dread Wastes
			raceID = RaceID.ArchRaceMantid,
		},
		[1491] = {
			id = 1491, -- Zan'vess Digsite
			mapID = 422, --Dread Wastes
			raceID = RaceID.ArchRaceMantid,
		},
		[1493] = {
			id = 1493, -- Venomous Ledge Digsite
			mapID = 422, -- Dread Wastes
			raceID = RaceID.ArchRaceMantid,
		},
		[1497] = {
			id = 1497, -- The Briny Muck Digsite
			mapID = 422, -- Dread Wastes
			raceID = RaceID.ArchRaceMantid,
		},
		[1501] = {
			id = 1501, -- Kypari'zar Digsite
			mapID = 422, -- Dread Wastes
			raceID = RaceID.ArchRaceMantid,
		},
		[1503] = {
			id = 1503, -- Lake of Stars Digsite
			mapID = 422, -- Dread Wastes
			raceID = RaceID.ArchRaceMantid,
		},
		[0] = {
			-- Fallsong Village Digsite
			id = 66943,
			mapID = 418, -- Krasarang Wilds
			raceID = RaceID.ArchRaceMogu,
		},
		[0] = {
			-- Gong of Hope Digsite
			id = 67023,
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- Jade Temple Grounds Digsite
			id = 67031,
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- NEEDS UPDATE
			id = 67037,
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- Shrine of the Dawn Digsite
			id = 66789,
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- South Orchard Digsite
			id = 67033,
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- Thunderwood Digsite
			id = 66890,
			mapID = 371, -- The Jade Forest
			raceID = RaceID.ArchRaceMogu,
		},
		[0] = {
			-- North Ruins of Guo-Lai Digsite
			id = 92030,
			mapID = 390, -- Vale of Eternal Blossoms
			raceID = RaceID.ArchRaceMogu,
		},
		[0] = {
			-- NEEDS UPDATE
			id = 92020,
			mapID = 390, -- Vale of Eternal Blossoms
			raceID = RaceID.ArchRaceMogu,
		},
		[0] = {
			-- Five Sisters Digsite
			id = 92026,
			mapID = 390, -- Vale of Eternal Blossoms
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- Winterbough Digsite
			id = 92150,
			mapID = 390, -- Vale of Eternal Blossoms
			raceID = RaceID.ArchRaceMogu,
		},
		[0] = {
			-- Hatred's Vice Digsite
			id = 92180,
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRaceMogu,
		},
		[0] = {
			-- Niuzao Temple Digsite
			id = 92174,
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- Shanze'Dao Digsite
			id = 92196,
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRaceMogu,
		},
		[0] = {
			-- The Underbough Digsite
			id = 177497,
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRaceMantid,
		},
		[0] = {
			-- West Sik'vess Digsite
			id = 177505,
			mapID = 388, -- Townlong Steppes
			raceID = RaceID.ArchRaceMantid,
		},
		[0] = {
			-- Amber Quarry Digsite
			id = 177517,
			mapID = 422, -- Dread Wastes
			raceID = RaceID.ArchRaceMantid,
		},
		[0] = {
			-- Chow Farmstead Digsite
			id = 66987,
			mapID = 379, -- Kun-Lai Summit
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- Destroyed Village Digsite
			id = 66979,
			mapID = 379, -- Kun-Lai Summit
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- Gate to Golden Valley Digsite
			id = 66967,
			mapID = 379, -- Kun-Lai Summit
			raceID = RaceID.ArchRaceMogu,
		},
		[0] = {
			-- Kypari Vor Digsite
			id = 177529,
			mapID = 422, -- Dread Wastes
			raceID = RaceID.ArchRaceMantid,
		},
		[0] = {
			-- North Fruited Fields Digsite
			id = 66935,
			mapID = 376, -- Valley of the Four Winds
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- Paoquan Hollow Digsite
			id = 66933,
			mapID = 376, -- Valley of the Four Winds
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- Pools of Purity Digsite
			id = 66941,
			mapID = 376, -- Valley of the Four Winds
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- Remote Village Digsite
			id = 66973,
			mapID = 379, -- Kun-Lai Summit
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- Small Gate Digsite
			id = 66991,
			mapID = 379, -- Kun-Lai Summit
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- Snow Covered Hills Digsite
			id = 66969,
			mapID = 379, -- Kun-Lai Summit
			raceID = RaceID.ArchRaceMogu,
		},
		[0] = {
			-- South Fruited Fields Digsite
			id = 66939,
			mapID = 376, -- Valley of the Four Winds
			raceID = RaceID.ArchRacePandaren,
		},
		[0] = {
			-- South Great Wall Digsite
			id = 66923,
			mapID = 376, -- Valley of the Four Winds
			raceID = RaceID.ArchRaceMogu,
		},	
		[0] = {
			-- The Clutches of Shek'zeer Digsite
			id = 177509,
			mapID = 422, -- Dread Wastes
			raceID = RaceID.ArchRaceMantid,
		},

		-- ----------------------------------------------------------------------------
		-- Draenor
		-- ----------------------------------------------------------------------------
		[1683] = {
			id = 1683, -- Wor'gol Ridge Digsite
			mapID = 525, -- Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1685] = {
			id = 1685, -- Daggermaw Flows Digsite
			mapID = 525, --Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1687] = {
			id = 1687, -- Lashwind Cleft Digsite
			mapID = 525, -- Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1689] = {
			id = 1689, -- The Crackling Plains Digsite
			mapID = 525, -- Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1695] = {
			id = 1695, -- Stonefang Ridge Digsite
			mapID = 525, -- Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1732] = {
			id = 1732, -- Frostboar Drifts Digsite
			mapID = 525, -- Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1734] = {
			id = 1734, -- Icewind Drifts Digsite
			mapID = 525, -- Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1736] = {
			id = 1736, -- East Coldsnap Bluffs Digsite
			mapID = 525, -- Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1738] = {
			id = 1738, -- Coldsnap Bluffs Digsite
			mapID = 525, -- Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1740] = {
			id = 1740, -- Shaz'gul Digsite
			mapID = 539, -- Shadowmoon Valley
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1744] = {
			id = 1744, -- Anguish Fortress Digsite
			mapID = 539, -- Shadowmoon Valley
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1746] = {
			id = 1746, -- Cursed Woods Digsite
			mapID = 539, --Shadowmoon Valley
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1750] = {
			id = 1750, -- Umbrafen Digsite
			mapID = 539, -- Shadowmoon Valley
			raceID = RaceID.ArchRaceOgre,
		},
		[1758] = {
			id = 1758, -- Sethekk Hollow South Digsite
			mapID = 542, -- Spires of Arak
			raceID = RaceID.ArchRaceArakkoa,
		},
		[1762] = {
			id = 1762, -- Veil Akraz Digsite
			mapID = 542, -- Spires of Arak
			raceID = RaceID.ArchRaceArakkoa,
		},
		[1764] = {
			id = 1764, -- Writhing Mire Digsite
			mapID = 542, -- Spires of Arak
			raceID = RaceID.ArchRaceOgre,
		},
		[1768] = {
			id = 1768, -- Pinchwhistle Point Digsite
			mapID = 542, -- Spires of Arak
			raceID = RaceID.ArchRaceArakkoa,
		},
		[1770] = {
			id = 1770, -- Bloodmane Valley Digsite
			mapID = 542, -- Spires of Arak
			raceID = RaceID.ArchRaceArakkoa,
		},
		[1774] = {
			id = 1774, -- Apexis Excavation Digsite
			mapID = 542, --Spires of Arak
			raceID = RaceID.ArchRaceArakkoa,
		},
		[1776] = {
			id = 1776, -- Gordal Fortress Digsite
			mapID = 535, -- Talador
			raceID = RaceID.ArchRaceOgre,
		},
		[1780] = {
			id = 1780, -- Duskfall Island Digsite
			mapID = 535, -- Talador
			raceID = RaceID.ArchRaceOgre,
		},
		[1786] = {
			id = 1786, -- Ango'rosh Digsite
			mapID = 535, -- Talador
			raceID = RaceID.ArchRaceOgre,
		},
		[1794] = {
			id = 1794, -- Razed Warsong Outpost Digsite
			mapID = 550, --Nagrand
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1798] = {
			id = 1798, -- North Spirit Woods Digsite
			mapID = 550, -- Nagrand
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1800] = {
			id = 1800, -- Kag'ah Digsite
			mapID = 550, -- Nagrand
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1804] = {
			id = 1804, -- Ring of Trials Sludge Digsite
			mapID = 550, -- Nagrand
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1806] = {
			id = 1806, -- Howling Plateau Digsite
			mapID = 550, -- Nagrand
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1808] = {
			id = 1808, -- Rumbling Plateau Digsite
			mapID = 550, -- Nagrand
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1812] = {
			id = 1812, -- Burning Plateau Digsite
			mapID = 550, -- Nagrand
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1820] = {
			id = 1820, -- Deadgrin Ruins Digsite
			mapID = 543, -- Gorgrond
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[1822] = {
			id = 1822, -- The Broken Spine Digsite
			mapID = 543, -- Gorgrond
			raceID = RaceID.ArchRaceOgre,
		},
		[1828] = {
			id = 1828, -- Wildwood Wash Dam Digsite
			mapID = 543, -- Gorgrond
			raceID = RaceID.ArchRaceOgre,
		},
		[1832] = {
			id = 1832, -- Southwind Cliffs Digsite
			mapID = 525, -- Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[0] = {
			-- Frostwind Crag Digsite
			id = 264237,
			mapID = 525, -- Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[0] = {
			-- Frozen Lake Digsite
			id = 264223,
			mapID = 525, -- Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[0] = {
			-- Grom'gar Digsite
			id = 264233,
			mapID = 525, -- Frostfire Ridge
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[0] = {
			-- Shimmering Moor Digsite
			id = 307936,
			mapID = 539, -- Shadowmoon Valley
			raceID = RaceID.ArchRaceArakkoa,
		},
		[0] = {
			-- Gloomshade Digsite
			id = 307940,
			mapID = 539, -- Shadowmoon Valley
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[0] = {
			-- Burial Fields Digsite
			id = 307926,
			mapID = 539, -- Shadowmoon Valley
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[0] = {
			-- Bloodmane Pridelands Digsite
			id = 307950,
			mapID = 542, -- Spires of Arak
			raceID = RaceID.ArchRaceArakkoa,
		},
		[0] = {
			-- Sethekk Hollow North Digsite
			id = 307944,
			mapID = 542, -- Spires of Arak
			raceID = RaceID.ArchRaceArakkoa,
		},
		[0] = {
			-- Veil Zekk Digsite
			id = 307956,
			mapID = 542, -- Spires of Arak
			raceID = RaceID.ArchRaceArakkoa,
		},
		[0] = {
			-- Forgotten Ogre Ruin Digsite
			id = 307973,
			mapID = 535, -- Talador
			raceID = RaceID.ArchRaceOgre,
		},
		[0] = {
			-- Veil Shadar Digsite
			id = 307962,
			mapID = 535, -- Talador
			raceID = RaceID.ArchRaceArakkoa,
		},
		[0] = {
			-- Zangarra Digsite
			id = 307966,
			mapID = 535, -- Talador
			raceID = RaceID.ArchRaceOgre,
		},
		[0] = {
			-- Ancestral Grounds Digsite
			id = 307987,
			mapID = 550, -- Nagrand
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[0] = {
			-- Highmaul Watchtower Digsite
			id = 308001,
			mapID = 550, -- Nagrand
			raceID = RaceID.ArchRaceOgre,
		},
		[0] = {
			-- Mar'gok's Overwatch Digsite
			id = 308003,
			mapID = 550, -- Nagrand
			raceID = RaceID.ArchRaceOgre,
		},
		[0] = {
			-- Overgrown Highmaul Road Digsite
			id = 307977,
			mapID = 550, -- Nagrand
			raceID = RaceID.ArchRaceOgre,
		},
		[0] = {
			-- Ruins of Na'gwa Digsite
			id = 307975,
			mapID = 550, -- Nagrand
			raceID = RaceID.ArchRaceOgre,
		},
		[0] = {
			-- Stonecrag Excavation Digsite
			id = 307981,
			mapID = 550, -- Nagrand
			maxFindCount = 13,
			raceID = RaceID.ArchRaceOgre,
		},
		[0] = {
			-- Drowning Plateau Digsite
			id = 307995,
			mapID = 550, -- Nagrand
			raceID = RaceID.ArchRaceDraenorOrc,
		},
		[0] = {
			-- Overlook Ruins Digsite
			id = 308011,
			mapID = 543, -- Gorgrond
			raceID = RaceID.ArchRaceOgre,
		},
		[0] = {
			-- Ruins of the First Bastion Digsite
			id = 308015,
			mapID = 543, -- Gorgrond
			raceID = RaceID.ArchRaceOgre,
		},

		-- ----------------------------------------------------------------------------
		-- Broken Isles
		-- ----------------------------------------------------------------------------
		[1892] = {
			id = 1892, -- Digsite: Southern Snowblind Mesa
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[1896] = {
			id = 1896, -- Digsite: Kal'delar
			mapID = 641, --Val'sharah
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[1900] = {
			id = 1900, -- Digsite: Andu'talah
			mapID = 641, --Val'sharah
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[1906] = {
			id = 1906, -- Digsite: Legion Camp: Chaos
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceDemons,
		},
		[1912] = {
			id = 1912, -- Digsite: Moonwhisper Gulch
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[1955] = {
			id = 1955, -- Digsite: The Witchwood
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[1963] = {
			id = 1963, -- Digsite: Sky Sepulcher
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[1967] = {
			id = 1967, -- Digsite: Dragon's Falls
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[1971] = {
			id = 1971, -- Digsite: Farondale
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceDemons,
		},
		[1976] = {
			id = 1976, -- Digsite: Timeworn Strand
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[1978] = {
			id = 1978, -- Digsite: Northern Watcher Isle
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceDemons,
		},
		[1982] = {
			id = 1982, -- Digsite: Makrana
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceDemons,
		},
		[1998] = {
			id = 1998, -- Digsite: Black Rook Hold
			mapID = 641, -- Val'sharah
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[2000] = {
			id = 2000, -- Digsite: Sundersong Glade
			mapID = 641, -- Val'sharah
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[2002] = {
			id = 2002, -- Digsite: Ashmane's Fall
			mapID = 641, --Val'sharah
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[2027] = {
			id = 2027, -- Digsite: Eastern Ambervale
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[2031] = {
			id = 2031, -- Digsite: Gates of the City
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[2033] = {
			id = 2033, -- Digsite: Meredil
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[2035] = {
			id = 2035, -- Digsite: Crimson Thicket
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[2041] = {
			id = 2041, -- Digsite: Felsoul Hold
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceDemons,
		},
		[2043] = {
			id = 2043, -- Digsite: Southern Suramar
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceDemons,
		},
		[2047] = {
			id = 2047, -- Digsite: Sundered Shoals
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceDemons,
		},
		[2049] = {
			id = 2049, -- Digsite: Anora Hollow
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceDemons,
		},
		[2073] = {
			id = 2073, -- Digsite: Upper Felsoul Hold
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceDemons,
		},
		[2079] = {
			id = 2079, -- Digsite: Path of Huln
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[0] = {
			-- Digsite: Aggramar's Vault
			id = 346440,
			mapID = 1017,
			raceID = RaceID.ArchRaceDemons
		},
		[0] = {
			-- Digsite: Amberfall Mesa
			id = 353961,
			mapID = 1017,
			raceID = RaceID.ArchRaceDemons
		},

		[0] = {
			-- Digsite: Bloodhunt Highland
			id = 353983,
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[0] = {
			-- Digsite: Bradensbrook
			id = 346502,
			mapID = 1018,
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: Citrine Bay
			id = 353967,
			mapID = 1017,
			raceID = RaceID.ArchRaceDemons
		},
		[0] = {
			-- Digsite: Cliffpaw Ridge
			id = 353970,
			mapID = 1017,
			raceID = RaceID.ArchRaceDemons
		},
		[0] = {
			-- Digsite: Crimson Thicket
			id = 363060,
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: Darkfeather Valley
			id = 353987,
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[0] = {
			-- Digsite: Dreadroot
			id = 354251,
			mapID = 1018,
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: Fallen Kings
			id = 353965,
			mapID = 1017,
			raceID = RaceID.ArchRaceDemons
		},
		[0] = {
			-- Digsite: Feathermane Hunting Grounds
			id = 346527,
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: Fields of An'she
			id = 346475,
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[0] = {
			-- Digsite: Garden of Elune
			id = 354033,
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: Gates of Valor
			id = 350063,
			mapID = 1017,
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: Koralune Estate
			id = 363029,
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: Lightsong
			id = 346506,
			mapID = 1018,
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: Llothien
			id = 346522,
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: Llothien Highlands
			id = 354018,
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: Meredil
			id = 363036,
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: Nor'Danil Wellspring
			id = 354049,
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: Northern Helmouth Shallows
			id = 346449,
			mapID = 1017,
			raceID = RaceID.ArchRaceDemons
		},
		[0] = {
			-- Digsite: Northern Moonfall Retreat
			id = 363019,
			mapID = 680, -- Suramar
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: Northern Snowblind Mesa
			id = 353991,
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[0] = {
			-- Digsite: Old Coast Path
			id = 354041,
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: Pinerock Basin
			id = 353979,
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[0] = {
			-- Digsite: Prowler's Scratch
			id = 353977,
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[0] = {
			-- Digsite: Rhut'van Passage
			id = 354022,
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: Ruins of Zarkhenar
			id = 354045,
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: Screeching Bend
			id = 346478,
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren
		},
		[0] = {
			-- Digsite: Shala'nir
			id = 346512,
			mapID = 1018,
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: Skold-Ashil
			id = 353972,
			mapID = 1017,
			raceID = RaceID.ArchRaceDemons
		},
		[0] = {
			-- Digsite: Southern Helmouth Shallows
			id = 346447,
			mapID = 1017,
			raceID = RaceID.ArchRaceDemons
		},
		[0] = {
			-- Digsite: Southern Wash
			id = 354093,
			mapID = 1018,
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: Southern Watcher Isle (copy)
			id = 354029,
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: Storm's Reach
			id = 353963,
			mapID = 1017,
			raceID = RaceID.ArchRaceDemons
		},
		[0] = {
			-- Digsite: Stormdrake Peak
			id = 346445,
			mapID = 1017,
			raceID = RaceID.ArchRaceDemons
		},
		[0] = {
			-- Digsite: Temple of a Thousand Lights
			id = 354043,
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: Thas'talah
			id = 354245,
			mapID = 1018,
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: The Crescent Vale
			id = 346514,
			mapID = 1018,
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: The Haglands
			id = 353985,
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[0] = {
			-- Digsite: The Ruined Sancum
			id = 354037,
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: The Tidal Marsh
			id = 354047,
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceHighborneNightElves,
		},
		[0] = {
			-- Digsite: The Wildwood
			id = 354249,
			mapID = 1018,
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: Timeworn Strand
			id = 354025,
			mapID = 630, -- Azsuna
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: Warden's Bluff
			id = 353957,
			mapID = 1017,
			raceID = RaceID.ArchRaceDemons,
		},
		[0] = {
			-- Digsite: Whitewater Wash
			id = 344517,
			mapID = 650, -- Highmountain
			raceID = RaceID.ArchRaceHighmountainTauren,
		},
		[0] = {
			-- Digsite: Wretched Hollow
			id = 354247,
			mapID = 1018,
			raceID = RaceID.ArchRaceDemons,
		},

		-- ----------------------------------------------------------------------------
		-- Kul Tiras
		-- ----------------------------------------------------------------------------

		[2401] = {
			id = 2401, -- Digsite: Brokenbough Roost
			mapID = 895, -- Drustvar
			raceID = RaceID.ArchRaceDrust,
		},
		[2403] = {
			id = 2403, -- Digsite: Fernwood Ridge
			mapID = 895, -- Tiragarde Sound
			raceID = RaceID.ArchRaceDrust,
		},
		[2405] = {
			id = 2405, -- Digsite: Rockslip Woodlands
			mapID = 895, -- Tiragarde Sound
			raceID = RaceID.ArchRaceDrust,
		},
		[2407] = {
			id = 2407, -- Digsite: Vigil Hill
			mapID = 895, -- Tiragarde Sound
			raceID = RaceID.ArchRaceDrust,
		},
		[2409] = {
			id = 2409, -- Digsite: Placid Springs
			mapID = 895, -- Tiragarde Sound
			raceID = RaceID.ArchRaceDrust,
		},
		[2411] = {
			id = 2411, -- Digsite: Stagheart Cliffs
			mapID = 895, -- Tiragarde Sound
			raceID = RaceID.ArchRaceDrust,
		},
		[2413] = {
			id = 2413, -- Digsite: Deathmist Hills
			mapID = 895, -- Tiragarde Sound
			raceID = RaceID.ArchRaceDrust,
		},
		[2415] = {
			id = 2415, -- Digsite: Gol Koval
			mapID = 896, -- Drustvar
			raceID = RaceID.ArchRaceDrust,
		},
		[2417] = {
			id = 2417, -- Digsite: Hunter's Run
			mapID = 896, -- Drustvar
			raceID = RaceID.ArchRaceDrust,
		},
		[2419] = {
			id = 2419, -- Digsite: Brackish Coast
			mapID = 896, -- Drustvar
			raceID = RaceID.ArchRaceDrust,
		},
		[2421] = {
			id = 2421, -- Digsite: Arom's Crossing
			mapID = 896, -- Drustvar
			raceID = RaceID.ArchRaceDrust,
		},
		[2423] = {
			id = 2423, -- Digsite: Corlain
			mapID = 896, -- Drustvar
			raceID = RaceID.ArchRaceDrust,
		},
		[2425] = {
			id = 2425, -- Digsite: Whitegrove Chapel
			mapID = 896, -- Drustvar
			raceID = RaceID.ArchRaceDrust,
		},
		[2427] = {
			id = 2427, -- Digsite: Crimson Forest
			mapID = 896, -- Drustvar
			raceID = RaceID.ArchRaceDrust,
		},
		[2429] = {
			id = 2429, -- Digsite: Iceveil Glacier
			mapID = 896, -- Drustvar
			raceID = RaceID.ArchRaceDrust,
		},
		[2431] = {
			id = 2431, -- Digsite: Seabreeze Shallows
			mapID = 942, -- Stormsong Valley
			raceID = RaceID.ArchRaceDrust,
		},
		[2433] = {
			id = 2433, -- Digsite: Millstone Hills
			mapID = 942, -- Stormsong Valley
			raceID = RaceID.ArchRaceDrust,
		},
		[2435] = {
			id = 2435, -- Digsite: Goldfield Farmstead
			mapID = 942, -- Stormsong Valley
			raceID = RaceID.ArchRaceDrust,
		},		
		[2437] = {
			id = 2437, -- Digsite: Roaming Hills
			mapID = 942, -- Stormsong Valley
			raceID = RaceID.ArchRaceDrust,
		},
		[2439] = {
			id = 2439, -- Digsite: Dire Hills
			mapID = 942, -- Stormsong Valley
			raceID = RaceID.ArchRaceDrust,
		},
		[2441] = {
			id = 2441, -- Digsite: Drowned Lands
			mapID = 942, -- Stormsong Valley
			raceID = RaceID.ArchRaceDrust,
		},
		[2443] = {
			id = 2443, -- Digsite: Briny Flats
			mapID = 942, -- Stormsong Valley
			raceID = RaceID.ArchRaceDrust,
		},
		[2445] = {
			id = 2445, -- Digsite: Windwhisper Summit
			mapID = 942, -- Stormsong Valley
			raceID = RaceID.ArchRaceDrust,
		},
		-- ----------------------------------------------------------------------------
		-- Zandalar
		-- ----------------------------------------------------------------------------

		[2451] = {
			id = 2451, -- Digsite: Dreadpearl Shallows
			mapID = 862, -- Zuldazar
			raceID = RaceID.ArchRaceZandalari,
		},
		[2453] = {
			id = 2453, -- Digsite: Atal'Gral
			mapID = 862, -- Zuldazar
			raceID = RaceID.ArchRaceZandalari,
		},
		[2455] = {
			id = 2455, -- Digsite: Savagelands
			mapID = 862, -- Zuldazar
			raceID = RaceID.ArchRaceZandalari,
		},
		[2457] = {
			id = 2457, -- Digsite: Old Merchant Road
			mapID = 862, -- Zuldazar
			raceID = RaceID.ArchRaceZandalari,
		},
		[2459] = {
			id = 2459, -- Digsite: Zeb'ahari
			mapID = 862, -- Zuldazar
			raceID = RaceID.ArchRaceZandalari,
		},
		[2461] = {
			id = 2461, -- Digsite: The Rivermarsh
			mapID = 863, -- Nazmir
			raceID = RaceID.ArchRaceZandalari,
		},
		[2463] = {
			id = 2463, -- Digsite: Plains of Tojek
			mapID = 863, -- Nazmir
			raceID = RaceID.ArchRaceZandalari,
		},
		[2465] = {
			id = 2465, -- Digsite: Terrace of Sorrows
			mapID = 863, -- Nazmir
			raceID = RaceID.ArchRaceZandalari,
		},
		[2467] = {
			id = 2467, -- Digsite: The Far Reach
			mapID = 863, -- Nazmir
			raceID = RaceID.ArchRaceZandalari,
		},
		[2469] = {
			id = 2469, -- Digsite: Natha'vor
			mapID = 863, -- Nazmir
			raceID = RaceID.ArchRaceZandalari,
		},
		[0] = {
			id = 2471, -- Digsite: Razorjaw River
			mapID = 863, -- Nazmir
			raceID = RaceID.ArchRaceZandalari,
		},
		[2473] = {
			id = 2473, -- Digsite: Upper Frogmarsh
			mapID = 863, -- Nazmir
			raceID = RaceID.ArchRaceZandalari,
		},
		[2475] = {
			id = 2475, -- Digsite: Xal'vor
			mapID = 863, --Nazmir
			raceID = RaceID.ArchRaceZandalari,
		},
		[2477] = {
			id = 2477, -- Digsite: Verdant Plateau
			mapID = 864, -- Vol'dun
			raceID = RaceID.ArchRaceZandalari,
		},
		[2479] = {
			id = 2479, -- Digsite: Arid Basin
			mapID = 864, --Vol'dun
			raceID = RaceID.ArchRaceZandalari,
		},
		[2483] = {
			id = 2483, -- Digsite: Whistlebloom Oasis
			mapID = 864, -- Vol'dun
			raceID = RaceID.ArchRaceZandalari,
		},
		[2485] = {
			id = 2485, -- Digsite: Port of Zem'lan
			mapID = 864, -- Vol'dun
			raceID = RaceID.ArchRaceZandalari,
		},
		[2487] = {
			id = 2487, -- Digsite: The Cracked Coast
			mapID = 864, -- Vol'dun
			raceID = RaceID.ArchRaceZandalari,
		},
		[2489] = {
			id = 2489, -- Digsite: Court of Zak'rajan
			mapID = 864, -- Vol'dun
			raceID = RaceID.ArchRaceZandalari,
		},
		[2491] = -- Digsite: Terrace of the Fang
		{ 
			id = 2491, 
			mapID = 864, -- Vol'dun
			raceID = RaceID.ArchRaceZandalari,
		},
		[0] = {
			id = 0, -- Digsite: The Eternal Spring
			mapID = 864, -- Vol'dun
			raceID = RaceID.ArchRaceZandalari,
		},
	}

	local CONTINENT_RACES =
	{
		-- Kalimdor
		[12] =
		{
			[RaceID.ArchRaceDwarf] = 0,
			[RaceID.ArchRaceNightElf] = 0,
			[RaceID.ArchRaceTroll] = 0,
			[RaceID.ArchRaceTolvir] = 0,
		},
		-- Eastern Kingdoms
		[13] =
		{
			[RaceID.ArchRaceDwarf] = 0,
			[RaceID.ArchRaceNightElf] = 0,
			[RaceID.ArchRaceTroll] = 0,
			[RaceID.ArchRaceNerubian] = 0,
		},
		-- Outland
		[101] =
		{
			[RaceID.ArchRaceOrc] = 0,
			[RaceID.ArchRaceDraenei] = 0,
		},
		-- Northrend
		[113] =
		{
			[RaceID.ArchRaceNightElf] = 0,
			[RaceID.ArchRaceVrykul] = 0,
			[RaceID.ArchRaceNerubian] = 0,
			[RaceID.ArchRaceTroll] = 0,
		},		
		-- Pandaria
		[424] =
		{
			[RaceID.ArchRacePandaren] = 0,
			[RaceID.ArchRaceMantid] = 0,
			[RaceID.ArchRaceMogu] = 0,
		},
		-- Draenor
		[572] =
		{
			[RaceID.ArchRaceArakkoa] = 0,
			[RaceID.ArchRaceDraenorOrc] = 0,
			[RaceID.ArchRaceOgre] = 0,
		},
		-- Broken Isles
		[619] = 
		{
			[RaceID.ArchRaceDemons] = 0,	
			[RaceID.ArchRaceHighborneNightElves] = 0,
			[RaceID.ArchRaceHighmountainTauren] = 0,
		},
		-- Zandalar
		[875] =
		{
			[RaceID.ArchRaceZandalari] = 0,
		},
		-- Kul Tiras
		[876] =
		{
			[RaceID.ArchRaceDrust] = 0,
		},
	}
	
	private.CONTINENT_RACES = CONTINENT_RACES
	private.DIGSITE_TEMPLATES = DIGSITE_TEMPLATES
end
