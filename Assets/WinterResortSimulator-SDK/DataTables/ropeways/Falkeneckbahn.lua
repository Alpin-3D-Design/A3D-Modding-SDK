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

ModLoader.addContent("ropeway", {
	contentName				= "dline_6cld-falkeneck",
	title					= "$rw_falkeneck_title",
	fullDesc				= "$rw_falkeneck_desc",
	previewFilename			= "$ropeways/falkeneckbahn",
	class					= RWDefaultConstructor,
	customAI				= FalkeneckAI,

	-- parameters for the eco system
	typeDesc				= "$map01_falkeneck_typeDesc",
	typeDescLong			= "$map01_falkeneck_typeDescLong",
	uphill					= true,
	downhill				= false,
	dailyFixedCosts			= 0,
	hourlyCostPerCarrier	= 5,
	hourlySqSpeedCosts		= 25.9,
	dailyRentCosts			= 2600,
	acquisitionPrice		= 5720000,
	depreciationPeriod		= 3600,
	
	carrierType				= "default.dline_dcd6",
	minInterval				= 7.7,
	maxInterval				= 27,
	minCarrierCount			= 4,
	maxCarrierCount			= 63,
	
	supportType				= "dm_supports.DM_EUB",
	maxSpeed				= 5.5,
	drivingStation			= 2,
	spacing					= 42.35,
	gauge					= 6.4,
	parkingStation			= 1,

	spacingCarrierCounts	= {
		-- all values will be rounded to whole carrier counts of course
		1,		-- 100 % of carriers for spacing A
		0.635,	-- 63.5 % of carriers for spacing B
		0.317,	-- 31.7 % of carriers for spacing C
	},

	animatedPartsAuto		= {
		{
			pattern			= "Reifen_N",
			diameter		= 0.5,
			axis			= 1,
		},
		{
			pattern			= "Reifen_G",
			diameter		= -0.5,
			axis			= 1,
		},
		{
			pattern			= "Reifen_HN",
			diameter		= 0.416,
			axis			= 1,
		},
		{
			pattern			= "Reifen_HG",
			diameter		= -0.416,
			axis			= 1,
		},
	},
	animatedParts			= {
		{
			pattern			= "Seilscheibe_YG",
			diameter		= -6.35,
			axis			= 2,
		},
		{
			pattern			= "Rolle_G",
			diameter		= -0.45,
			axis			= 1,
		},
		{
			pattern			= "Rolle_N",
			diameter		= 0.45,
			axis			= 1,
		},
	},

	station1				= {
		prefab				= "$ropeways/D-Line/assembled/Seekopf_TS",
		nameLabels 			= { "Bhf/controlPanels/Schaltschrank_60L_gameready/Falkenechbahn_BhfTafel/Name" },
		position			= Vector3:new(0, 4.45, 0),
		thumnailCameraIndex	= "ThumbnailCamera",
		stationSplines		= {
			{
				index		= "splines/einfahrt",
				name		= "einfahrt1",
			},
			{
				index		= "splines/bogen",
				name		= "bogen1",
			},
			{
				index		= "splines/ausfahrt",
				name		= "ausfahrt1",
			},
		},
		splineRoots			= { "Bhf/splines" },
		incomingSpline		= "einfahrt1",
		outgoingSpline		= "ausfahrt1",
		controlPanelRoots	= { "controlPanels" },
		phones				= { "Kommandoraum1_gameready/Phone/Phone" },
		HMIs				= { "TouchScreen_gameready/Panel/PanelScreen" },
		rails			= {
			{	-- opening rail
				spline		= "einfahrt1",
				channel		= "bubble",
				position0	= 17.3,			value0		= 0,
				position1	= 18.6,			value1		= 1,
				type		= 12,
			},
			{	-- closing rail
				spline		= "ausfahrt1",
				channel		= "bubble",
				position0	= 2.2,			value0		= 0,
				position1	= 0.9,			value1		= 1,
				type		= 13,
				moveWithPassengers	= false,
			},
			{	-- opening rail
				spline		= "einfahrt1",
				channel		= "bar",
				position0	= 17.3,			value0		= 0,
				position1	= 18.6,			value1		= 1,
				type		= 12,
			},
			{	-- closing rail
				spline		= "ausfahrt1",
				channel		= "bar",
				position0	= 2.2,			value0		= 0,
				position1	= 0.9,			value1		= 1,
				type		= 13,
			},

			{	-- grip opening rail
				spline		= "einfahrt1",
				channel		= "grip",
				position0	= 2.0,			value0		= 0,
				position1	= 3.8,			value1		= 1,
				type		= 1,
			},
			{	-- grip opening rail
				spline		= "ausfahrt1",
				channel		= "grip",
				position0	= -2.0,			value0		= 0,
				position1	= -3.8,			value1		= 1,
				type		= 1,
			},

			{	-- opener at parking entry
				spline		= "zufahrt",
				channel		= "bubble",
				position0	= 8.5,			value0		= 0,
				position1	= 7,			value1		= 1,
				type		= 2,
			},
			{	-- opener at parking entry
				spline		= "zufahrt",
				channel		= "bar",
				position0	= 8.5,			value0		= 0,
				position1	= 7,			value1		= 1,
				type		= 2,
			},

			{	-- opener at parking entry (backwards)
				spline		= "ausfahrtBHF2",
				channel		= "bubble",
				position0	= 5.5,			value0		= 0,
				position1	= 4,			value1		= 1,
				type		= 2,
			},
			{	-- opener at parking entry (backwards)
				spline		= "ausfahrtBHF2",
				channel		= "bar",
				position0	= 5.5,			value0		= 0,
				position1	= 4,			value1		= 1,
				type		= 2,
			},
		},
		entry					= {
			accessGateWaypoints	= {
				"Entry/EntryGate1",
				"Entry/EntryGate2",
				"Entry/EntryGate3",
				"Entry/EntryGate4",
				"Entry/EntryGate5",
				"Entry/EntryGate6",
			},
			portioners			= {
				{
					triggerSpline	= "einfahrt1",
					triggerPosition	= -6,
					gates			= {
						{	index	= "Zustieg_DCD6/Abtrenner1_nocol/Klappe",	waypoint	= "Entry/PortionerGate1",	},
						{	index	= "Zustieg_DCD6/Abtrenner2_nocol/Klappe",	waypoint	= "Entry/PortionerGate2",	},
						{	index	= "Zustieg_DCD6/Abtrenner3_nocol/Klappe",	waypoint	= "Entry/PortionerGate3",	},
						{	index	= "Zustieg_DCD6/Abtrenner4_nocol/Klappe",	waypoint	= "Entry/PortionerGate4",	},
						{	index	= "Zustieg_DCD6/Abtrenner5_nocol/Klappe",	waypoint	= "Entry/PortionerGate5",	},
						{	index	= "Zustieg_DCD6/Abtrenner6_nocol/Klappe",	waypoint	= "Entry/PortionerGate6",	},
					},
				},
			},
			conveyorBelts		= {
				{
					xScale		= 0;
					yLength		= -6.75,
					speedScale	= 0.13*0.66,
					indexes		= {
						"Zustieg_DCD6/Band1_nocol",
						"Zustieg_DCD6/Band2_nocol",
						"Zustieg_DCD6/Band3_nocol",
						"Zustieg_DCD6/Band4_nocol",
						"Zustieg_DCD6/Band5_nocol",
						"Zustieg_DCD6/Band6_nocol",
					},
				},
			},
			entryWaypointSpeedScale	= 0.13,
			entryWaypoints			= {
				"Entry/Enter1",
				"Entry/Enter2",
				"Entry/Enter3",
				"Entry/Enter4",
				"Entry/Enter5",
				"Entry/Enter6",
			},
		},
		sounds				= {
			registerMainDriveTo	= {
				"ReturnSound/ReturnStation",
			},
		},
		toggleObjects		= {
			{
				name		= "entrance1",
				switchIndex	= "Kommandoraum1_gameready/Schalter/EntranceArea",
				object		= "Nets_on",
				inverse		= "Nets_off",
				switchName	= "$switch_Barrier_EntranceArea",
				switchOff	= "0",
				switchOn	= "1",
			},
		},
		turnouts			= {
			{ -- garage
				name		= "Garage",
				spline		= "einfahrt1",
				isUpperEnd	= true,
				isMainline	= true,
				animationIndex	= "A_Falkeneckbahn_TS/Weiche_r320_WG_NoMoJo",
				invertAnimation	= false,
				shutdownTurnoutOut	= {
					spline			= "zufahrt",
					position		= 6,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrierGarage",
				},
				shutdownTurnoutIn	= {
					spline			= "ausfahrt1",
					position		= 0.6,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrierGarage",
					activeDirection	= -1,
				},
				shutdownWhenMoved	= "$dmconnect_hmi_alarm_turnout_movingGarage",
			},
			{ -- feed
				name		= "Feed",
				spline		= "ausfahrt1",
				isUpperEnd	= false,
				isMainline	= true,
				animationIndex	= "A_Falkeneckbahn_TS/Weiche_r320_SP_MoJo",
				invertAnimation	= false,
				shutdownTurnoutOut	= {
					spline			= "ausfahrtBHF2",
					position		= -6,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrierFeed",
				},
				shutdownTurnoutIn	= {
					spline			= "einfahrt1",
					position		= -0.6,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrierFeed",
					activeDirection	= 1,
				},
				shutdownWhenMoved	= "$dmconnect_hmi_alarm_turnout_movingFeed",
			},
			{ -- parking turnouts
				name		= "W1",
				spline		= "gl2weiche1",
				isUpperEnd	= false,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_013",
				invertAnimation	= true,
			},
			{ -- parking turnouts
				name		= "W1b",
				spline		= "gl3weiche1",
				isUpperEnd	= false,
			},

			{ -- parking turnouts
				name		= "W2",
				spline		= "gl1weiche2",
				isUpperEnd	= true,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_010",
				invertAnimation	= true,
			},
			{ -- parking turnouts
				name		= "W2b",
				spline		= "zufahrtWeiche",
				isUpperEnd	= true,
			},
		
			{ -- parking turnouts
				name		= "W3",
				spline		= "gl3park",
				isUpperEnd	= false,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_007",
				invertAnimation	= true,
			},
			{ -- parking turnouts
				name		= "W4",
				spline		= "gl1bogen1",
				isUpperEnd	= false,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_004",
				invertAnimation	= true,
			},
			{ -- parking turnouts
				name		= "W5",
				spline		= "gl1park",
				isUpperEnd	= true,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_001",
				invertAnimation	= true,
			}, 
		},
		doorControllers		= {
			{
				name		= "parkingDoor",
				collision	= "Bhf/Bahnhofshalle/Tor_nocol/Tor_col",
				doorIndex	= "Bhf/Bahnhofshalle/Tor_nocol",
				textOn		= "$gateOpen",
				textOff		= "$gateClose",
			},
		},
		parking						= {
			class					= RWParkingControl,
			maxSpeedFeed			= 3.5,
			maxSpeedGarage			= 4,
			feedDirection			= 1,
			garageDirection			= 1,
			slowdownCarrierLimit	= 1,
			
			controlPanelRoots		= { "Bhf/controlPanels" },
			driveRoots				= { "Bhf/drives" },
			doorMonitorings			= { ["parkingDoor"] = true, },
			
			parallelTurnouts		= {
				{
					masterName		= "W1",
					slaveName		= "W1b",
				},
				{
					masterName		= "W2",
					slaveName		= "W2b",
				},
			}, 
			loopDrives				= {
				{
					name			= "FE",
					speedScale		= 0.16,
				},
				{
					name			= "FA",
					speedScale		= 0.16,
				},
				{
					name			= "F6",
					speedScale		= 0.16,
				},
				{
					name			= "F7",
					speedScale		= 0.16,
				},
				{
					name			= "F1",
					speedScale		= 0,
					spline			= "gl2park",
					triggerBegin	= 2.5,
					triggerEnd		= 2.5 + 1.8,
				},
				{
					name			= "F2",
					speedScale		= 0,
					spline			= "gl3park",
					triggerBegin	= 2.5,
					triggerEnd		= 2.5 + 1.8,
				},
				{
					name			= "F5",
					speedScale		= 0,
					spline			= "gl1park",
					triggerBegin	= 2.4,
					triggerEnd		= 2.4 + 1.8,
				},
				{
					name			= "F3",
					speedScale		= 0,
					checkActive		= function(parking, drive)
						local station	= parking.control.stations[parking.parent.stationId];
						return (not parking.drivesNamed.F5.sensorState and station.turnoutsNamed.W4.turnoutPos == 0) or RWSpline.getCarrierCountInRegion(parking.control.ropeway.customSplines.gl2park, 20.5, 25) <= 0;
					end,
				},
				{
					name			= "F4",
					speedScale		= 0,
					checkActive		= function(parking, drive)
						local station	= parking.control.stations[parking.parent.stationId];
						return (not parking.drivesNamed.F5.sensorState and station.turnoutsNamed.W4.turnoutPos == 1) or RWSpline.getCarrierCountInRegion(parking.control.ropeway.customSplines.gl3bogen2, 4, 10) <= 0;
					end,
				},
			},
			loopStarterDrives		= {
				{
					name			= "SF",
					spline			= "gl1park",
					triggerBegin	= 18.7,
					triggerEnd		= 19.1,
					triggerLeft		= 19.4,
				},
			},
			slowdownRegions			= {
				{
					spline			= "ausfahrt1",
					triggerBegin	= 0,
					triggerEnd		= 0.9,
				},
			},
			slowdownTriggers		= {
				{
					spline			= "ausfahrtBHF2",
					position		= -1.5,
					minCarrierCount	= 1,
					slowdownEffect	= 2,
					opMode			= 1,
				},
				{
					spline			= "ausfahrtBHF2",
					position		= -4.5,
					minCarrierCount	= 1,
					slowdownEffect	= 1,
					opMode			= 1,
				},
			},
		},
		spacingControls				= {
			{
				class				= RWSpacingControl,
				name				= "Clutch1",
				spline				= "ausfahrt1",
				position			= 0.45,
			},
		},
	},

	station2				= {
		prefab				= "$ropeways/D-Line/assembled/Seekopf_BS",
		position			= Vector3:new(0, 4.45, 0),
		stationSplines		= {
			{
				index		= "splines/einfahrt",
				name		= "einfahrt2",
			},
			{
				index		= "splines/bogen",
				name		= "bogen2",
			},
			{
				index		= "splines/ausfahrt",
				name		= "ausfahrt2",
			},
		},
		incomingSpline		= "einfahrt2",
		outgoingSpline		= "ausfahrt2",
		controlPanelRoots	= { "controlPanels" },
		phones				= { "Kommandoraum1_gameready/Phone/Phone" },
		HMIs				= { "TouchScreen_gameready/Panel/PanelScreen" },
		rails			= {
			{	-- opening rail
				spline		= "einfahrt2",
				channel		= "bubble",
				position0	= 17.3,			value0		= 0,
				position1	= 18.6,			value1		= 1,
				type		= 12,
			},
			{	-- closing rail
				spline		= "ausfahrt2",
				channel		= "bubble",
				position0	= 2.2,			value0		= 0,
				position1	= 0.9,			value1		= 1,
				type		= 13,
				moveWithPassengers	= false,
			},
			{	-- opening rail
				spline		= "einfahrt2",
				channel		= "bar",
				position0	= 17.3,			value0		= 0,
				position1	= 18.6,			value1		= 1,
				type		= 12,
			},
			{	-- closing rail
				spline		= "ausfahrt2",
				channel		= "bar",
				position0	= 2.2,			value0		= 0,
				position1	= 0.9,			value1		= 1,
				type		= 13,
			},

			{	-- grip opening rail
				spline		= "einfahrt2",
				channel		= "grip",
				position0	= 2.0,			value0		= 0,
				position1	= 3.8,			value1		= 1,
				type		= 1,
			},
			{	-- grip opening rail
				spline		= "ausfahrt2",
				channel		= "grip",
				position0	= -2.0,			value0		= 0,
				position1	= -3.8,			value1		= 1,
				type		= 1,
			},
		},
		sounds				= {
			registerMainDriveTo	= {
				"DSDSound/DSD",
				"DSDSound/ReturnStation",
			},
			serviceBrake	= "DSDSound/ServiceBrake",
			emergencyBrake	= "DSDSound/EmergencyBrake",
		},
	},

	additionalCarriers		= {
		{
			templateName = "default.6cld-revision",
			splineId = 13,
			position = 1.79694557189941,
			speed = 0,
			ap_grip = 1,
			ap_WghDoorLeft = 0,
			ap_WghDoorRight = 0,
			seats = {
			},
		},
	},
});