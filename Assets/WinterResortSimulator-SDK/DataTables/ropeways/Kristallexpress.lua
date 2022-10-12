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
	contentName				= "tgd-kristallexpress",
	title					= "$rw_kristallexpress_title",
	fullDesc				= "$rw_kristallexpress_desc",
	previewFilename			= "$ropeways/kristallexpress",
	class					= RWDefaultConstructor,
	customAI				= KristallexpressAI,

	-- parameters for the eco system
	typeDesc				= "$map01_kristall_typeDesc",
	typeDescLong			= "$map01_kristall_typeDescLong",
	uphill					= true,
	downhill				= true,
	dailyFixedCosts			= 0,
	hourlyCostPerCarrier	= 15,
	hourlySqSpeedCosts		= 25.9,
	dailyRentCosts			= 4000,
	acquisitionPrice		= 14860000,
	depreciationPeriod		= 3600,

	-- all tensioning forces in [kN]
	tensioningForce			= 450;
	visibleTensioningForce	= 450;
	tensioningForceMin		= 0.9 * 450;
	tensioningForceMax		= 1.1 * 450;
	
	carrierType				= "default.cwa_atria",
	minSpacing				= 230,
	maxSpacing				= 800,
	minCarrierCount			= 3,
	maxCarrierCount			= 17,

	supportType				= "tgd_supports.DM_3S",
	maxSpeed				= 7.5,
	drivingStation			= 2,
	spacing					= 33*7.5,
	gauge					= 11,
	parkingStation			= 1,
	
	-- do not snap supports together
	joinMultipleSupports			= false,
	snapSupportToStationDistance	= -1,

	additionalRopes			= {
		{
			offset			= Vector2:new(0.9, 0),
			diameter		= 50,
		},
		{
			offset			= Vector2:new(0.45, -0.065),
			diameter		= 50,
		},
	},
	ropeCarriers			= {
		{
			prefab			= "$ropeways/TGD/Seilreiter",
			minSpanWidth	= 250,
			nominalSpacing	= 120,
		},
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
			pattern			= "Seilscheibe_YN",
			diameter		= 5.2,
			axis			= 2,
		},
		{
			pattern			= "Seilscheibe_YG",
			diameter		= -5.2,
			axis			= 2,
		},
		{
			pattern			= "Rolle_N",
			diameter		= 0.5,
			axis			= 1,
		},
		{
			pattern			= "Rolle_G",
			diameter		= -0.5,
			axis			= 1,
		},
		{
			pattern			= "Rolle_NK",
			diameter		= 0.35,
			axis			= 1,
		},
		{
			pattern			= "Rolle_GK",
			diameter		= -0.35,
			axis			= 1,
		},
		{
			pattern			= "Rolle_R",
			diameter		= 0.5,
			axis			= 1,
		},
		{
			pattern			= "Rolle_L",
			diameter		= 0.5,
			axis			= 1,
		},
					{
			pattern			= "Rolle_runter_R",
			diameter		= -0.7,
			axis			= 1,
		},
		{
			pattern			= "Rolle_runter_L",
			diameter		= 0.7,
			axis			= 1,
		},
	},

	station1				= {
		prefab				= "$ropeways/TGD/assembled/Kristall_TS",
		nameLabels 			= { "Ausgestaltung/Wartungsbereich/Kristallexpress_BhfTafel/Name" },
		position			= Vector3:new(0, 8, 0),
		thumnailCameraIndex	= "ThumbnailCamera",
		stationSplines		= {
			{
				index		= "3S_GS_Technik/Stationsstuetze_25/splines/bauwerkEinfahrt",
				name		= "einfahrBw1",
			},
			{
				index		= "3S_GS_Technik/splines/einfahrt",
				name		= "einfahrt1",
			},
			{
				index		= "3S_GS_Technik/3S_GS/3S_GS_LiftTurnSwitch/3S_GS_Rotation/3S_GS_Translation/hubdreh",
				name		= "hubdreh1",
			},
			{
				index		= "3S_GS_Technik/splines/ausfahrt",
				name		= "ausfahrt1",
			},
			{
				index		= "3S_GS_Technik/Stationsstuetze_25/splines/bauwerkAusfahrt",
				name		= "ausfahrBw1",
			},
			{
				index		= "Bhf/Bhf/HF/HF_Laufkatze/HF",
				name		= "HF",
			},
		},
		incomingSpline		= "einfahrBw1",
		outgoingSpline		= "ausfahrBw1",
		controlPanelRoots	= { "controlPanels" },
		phones				= { "Phone1/Phone", "Phone2/Phone" },
		HMIs				= { "TouchScreen_gameready/Panel/PanelScreen" },
		rails			= {
			{	-- opening rail
				spline		= "einfahrt1",
				channel		= "door",
				position0	= 27.0,			value0		= 0,
				position1	= 28.5,			value1		= 1,
				type		= 1,
			},
			{	-- closing rail
				spline		= "ausfahrt1",
				channel		= "door",
				position0	= -27.0,		value0		= 0,
				position1	= -28.5,		value1		= 1,
				type		= 1,
			},

			{	-- grip opening rail
				spline		= "einfahrt1",
				channel		= "grip",
				position0	= 0,			value0		= 1,
				position1	= 10,			value1		= 0,
				type		= 1,
			},
			{	-- grip opening rail
				spline		= "ausfahrt1",
				channel		= "grip",
				position0	= -10,			value0		= 0,
				position1	= -0,			value1		= 1,
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
			},
		},
		sounds				= {
			registerMainDriveTo	= {
				"3S_GS_Technik/TGDReturnSound/ReturnStation",
				"3S_GS_Technik/TGDReturnSound/TGDStationSupport",
			},
		},
		doorControllers		= {
			{
				name		= "parkingDoor1",
				collision	= "Kristallbahn_TS2/Talstation_Tor1_LOD000/Cube",
				doorIndex	= "Kristallbahn_TS2/Talstation_Tor1_LOD000",
				textOn		= "$gateOpen",
				textOff		= "$gateClose",
			},
			{
				name		= "parkingDoor2",
				collision	= "Kristallbahn_TS2/Talstation_Tor2_LOD000/Cube",
				doorIndex	= "Kristallbahn_TS2/Talstation_Tor2_LOD000",
				textOn		= "$gateOpen",
				textOff		= "$gateClose",
			},
		},
		toggleObjects		= {
			{
				name		= "entrance1",
				switchIndex	= "Schalter_Panel/EntranceArea",
				object		= "Ausgestaltung/Absperrung_auf",
				inverse		= "Ausgestaltung/Absperrung_ab",
				switchName	= "$switch_Barrier_EntranceArea",
				switchOff	= "0",
				switchOn	= "1",
			},
		},
		splineRoots			= { "Bhf/splines" },
		parking						= {
			class					= TGDParkingControl,
			maxSpeedFeed			= 5,
			maxSpeedGarage			= 5,
			feedDirection			= 1,
			garageDirection			= 1,
			
			controlPanelRoots		= { "Bhf/controlPanels" },
			driveRoots				= { "3S_GS_Technik/drives", "Bhf/drives" },
			incomingShutdowns		= {
				{
					spline			= "einfahrt1",
					position		= 5,
				},
			},
			blocks					= {
				{
					name			= "F1",
					spline			= "Gleis1",
					posBegin		= 3*4.15,
					posCenter		= 3.5*4.15,
					posEnd			= 0,
					feedMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
				},
				{
					name			= "F2",
					spline			= "Gleis1",
					posBegin		= 2*4.15,
					posEnd			= 3*4.15,
					feedMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
				},
				{
					name			= "F3",
					spline			= "Gleis1",
					posBegin		= 1*4.15,
					posEnd			= 2*4.15,
					feedMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
				},
				{
					name			= "F4",
					spline			= "Gleis1",
					posBegin		= 0*4.15,
					posEnd			= 1*4.15,
					feedMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
				},
				{
					name			= "F5",
					spline			= "Gleis2",
					posBegin		= 0*4.15,
					posEnd			= 1*4.15,
					feedMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
				},
				{
					name			= "F6",
					spline			= "Gleis2",
					posBegin		= 1*4.15,
					posEnd			= 2*4.15,
					feedMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
				},
				{
					name			= "F7",
					spline			= "Gleis2",
					posBegin		= 2*4.15,
					posEnd			= 3*4.15,
					feedMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
				},
				{
					name			= "F8",
					spline			= "Gleis2",
					posBegin		= 3*4.15,
					posEnd			= 4*4.15,
					feedMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
				},
				{
					name			= "F9",
					spline			= "Gleis2",
					posBegin		= 4*4.15,
					posEnd			= 0,
					feedMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
				},
				{
					name			= "F10",
					spline			= "Gleis3",
					posBegin		= 0*4.15,
					posEnd			= 1*4.15,
					feedMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
				},
				{
					name			= "F11",
					spline			= "Gleis3",
					posBegin		= 1*4.15,
					posEnd			= 2*4.15,
					feedMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
				},
				{
					name			= "F12",
					spline			= "Gleis3",
					posBegin		= 2*4.15,
					posEnd			= 3*4.15,
					feedMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
				},
				{
					name			= "F13",
					spline			= "Gleis3",
					posBegin		= 3*4.15,
					posEnd			= 4*4.15,
					feedMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
				},
				{
					name			= "F14",
					spline			= "Gleis3",
					posBegin		= 4*4.15,
					posEnd			= 0,
					feedMode		= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
				},
				{
					name			= "Verz1",
					spline			= "einfahrt1",
					posBegin		= 2,
					posEnd			= 25.2,
					stationBlock	= true,
					fixedSpeed		= true,
					acceleration	= 5,
				},
				{
					name			= "BlockD",
					spline			= "einfahrt1",
					posBegin		= 25.2,
					posEnd			= 0,
					stationBlock	= true,
					moveSpeed		= 12.5,
					feedMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
					acceleration	= 20,
				},
				{
					name			= "BlockB",
					spline			= "ausfahrt1",
					posBegin		= 0,
					posCenter		= 3,
					posEnd			= 5.25,
					stationBlock	= true,
					moveSpeed		= 12.5,
					feedMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
					garageMode		= TGDParkingControl.BLOCK_PUSH_FORWARDS,
					acceleration	= 20,
				},
				{
					name			= "BlockA",
					spline			= "ausfahrt1",
					posBegin		= 5.25,
					posCenter		= 9.2,
					posEnd			= 10.5,
					stationBlock	= true,
					moveSpeed		= 12.5,
					feedMode		= TGDParkingControl.BLOCK_ALWAYS_FORWARDS,
					garageMode		= TGDParkingControl.BLOCK_PARK_FORWARDS,
					acceleration	= 20,

					spacingControl	= true,
					spacingControlGarageMode	= {
						automaticLaunching		= function(parking, block)
							local carrierCountOnTrack	= Ropeway.getListCarrierCount(parking.control.walkerAllSplines);

							-- as long as there are 5 or more carriers in the ropeway, they may still leave the station
							return carrierCountOnTrack > 5;
						end,
						launchingPermission		= function(parking, block)
							local carrierCountOnTrack	= Ropeway.getListCarrierCount(parking.control.walkerAllSplines);

							-- as long as there are 5 or more carriers in the ropeway, they may still leave the station
							if carrierCountOnTrack > 5 then
								return block.launchingPermission;
							end;

							-- don't allow carriers to leave the station any more
							return false;
						end,
					},
				},
				{
					name			= "Beschl1",
					spline			= "ausfahrt1",
					posBegin		= 10.5,
					posEnd			= -2,
					stationBlock	= true,
					fixedSpeed		= true,
					acceleration	= 5,
				},
			},
			blockTracks				= {
				{	"Verz1", "BlockD", "Hubdreh", "BlockB", "BlockA", "Beschl1",		},	-- station
				{	"F4",	"F3",	"F2",	"F1",			},	-- track 1
				{	"F5",	"F6",	"F7",	"F8",	"F9",	},	-- track 2
				{	"F10",	"F11",	"F12",	"F13",	"F14",	},	-- track 3
			},
			movingBlocks			= {
				{
					name			= "Hubdreh",
					-- !!TODO!!
					drive			= "BlockC",
					stationBlock	= true,
					spline			= "hubdreh1",
					posBegin		= 0,
					posEnd			= 0,
					moveSpeed		= 12.5,
					acceleration	= 20,
					type			= TGDParkingControl.MOVINGBLOCK_ANIMATED,
					animationIndex	= "3S_GS_Technik/3S_GS/3S_GS_LiftTurnSwitch",
					positions		= {
						{
							name		= "Hauptbahn",
							lower		= "einfahrt1",
							upper		= "ausfahrt1",
							prevBlock	= "BlockD",
							nextBlock	= "BlockB",
							position	= 0,
						},
						{
							lower		= "Gleis1",
							prevBlock	= "F1",
							position	= 1,
						},
					},
					defaultPosition	= "Hauptbahn",
					feed			= {
						pickupAt	= function(parking, block)
							if block.pickedUpCarriers < parking.control.spacingCarrierCount-3 then
								return "Gleis1";
							end;
							return nil;
						end,
						deliverTo			= "Hauptbahn",
						pickupMode			= TGDParkingControl.BLOCK_PARK_FORWARDS,
						deliverMode			= TGDParkingControl.BLOCK_PUSH_FORWARDS,
						inactivePickupMode	= TGDParkingControl.BLOCK_PUSH_FORWARDS,
						inactiveDeliverMode	= TGDParkingControl.BLOCK_PUSH_FORWARDS,
					},
					garage			= {
						pickupAt	= "Hauptbahn",
						deliverTo	= function(parking, block)
							local splines	= parking.control.ropeway.customSplines;

							local carrierCountOnTrack	= Ropeway.getListCarrierCount(parking.control.walkerAllSplines);

							if carrierCountOnTrack > 3 then
								-- 3 carriers stay on track
								return "Gleis1";
							end;
							
							-- don't move any more
							return nil;
						end,
						pickupMode			= TGDParkingControl.BLOCK_PARK_FORWARDS,
						deliverMode			= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
						inactivePickupMode	= TGDParkingControl.BLOCK_PUSH_FORWARDS,
						inactiveDeliverMode	= TGDParkingControl.BLOCK_PUSH_BACKWARDS,
					},
				},
				{
					name			= "HF",
					spline			= "HF",
					posBegin		= 0,
					posCenter		= 0.15,
					posEnd			= 0,
					type			= TGDParkingControl.MOVINGBLOCK_TRANSLATE_Z,
					moveIndex		= "Bhf/Bhf/HF/HF_Laufkatze",
					positions		= {
						{
							upper		= "Wartung",
							position	= 5,
						},
						{
							upper		= "Gleis1",
							nextBlock	= "F4",
							position	= 0,
						},
						{
							upper		= "Gleis2",
							nextBlock	= "F5",
							position	= -5,
						},
						{
							upper		= "Gleis3",
							nextBlock	= "F10",
							position	= -9,
						},
					},
					defaultPosition	= "Gleis1",
					feed			= {
						pickupAt	= function(parking, drive)
							local splines	= parking.control.ropeway.customSplines;

							-- some carriers need to stay on the parking track
							local stayInStation	= parking.control.nativeCarrierCount - parking.control.spacingCarrierCount;
							-- ignore the 7 carriers that are stored in 
							local stayOnTracks	= math.max(stayInStation, 0);
							
							-- less carriers on track 2
							local stayOnTrack2	= math.floor(stayOnTracks/2);
							local stayOnTrack3	= stayOnTracks - stayOnTrack2;

							if RWSpline.getCarrierCountInRegion(splines.Gleis3, 0, 0) > stayOnTrack3 then
								return "Gleis3";
							end;
							if RWSpline.getCarrierCountInRegion(splines.Gleis2, 0, 0) > stayOnTrack2 then
								return "Gleis2";
							end;
						end,
						deliverTo			= "Gleis1",
						pickupMode			= TGDParkingControl.BLOCK_PARK_BACKWARDS,
						deliverMode			= TGDParkingControl.BLOCK_PUSH_FORWARDS,
						inactivePickupMode	= TGDParkingControl.BLOCK_PARK_BACKWARDS,
						inactiveDeliverMode	= TGDParkingControl.BLOCK_PUSH_FORWARDS,
					},
					garage			= {
						pickupAt	= "Gleis1",
						deliverTo	= function(parking, drive)
							local splines	= parking.control.ropeway.customSplines;

							local stayOnTracks	= math.max(parking.control.nativeCarrierCount - 7, 0);
							local stayOnTrack2	= math.floor(stayOnTracks/2);
							local stayOnTrack3	= stayOnTracks - stayOnTrack2;

							if RWSpline.getCarrierCountInRegion(splines.Gleis2, 0, 0) < stayOnTrack2 then
								return "Gleis2";
							end;
							if RWSpline.getCarrierCountInRegion(splines.Gleis3, 0, 0) < stayOnTrack3 then
								return "Gleis3";
							end;
						end,
						pickupMode			= TGDParkingControl.BLOCK_PARK_BACKWARDS,
						deliverMode			= TGDParkingControl.BLOCK_PUSH_FORWARDS,
						inactivePickupMode	= TGDParkingControl.BLOCK_PARK_BACKWARDS,
						inactiveDeliverMode	= TGDParkingControl.BLOCK_PUSH_FORWARDS,
						checkIsBlocked	= function(parking, block)
							local splines	= parking.control.ropeway.customSplines;

							local stayOnTracks	= math.max(parking.control.nativeCarrierCount - 7, 0);
							local stayOnTrack2	= math.floor(stayOnTracks/2);
							local stayOnTrack3	= stayOnTracks - stayOnTrack2;

							if RWSpline.getCarrierCountInRegion(splines.Gleis2, 0, 0) < stayOnTrack2 then
								return nil;
							end;
							if RWSpline.getCarrierCountInRegion(splines.Gleis3, 0, 0) < stayOnTrack3 then
								return nil;
							end;
							-- block new carriers against entering
							return true;
						end,
					},
				},
			},
			
		},
	},

	station2				= {
		prefab				= "$ropeways/TGD/assembled/Kristall_BS",
		position			= Vector3:new(0, 8, 0),
		stationSplines		= {
			{
				index		= "3S_AS_Technik/Stationsstuetze_-6.5/splines/bauwerkEinfahrt",
				name		= "einfahrBw2",
			},
			{
				index		= "3S_AS_Technik/splines/station",
				name		= "station2",
			},
			{
				index		= "3S_AS_Technik/Stationsstuetze_-6.5/splines/bauwerkAusfahrt",
				name		= "ausfahrBw2",
			},
		},
		incomingSpline		= "einfahrBw2",
		outgoingSpline		= "ausfahrBw2",
		controlPanelRoots	= { "controlPanels" },
		phones				= { "Phone1/Phone", "Phone2/Phone" },
		HMIs				= { "TouchScreen_gameready/Panel/PanelScreen" },
		rails			= {
			{	-- opening rail
				spline		= "station2",
				channel		= "door",
				position0	= 27.0,			value0		= 0,
				position1	= 28.5,			value1		= 1,
				type		= 1,
			},
			{	-- closing rail
				spline		= "station2",
				channel		= "door",
				position0	= -27.0,		value0		= 0,
				position1	= -28.5,		value1		= 1,
				type		= 1,
			},

			{	-- grip opening rail
				spline		= "station2",
				channel		= "grip",
				position0	= 0,			value0		= 1,
				position1	= 10,			value1		= 0,
				type		= 1,
			},
			{	-- grip opening rail
				spline		= "station2",
				channel		= "grip",
				position0	= -10,			value0		= 0,
				position1	= -0,			value1		= 1,
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
			},
		},
		sounds				= {
			registerMainDriveTo	= {
				"3S_AS_Technik/TGDDrivingSound/DrivingStation",
				"3S_AS_Technik/TGDDrivingSound/MainDrive",
				"3S_AS_Technik/TGDDrivingSound/TGDStationSupport",
			},
			serviceBrake	= "3S_AS_Technik/TGDDrivingSound/ServiceBrake",
			emergencyBrake	= "3S_AS_Technik/TGDDrivingSound/EmergencyBrake",
		},
		doorControllers		= {
			{
				name		= "parkingDoor1",
				collision	= "Kristallbahn_BS2/Bergstation_Tor1_LOD000/Cube",
				doorIndex	= "Kristallbahn_BS2/Bergstation_Tor1_LOD000",
				textOn		= "$gateOpen",
				textOff		= "$gateClose",
			},
			{
				name		= "parkingDoor2",
				collision	= "Kristallbahn_BS2/Bergstation_Tor2_LOD000/Cube",
				doorIndex	= "Kristallbahn_BS2/Bergstation_Tor2_LOD000",
				textOn		= "$gateOpen",
				textOff		= "$gateClose",
			},
		},
		toggleObjects	= {
			{
				name		= "entrance1",
				switchIndex	= "Schalter_Panel/EntranceArea",
				object		= "Ausgestaltung/Barrier_on",
				inverse		= "Ausgestaltung/Barrier_off",
				switchName	= "$switch_Barrier_EntranceArea",
				switchOff	= "0",
				switchOn	= "1",
			},
		},
		parking						= {
			class					= TGDParkingControl,
			-- ignore these settings
			maxSpeedFeed			= 100,
			maxSpeedGarage			= 100,
			feedDirection			= 1,
			garageDirection			= 1,
			alwaysInOperation		= true,

			-- only drives and blocks with fixed speeds
			driveRoots				= { "3S_AS_Technik/drives", },
			blocks					= {
				{
					name			= "Verz2",
					spline			= "station2",
					posBegin		= 2,
					posEnd			= 25.2,
					stationBlock	= true,
					fixedSpeed		= true,
					acceleration	= 5,
				},
				{
					name			= "BlockD2",
					spline			= "station2",
					posBegin		= 25.2,
					posEnd			= 30.87,
					stationBlock		= true,
					alwaysStationBlock	= true,
					acceleration	= 20,
				},
				{
					name			= "BlockC2",
					spline			= "station2",
					posBegin		= 30.87,
					posEnd			= 36.55,
					stationBlock		= true,
					alwaysStationBlock	= true,
					acceleration	= 20,
				},
				{
					name			= "BlockB2",
					spline			= "station2",
					posBegin		= 36.55,
					posEnd			= 42.22,
					stationBlock		= true,
					alwaysStationBlock	= true,
					acceleration	= 20,
				},
				{
					name			= "BlockA2",
					spline			= "station2",
					posBegin		= 42.22,
					posCenter		= 46.59,
					posEnd			= 47.89,
					stationBlock		= true,
					alwaysStationBlock	= true,
					acceleration	= 20,

					spacingControl	= true,
				},
				{
					name			= "Beschl2",
					spline			= "station2",
					posBegin		= 47.89,
					posEnd			= -2,
					stationBlock	= true,
					fixedSpeed		= true,
					acceleration	= 5,
				},
			},
			blockTracks				= {
				{	"Verz2", "BlockD2", "BlockC2", "BlockB2", "BlockA2", "Beschl2",		},	-- station
			},
		},
	},
});