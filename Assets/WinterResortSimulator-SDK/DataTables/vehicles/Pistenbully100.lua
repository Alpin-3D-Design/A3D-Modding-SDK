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
	contentName				= "pistenbully100",
	title					= "$shop_pistenbully100_title",
	fullDesc				= "$shop_pistenbully100_desc",
	techSpecs				= "$shop_pistenbully100_specs",
	previewFilename			= "$vehicles/pistenbully/pistenbully100",
	logoFilename			= "$logos/pistenbully",

	author					= "HR Innoways",
	shopCategory			= "slopeMachinery",
	price					= 149900,
	depreciationPeriod		= 125,
	
	class					= Vehicle,
	prefab					= "$vehicles/pistenbully100",
	vehicleScripts			= {
		Seats,
		TrackedVehicle,
		VehicleLighting,
		AnimatedParts,
		MovingParts,
		CylinderAnimator,
		SnowGroomer,
		--VehicleAnchor,
		--Attacher,
		FuelTank,
		WarningSound,
	},

	massCenter				= Vector3:new(0,  0.45,  0.15),

	maxRpm					= 2000,
	maxSpeed				= 30,
	maxWheelTorque			= 8000,
	wheelRadius				= 0.35,

	maxBrakeTorque			= 1200,
	parkingBrakeTorque		= 550,

	steeringAngle			= 42,
	steeringWheelIndex		= "PB100_Interrior/PB100_Lenkrad_ausrichtung/PB100_Lenkrad",
	steeringWheelAngle		= -90,
	steeringWheelAxis		= 3,

	rpmPointerIndex			= "",
	rpmPointerMaxAngle		= -236.394,

	speedPointerIndex		= "",
	speedPointerMaxAngle	= -233.5,

	fuelUsagePerHour		= 25,
	fuelUsagePer100Km		= 150,
	fuelTankCapacity		= 155,

	axles					= {},

	sounds					= {
		setParkingBrake		= {
			prefab			= "$sounds/parkingBrake1",
			volume			= 0.3,
		},
		releaseParkingBrake	= {
			prefab			= "$sounds/parkingBrake0",
			volume			= 0.3,
		},
		switchTurnOn		= {
			prefab			= "$sounds/switchSound1",
			volume			= 0.3,
		},
		switchTurnOff		= {
			prefab			= "$sounds/switchSound0",
			volume			= 0.3,
		},
		blinkTickOn			= {
			prefab			= "$sounds/blinker1",
			volume			= 0.3,
		},
		blinkTickOff		= {
			prefab			= "$sounds/blinker0",
			volume			=0.3,
		},
		
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
				prefab			= "$sounds/Pistenbully/PB100_idle",
				minPitch		= 0.4,
				maxPitch		= 2,

				interieurVolumeScale    = 0.7,
				interieurLowpass		= 0.4,
				--exterieurLowpass        = 0.4,

				minFadeOutRpm			=1000,
				maxFadeOutRpm			=1150,

				--baseRpm			= 800,
				pitchOffset		= 1,
				pitchScale		= 0.04/100,

				minVolume		= 0.8,
				maxVolume		= 0.8,

				--fadeInSpeed		= 0.1,
				fadeOutSpeed	= 0.1,
			},
			{		
				prefab			= "$sounds/Pistenbully/PB100_idle",
				minPitch		= 0.4,
				maxPitch		= 2,

				interieurVolumeScale    = 0.7,
				interieurLowpass		= 0.4,
				--exterieurLowpass        = 0.2,

				minFadeInRpm			=1000,
				maxFadeInRpm			=1150,

				--minFadeOutRpm			=1300,
				--maxFadeOutRpm			=2600,

				--baseRpm			= 800,
				pitchOffset		= 1.1,
				pitchScale		= 0.055/100,

				minVolume		= 0.8,
				maxVolume		= 0.85,

				fadeInSpeed		= 0.1,
				fadeOutSpeed	= 0.1,
			},
			{		
				prefab			= "$sounds/Pistenbully/PB600_hydraulik2",
				minPitch		= 0.4,
				maxPitch		= 2,

				minFadeInRpm			= 1000,
				maxFadeInRpm			= 1200,

				interieurVolumeScale    = 0.7,
				interieurLowpass		= 0.4,

				--baseRpm			= 800,
				pitchOffset		= 0.5,
				pitchScale		= 0.05/100,

				minVolume		= 0.2,
				maxVolume		= 0.25,

				--pitchOffset		= 0,
				--pitchScale		= 1,
				--volumeScale	= 1,
			},
			{		
				prefab			= "$sounds/Pistenbully/PB600_run",
				minPitch		= 0.4,
				maxPitch		= 2,

				minFadeInRpm			= 950,
				maxFadeInRpm			= 1025,
				interieurVolumeScale    = 0.7,
				interieurLowpass        = 0.9,
				exterieurLowpass        = 0.5,

				--baseRpm			= 800,
				pitchOffset		= 0.8,
				pitchScale		= 0.045/100,

				minVolume		= 0.3,
				maxVolume		= 0.35,

				fadeInSpeed		= 0.2,

				--pitchOffset		= 0,
				--pitchScale		= 1,
				--volumeScale	= 1,
			},
		},
		motorLoad			= {
			--[[
			{		
				prefab			= "$sounds/Pistenbully/PB600_hydraulik2",
				minPitch		= 0.4,
				maxPitch		= 2,

				minFadeInRpm			= 1000,
				maxFadeInRpm			= 1200,

				--interieurVolumeScale    = 0.7,

				--baseRpm			= 800,
				pitchOffset		= 0.6,
				pitchScale		= 0.06/100,

				minVolume		= 0.3,
				maxVolume		= 0.4,

				fadeInSpeed		= 0.3,

				--pitchOffset		= 0,
				--pitchScale		= 1,
				--volumeScale	= 1,
			},]]
			{		
				prefab			= "$sounds/Pistenbully/PB600_run",
				minPitch		= 0.4,
				maxPitch		= 2,

				minFadeInRpm			= 950,
				maxFadeInRpm			= 1025,
				interieurVolumeScale    = 0.6,
				--interieurLowpass        = 0.4,
				--exterieurLowpass        = 0.5,

				--baseRpm			= 800,
				pitchOffset		= 0.4,
				pitchScale		= 0.045/100,

				minVolume		= 0.6,
				maxVolume		= 0.7,

				fadeInSpeed		= 0.5,

				--pitchOffset		= 0,
				--pitchScale		= 1,
				--volumeScale	= 1,
			},
		},

		motorStart				= {
			prefab				= "$sounds/Pistenbully/PB100_start",
			Volume 				= 0.3,
		},
		motorStop				= {
			prefab				= "$sounds/pickup/pickup_stop",
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

	motorMinRpm					= 900,
	motorMaxRpm					= 2000,
	hydraulicMaxSpeed			= 18,
	controlIntegrationTime		= 0.015,
	motorMaxLoadPower			= 50,
	hydraulicIdleDeceleration	= 1,
	powerToRpmCoeff				= -8,

	lights					= {
		headlights			= {
			"PB100_Lights/PB100_Arbeitslicht_vorneOben_an",
			"PB100_Lights/PB100_Bremslicht_an",
			"PB100_Lights/PB100_Ruecklicht_an",
			"PB100_Lights/PB100_Licht_Heck_an",
		},
		headlightsInverse			= {
			"PB100_Lights/PB100_Arbeitslicht_vorneOben_aus",
			"PB100_Lights/PB100_Bremslicht_aus",				
			"PB100_Lights/PB100_Ruecklicht_aus",
			"PB100_Lights/PB100_Licht_Heck_aus",
		},


		--[[
		brakelights			= { "RealisticCar04_HD_Lights/Car04_Lights_BrakeLight" },
		reverselights		= { "RealisticCar04_HD_Lights/Car04_Lights_Reverse" },]]
		
		strobeLightsPace	= 1,
		strobeLights		= { "PB100_Lights/PB100_Blitzlicht_an"},
		strobeLightsInverse	= { "PB100_Lights/PB100_Blitzlicht_aus"},
		
		customLights		= {
			{
				-- Worklight 1
				indexes			= {
					"PB100_Lights/PB100_Abblendlicht_an",
					"PB100_Lights/PB100_Arbeitslicht_vorneSeite_an",
				},
				indexesInverse	= 	{
					"PB100_Lights/PB100_Abblendlicht_aus",		
					"PB100_Lights/PB100_Arbeitslicht_vorneSeite_aus",
				},
				inputKey		= "Vehicle_WorkLight1",
			},
			{
				-- Worklight 2
				indexes			= {
					"PB100_Lights/PB100_Arbeitslicht_hinten_an",
				},
				indexesInverse	= { 
					"PB100_Lights/PB100_Arbeitslicht_hinten_aus",
				},
				inputKey		= "Vehicle_WorkLight2",
			},
			{
				-- Worklight 3
				indexes			=	{
					"PB100_Lights/PB100_Suchscheinwerfer_an",
				},
				indexesInverse	= {
					"PB100_Lights/PB100_Suchscheinwerfer_aus",
				},
				inputKey		= "Vehicle_WorkLight3",
			},
		},
	},

	snowGroomer				= {
		axis1				= "PB100_nachlauf_colcon",
		axis2				= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon",
		axis3				= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon",
		axis4				= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese",
		raycastOrigin		= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/RaycastOrigin",

		leftFlap			= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_L/Fraese_Flap_L_colcon",
		rightFlap			= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_R/Fraese_Flap_R_colcon",

		preparationAreas	= {
			{
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/left1",
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/right2",
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/right1",
			},
			{
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/left1",
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/right2",
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/left2",
			},
			{
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_L/Fraese_Flap_L_colcon/tri1",
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_L/Fraese_Flap_L_colcon/tri2",
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_L/Fraese_Flap_L_colcon/tri3",
			},
			{
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_L/Fraese_Flap_L_colcon/tri1",
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_L/Fraese_Flap_L_colcon/tri4",
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_L/Fraese_Flap_L_colcon/tri3",
			},
			{
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_R/Fraese_Flap_R_colcon/tri1",
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_R/Fraese_Flap_R_colcon/tri2",
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_R/Fraese_Flap_R_colcon/tri3",
			},
			{
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_R/Fraese_Flap_R_colcon/tri1",
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_R/Fraese_Flap_R_colcon/tri4",
				"PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_R/Fraese_Flap_R_colcon/tri3",
			},
		},

		rotatingParts		= {
			{
				index		= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Fraeswelle",
				speed		= 160,
				axis		= 1,
			},
		},

		axis23Length		= 0.8863964,
		groundToAxis4Y		= 0.5,
		groundToAxis4Z		= 0.6,
		axis4To3Y			= -0.1136,
		axis4To3Z			= 0.129,

		lifted				= {
			axis1			= 0,
			axis2			= 50,
			axis3			= -50,
			axis4			= 0,
		},
		lowered				= {
			axis1Limit		= 22,
			axis2MinLimit	= -45,
			axis2MaxLimit	= 50,
			axis3MinLimit	= -50,
			axis3MaxLimit	= 50,
			axis4MinLimit	= -20,
			axis4MaxLimit	= 20,
		},
		timeToLower			= 2,
		timeToLift			= 2,
		timeToLock			= 1,
	},

	animatedParts			= {
		{
			index			= "PB100_doorL",
			collision		= "PB100_doorL/PB100_doorL_colcon",
			textOn			= "$doorOpen",
			textOff			= "$doorClose",
			defaultState	= false,
			onEnterState	= false,
		},
		{
			index			= "PB100_doorR",
			collision		= "PB100_doorR/PB100_doorR_colcon",
			textOn			= "$doorOpen",
			textOff			= "$doorClose",
			defaultState	= false,
			onEnterState	= false,
		},
	},

	movingParts				= {
		{
			index			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon",
			rotAxis			= 1,
			rotMin			= -20,
			rotMax			= 20,
			moveSpeed		= 4,
			mouseButton		= 1,
			mouseAxis		= 2,
			inputAxis		= "Axis_Snowcat_Blade_UpDown",
			axisSpeed		= 1,
		},
		{
			index			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier",
			rotAxis			= 2,
			rotMin			= -12,
			rotMax			= 12,
			moveSpeed		= 5,
			mouseButton		= 1,
			mouseAxis		= 1,
			inputAxis		= "Axis_Snowcat_Blade_LeftRight",
			axisSpeed		= 1,
		},
		{
			index			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick",
			rotAxis			= 1,
			rotMin			= -20,
			rotMax			= 20,
			moveSpeed		= 4,
			mouseButton		= 2,
			mouseAxis		= 2,
			inputAxis		= "Axis_Snowcat_Blade_AttackAngle",
			axisSpeed		= 1,
		},
		{
			index			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll",
			rotAxis			= 3,
			rotMin			= -20,
			rotMax			= 20,
			moveSpeed		= -4,
			mouseButton		= 2,
			mouseAxis		= 1,
			inputAxis		= "Axis_Snowcat_Blade_Tilt",
			axisSpeed		= 1,
		},
		{
			index			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_SchildAttacher/Schild/Schild_Links_Ausschlag",
			rotAxis			= 2,
			rotMin			= -15,
			rotMax			= 15,
			moveSpeed		= 8,
			mouseButton		= 3,
			mouseAxis		= 2,
			inputAxis		= "Axis_Snowcat_Blade_LeftWing",
			axisSpeed		= 2,
		},
		{
			index			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_SchildAttacher/Schild/Schild_Rechts_Ausschlag",
			rotAxis			= 2,
			rotMin			= -15,
			rotMax			= 15,
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
			cylinder		= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_SchildAttacher/Schild/Schild_ZylinderS1",
			piston			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_SchildAttacher/Schild/Schild_ZylinderS1/Schild_ZylinderS1_Kolben",
			target			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_SchildAttacher/Schild/Schild_Rechts_Ausschlag/Schild_Rechts_colcon/Schild_ZylinderS1_Target",
		},
		{
			cylinder		= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_SchildAttacher/Schild/Schild_ZylinderS2",
			piston			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_SchildAttacher/Schild/Schild_ZylinderS2/Schild_ZylinderS2_Kolben",
			target			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_SchildAttacher/Schild/Schild_Links_Ausschlag/Schild_Links_colcon/Schild_ZylinderS2_Target",
		},
		{
			cylinder		= "PB100_mechanics_front/PB100_Zylinder1",
			piston			= "PB100_mechanics_front/PB100_Zylinder1/PB100_Zylinder1_Kolben",
			target			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_Zylinder1_Target",
		},
		{
			cylinder		= "PB100_mechanics_front/PB100_Zylinder2",
			piston			= "PB100_mechanics_front/PB100_Zylinder2/PB100_Zylinder2_Kolben",
			target			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_Zylinder2_Target",
		},
		{
			cylinder		= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_Zylinder3",
			piston			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_Zylinder3/PB100_Zylinder3_Kolben",
			target			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_Zylinder3_Target",
		},
		{
			cylinder		= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_Zylinder4",
			piston			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_Zylinder4/PB100_Zylinder4_Kolben",
			target			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_Zylinder4_Target",
		},
		{
			cylinder		= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_Zylinder5",
			piston			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_Zylinder5/PB100_Zylinder5_Kolben",
			target			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_Zylinder5_Target",
		},
		{
			cylinder		= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_Zylinder6",
			piston			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_aufhaengung_front_gier/PB100_aufhaengung_front_nick/PB100_aufhaengung_front_roll/PB100_aufhaengung_front_colcon/PB100_Zylinder6/PB100_Zylinder6_Kolben",
			target			= "PB100_mechanics_front/PB100_aufhaengung_vorne_colcon/PB100_Zylinder6_Target",
		},
		{
			cylinder		= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_ZylinderL",
			piston			= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_ZylinderL/Fraese_ZylinderL_Kolben",
			target			= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_L/Fraese_Flap_L_colcon/Fraese_ZylinderL_Target",
		},
		{
			cylinder		= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_ZylinderR",
			piston			= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_ZylinderR/Fraese_ZylinderR_Kolben",
			target			= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_JointPos_Fraese/Fraese/Fraese_unten_colcon/Fraese_Flap_R/Fraese_Flap_R_colcon/Fraese_ZylinderR_Target",
		},
		{
			cylinder		= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_ZylinderF1",
			piston			= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_ZylinderF1/PB100_ZylinderF1_Kolben",
			target			= "PB100_nachlauf_colcon/PB100_ZylinderF1_Target",
		},
		{
			cylinder		= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_ZylinderF2",
			piston			= "PB100_nachlauf_colcon/PB100_aufhaengung_1_colcon/PB100_aufhaengung_hinten_colcon/PB100_ZylinderF2/PB100_ZylinderF2_Kolben",
			target			= "PB100_nachlauf_colcon/PB100_ZylinderF2_Target",
		},
	},
});