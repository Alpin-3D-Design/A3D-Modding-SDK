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

ModLoader.addContent("vehicle", {
	contentName				= "pistenbully600",
	title					= "$shop_pistenbully600_solo_title",
	fullDesc				= "$shop_pistenbully600_solo_desc",
	techSpecs				= "$shop_pistenbully600_solo_specs",
	previewFilename			= "$vehicles/pistenbully/pistenbully600_solo",
	logoFilename			= "$logos/pistenbully",

	author					= "HR Innoways",
	shopCategory			= "slopeMachinery",
	price					= 299900,
	depreciationPeriod		= 150,
	
	class					= Vehicle,
	prefab					= "$vehicles/pistenbully600Solo",
	vehicleScripts			= {
		Seats,
		TrackedVehicle,
		VehicleLighting,
		AnimatedParts,
		MovingParts,
		CylinderAnimator,
		SnowGroomer,
		VehicleAnchor,
		Attacher,
		FuelTank,
		WarningSound,
	},

	massCenter				= Vector3:new(0,  0.55,  0.20),

	masterAttachers			= {
		{
			index			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_SchildAttacher/Schild/SnowCannonAttacher",
			type			= "SnowCannon",
		},
	},

	maxRpm					= 2000,
	maxSpeed				= 30,
	maxWheelTorque			= 8000,
	wheelRadius				= 0.35,

	maxBrakeTorque			= 1200,
	parkingBrakeTorque		= 550,

	steeringAngle			= 42,
	steeringWheelIndex		= "PB600_Interrior/PB600_Lenkrad2_LOD0/PB600_Lenkrad_LOD0",
	steeringWheelAngle		= -90,
	steeringWheelAxis		= 3,

	rpmPointerIndex			= "",
	rpmPointerMaxAngle		= -236.394,

	speedPointerIndex		= "",
	speedPointerMaxAngle	= -233.5,

	fuelUsagePerHour		= 30,
	fuelUsagePer100Km		= 200,
	fuelTankCapacity		= 300,

	axles					= {},

	sounds					= {
		setParkingBrake		= {
			prefab			= "$sounds/parkingBrake1",
			volume			= 1,
		},
		releaseParkingBrake	= {
			prefab			= "$sounds/parkingBrake0",
			volume			= 1,
		},
		switchTurnOn		= {
			prefab			= "$sounds/switchSound1",
			volume			= 1,
		},
		switchTurnOff		= {
			prefab			= "$sounds/switchSound0",
			volume			= 1,
		},
		blinkTickOn			= "$sounds/blinker1",
		blinkTickOff		= "$sounds/blinker0",

		warningSound			= {	
			prefab			= "$sounds/Pistenbully/PB_beep",
			volume = 1,
			-- interieurVolumeScale    = 0.7,
			-- interieurLowpass        = 0.9,
			-- exterieurLowpass        = 0.2,
			-- pitchOffset		= 1.4,
			-- minVolume		= 0.3,
			-- maxVolume		= 0.3,
			enabledByKey 		= true,
			enableReverse 		= true,
		},

		motorIdle			= {
			{		
				prefab			= "$sounds/Pistenbully/PB600_idle",
				minPitch		= 0.4,
				maxPitch		= 2,

				interieurVolumeScale    = 0.7,
				interieurLowpass        = 0.9,
				exterieurLowpass        = 0.5,

				minFadeOutRpm			=800,
				maxFadeOutRpm			=1050,

				--baseRpm			= 800,
				pitchOffset		= 0.6,
				pitchScale		= 0.04/100,

				minVolume		= 0.8,
				maxVolume		= 0.8,

				fadeOutSpeed	= 0.1,
			},
			{		
				prefab			= "$sounds/Pistenbully/PB600_idle",
				minPitch		= 0.4,
				maxPitch		= 2,

				interieurVolumeScale    = 0.7,
				interieurLowpass        = 0.9,
				exterieurLowpass        = 0.5,

				minFadeInRpm			=825,
				maxFadeInRpm			=950,

				minFadeOutRpm			=1100,
				maxFadeOutRpm			=1400,

				--baseRpm			= 800,
				pitchOffset		= 0.7,
				pitchScale		= 0.04/100,

				minVolume		= 0.7,
				maxVolume		= 0.7,

				fadeInSpeed		= 0.1,
				fadeOutSpeed	= 0.02,
			},
			{		
				prefab			= "$sounds/Pistenbully/PB600_run",
				minPitch		= 0.4,
				maxPitch		= 2,

				minFadeInRpm			= 800,
				maxFadeInRpm			= 1000,
				interieurVolumeScale    = 0.7,
				interieurLowpass        = 0.9,
				exterieurLowpass        = 0.4,

				--baseRpm			= 800,
				pitchOffset		= 0.5,
				pitchScale		= 0.04/100,

				minVolume		= 0.5,
				maxVolume		= 0.7,

				--pitchOffset		= 0,
				--pitchScale		= 1,
				--volumeScale	= 1,
			},

			{		
				prefab			= "$sounds/Pistenbully/PB600_hydraulik2",
				minPitch		= 0.4,
				maxPitch		= 2,

				minFadeInRpm			= 1000,
				maxFadeInRpm			= 1200,

				interieurVolumeScale    = 0.7,
				interieurLowpass        = 0.4,

				--baseRpm			= 800,
				pitchOffset		= 0.5,
				pitchScale		= 0.06/100,

				minVolume		= 0.6,
				maxVolume		= 0.65,

				--pitchOffset		= 0,
				--pitchScale		= 1,
				--volumeScale	= 1,
			},
		},
		motorLoad			= {
			--[[
			{
				prefab			= "$sounds/Pistenbully/PB600_run",
				minPitch		= 0.5,
				maxPitch		= 2,

				--interieurVolumeScale    = 0.7,
				exterieurLowpass        = 0.35,

				minFadeInRpm	= 100,
				maxFadeInRpm	= 1000,

				--baseRpm			= 1800,
				pitchOffset 	= 0.5,
				pitchScale		= 0.05/100,

				minVolume		= 0.3,
				--minVolume		= 0.001,
				maxVolume		= 0.45,
				--maxVolume		= 0.002,

				-- Volume/Second
				fadeInSpeed		= 0.3,
				fadeOutSpeed	= 0.3,
			},]]
			{
				prefab			= "$sounds/Pistenbully/PB600_hydraulik2",
				minPitch		= 0.5,
				maxPitch		= 3,

				interieurVolumeScale    = 0.6,
				--interieurLowpass        = 0.5,

				minFadeInRpm	= 100,
				maxFadeInRpm	= 700,

				--baseRpm			= 1800,
				pitchOffset 	= 1,
				pitchScale		= 0.06/100,

				minVolume		= 0.5,
				maxVolume		= 0.55,

				-- Volume/Second
				fadeInSpeed		= 0.2,
				fadeOutSpeed	= 0.3,
			},
		},
		motorStart			= {
			prefab			= "$sounds/Pistenbully/PB100_start",
			maxVolume		= 0.7,
		},
		motorStop			= {
			prefab			= "$sounds/pickup/pickup_stop",
		},
	},
	
	trackedWheelDefaults	= {
		radius				= 0.35,
		width				= 1.7,
		mass				= 150,
		maxSpringForce		= 81000,
		springLength		= 0.15,
		damperBump			= 4000,
		damperRebound		= 6000,
		-- forward and side resolution use default values
		-- no visual in use

		steeringValue		= 0,
		brakeValue			= 1,
		motorValue			= 1,
	},
	trackedWheels			= {
		{	index			= "ingameWheels/wheelL1",	steeringValue	= 1,		},
		{	index			= "ingameWheels/wheelL2",	steeringValue	= 0.5,		},
		{	index			= "ingameWheels/wheelL3",	steeringValue	= 0,		},
		{	index			= "ingameWheels/wheelL4",	steeringValue	= -0.5,		},
		{	index			= "ingameWheels/wheelL5",	steeringValue	= -1,		},
		{	index			= "ingameWheels/wheelR1",	steeringValue	= 1,		},
		{	index			= "ingameWheels/wheelR2",	steeringValue	= 0.5,		},
		{	index			= "ingameWheels/wheelR3",	steeringValue	= 0,		},
		{	index			= "ingameWheels/wheelR4",	steeringValue	= -0.5,		},
		{	index			= "ingameWheels/wheelR5",	steeringValue	= -1,		},
	},

	gears					= { -1,    0,   1 },
	gearLabels				= { "R", "N", "V" },

	motorMinRpm				= 900,
	motorMaxRpm				= 2000,
	motorTorqueCurve		= {
		{	rpm	=  800,		torque	= 1700	},
		{	rpm	= 1000,		torque	= 2230	},
		{	rpm	= 1400,		torque	= 2270	},
		{	rpm	= 2000,		torque	= 1600	},
		{	rpm	= 4000,		torque	=   0	},
	},

	lights					= {
		headlights			= {
			"PB600_Lights/PB600_Abblendlicht_an",
			"PB600_Lights/PB600_Arbeitslicht_hinten_an",
			"PB600_Lights/PB600_Arbeitslicht_hinten_oben_an",
			"PB600_Lights/PB600_Ruecklicht_an",
			"PB600_Lights/PB600_Ruecklicht_oben_an",
		},
		headlightsInverse			= {
			"PB600_Lights/PB600_Abblendlicht_aus",
			"PB600_Lights/PB600_Arbeitslicht_hinten_aus",
			"PB600_Lights/PB600_Arbeitslicht_hinten_oben_aus",
			"PB600_Lights/PB600_Ruecklicht_aus",
			"PB600_Lights/PB600_Ruecklicht_oben_aus",
		},
		leftIndicator			= { "PB600_Lights/PB600_Blinker_li_an" },
		leftIndicatorInverse	= { "PB600_Lights/PB600_Blinker_li_aus" },
		rightIndicator			= { "PB600_Lights/PB600_Blinker_re_an" },
		rightIndicatorInverse	= { "PB600_Lights/PB600_Blinker_re_aus" },

		--[[
		brakelights			= { "RealisticCar04_HD_Lights/Car04_Lights_BrakeLight" },
		reverselights		= { "RealisticCar04_HD_Lights/Car04_Lights_Reverse" },]]

		strobeLightsPace	= 1,
		strobeLights		= { "PB600_Lights/PB600_RUL_an",	},
		strobeLightsInverse	= { "PB600_Lights/PB600_RUL_aus",	},
		customLights		= {
			{
				-- Worklight 1
				indexes			= {
					"PB600_Lights/PB600_Arbeitslicht_vorne_an",
					"PB600_Lights/PB600_Arbeitslicht_seite_an",
					"PB600_Lights/PB600_Scheinwerfer_FrontSeite_an",
				},
				indexesInverse	= { 
					"PB600_Lights/PB600_Arbeitslicht_vorne_aus",
					"PB600_Lights/PB600_Scheinwerfer_FrontSeite_aus",
					"PB600_Lights/PB600_Arbeitslicht_seite_aus",
				},
				inputKey		= "Vehicle_WorkLight1",
			},
			{
				-- Worklight 2
				indexes			= {
					"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_Licht_an",
					"PB600_Lights/PB600_Oberleuchter_L_an",
					"PB600_Lights/PB600_Oberleuchter_R_an",					
				},
				indexesInverse	= 	{
					"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_Licht_aus",
					"PB600_Lights/PB600_Oberleuchter_L_aus",
					"PB600_Lights/PB600_Oberleuchter_R_aus",
				},
				inputKey		= "Vehicle_WorkLight2",
			},
			{
				-- Worklight 3
				indexes			=	{
					"PB600_Lights/PB600_Suchscheinwerfer/PB600_Suchscheinwerfer_Licht_an",
				},
				indexesInverse	= {
					"PB600_Lights/PB600_Suchscheinwerfer/PB600_Suchscheinwerfer_Licht_aus",
				},
				inputKey		= "Vehicle_WorkLight3",
			},
		},
	},

	snowGroomer				= {
		axis1				= "PB600_nachlauf_col",
		axis2				= "PB600_nachlauf_col/PB600_aufhaengung_1_col",
		axis3				= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col",
		axis4				= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col",
		raycastOrigin		= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/RaycastOrigin",

		leftFlap			= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_L/Fraese_Flap_L_col",
		rightFlap			= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_R/Fraese_Flap_R_col",

		preparationAreas	= {
			{
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/left1",
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/right2",
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/right1",
			},
			{
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/left1",
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/right2",
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/left2",
			},
			{
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_L/Fraese_Flap_L_col/tri1",
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_L/Fraese_Flap_L_col/tri2",
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_L/Fraese_Flap_L_col/tri3",
			},
			{
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_L/Fraese_Flap_L_col/tri1",
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_L/Fraese_Flap_L_col/tri4",
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_L/Fraese_Flap_L_col/tri3",
			},
			{
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_R/Fraese_Flap_R_col/tri1",
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_R/Fraese_Flap_R_col/tri2",
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_R/Fraese_Flap_R_col/tri3",
			},
			{
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_R/Fraese_Flap_R_col/tri1",
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_R/Fraese_Flap_R_col/tri4",
				"PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_R/Fraese_Flap_R_col/tri3",
			},
		},

		rotatingParts		= {
			{
				index		= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Fraeswelle",
				speed		= 180,
				axis		= 1,
			},
		},

		axis23Length		= 1.19,
		groundToAxis4Y		= 0.835,
		groundToAxis4Z		= 0.6,
		axis4To3Y			= -0.105,
		axis4To3Z			= 0.35,

		lifted				= {
			axis1			= 0,
			axis2			= 60,
			axis3			= -60,
			axis4			= 0,
		},
		lowered				= {
			axis1Limit		= 22,
			axis2MinLimit	= -45,
			axis2MaxLimit	= 60,
			axis3MinLimit	= -60,
			axis3MaxLimit	= 60,
			axis4MinLimit	= -20,
			axis4MaxLimit	= 20,
		},
		timeToLower			= 2,
		timeToLift			= 2,
		timeToLock			= 1,
	},
	anchorPoints			= {
		{
			index			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_SchildAttacher/Schild/winchAnchor",
			buttonIndex		= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_SchildAttacher/Schild/ControlElement",
		}
	},

	animatedParts			= {
		{
			index			= "PB600_Body/PB600_Door_Left",
			collision		= "PB600_Body/PB600_Door_Left/PB600_Door_Left_col",
			textOn			= "$doorOpen",
			textOff			= "$doorClose",
			defaultState	= false,
			onEnterState	= false,
		},
		{
			index			= "PB600_Body/PB600_Door_Right",
			collision		= "PB600_Body/PB600_Door_Right/PB600_Door_Right_col",
			textOn			= "$doorOpen",
			textOff			= "$doorClose",
			defaultState	= false,
			onEnterState	= false,
		},
	},

	movingParts				= {
		{
			index			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col",
			rotAxis			= 1,
			rotMin			= -25,
			rotMax			= 32,
			moveSpeed		= 5,
			mouseButton		= 1,
			mouseAxis		= 2,
			inputAxis		= "Axis_Snowcat_Blade_UpDown",
			axisSpeed		= 1,
		},
		{
			index			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier",
			rotAxis			= 2,
			rotMin			= -15,
			rotMax			= 15,
			moveSpeed		= 5,
			mouseButton		= 1,
			mouseAxis		= 1,
			inputAxis		= "Axis_Snowcat_Blade_LeftRight",
			axisSpeed		= 1,
		},
		{
			index			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick",
			rotAxis			= 1,
			rotMin			= -30,
			rotMax			= 30,
			moveSpeed		= 5,
			mouseButton		= 2,
			mouseAxis		= 2,
			inputAxis		= "Axis_Snowcat_Blade_AttackAngle",
			axisSpeed		= 1,
		},
		{
			index			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll",
			rotAxis			= 3,
			rotMin			= -30,
			rotMax			= 30,
			moveSpeed		= -5,
			mouseButton		= 2,
			mouseAxis		= 1,
			inputAxis		= "Axis_Snowcat_Blade_Tilt",
			axisSpeed		= 1,
		},
		{
			index			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_SchildAttacher/Schild/Schild_Links_col",
			rotAxis			= 2,
			rotMin			= -20,
			rotMax			= 40.9,
			moveSpeed		= 8,
			mouseButton		= 3,
			mouseAxis		= 2,
			inputAxis		= "Axis_Snowcat_Blade_LeftWing",
			axisSpeed		= 2,
		},
		{
			index			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_SchildAttacher/Schild/Schild_Rechts_col",
			rotAxis			= 2,
			rotMin			= -40.9,
			rotMax			= 20,
			moveSpeed		= 8,
			mouseButton		= 3,
			mouseAxis		= 1,
			inputAxis		= "Axis_Snowcat_Blade_RightWing",
			axisSpeed		= 2,
		},
	},

	seats					= {
		{	index			= "SeatCollider",		cameraIndex	= "InteriorCamera",		leaveIndex	= "LeaveNode",	isDriver	= true	},
	},
	cameras					= {
		{	slot			= 2,	index	= "ExterieurCameraRoot/Camera",	rotIndex	= "ExterieurCameraRoot",		zoomIndex	= "ExterieurCameraRoot/Camera" },
		--[[{	slot			= 3,	index	= "SeatColliders/ExterieurCamera11"	},
		{	slot			= 3,	index	= "SeatColliders/ExterieurCamera12"	},
		{	slot			= 3,	index	= "SeatColliders/ExterieurCamera13"	},
		{	slot			= 3,	index	= "SeatColliders/ExterieurCamera14"	},
		{	slot			= 4,	index	= "SeatColliders/ExterieurCamera21"	},
		{	slot			= 4,	index	= "SeatColliders/ExterieurCamera22"	},
		{	slot			= 4,	index	= "SeatColliders/ExterieurCamera23"	},
		{	slot			= 4,	index	= "SeatColliders/ExterieurCamera24"	},]]
	},

	exhaustParticleSystems	= {
		{	index			= "exhaustNode",			particleSystem	= "$vehicles/particles/ExhaustParticles"	},
	},

	cylinders				= {
		{
			cylinder		= "PB600_nachlauf_col/PB600_nachlauf_LOD0/PB600_Zylinder1",
			piston			= "PB600_nachlauf_col/PB600_nachlauf_LOD0/PB600_Zylinder1/PB600_Zylinder1_Kolben",
			target			= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_Zylinder1_Target",
		},
		{
			cylinder		= "PB600_nachlauf_col/PB600_nachlauf_LOD0/PB600_Zylinder2",
			piston			= "PB600_nachlauf_col/PB600_nachlauf_LOD0/PB600_Zylinder2/PB600_Zylinder2_Kolben",
			target			= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_Zylinder2_Target",
		},
		{
			cylinder		= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_L/Fraese_ZylinderL",
			piston			= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_L/Fraese_ZylinderL/Fraese_ZylinderL_Kolben",
			target			= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_L/Fraese_Flap_L_col/Fraese_ZylinderL_Target",
		},
		{
			cylinder		= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_R/Fraese_ZylinderR",
			piston			= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_R/Fraese_ZylinderR/Fraese_ZylinderR_Kolben",
			target			= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Flap_R/Fraese_Flap_R_col/Fraese_ZylinderR_Target",
		},
		{
			cylinder		= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_Zylinder1",
			piston			= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_Zylinder1/Fraese_Zylinder1_Kolben",
			target			= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Zylinder1_Target",
		},
		{
			cylinder		= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_Zylinder2",
			piston			= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_Zylinder2/Fraese_Zylinder2_Kolben",
			target			= "PB600_nachlauf_col/PB600_aufhaengung_1_col/PB600_aufhaengung_hinten_col/PB600_JointPos_Fraese/Fraese/Fraese_unten_col/Fraese_Zylinder2_Target",
		},
		{
			cylinder		= "PB600_mechanics_front/PB600_Zylinder3",
			piston			= "PB600_mechanics_front/PB600_Zylinder3/PB600_Zylinder3_Kolben",
			target			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_Zylinder3_Target",
		},
		{
			cylinder		= "PB600_mechanics_front/PB600_Zylinder4",
			piston			= "PB600_mechanics_front/PB600_Zylinder4/PB600_Zylinder4_Kolben",
			target			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_Zylinder4_Target",
		},
		{
			cylinder		= "PB600_mechanics_front/PB600_Zylinder5",
			piston			= "PB600_mechanics_front/PB600_Zylinder5/PB600_Zylinder5_Kolben",
			target			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_Zylinder5_Target",
		},
		{
			cylinder		= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_Zylinder6",
			piston			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_Zylinder6/PB600_Zylinder6_Kolben",
			target			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_Zylinder6_Target",
		},
		{
			cylinder		= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_Zylinder7",
			piston			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_Zylinder7/PB600_Zylinder7_Kolben",
			target			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_Zylinder7_Target",
		},
		{
			cylinder		= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_Zylinder8",
			piston			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_Zylinder8/PB600_Zylinder8_Kolben",
			target			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_Zylinder8_Target",
		},
		{
			cylinder		= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_Zylinder9",
			piston			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_aufhaengung_front_gier/PB600_aufhaengung_front_nick/PB600_aufhaengung_front_roll/PB600_aufhaengung_front_col/PB600_Zylinder9/PB600_Zylinder9_Kolben",
			target			= "PB600_mechanics_front/PB600_aufhaengung_vorne_col/PB600_Zylinder9_Target",
		},
	},
});