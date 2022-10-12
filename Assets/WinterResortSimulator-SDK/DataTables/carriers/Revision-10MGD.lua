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
	contentName		= "10mgd-revision",
	hidden			= true,
	title			= "10-MGD Revision vehicle",
	fullDesc		= "Revision vehicle fitted to 10-seater gondola.",
	class			= RWDefaultCarrier,
	
	prefab				= "$ropeways/D-Line/10mgd-revision",
	personsPerCarrier	= 0,
	remoteControlRopeway= true,
	suspension			= {
		cogRadius		= 1.8,
		dampingCoeffX	= 0.025,
		rotXIndex		= "Montagekorb_OmegaV",
	},
	weight				= {
		empty			= 650,
		payload			= 0,
		maxTotalWeight	= 1200,
	},
	length				= 2.25,
	animatedParts		= {
		{	name		= "grip",		pos = 0,	index	= "D-Klemme_gameready"		},
		{
			name		= "WghDoorLeft",
			pos			= 0,
			index		= "Montagekorb_OmegaV/MGDMontagekorb/MGDTuere2",
			collision	= "Montagekorb_OmegaV/MGDMontagekorb/MGDTuere2/MGDTuere2_col",
			textOn		= "$doorOpen",
			textOff		= "$doorClose",
		},
		{
			name		= "WghDoorRight",
			pos			= 0,
			index		= "Montagekorb_OmegaV/MGDMontagekorb/MGDTuere1",
			collision	= "Montagekorb_OmegaV/MGDMontagekorb/MGDTuere1/MGDTuere1_col",
			textOn		= "$doorOpen",
			textOff		= "$doorClose",
		},
	},

	seats					= {
		{	index			= "Montagekorb_OmegaV/MGDMontagekorb/MGDBank_colconvis/Seat1",	cameraIndex	= "Montagekorb_OmegaV/MGDMontagekorb/MGDBank_colconvis/Seat1/Camera",	leaveIndex	= "Montagekorb_OmegaV/MGDMontagekorb/MGDBank_colconvis/Seat1/Leave"	},
		{	index			= "Montagekorb_OmegaV/MGDMontagekorb/MGDBank_colconvis/Seat2",	cameraIndex	= "Montagekorb_OmegaV/MGDMontagekorb/MGDBank_colconvis/Seat2/Camera",	leaveIndex	= "Montagekorb_OmegaV/MGDMontagekorb/MGDBank_colconvis/Seat2/Leave"	},
	},
	cameras					= {
		{	slot			= 2,	index	= "Montagekorb_OmegaV/MGDMontagekorb/ExterieurCameraRoot/Camera",	rotIndex	= "Montagekorb_OmegaV/MGDMontagekorb/ExterieurCameraRoot",		zoomIndex	= "Montagekorb_OmegaV/MGDMontagekorb/ExterieurCameraRoot/Camera" },
		{	slot			= 3,	index	= "Montagekorb_OmegaV/MGDMontagekorb/ExterieurCamera11"				},
		{	slot			= 3,	index	= "Montagekorb_OmegaV/MGDMontagekorb/ExterieurCamera12"				},
		{	slot			= 4,	index	= "D-Klemme_gameready/ExterieurCamera21"							},
		{	slot			= 4,	index	= "Montagekorb_OmegaV/MGDAussenpodest/ExterieurCamera22"			},
	},
});