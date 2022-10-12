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

ModLoader.addContent("ropeway", {
	contentName				= "doppelmayr-4-clf",
	title					= "Doppelmayr 4-CLF",
	fullDesc				= "4-CLF von Doppelmayr",
	previewFilename			= "4clf_preview.png",
	class					= RWDefaultConstructor,
	customAI				= SampleLiftAI,

	-- parameters for the eco system
	typeDesc				= "4-CLF",
	typeDescLong			= "4-seated fixed chairlift",
	uphill					= true,
	downhill				= true,
	dailyFixedCosts			= 0,
	hourlyCostPerCarrier	= 0,
	hourlySqSpeedCosts		= 25.9,
	dailyRentCosts			= 1300,
	acquisitionPrice		= 800000,
	depreciationPeriod		= 3600,

	-- use this block for all fixed-grip installations
	initialAIState			= "garage",
	initialAIAction			= "feed",
	saveResetAfterAction	= false,

	-- all tensioning forces in [kN]
	tensioningForce			= 175,
	visibleTensioningForce	= 175 ,
	tensioningForceMin		= 0.95 * 175,
	tensioningForceMax		= 1.10 * 175,
	ropeLineLoad			= 110,

	-- rope diameter in [mm]
	ropeDiameter			= 38,
	
	carrierType				= "sessel",
	minSpacing				= 16,
	maxSpacing				= 32,

	-- we don't want a reference spacing gaps, distribute all carriers evenly across the rope
	referenceSpacingGap		= 0,

	-- we don't want B or C spacings, just one A spacing with 100% of all carriers
	spacingCarrierCounts	= {
		1,	-- A spacing with 100%
	},

	supportType				= "default.mgd_supports",
	
	maxSpeed				= 2,
	drivingStation			= 1, -- valley station is driving station
	spacing					= 18,
	gauge					= 5.2,
	parkingStation			= 1, -- valley station is the "parking station"
	
	-- L1/L2/L3
	speedLevel1				= 1.5,
	speedLevel2				= 1,
	speedLevel3				= 0.5,
	
	animatedParts			= {
		{
			pattern			= "Umlenkscheibe",
			diameter		= -5.2,
			axis			= 2,
		},
		{
			pattern			= "rolle",
			diameter		= 0.45,
			axis			= 1,
		},
	},
	station1				= {
		prefab				= "Antriebsstation",
		thumnailCameraIndex	= "ThumbnailCamera",
		nameLabels 			= { "NameLabel" },
		position			= Vector3:new(0, 0.2, 0),
		stationSplines		= {
			{
				index		= "Spline",
				name		= "UmlaufSplineTS",
			},
		},
		incomingSpline		= "UmlaufSplineTS",
		outgoingSpline		= "UmlaufSplineTS",
		controlPanelRoots	= { "controlPanels" },
		phones				= { "SDK_Kommandoraum1_gameready/Telefon/Phone_LOD0" },
		--HMIs				= { "TouchScreen_gameready/Panel/PanelScreen" },
		
		entry					= {
			--[[accessGateWaypoints	= { -- here stop the skier when the ropeway is out of order
				"Entry/EntryGate1",
				"Entry/EntryGate2",
				"Entry/EntryGate3",
				"Entry/EntryGate4",

			}, --]]
			portioners			= {
				{
					triggerSpline	= "UmlaufSplineTS",
					triggerPosition	= 8,
					gates			= {
						{	index	= "Zustieg_DCD4/Abtrenner1_nocol/Klappe",	waypoint	= "Entry/PortionerGate1",	},
						{	index	= "Zustieg_DCD4/Abtrenner2_nocol/Klappe",	waypoint	= "Entry/PortionerGate2",	},
						{	index	= "Zustieg_DCD4/Abtrenner3_nocol/Klappe",	waypoint	= "Entry/PortionerGate3",	},
						{	index	= "Zustieg_DCD4/Abtrenner4_nocol/Klappe",	waypoint	= "Entry/PortionerGate4",	},
					},
				},
			},
			conveyorBelts		= {
				{
					xScale		= 0;
					yLength		= -6.75,
					speedScale	= 0.5*0.66,
					indexes		= {
						"Zustieg_DCD4/Band1_nocol",
						"Zustieg_DCD4/Band2_nocol",
						"Zustieg_DCD4/Band3_nocol",
						"Zustieg_DCD4/Band4_nocol",
					},
				},
			},
			entryWaypointSpeedScale	= 0.5,
			entryWaypoints			= {
				"Entry/Entry1",
				"Entry/Entry2",
				"Entry/Entry3",
				"Entry/Entry4",
			},
		},
		
		
		sounds				= {
			registerMainDriveTo	= {
				"4CLF-Antrieb/4CLF-Antrieb",
			},
			serviceBrake	= "4CLF-Antrieb/ServiceBrake",
			emergencyBrake	= "4CLF-Antrieb/EmergencyBrake",
		},
		toggleObjects		= {
			{
				name		= "entrance1",
				switchIndex	= "SDK_Kommandoraum1_gameready/Schalter/EntranceArea",
				object		= "Nets_on",
				inverse		= "Nets_off",
				switchName	= "$switch_Barrier_EntranceArea",
				switchOff	= "0",
				switchOn	= "1",
			},
		},
	},

	station2				= {
		prefab				= "Gegenstation",
		nameLabels 			= { "NameLabel" },
		position			= Vector3:new(0, 0.2, 0),
		rotation			= Vector3:new(0, 0, 0),
		stationSplines		= {
			{
				index		= "Spline",
				name		= "UmlaufSplineBS",
			},
		},
		incomingSpline		= "UmlaufSplineBS",
		outgoingSpline		= "UmlaufSplineBS", 
		controlPanelRoots	= { "controlPanels" },
		phones				= { "SDK_Kommandoraum1_gameready/Telefon/Phone_LOD0" },
		--HMIs				= { "TouchScreen_gameready/Panel/PanelScreen" },
		
		sounds				= {
			registerMainDriveTo	= {
				"ReturnSound/ReturnStation",
			},
		},
		entry = {
			entryWaypointSpeedScale	= 1.5,
			entryWaypoints			= {
				"Entry/Leave1",
				"Entry/Leave2",
				"Entry/Leave3",
				"Entry/Leave4",
			},
		},	
	},
});
