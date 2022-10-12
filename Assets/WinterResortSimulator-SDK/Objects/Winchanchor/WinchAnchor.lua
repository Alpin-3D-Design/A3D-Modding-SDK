--
--
-- Winter Resort Simulator - Modding SDK
-- Data tables for default content
--
--
-- Copyright (C) HR Innoways GmbH. All Rights Reserved.
--
-- Please view the license file in the root directory. All scripts
-- contained in the Winter Resort Simulator Modding SDK may only be
-- used as specified in that license file.
--
--

ModLoader.addContent("vehicle", {
	contentName				= "RopeWinch",
	title					= "$shop_winchAnchor_title",
	fullDesc				= "$shop_winchAnchor_desc",
	techSpecs				= "$shop_winchAnchor_specs",
	previewFilename			= "$objects/winchAnchor/winchAnchor",
	logoFilename			= "$logos/marmotta",
	
	author					= "HR Innoways",
	shopCategory			= "objects",
	price					= 5000,
	depreciationPeriod		= 80,
	
	class					= Vehicle,
	prefab					= "$prefabs/WinchAnchor1",
	vehicleScripts			= {
		RopeWinch,
	},

	massCenter				= Vector3:new(0, 0.6, 0),

	axles					= { },


	isPlaceable				= true,
	isKinematic				= true,
	isCustomizable			= true;

	customizations			= {
		{
			customizationName		= "customization1",
			title					= "$shop_flatAnchor_title",
			fullDesc				= "$shop_flatAnchor_desc",
			prefab					= "$prefabs/WinchAnchor1",
			previewFilename			= "$objects/winchAnchor/flachAnker",

		},
		{
			customizationName		= "customization2",
			title					= "$shop_steepAnchor_title",
			fullDesc				= "$shop_steepAnchor_desc",
			prefab					= "$prefabs/WinchAnchor2",
			previewFilename			= "$objects/winchAnchor/steilAnker",
		},
		{
			customizationName		= "customization3",
			title					= "$shop_verticalAnchor_title",
			fullDesc				= "$shop_verticalAnchor_desc",
			prefab					= "$prefabs/WinchAnchor3",
			previewFilename			= "$objects/winchAnchor/vertikalAnker",
		},
	},
});