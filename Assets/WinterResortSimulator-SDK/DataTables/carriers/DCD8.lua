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
	contentName		= "dline_dcd8",
	title			= "Doppelmayr DCD8",
	fullDesc		= "Carrier for an 8-seater chairlift.",
	class			= RWDefaultCarrier,
	
	prefab				= "$ropeways/D-Line/DCD8_R",
	personsPerCarrier	= 8,
	suspension			= {
		cogRadius		= 3,
		dampingCoeffX	= 0.025,
		rotXIndex		= "1",
	},
	weight				= {
		empty			= 800,
		payload			= 0,
		maxTotalWeight	= 1080,
	},
	length				= 0.85,
	animatedParts		= {
		{	name		= "grip",		pos = 0,	index	= "D-Klemme_gameready"		},
		{	name		= "bar",		pos = 0,	index	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/DCD8_Sicherheitsbuegel",
			inputKey	= "RW_Bar",
			textOn		= "$RW_Bar_0",
			textOff		= "$RW_Bar_1",
			mustBe1		= "bubble",
		},
		{	name		= "bubble",		pos = 0,	index	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/DCD8_Bubble",
			inputKey	= "RW_Bubble",
			textOn		= "$RW_Bubble_0",
			textOff		= "$RW_Bubble_1",
			mustBe0		= "bar",
		},
		{	name		= "seat",		pos = 0,	index	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/DCD8_Sitzbank_LOD0"		},
	},
	numberLabels		= {
		{	digitStyle	= "H",			index="DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DigitH1" },
		{	digitStyle	= "H",			index="DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DigitH2" },
		{	digitStyle	= "T",			index="DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DigitT1" },
		{	digitStyle	= "T",			index="DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DigitT2" },
		{	digitStyle	= "U",			index="DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DigitU1" },
		{	digitStyle	= "U",			index="DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DigitU2" },
	},

	seats					= {
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat1",		cameraIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat1/Camera",		leaveIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat1/Leave"	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat2",		cameraIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat2/Camera",		leaveIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat2/Leave"	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat3",		cameraIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat3/Camera",		leaveIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat3/Leave"	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat4",		cameraIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat4/Camera",		leaveIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat4/Leave"	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat5",		cameraIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat5/Camera",		leaveIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat5/Leave"	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat6",		cameraIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat6/Camera",		leaveIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat6/Leave"	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat7",		cameraIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat7/Camera",		leaveIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat7/Leave"	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat8",		cameraIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat8/Camera",		leaveIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Seat8/Leave"	},
	},
	cameras					= {
		{	slot			= 2,	index	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/ExterieurCameraRoot/Camera",	rotIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/ExterieurCameraRoot",		zoomIndex	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/ExterieurCameraRoot/Camera" },
		{	slot			= 3,	index	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/ExterieurCamera11"	},
		{	slot			= 3,	index	= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/ExterieurCamera12"	},
		{	slot			= 4,	index	= "D-Klemme_gameready/ExterieurCamera21"	},
		{	slot			= 4,	index	= "DCD8/DCD8_Gehaenge_LOD0/ExterieurCamera22"					},
	},
	passengerSeats			= {
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Skier1",		animationTrigger	= "sitChairlift",	showSkis	= true,		showSticks	= false,	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Skier2",		animationTrigger	= "sitChairlift",	showSkis	= true,		showSticks	= false,	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Skier3",		animationTrigger	= "sitChairlift",	showSkis	= true,		showSticks	= false,	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Skier4",		animationTrigger	= "sitChairlift",	showSkis	= true,		showSticks	= false,	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Skier5",		animationTrigger	= "sitChairlift",	showSkis	= true,		showSticks	= false,	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Skier6",		animationTrigger	= "sitChairlift",	showSkis	= true,		showSticks	= false,	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Skier7",		animationTrigger	= "sitChairlift",	showSkis	= true,		showSticks	= false,	},
		{	index			= "DCD8/DCD8_Gehaenge_LOD0/DCD8_Aufhg_LOD0/DCD8_Rahmen_Aufhg_LOD0/DCD8_Rahmen_LOD0/Skier8",		animationTrigger	= "sitChairlift",	showSkis	= true,		showSticks	= false,	},
	},
});