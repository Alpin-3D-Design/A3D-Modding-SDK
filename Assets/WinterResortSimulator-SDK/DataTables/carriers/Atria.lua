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
	contentName		= "cwa_atria",
	title			= "CWA Atria",
	fullDesc		= "Carrier for TGD ropeway",
	class			= RWDefaultCarrier,
	
	prefab				= "$ropeways/TGD/CWA_Atria",
	personsPerCarrier	= 24,
	suspension			= {
		cogRadius		= 4.3,
		dampingCoeffX	= 0.038,
		rotXIndex		= "02Gehaenge/Atria",
	},
	weight				= {
		empty			= 650,
		payload			= 0,
		maxTotalWeight	= 1200,
	},
	length				= 3.78,
	animatedParts		= {
		{	name		= "grip",		pos = 0,	index	= "01Laufwerk/Klemmapparat_LOD0/Klemme_1",		},
		{	name		= "grip",		pos = 0,	index	= "01Laufwerk/Klemmapparat_LOD0/Klemme_2",		},
		{	name		= "door",		pos = 0,	index	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0",		},
	},
	extraParts			= {
		{	name		= "ladder",		state	= false,	index	= "02Gehaenge/Atria/11Gehaenge_LOD0/23Leiter_Gehaenge_LOD0",	},
	},
	announcementSpeaker	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/04_Atria_Dach_colcon",
	numberLabels		= {
		{	digitStyle	= "T",			index="02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/DigitT1" },
		{	digitStyle	= "T",			index="02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/DigitT2" },
		{	digitStyle	= "U",			index="02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/DigitU1" },
		{	digitStyle	= "U",			index="02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/DigitU2" },
	},
	cameras					= {
		{	slot			= 2,	index	= "02Gehaenge/Atria/ExterieurCameraRoot/Camera",	rotIndex	= "02Gehaenge/Atria/ExterieurCameraRoot",		zoomIndex	= "02Gehaenge/Atria/ExterieurCameraRoot/Camera" },
		{	slot			= 3,	index	= "02Gehaenge/ExterieurCamera1"	},
	},
	seats					= {
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat1",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat1/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat1/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat2",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat2/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat2/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat3",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat3/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat3/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat4",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat4/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat4/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat5",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat5/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Seat5/Leave"	},

		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat1",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat1/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat1/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat2",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat2/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat2/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat3",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat3/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat3/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat4",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat4/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat4/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat5",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat5/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat5/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat6",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat6/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat6/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat7",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat7/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Seat7/Leave"	},

		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat1",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat1/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat1/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat2",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat2/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat2/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat3",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat3/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat3/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat4",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat4/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat4/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat5",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat5/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Seat5/Leave"	},

		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat1",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat1/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat1/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat2",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat2/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat2/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat3",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat3/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat3/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat4",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat4/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat4/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat5",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat5/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat5/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat6",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat6/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat6/Leave"	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat7",					cameraIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat7/Camera",				leaveIndex	= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Seat7/Leave"	},
	},
	passengerSeats			= {
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Skier1",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Skier2",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Skier3",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Skier4",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI5/Skier5",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Skier1",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Skier2",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Skier3",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Skier4",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE5/Skier5",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Skier1",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Skier2",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Skier3",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Skier4",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Skier5",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Skier6",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_LI7/Skier7",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Skier1",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Skier2",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Skier3",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Skier4",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Skier5",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Skier6",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
		{	index			= "02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0/Sitze/Sitze_1_anim_RE7/Skier7",		animationTrigger	= "sitCabin",	showSkis	= false,		showSticks	= false,	},
	},
	truckAnimatedParts		= {
		{	index			= "01Laufwerk/H1_KA/Wippe_H1_W/Rolle_N_H1_R1",		diameter	= 0.3432,	axis	= 1,		},
		{	index			= "01Laufwerk/H1_KA/Wippe_H1_W/Rolle_N_H1_R2",		diameter	= 0.3432,	axis	= 1,		},
		{	index			= "01Laufwerk/V1_KA/Wippe_V1_W/Rolle_N_V1_R1",		diameter	= 0.3432,	axis	= 1,		},
		{	index			= "01Laufwerk/V1_KA/Wippe_V1_W/Rolle_N_V1_R2",		diameter	= 0.3432,	axis	= 1,		},
		{	index			= "01Laufwerk/H2_KA/Wippe_H2_W/Rolle_N_H2_R1",		diameter	= 0.3432,	axis	= 1,		},
		{	index			= "01Laufwerk/H2_KA/Wippe_H2_W/Rolle_N_H2_R2",		diameter	= 0.3432,	axis	= 1,		},
		{	index			= "01Laufwerk/V2_KA/Wippe_V2_W/Rolle_N_V2_R1",		diameter	= 0.3432,	axis	= 1,		},
		{	index			= "01Laufwerk/V2_KA/Wippe_V2_W/Rolle_N_V2_R2",		diameter	= 0.3432,	axis	= 1,		},
	},

	recolorRenderers		= {
		carrier				= {
			"02Gehaenge/Atria/11Gehaenge_LOD0",
			"02Gehaenge/Atria/11Gehaenge_LOD0/23Leiter_Gehaenge_LOD0",
			"02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0",
			"02Gehaenge/Atria/11Gehaenge_LOD0/23Leiter_Gehaenge_LOD0/23Leiter_Gehaenge_LOD1",
			"02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD0",
		},
		lods				= {
			["02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04_Atria_LOD1"] = 1,
			["02Gehaenge/Atria/11Gehaenge_LOD0/21Gehaenge_LOD0/04Atria_LOD2"] = 2,
		},
	},
	alwaysApplyColor		= false, -- set this to true if you have changed the values below
	colors					= {
		carrier				= {
			_RColor = { 255, 255, 255, 255 }, -- colormask R channel
			-- _GColor = { 0,0,0, 255 },
			-- _BColor = { 0,0,0, 255 },
		},
		lods				= {
			_Color = { 185, 185, 185, 255 },
		},
	},
});