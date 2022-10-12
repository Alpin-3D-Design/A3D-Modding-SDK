-- RopewaySimulator2020
-- Sample Mod Doppelmayr 4-CLF
-- 
-- 
-- Lua-side code responsible for environmental affairs
-- note that this is a static table not supporting instancing!
-- 
-- 
-- Author:	HR Innoways GmbH
-- Date:	22/12/2019
-- 

ModLoader.addContent( "carrier", {
	contentName			= "sessel",
	title				= "Doppelmayr 4-CLF Sessel",
	fullDesc			= "Der Sessel für vier Fahrgäste",
	previewFilename		= "4clf_preview.png",
	class				= RWDefaultCarrier,
	
	prefab				= "Sessel",
	personsPerCarrier	= 4,
	suspension			= {
		cogRadius		= 1.5,
		dampingCoeffX	= 0.025,
		rotXIndex		= "Gehaengearm",
	},
	weight				= {
		empty			= 100,
		payload			= 0,
		maxTotalWeight	= 420,
	},
	length				= 0.85,
	animatedParts		= {
		{	name		= "bar",		pos = 1,	index	= "Gehaengearm/Rahmen/Buegel",
			inputKey	= "RW_Bar",
			textOn		= "$RW_Bar_0",
			textOff		= "$RW_Bar_1",
		},
		{	name		= "seat",		pos = 0,	index	= "Gehaengearm/Rahmen/Sitze"		},
	},
	numberLabels		= {
		{	digitStyle	= "H",			index="Gehaengearm/Digit_H1" },
		{	digitStyle	= "H",			index="Gehaengearm/Digit_H2" },
		{	digitStyle	= "T",			index="Gehaengearm/Digit_T1" },
		{	digitStyle	= "T",			index="Gehaengearm/Digit_T2" },
		{	digitStyle	= "U",			index="Gehaengearm/Digit_U1" },
		{	digitStyle	= "U",			index="Gehaengearm/Digit_U2" },
	}, 

	seats = {
			{	index			= "Gehaengearm/Rahmen/Seat1",		cameraIndex	= "Gehaengearm/Rahmen/Seat1/Cam",		leaveIndex	= "Gehaengearm/Rahmen/Seat1/Leave"	},
			{	index			= "Gehaengearm/Rahmen/Seat2",		cameraIndex	= "Gehaengearm/Rahmen/Seat2/Cam",		leaveIndex	= "Gehaengearm/Rahmen/Seat2/Leave"	},
			{	index			= "Gehaengearm/Rahmen/Seat3",		cameraIndex	= "Gehaengearm/Rahmen/Seat3/Cam",		leaveIndex	= "Gehaengearm/Rahmen/Seat3/Leave"	},
			{	index			= "Gehaengearm/Rahmen/Seat4",		cameraIndex	= "Gehaengearm/Rahmen/Seat4/Cam",		leaveIndex	= "Gehaengearm/Rahmen/Seat4/Leave"	},
		},
	cameras				= {
		{	slot		= 2,	index		= "Gehaengearm/Rahmen/ExterieurCameraRoot/ExterieurCamera",	rotIndex	= "Gehaengearm/Rahmen/ExterieurCameraRoot",		zoomIndex	= "Gehaengearm/Rahmen/ExterieurCameraRoot/ExterieurCamera" },
		{	slot		= 3,	index		= "Gehaengearm/ExCam_1"	},
		{	slot		= 3,	index		= "Gehaengearm/ExCam_2"	},
		{	slot		= 4,	index		= "ExCam"				},
	}, 
	passengerSeats			= {
		{	index			= "Gehaengearm/Rahmen/Skier1",		animationTrigger	= "sitChairlift",	showSkis	= true,		showSticks	= false,	},
		{	index			= "Gehaengearm/Rahmen/Skier2",		animationTrigger	= "sitChairlift",	showSkis	= true,		showSticks	= false,	},
		{	index			= "Gehaengearm/Rahmen/Skier3",		animationTrigger	= "sitChairlift",	showSkis	= true,		showSticks	= false,	},
		{	index			= "Gehaengearm/Rahmen/Skier4",		animationTrigger	= "sitChairlift",	showSkis	= true,		showSticks	= false,	},
	},
});
