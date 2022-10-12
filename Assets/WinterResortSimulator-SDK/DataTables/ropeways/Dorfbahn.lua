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
	contentName				= "dline_10mgd-dorfbahn",
	title					= "$rw_dorfbahn_title",
	fullDesc				= "$rw_dorfbahn_desc",
	previewFilename			= "$ropeways/dorfbahn",
	class					= RWDefaultConstructor,
	customAI				= DorfbahnAI,

	-- parameters for the eco system
	typeDesc				= "$map01_dorfbahn_typeDesc",
	typeDescLong			= "$map01_dorfbahn_typeDescLong",
	uphill					= true,
	downhill				= true,
	dailyFixedCosts			= 0,
	hourlyCostPerCarrier	= 5,
	hourlySqSpeedCosts		= 25.9,
	dailyRentCosts			= 3000,
	acquisitionPrice		= 9320000,
	depreciationPeriod		= 3600,
	
	carrierType				= "default.dline_cwa_omega-v",
	minInterval				= 9.5,
	maxInterval				= 40,
	minCarrierCount			= 4,
	maxCarrierCount			= 53,

	supportType				= "dm_supports.DM_EUB",
	maxSpeed				= 6.5,
	drivingStation			= 2,
	spacing					= 65,
	gauge					= 6.4,
	parkingStation			= 2,

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
		prefab				= "$ropeways/D-Line/assembled/Dorfbahn_TS",
		position			= Vector3:new(0, 4.45, 0),
		stationSplines		= {
			{
				index		= "splines/stationsspline",
				name		= "einfahrt1",
			},
			{
				index		= "splines/stationsspline2",
				name		= "bogen1",
			},
			{
				index		= "splines/stationsspline3",
				name		= "ausfahrt1",
			},
		},
		incomingSpline		= "einfahrt1",
		outgoingSpline		= "ausfahrt1",
		controlPanelRoots	= { "controlPanels" },
		phones				= { "Kommandoraum1_gameready/Phone/Phone" },
		HMIs				= { "TouchScreen_gameready/Panel/PanelScreen" },
		rails			= {
			{	-- opening rail
				spline		= "einfahrt1",
				channel		= "door",
				position0	= 21.5,			value0		= 0,
				position1	= 22.5,			value1		= 1,
				type		= 1,
			},
			{	-- opener before closing rail (backwards)
				spline		= "einfahrt1",
				channel		= "door",
				position0	= 22.5,			value0		= 1,
				position1	= 23.5,			value1		= 0,
				type		= 2,
			},
			{	-- opener before closing rail
				spline		= "ausfahrt1",
				channel		= "door",
				position0	= -22.5,		value0		= 1,
				position1	= -23.5,		value1		= 0,
				type		= 2,
			},
			{	-- closing rail
				spline		= "ausfahrt1",
				channel		= "door",
				position0	= -21.5,		value0		= 0,
				position1	= -22.5,		value1		= 1,
				type		= 1,
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
				object		= "Zustieg/Einstiegsbereich_on",
				inverse		= "Zustieg/Einstiegsbereich_off",
				switchName	= "$switch_Barrier_EntranceArea",
				switchOff	= "0",
				switchOn	= "1",
			},
			{
				name		= "entrance1b",
				switchIndex	= "Kommandoraum1_gameready/Schalter/PlatformSeparation",
				object		= "Zustieg/Unterteilung_on",
				inverse		= "Zustieg/Unterteilung_off",
				switchName	= "$switch_Separation_Platform",
				switchOff	= "0",
				switchOn	= "1",
			},
		},
	},

	station2				= {
		prefab				= "$ropeways/D-Line/assembled/Dorfbahn_BS",
		nameLabels 			= { "Bhf/Details/Schaltschrank_60L_gameready/Dorfbahn_BhfTafel/Name" },
		position			= Vector3:new(0, 4.45, 0),
		thumnailCameraIndex	= "ThumbnailCamera",
		stationSplines		= {
			{
				index		= "splines/stationsspline",
				name		= "einfahrt2",
			},
			{
				index		= "splines/stationsspline2",
				name		= "bogen2",
			},
			{
				index		= "splines/stationsspline3",
				name		= "ausfahrt2",
			},
		},
		splineRoots			= { "Bhf/splines" },
		phones				= { "Kommandoraum1_gameready/Phone/Phone" },
		incomingSpline		= "einfahrt2",
		outgoingSpline		= "ausfahrt2",
		turnouts			= {
			{ -- garage
				name		= "Garage",
				spline		= "einfahrt2",
				isUpperEnd	= true,
				isMainline	= true,
				animationIndex	= "A_Dorfbahn_BS/Weiche_r320_WG_NoMoJo",
				invertAnimation	= false,
				shutdownTurnoutOut	= {
					spline			= "zufahrt",
					position		= 6,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrierGarage",
				},
				shutdownTurnoutIn	= {
					spline			= "bogen2",
					position		= 5.5,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrierGarage",
					activeDirection	= -1,
				},
				shutdownWhenMoved	= "$dmconnect_hmi_alarm_turnout_movingGarage",
			},
			{ -- feed
				name		= "Feed",
				spline		= "ausfahrt2",
				isUpperEnd	= false,
				isMainline	= true,
				animationIndex	= "A_Dorfbahn_BS/Weiche_r320_SP_MoJo",
				invertAnimation	= false,
				shutdownTurnoutOut	= {
					spline			= "schleife_ausfahrt",
					position		= -6,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrierFeed",
				},
				shutdownTurnoutIn	= {
					spline			= "bogen2",
					position		= -5.5,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrierFeed",
					activeDirection	= 1,
				},
				shutdownWhenMoved	= "$dmconnect_hmi_alarm_turnout_movingFeed",
			},
			{ -- parking turnouts
				name		= "W1",
				spline		= "schleife_parkgleis0",
				isUpperEnd	= false,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_004",
				invertAnimation	= true,
			},
			{ -- parking turnouts
				name		= "W2",
				spline		= "schleife_parkgleis0",
				isUpperEnd	= true,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_001",
				invertAnimation	= true,
			},
			{ -- parking turnouts
				name		= "W3",
				spline		= "schleife_parkgleis4",
				isUpperEnd	= true,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_007",
				invertAnimation	= true,
			},
		},
		controlPanelRoots	= { "controlPanels" },
		HMIs				= { "TouchScreen_gameready/Panel/PanelScreen" },
		rails			= {
			{	-- opening rail
				spline		= "einfahrt2",
				channel		= "door",
				position0	= 21.5,			value0		= 0,
				position1	= 22.5,			value1		= 1,
				type		= 1,
			},
			{	-- opener before closing rail (backwards)
				spline		= "einfahrt2",
				channel		= "door",
				position0	= 22.5,			value0		= 1,
				position1	= 23.5,			value1		= 0,
				type		= 2,
			},
			{	-- opener before closing rail
				spline		= "ausfahrt2",
				channel		= "door",
				position0	= -22.5,		value0		= 1,
				position1	= -23.5,		value1		= 0,
				type		= 2,
			},
			{	-- closing rail
				spline		= "ausfahrt2",
				channel		= "door",
				position0	= -21.5,		value0		= 0,
				position1	= -22.5,		value1		= 1,
				type		= 1,
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
			{	-- door closer at parking entry
				spline		= "zufahrt",
				channel		= "door",
				position0	= 6.0,			value0		= 1,
				position1	= 7.0,			value1		= 0.1,
				type		= 3,
			},
		},
		entry					= {
			accessGateWaypoints	= {
				"Entry/EntryGate1",
				"Entry/EntryGate2",
				"Entry/EntryGate3",
				"Entry/EntryGate4",
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
		movingParts			= {
			{
				name		= "Platform",
				index		= "LWI_BS/LWI_Hubperron",
				position	= 0,
				shutdownWhenMoved	= "$dmconnect_hmi_alarm_platform_moving",
				standstillWarning	= "$dmconnect_hmi_hint_platformStandstill"
			},
		},
		doorControllers		= {
			{
				name		= "parkingDoor",
				collision	= "Bhf/Bahnhofshalle/00_Schiebetor_800_nocol/00_1_Schiebetor_col",
				doorIndex	= "Bhf/Bahnhofshalle/00_Schiebetor_800_nocol",
				textOn		= "$gateOpen",
				textOff		= "$gateClose",
			},
		},
		toggleObjects		= {
			{
				name		= "entrance1",
				switchIndex	= "Kommandoraum1_gameready/Schalter/EntranceArea",
				object		= "Zustieg/Steelbarrier_on",
				inverse		= "Zustieg/Steelbarrier_off",
				switchName	= "$switch_Barrier_EntranceArea",
				switchOff	= "0",
				switchOn	= "1",
			},
			{
				name		= "entrance1b",
				switchIndex	= "Kommandoraum1_gameready/Schalter/PlatformSeparation",
				object		= "Zustieg/Unterteilung_on",
				inverse		= "Zustieg/Unterteilung_off",
				switchName	= "$switch_Separation_Platform",
				switchOff	= "0",
				switchOn	= "1",
			},
		},
		parking						= {
			class					= RWParkingControl,
			maxSpeedFeed			= 5,
			maxSpeedGarage			= 5,
			feedDirection			= 1,
			garageDirection			= 1,
			slowdownCarrierLimit	= 2,
			
			controlPanelRoots		= { "Bhf/controlPanels" },
			driveRoots				= { "Bhf/drives" },
			doorMonitorings			= { ["parkingDoor"] = true, },
			
			loopDrives				= {
				{
					name			= "FE",
					speedScale		= 0.12,
				},
				{
					name			= "FA",
					speedScale		= 0.12,
				},
				{
					name			= "F1",
					speedScale		= 0.12,
				},
				{
					name			= "F2",
					speedScale		= 0,
					spline			= "schleife_parkgleis1",
					triggerBegin	= 4.1,
					triggerEnd		= 4.1 + 3.8,
				},
				{
					name			= "F3",
					speedScale		= 0,
					spline			= "schleife_parkgleis2",
					triggerBegin	= 4.1,
					triggerEnd		= 4.1 + 3.8,
				},
				{
					name			= "F4",
					speedScale		= 0,
					spline			= "schleife_parkgleis3",
					triggerBegin	= 4.1,
					triggerEnd		= 4.1 + 3.8,
				},
				{
					name			= "F5",
					speedScale		= 0,
					spline			= "schleife_parkgleis4",
					triggerBegin	= 4.1,
					triggerEnd		= 4.1 + 3.8,
				},
			},
			loopStarterDrives		= {
				{
					name			= "SF",
					spline			= "schleife_parkgleis4",
					triggerBegin	= 25.2,
					triggerEnd		= 25.6,
					triggerLeft		= 26.0,
				},
			},
			slowdownRegions			= {
				{
					spline			= "ausfahrt2",
					triggerBegin	= 0,
					triggerEnd		= 2.9,
				},
			},
			slowdownTriggers		= {
				{
					spline			= "schleife_ausfahrt",
					position		= -1.5,
					minCarrierCount	= 2,
					slowdownEffect	= 2,
					opMode			= 1,
				},
				{
					spline			= "schleife_ausfahrt",
					position		= -4,
					minCarrierCount	= 2,
					slowdownEffect	= 1,
					opMode			= 1,
				},
			},
		},
		spacingControls				= {
			{
				class				= RWSpacingControl,
				name				= "Clutch1",
				spline				= "ausfahrt2",
				position			= 2.5,
			},
		},
	},

	additionalCarriers		= {
		{
			templateName = "default.10mgd-revision",
			splineId = 21,
			position = 13.3117551803589,
			speed = 0,
			ap_grip = 1,
			ap_WghDoorLeft = 0,
			ap_WghDoorRight = 0,
			seats = {
			},
		},
	},
});