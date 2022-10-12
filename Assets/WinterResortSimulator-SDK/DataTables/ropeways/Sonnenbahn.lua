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
	contentName				= "dline_8cld-sonnenbahn",
	title					= "$rw_sonnenbahn_title",
	fullDesc				= "$rw_sonnenbahn_desc",
	previewFilename			= "$ropeways/sonnenbahn",
	class					= RWDefaultConstructor,
	customAI				= SonnenbahnAI,

	-- parameters for the eco system
	typeDesc				= "$map01_sonne_typeDesc",
	typeDescLong			= "$map01_sonne_typeDescLong",
	uphill					= true,
	downhill				= false,
	dailyFixedCosts			= 0,
	hourlyCostPerCarrier	= 5,
	hourlySqSpeedCosts		= 25.9,
	dailyRentCosts			= 2600,
	acquisitionPrice		= 6320000,
	depreciationPeriod		= 3600,
	
	carrierType				= "default.dline_dcd8",
	minInterval				= 7.7,
	maxInterval				= 27,
	minCarrierCount			= 4,
	maxCarrierCount			= 51,

	supportType				= "dm_supports.DM_EUB",
	maxSpeed				= 5,
	drivingStation			= 2,
	spacing					= 40,
	gauge					= 7.7,
	parkingStation			= 1,

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
			diameter		= -7.65,
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
		prefab				= "$ropeways/D-Line/assembled/Sonnenbahn_TS",
		nameLabels 			= { "Bhf/controlPanels/Schaltschrank_60L_gameready/Sonnenbahn_BhfTafel/Name" },
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
				position0	= 7.5,			value0		= 0,
				position1	= 6,			value1		= 1,
				type		= 2,
			},
			{	-- opener at parking entry
				spline		= "zufahrt",
				channel		= "bar",
				position0	= 7.5,			value0		= 0,
				position1	= 6,			value1		= 1,
				type		= 2,
			},

			{	-- opener at parking entry (backwards)
				spline		= "ausfahrtBHF1",
				channel		= "bubble",
				position0	= 9.5,			value0		= 0,
				position1	= 8,			value1		= 1,
				type		= 2,
			},
			{	-- opener at parking entry (backwards)
				spline		= "ausfahrtBHF1",
				channel		= "bar",
				position0	= 9.5,			value0		= 0,
				position1	= 8,			value1		= 1,
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
				"Entry/EntryGate7",
				"Entry/EntryGate8",
			},
			portioners			= {
				{
					triggerSpline	= "einfahrt1",
					triggerPosition	= -6,
					openDuration	= 2,
					gates			= {
						{	index	= "Zustieg_DCD8/Abtrenner1_nocol/Klappe",	waypoint	= "Entry/PortionerGate1"	},
						{	index	= "Zustieg_DCD8/Abtrenner2_nocol/Klappe",	waypoint	= "Entry/PortionerGate2"	},
						{	index	= "Zustieg_DCD8/Abtrenner3_nocol/Klappe",	waypoint	= "Entry/PortionerGate3"	},
						{	index	= "Zustieg_DCD8/Abtrenner4_nocol/Klappe",	waypoint	= "Entry/PortionerGate4"	},
						{	index	= "Zustieg_DCD8/Abtrenner5_nocol/Klappe",	waypoint	= "Entry/PortionerGate5"	},
						{	index	= "Zustieg_DCD8/Abtrenner6_nocol/Klappe",	waypoint	= "Entry/PortionerGate6"	},
						{	index	= "Zustieg_DCD8/Abtrenner7_nocol/Klappe",	waypoint	= "Entry/PortionerGate7"	},
						{	index	= "Zustieg_DCD8/Abtrenner8_nocol/Klappe",	waypoint	= "Entry/PortionerGate8"	},
					},
				},
			},
			conveyorBelts		= {
				{
					xScale		= 0;
					yLength		= -6.75,
					speedScale	= 0.13*0.66,
					indexes		= {
						"Zustieg_DCD8/Band1_nocol",
						"Zustieg_DCD8/Band2_nocol",
						"Zustieg_DCD8/Band3_nocol",
						"Zustieg_DCD8/Band4_nocol",
						"Zustieg_DCD8/Band5_nocol",
						"Zustieg_DCD8/Band6_nocol",
						"Zustieg_DCD8/Band7_nocol",
						"Zustieg_DCD8/Band8_nocol",
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
				"Entry/Enter7",
				"Entry/Enter8",
			},
		},
		toggleObjects		= {
			{
				name		= "entrance1",
				switchIndex	= "Kommandoraum1_gameready/Schalter/EntranceArea",
				object		= "Einstieg/Nets_on",
				inverse		= "Einstieg/Nets_off",
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
				animationIndex	= "A_Sonnenbahn_TS/Weiche_r310_WG_NoMoJo",
				invertAnimation	= false,
				shutdownTurnoutOut	= {
					spline			= "zufahrt",
					position		= 6,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrierGarage",
				},
				shutdownTurnoutIn	= {
					spline			= "bogen1",
					position		= 6,
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
				animationIndex	= "A_Sonnenbahn_TS/Weiche_r310_SP_MoJo",
				invertAnimation	= false,
				shutdownTurnoutOut	= {
					spline			= "ausfahrtBHF1",
					position		= -6,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrierFeed",
				},
				shutdownTurnoutIn	= {
					spline			= "bogen1",
					position		= -6,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrierFeed",
					activeDirection	= 1,
				},
				shutdownWhenMoved	= "$dmconnect_hmi_alarm_turnout_movingFeed",
			},
			{ -- parking turnouts
				name		= "W1",
				spline		= "bogenBHF1",
				isUpperEnd	= false,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_004",
				invertAnimation	= true,
			},

			{ -- parking turnouts
				name		= "W2",
				spline		= "parkgleis1",
				isUpperEnd	= false,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_001",
				invertAnimation	= true,
			},
		
			{ -- parking turnouts
				name		= "W3",
				spline		= "parkgleis2",
				isUpperEnd	= true,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_007",
				invertAnimation	= true,
			},
		},
		sounds				= {
			registerMainDriveTo	= {
				"ReturnSound/ReturnStation",
			},
		},
		doorControllers		= {
			{
				name		= "parkingDoor",
				collision	= "Bhf/Bahnhofshalle/00_Schiebetor_730_nocol/00_1_Schiebetor_col",
				doorIndex	= "Bhf/Bahnhofshalle/00_Schiebetor_730_nocol",
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
					name			= "F3",
					speedScale		= 0.16,
				},

				{
					name			= "F1",
					speedScale		= 0,
					spline			= "parkgleis1",
					triggerBegin	= 2.6,
					triggerEnd		= 2.6 + 1.8,
				},
				{
					name			= "F2",
					speedScale		= 0,
					spline			= "parkgleis2",
					triggerBegin	= 2.6,
					triggerEnd		= 2.6 + 1.8,
				},
			},
			loopStarterDrives		= {
				{
					name			= "SF",
					spline			= "parkgleis2",
					triggerBegin	= 24.0,
					triggerEnd		= 24.4,
					triggerLeft		= 24.4,
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
					spline			= "ausfahrtBHF1",
					position		= -1.5,
					minCarrierCount	= 1,
					slowdownEffect	= 2,
					opMode			= 1,
				},
				{
					spline			= "ausfahrtBHF1",
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
		prefab				= "$ropeways/D-Line/assembled/Sonnenbahn_BS",
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
			templateName = "default.8cld-revision",
			splineId = 14,
			position = 0.573524594306946,
			speed = 0,
			ap_grip = 1,
			ap_WghDoorLeft = 0,
			ap_WghDoorRight = 0,
			seats = {
			},
		},
	},
});