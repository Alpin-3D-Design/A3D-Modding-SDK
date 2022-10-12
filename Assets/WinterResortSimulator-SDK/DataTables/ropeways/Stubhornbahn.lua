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
	contentName				= "dline_6cld-stubhorn",
	title					= "$rw_stubhorn_title",
	fullDesc				= "$rw_stubhorn_desc",
	previewFilename			= "$ropeways/stubhornbahn",
	class					= RWDefaultConstructor,
	customAI				= StubhornAI,

	-- parameters for the eco system
	typeDesc				= "$map01_stubhorn_typeDesc",
	typeDescLong			= "$map01_stubhorn_typeDescLong",
	uphill					= true,
	downhill				= false,
	dailyFixedCosts			= 0,
	hourlyCostPerCarrier	= 5,
	hourlySqSpeedCosts		= 25.9,
	dailyRentCosts			= 2020,
	acquisitionPrice		= 6160000,
	depreciationPeriod		= 3600,
	
	carrierType				= "default.dline_dcd6",
	minInterval				= 8.5,
	maxInterval				= 27,
	minCarrierCount			= 4,
	maxCarrierCount			= 67,
	referenceSpacingGap		= 0.7,
	
	supportType				= "dm_supports.DM_EUB",
	maxSpeed				= 5,
	drivingStation			= 1,
	spacing					= 45,
	gauge					= 6.4,
	parkingStation			= 1,

	spacingCarrierCounts	= {
		-- all values will be rounded to whole carrier counts of course
		1,		-- 100 % of carriers for spacing A
		0.716,	-- 71.6 % of carriers for spacing B
		0.3582,	-- 35.82 % of carriers for spacing C
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
		prefab				= "$ropeways/D-Line/assembled/Scharte_TS",
		nameLabels 			= { "Bhf/controlPanels/Schaltschrank_60L_gameready/Stubhornbahn_BhfTafel/Name" },
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

			{	-- forward closing
				spline		= "zufahrt2",
				channel		= "bubble",
				position0	= 3.5,			value0		= 0,
				position1	= 2.5,			value1		= 1,
				type		= 3,
			},
			{	-- forward closing
				spline		= "zufahrt2",
				channel		= "bar",
				position0	= 3.5,			value0		= 0,
				position1	= 2.5,			value1		= 1,
				type		= 3,
			},
			{	-- fixed garage entry
				spline		= "zufahrt2",
				channel		= "bubble",
				position0	= 3.5,			value0		= 0,
				position1	= 5.0,			value1		= 1,
				type		= 1,
			},
			{	-- fixed garage entry
				spline		= "zufahrt2",
				channel		= "bar",
				position0	= 3.5,			value0		= 0,
				position1	= 5.0,			value1		= 1,
				type		= 1,
			},
			{	-- backward opening
				spline		= "zufahrt2",
				channel		= "bubble",
				position0	= 6.0,			value0		= 0,
				position1	= 5.0,			value1		= 1,
				type		= 2,
			},
			{	-- backward opening
				spline		= "zufahrt2",
				channel		= "bar",
				position0	= 6.0,			value0		= 0,
				position1	= 5.0,			value1		= 1,
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
				"DSDSound/DSD",
				"DSDSound/ReturnStation",
			},
			serviceBrake	= "DSDSound/ServiceBrake",
			emergencyBrake	= "DSDSound/EmergencyBrake",
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
				name		= "Feed",
				spline		= "einfahrt1",
				isUpperEnd	= true,
				isMainline	= true,
				animationIndex	= "A_Stubhornbahn_TS/Weiche_r320_WG_NoMoJo",
				invertAnimation	= false,
				shutdownTurnoutOut	= {
					spline			= "zufahrt2",
					position		= 6-2.5,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrier",
				},
				shutdownTurnoutIn	= {
					spline			= "bogen1",
					position		= 6,
					alarmMessage	= "$dmconnect_hmi_alarm_turnout_carrier",
					activeDirection	= -1,
				},
				shutdownWhenMoved	= "$dmconnect_hmi_alarm_turnout_moving",
			},
			{ -- parking turnouts
				name		= "W1",
				spline		= "zufahrt2",
				isUpperEnd	= true,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_004",
				invertAnimation	= true,
			},

			{ -- parking turnouts
				name		= "W2",
				spline		= "verb2",
				isUpperEnd	= true,
				animationIndex	= "Bhf/DLine_Gleise/A_Weiche_001",
				invertAnimation	= true,
			},
		},
		doorControllers		= {
			{
				name		= "parkingDoor",
				collision	= "Bhf/Bahnhofshalle/00_Schiebetor_560_nocol/00_1_Schiebetor_col",
				doorIndex	= "Bhf/Bahnhofshalle/00_Schiebetor_560_nocol",
				textOn		= "$gateOpen",
				textOff		= "$gateClose",
			},
		},
		parking						= {
			class					= RWParkingControl,
			maxSpeedFeed			= 3.5,
			maxSpeedGarage			= 4,
			feedDirection			= -1,
			garageDirection			= 1,
			slowdownCarrierLimit	= 1,
			
			controlPanelRoots		= { "Bhf/controlPanels" },
			driveRoots				= { "Bhf/drives" },
			doorMonitorings			= { ["parkingDoor"] = true, },

			loopDrives				= {
				{
					name			= "FA",
					speedScale		= 0.16,
				},
				{
					name			= "F1",
					speedScale		= 0.16,
				},
				{
					name			= "F2",
					speedScale		= 0.16,
				},
				{
					name			= "F3",
					speedScale		= 0.16,
				},
				{
					name			= "F4",
					speedScale		= 0.16,
				},
			},
			spurStarterDrives		= {
				{
					name				= "SF1",
					spline				= "gleis1",
					triggerBegin		= 1.5,
					triggerEnd			= 1.9,
					triggerLeftBegin	= 1.1,
					triggerLeftEnd		= 1.5,
					checkActiveFeed		= function(parking, drive)
						local station	= parking.control.stations[parking.parent.stationId];
						return station.turnoutsNamed.W1.turnoutPos == 0;
					end,
					checkActiveGarage	= function(parking, drive)
						local splines	= parking.control.ropeway.customSplines;
						return RWSpline.getCarrierCountInRegion(splines.gleis1, 24.1-1.8, 24.2) < 2;
					end,
				},
				{
					name				= "SF2",
					spline				= "gleis2",
					triggerBegin		= 1.5,
					triggerEnd			= 1.9,
					triggerLeftBegin	= 1.1,
					triggerLeftEnd		= 1.5,
					checkActiveFeed		= function(parking, drive)
						local station	= parking.control.stations[parking.parent.stationId];
						return station.turnoutsNamed.W1.turnoutPos == 1 and station.turnoutsNamed.W2.turnoutPos == 0;
					end,
					checkActiveGarage	= function(parking, drive)
						local splines	= parking.control.ropeway.customSplines;
						return RWSpline.getCarrierCountInRegion(splines.gleis2, 24.1-1.8, 24.2) < 2;
					end,
				},
				{
					name				= "SF3",
					spline				= "gleis3",
					triggerBegin		= 1.5,
					triggerEnd			= 1.9,
					triggerLeftBegin	= 1.1,
					triggerLeftEnd		= 1.5,
					checkActiveFeed		= function(parking, drive)
						local station	= parking.control.stations[parking.parent.stationId];
						return station.turnoutsNamed.W1.turnoutPos == 1 and station.turnoutsNamed.W2.turnoutPos == 1;
					end,
					checkActiveGarage	= function(parking, drive)
						local splines	= parking.control.ropeway.customSplines;
						return RWSpline.getCarrierCountInRegion(splines.gleis3, 24.1-1.8, 24.2) < 2;
					end,
				},
			},
			slowdownRegions			= {
				{
					spline			= "einfahrt1",
					triggerBegin	= -0.9,
					triggerEnd		= 0,
				},
			},
			slowdownTriggers		= {
				{
					spline			= "zufahrt1",
					position		= -2,
					minCarrierCount	= 1,
					slowdownEffect	= 2,
					opMode			= 1,
				},
				{
					spline			= "zufahrt2",
					position		= -3, -- (plus 2.5 m because of first spline)
					minCarrierCount	= 1,
					slowdownEffect	= 1,
					opMode			= 1,
				},
			},
			spacingControls			= {
				{
					class			= RWSpacingControl,
					name			= "startposition",
					spline			= "einfahrt1",
					position		= -0.45,
					activeDirection	= -1,
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
		prefab				= "$ropeways/D-Line/assembled/Scharte_BS",
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
				"ReturnSound/ReturnStation",
			},
		},
	},

	additionalCarriers		= {
		{
			templateName = "default.6cld-revision",
			splineId = 16,
			position = 23.3571186065674,
			speed = 0,
			ap_grip = 0.921749711036682,
			ap_WghDoorLeft = 0,
			ap_WghDoorRight = 0,
			seats = {
			},
		},
	},
});