-- This file is a general rule on how to add content to the game.
-- By default, no content is added.
-- If you want a line to become active, please remove the "--" at the beginning.
-- You can always copy/paste lines to add more than just one object per mod.
-- You can also add a lot of different items at the same time (e.g. couple of objects
-- and couple of vehicles together in one bundle).


-- ******************************************************************
-- 1) Add a static prefab to the ingame editor

-- Please make sure to replace "filename" by the filename of the asset within your mod.
--ModLoader.registerPrefab("filename")


-- ******************************************************************
-- 2) Add a non-static object to the game
--	this includes vehicles, ropeways carriers, ropeway supports and ropeway systems as a whole.
--	Following values of contentType are possible:
--		"vehicle"	Adds a new vehicle to the game
--		"carrier"	Adds a new ropeway carrier (gondola/chair/etc)
--		"support"	Adds a new ropeway support (pylon/haul rope support)
--		"ropeway"	Adds a new ropeway system to the game (also references to supports and carriers)

--ModLoader.addContent(contentType, {
--	contentName				= "samplevehicle",
--	title					= "Sample Vehicle",
--	fullDesc				= "description of your vehicle",
--	
--	-- for the rest of the data table please view our default data tables.
--	-- (you'll find them in the Assets/WinterResortSimulator-SDK/DataTables directory!)
--});