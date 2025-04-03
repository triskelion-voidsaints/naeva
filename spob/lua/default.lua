local luaspob = require "spob.lua.lib.spob"

luaspob.setup()

local SPOB_CLASSES = {
-- Auroran stations
	["5-A"] = _("Auroran Listening Post (5-A type)"),
	["0-A"] = _("Auroran Single Station (0-A type)"),
	["1-A"] = _("Auroran Triple Station (1-A type)"),
	["7-0"] = _("Deimos Station (7-0 type)"),
	["7-1"] = _("Double Deimos Station (7-1 type)"),
-- Civilian stations
	["0-C"] = _("Civilian Station (0-C type)"),
	["0-C-Z"] = _("Decommisioned Station (0-C-Z type)"),
	["1-C"] = _("Milita Station (1-C type)"),
-- Pirate stations
	["2"] = _("Pirate Station (2 type)"),
	["0-C-P"] = _("Pirate-controlled Civilian Station (0-C-P type)"),
	["1-C-P"] = _("Pirate-controlled Militia Station (1-C-P type)"),
-- Federation stations
	["3"] = _("Manifest Station (3 type)"),
	["0-F"] = _("Federation Logistics Station (0-F type)"),
	["1-F"] = _("Federation Battle Station (1-F type)"),
-- Polaris stations
	["0-P"] = _("Polaris Station (0-P type)"),
	["1-P"] = _("Nil'kemorya Station (1-P type)"),
	["5-P"] = _("Polaris Listening Post (5-P type)"),
	["11-P"] = _("Polaris Admin Relay (11-P type)"),
-- Artificial ecosystems
	["4"] = _("Segmented Ringworld (4 type)"),
	["4-L"] = _("Intergalactic Hypergate (4-L type)"),
	["4-M"] = _("Ascension Device (4-M type)"),
	["4-V"] = _("Grave of the Messiah (4-V type)"),
	["4-W"] = _("Artificially Ringed World (4-W type)"),
-- Gas mining
	["6-C"] = _("Independent Skymining (6-C type)"),
	["6-F"] = _("Pyrogenesis Skymining (6-F type)"),
	["6-P"] = _("Polaris Skymining (6-P type)"),
-- Frontier colony ships
	["7"] = _("Deimos Colony Ship (7 type)"),
	["7-Z"] = _("Irradiated Deimos (7-Z type)"),
-- Orbital facilities
	["8-F"] = _("Carousel Station (8-F type)"),
	["8-P"] = _("Polaris Skystation (8-P type)"),
-- Inhabited asteroids
	["D-A"] = _("Asteroid inhabited by Aurorans (D-A type)"),
	["D-F"] = _("Inhabited Asteroid (D-F type)"),
-- Portals
	["12-Q"] = _("Destabilized Overgate exit (12-Q type)"),
	["12-Z"] = _("Unstable Wormhole (12-Z type)"),
	["12"] = _("Wormhole (12 type)"),
	["10"] = _("Overgate (10 type)"),
	["10-P"] = _("Polaris Overgate (10-P type)"),
	["10-Z"] = _("Destabilized Overgate (10-Z type)"),
	["9"] = _("Hypergate (9 type)"),
	["9-P"] = _("Polaris Hypergate (9-P type)"),
	["10-V"] = _("Vell-os Overgate (10-V type)"),
	["9-Z"] = _("Destroyed Hypergate (9-Z type)"),
-- Space tools
	["13"] = _("Psionic Disrupter (13 type)"),
--[[Add more as necessary
	[""] = _(" ( type)"),
]]
	-- Planet classes
	["A"] = _("Geothermal (A class)"),
	["DA"] = _("Geothermal moon (DA class)"),
	["C"] = _("Silicates planet (C class)"),
	["D"] = _("Airless Rocky moon (D class)"),
	["DD"] = _("Airless Metallic moon (DD class)"),
	["E"] = _("Geometallic (E class)"),
	["F"] = _("Geometallic (F class)"),
	["G"] = _("Geocrystaline (G class)"),
	["H"] = _("Desert (H class)"),
-- Gas giants
	["I"] = _("Ringed Gas Giant (I class)"),
	["J"] = _("Blue Gas Giant (J class)"),
	["JK"] = _("Orange Gas Giant (JK class)"),
	["JP"] = _("Ice Gas Giant (JP class)"),
	["JQ"] = _("Purple Gas Giant (JQ class)"),
	["JZ"] = _("Depleted Gas Giant with haze (JZ class)"),
-- Planet classes, part 2
	["K"] = _("Adaptable (K class)"),
	["DK"] = _("Adaptable moon (DK class)"),
	["L"] = _("Marginal (L class)"),
	["DL"] = _("Marginal moon (DL class)"),
-- Terrestrial planets
	["M"] = _("Terrestrial (M class)"),
	["DM"] = _("Terrestrial moon (DM class)"),
	["MD"] = _("Small Terrestrial (MD class)"),
	["MH"] = _("Arboreal World (MH class)"),
	["MO"] = _("Oceanic Terrestrial (MO class)"),
	["MP"] = _("Frosty Terrestrial (MP class)"),
	["MW"] = _("Polluted Terrestrial (MW class)"),
-- Planet classes, part 3
	["N"] = _("Reducing (N class)"),
	["O"] = _("Pelagic (O class)"),
	["DO"] = _("Pelagic moon (DO class)"),
	["P"] = _("Glaciated (P class)"),
	["DP"] = _("Glaciated moon (DP class)"),
	["Q"] = _("Variable (Q class)"),
	["R"] = _("Rogue (R class)"),
	["RH"] = _("Dry Rogue (RH class)"),
	["S"] = _("Methane Atmosphere (S class)"),
--[[Add more as necessary
	["T"] = _(" (T class)"),
	["U"] = _(" (U class)"),
]]
	["V"] = _("Terraformed (V class)"),
	["W"] = _("Biohazardous (W class)"),
	["X"] = _("Bacterial Sludge (X class)"),
	["Y"] = _("Chlorine Atmosphere (Y class)"),
	["Z"] = _("Dead Planet (Z class)"),
	["DZ"] = _("Dead Moon (DZ class)"),
--[[Add more as necessary
	[""] = _(" ( class)"),
]]
}

function classname( baseclass )
	local long = SPOB_CLASSES[baseclass]
	if long then return long end
	return baseclass
end