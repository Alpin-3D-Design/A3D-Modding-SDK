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

ModLoader.addContent("carrier", {
	contentName		= "dline_cwa_omega-v",
	title			= "CWA Omega V",
	fullDesc		= "Carrier for a D-Line 10-MGD.",
	class			= RWDefaultCarrier,
	
	prefab				= "$ropeways/D-Line/OmegaV",
	personsPerCarrier	= 10,
	suspension			= {
		cogRadius		= 1.8,
		dampingCoeffX	= 0.025,
		rotXIndex		= "Gehaengearm",
	},
	weight				= {
		empty			= 650,
		payload			= 0,
		maxTotalWeight	= 1200,
	},
	length				= 1.8,
	animatedParts		= {
		{	name		= "grip",		pos = 0,	index	= "D-Klemme_gameready"		},
		{	name		= "door",		pos = 0,	index	= "Gehaengearm/Gehaengearm-X/Dach"		},
	},
	numberLabels		= {
		{	digitStyle	= "T",			index="Gehaengearm/Gehaengearm-X/Dach/DigitT1" },
		{	digitStyle	= "T",			index="Gehaengearm/Gehaengearm-X/Dach/DigitT2" },
		{	digitStyle	= "U",			index="Gehaengearm/Gehaengearm-X/Dach/DigitU1" },
		{	digitStyle	= "U",			index="Gehaengearm/Gehaengearm-X/Dach/DigitU2" },
	},

	seats					= {
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat1",					cameraIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat1/Camera",				leaveIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat1/Leave"	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat2",					cameraIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat2/Camera",				leaveIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat2/Leave"	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat3",					cameraIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat3/Camera",				leaveIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat3/Leave"	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat4",					cameraIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat4/Camera",				leaveIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat4/Leave"	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat5",					cameraIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat5/Camera",				leaveIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat5/Leave"	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat6",					cameraIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat6/Camera",				leaveIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat6/Leave"	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat7",					cameraIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat7/Camera",				leaveIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat7/Leave"	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat8",					cameraIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat8/Camera",				leaveIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat8/Leave"	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat9",					cameraIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat9/Camera",				leaveIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat9/Leave"	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat10",				cameraIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat10/Camera",				leaveIndex	= "Gehaengearm/Gehaengearm-X/Dach/Sitze/Seat10/Leave"	},
	},
	cameras					= {
		{	slot			= 2,	index	= "Gehaengearm/Gehaengearm-X/Dach/ExterieurCameraRoot/Camera",	rotIndex	= "Gehaengearm/Gehaengearm-X/Dach/ExterieurCameraRoot",		zoomIndex	= "Gehaengearm/Gehaengearm-X/Dach/ExterieurCameraRoot/Camera" },
		{	slot			= 3,	index	= "Gehaengearm/Gehaengearm-X/Dach/ExterieurCamera11"	},
		{	slot			= 3,	index	= "Gehaengearm/Gehaengearm-X/Dach/ExterieurCamera12"	},
		{	slot			= 4,	index	= "D-Klemme_gameready/ExterieurCamera21"	},
		{	slot			= 4,	index	= "Gehaengearm/ExterieurCamera22"			},
	},
	passengerSeats			= {
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Skiers/Skier1",				animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Skiers/Skier2",				animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Skiers/Skier3",				animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Skiers/Skier4",				animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Skiers/Skier5",				animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Skiers/Skier6",				animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Skiers/Skier7",				animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Skiers/Skier8",				animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Skiers/Skier9",				animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "Gehaengearm/Gehaengearm-X/Dach/Skiers/Skier10",				animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
	},

	recolorRenderers		= {
		carrier				= {
			"Gehaengearm/Gehaengearm_LOD0",
			"Gehaengearm/Gehaenge_Hebel_I_LOD0",
			"Gehaengearm/Gehaenge_Hebel_A_LOD0",
			"Gehaengearm/Gehaengearm-X/Dach/Hauptstreben_LOD0",
			"Gehaengearm/Gehaengearm-X/Dach/Boden_LOD0",
			"Gehaengearm/Gehaengearm-X/Daempfer_LOD0/Daempfer-Zylinder_LOD0",
			"Gehaengearm/Gehaengearm-X/Dach/Dach_LOD0",
			"Gehaengearm/Gehaengearm-X/Daempfer_LOD0",
			"Gehaengearm/Gehaengearm-X/Gehaengearm-X_LOD0",
		},
		lod1				= {
			["Gehaengearm/Gehaengearm-X/Dach/Boden_LOD1"] = 0,
			["Gehaengearm/Gehaengearm-X/Dach/Dach_LOD1"] = 0,
			["Gehaengearm/Gehaengearm-X/Dach/Hauptstreben_LOD1"] = 0,
		},
		lod2				= {
			"Gehaengearm/Gehaengearm_LOD2",
		},
	},
	alwaysApplyColor		= false, -- set this to true if you have changed the values below
	colors					= {
		carrier				= {
			_RColor = { 102, 102, 102, 255 }, -- colormask R channel
			-- _GColor = { 0,0,0, 255 },
			-- _BColor = { 0,0,0, 255 },
		},
		lod1				= {
			_Color = { 62, 69, 81, 255 },
		},
		lod2				= {
			_Color = { 87, 89, 87, 255 },
		},
	},
});