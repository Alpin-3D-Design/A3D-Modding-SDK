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
	contentName		= "6cld-revision",
	hidden			= true,
	title			= "6-CLD Revision vehicle",
	fullDesc		= "Revision vehicle fitted to DCD6 chairlift.",
	class			= RWDefaultCarrier,
	
	prefab				= "$ropeways/D-Line/6cld-revision",
	personsPerCarrier	= 0,
	remoteControlRopeway= true,
	suspension			= {
		cogRadius		= 1.8,
		dampingCoeffX	= 0.025,
		rotXIndex		= "Montagekorb_DCD6",
	},
	weight				= {
		empty			= 650,
		payload			= 0,
		maxTotalWeight	= 1200,
	},
	length				= 2.05,
	animatedParts		= {
		{	name		= "grip",		pos = 0,	index	= "D-Klemme_gameready"		},
		{
			name		= "WghDoorLeft",
			pos			= 0,
			index		= "Montagekorb_DCD6/DCD6Montagekorb/DCD6Tuere2",
			collision	= "Montagekorb_DCD6/DCD6Montagekorb/DCD6Tuere2/DCD6Tuere2_col",
			textOn		= "$doorOpen",
			textOff		= "$doorClose",
		},
		{
			name		= "WghDoorRight",
			pos			= 0,
			index		= "Montagekorb_DCD6/DCD6Montagekorb/DCD6Tuere1",
			collision	= "Montagekorb_DCD6/DCD6Montagekorb/DCD6Tuere1/DCD6Tuere1_col",
			textOn		= "$doorOpen",
			textOff		= "$doorClose",
		},
	},

	seats					= {
		{	index			= "Montagekorb_DCD6/DCD6Montagekorb/DCD6Bank_colconvis/Seat1",	cameraIndex	= "Montagekorb_DCD6/DCD6Montagekorb/DCD6Bank_colconvis/Seat1/Camera",	leaveIndex	= "Montagekorb_DCD6/DCD6Montagekorb/DCD6Bank_colconvis/Seat1/Leave"	},
		{	index			= "Montagekorb_DCD6/DCD6Montagekorb/DCD6Bank_colconvis/Seat2",	cameraIndex	= "Montagekorb_DCD6/DCD6Montagekorb/DCD6Bank_colconvis/Seat2/Camera",	leaveIndex	= "Montagekorb_DCD6/DCD6Montagekorb/DCD6Bank_colconvis/Seat2/Leave"	},
	},
	cameras					= {
		{	slot			= 2,	index	= "Montagekorb_DCD6/DCD6Montagekorb/ExterieurCameraRoot/Camera",	rotIndex	= "Montagekorb_DCD6/DCD6Montagekorb/ExterieurCameraRoot",		zoomIndex	= "Montagekorb_DCD6/DCD6Montagekorb/ExterieurCameraRoot/Camera" },
		{	slot			= 3,	index	= "Montagekorb_DCD6/DCD6Montagekorb/ExterieurCamera11"				},
		{	slot			= 3,	index	= "Montagekorb_DCD6/DCD6Montagekorb/ExterieurCamera12"				},
		{	slot			= 4,	index	= "D-Klemme_gameready/ExterieurCamera21"							},
		{	slot			= 4,	index	= "Montagekorb_DCD6/DCD6Aussenpodest/ExterieurCamera22"			},
	},
});