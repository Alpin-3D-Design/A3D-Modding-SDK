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
	contentName				= "MarmottaHazard",
	title					= "$shop_hazard_title",
	fullDesc				= "$shop_hazard_desc",
	techSpecs				= "$shop_hazard_specs",
	previewFilename			= "$vehicles/cars/pickup",
	logoFilename			= "$logos/marmotta",

	author					= "HR Innoways",
	shopCategory			= "vehicles",
	price					= 42000,
	length					= 5.95,
	width					= 2.61,
	depreciationPeriod		= 40,
	
	class					= Vehicle,
	prefab					= "$vehicles/RealisticCar04",
	vehicleScripts			= {
		Seats,
		VehicleMotor,
		FuelTank,
		VehicleLighting,
		AnimatedParts,
	},

	massCenter				= Vector3:new(0, 0.5, 0.7),

	maxRpm					= 7000,
	maxSpeed				= 120,
	wheelRadius				= 0.47,

	maxBrakeTorque			= 4500,
	parkingBrakeTorque		= 2000,

	steeringAngle			= 30,
	steeringWheelIndex		= "RealisticCar04_HD_Complete/Car04_Interior/Car04_Interior_SteeringWheel",
	steeringWheelAngle		= -450,
	steeringWheelAxis		= 3,

	rpmPointerIndex			= "RealisticCar04_HD_Complete/Car04_Interior/Car04_Interior_rpmPointer",
	rpmPointerMaxAngle		= -236.394,

	speedPointerIndex		= "RealisticCar04_HD_Complete/Car04_Interior/Car04_Interior_SpeedPointer",
	speedPointerMaxAngle	= -233.5,

	fuelUsagePerHour		= 4,
	fuelUsagePer100Km		= 50,
	fuelTankCapacity		= 60,

	axles					= {
		{
			motor			= 1,
			brake			= true,
			steeringScale	= 1,
			leftWheelIndex	= "WheelsHubs/WheelHubFrontLeft",
			rightWheelIndex	= "WheelsHubs/WheelHubFrontRight",
			leftWheelCaliper	= "RealisticCar04_HD_Complete/Car04_BrakeCaliper_Front_Left",
			rightWheelCaliper	= "RealisticCar04_HD_Complete/Car04_BrakeCaliper_Front_Right",
		},
		{
			motor			= 1,
			brake			= true,
			steeringScale	= 0,
			leftWheelIndex	= "WheelsHubs/WheelHubRearLeft",
			rightWheelIndex	= "WheelsHubs/WheelHubRearRight",
			leftWheelCaliper	= "RealisticCar04_HD_Complete/Car04_BrakeCaliper_Rear_Left",
			rightWheelCaliper	= "RealisticCar04_HD_Complete/Car04_BrakeCaliper_Rear_Right",
		},
	},

	gears					= { -4.87, 4.8, 2.9, 1.8, 1.4, 1.1, 0.85, },
	gearLabels				= { "R",   "1",  "2",  "3",  "4",  "5",  "6", },
	motorFinalDriveRatio	= 4.00,

	motorMaxRpm				= 4400,
	motorInertiaMoment		= 0.5,
	motorTorqueCurve		= {
		{	rpm	=  300,		torque	= 200	},
		{	rpm	=  400,		torque	= 300	},
		{	rpm	=  800,		torque	= 450	},
		{	rpm	= 3000,		torque	= 420	},
		{	rpm	= 4000,		torque	= 350	},
		{	rpm	= 5000,		torque	=   0	},
	},

	automaticDrive			= true,
	automaticLowerLimitRpm	= 1500,
	automaticUpperLimitRpm	= 3500,
	automaticGearSwitchPace	= 0.3,

	exhaustParticleSystems	= {
		{	index			= "LeftExhaustNode",		particleSystem	= "$vehicles/particles/ExhaustHeat"	},
		{	index			= "RightExhaustNode",		particleSystem	= "$vehicles/particles/ExhaustHeat"	},
	},

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

		-- motor sounds
		motorConfiguration	= {
			minRunFadeRpm			= 1000,
			maxRunFadeRpm			= 3000,
			minRunFadeSpeed			= 5,
			maxRunFadeSpeed			= 20,
			interieurVolumeScale    = 0.1,
			interieurLowpass        = 0.4,
		},
		motorIdle			= {
			prefab			= "$sounds/pickup/pickup_idle",
			minPitch		= 1,
			maxPitch		= 3,

			interieurVolumeScale    = 0.7,
			interieurLowpass        = 0.4,

			--baseRpm			= 800,
			pitchOffset		= 1,
			pitchScale		= 0.04/100,
			
			minVolume		= 1,
			maxVolume		= 1,

			--pitchOffset		= 0,
			--pitchScale		= 1,
			--volumeScale	= 1,
		},
		motorLoad			= {
			prefab			= "$VehiclePhysics/Audio/Induction/turbo_2",
			minPitch		= 0.5,
			maxPitch		= 3,

			interieurVolumeScale    = 0.7,
			interieurLowpass        = 0.4,

			minFadeInRpm	= 1800,
			maxFadeInRpm	= 2000,

			--baseRpm			= 1800,
			pitchOffset 	= 0.8,
			pitchScale		= 0.07/100,

			minVolume		= 0.01,
			maxVolume		= 0.013,
			
			-- Volume/Second
			fadeInSpeed		= 0.03,
			fadeOutSpeed	= 0.05,
		},
		motorStart			= {
			prefab			= "$sounds/pickup/pickup_start",
		},
		motorStop			= {
			prefab			= "$sounds/pickup/pickup_stop",
		},
	},

	lights					= {
		headlights			= {
			"RealisticCar04_HD_Lights/Car04_Lights_BackLight",
		},
		lowBeam				= {
			"RealisticCar04_HD_Lights/Car04_Lights_DayLight",
		},
		highBeam			= {
			"RealisticCar04_HD_Lights/Car04_Lights_Headlight",
			"RealisticCar04_HD_Lights/Car04_Lights_DayLight2",				
		},
		brakelights			= { "RealisticCar04_HD_Lights/Car04_Lights_BrakeLight" },
		reverselights		= { "RealisticCar04_HD_Lights/Car04_Lights_Reverse" },
		leftIndicator		= { "RealisticCar04_HD_Lights/Car04_Lights_TurnLeft" },
		rightIndicator		= { "RealisticCar04_HD_Lights/Car04_Lights_TurnRight" },
	},

	seats					= {
		{	index			= "SeatColliders/Car04_Body_CollisionMesh07a",		cameraIndex	= "InteriorCamera",		leaveIndex	= "LeaveNode",	isDriver	= true	},
		{	index			= "SeatColliders/Car04_Body_CollisionMesh07b",		cameraIndex	= "InteriorCamera2",	leaveIndex	= "LeaveNode2",	isDriver	= false	},
	},
	cameras					= {
		{	slot			= 2,	index	= "SeatColliders/ExterieurCameraRoot/Camera",	rotIndex	= "SeatColliders/ExterieurCameraRoot",		zoomIndex	= "SeatColliders/ExterieurCameraRoot/Camera" },
		{	slot			= 3,	index	= "SeatColliders/ExterieurCamera11"	},
		{	slot			= 3,	index	= "SeatColliders/ExterieurCamera12"	},
		{	slot			= 3,	index	= "SeatColliders/ExterieurCamera13"	},
		{	slot			= 3,	index	= "SeatColliders/ExterieurCamera14"	},
		{	slot			= 4,	index	= "SeatColliders/ExterieurCamera21"	},
		{	slot			= 4,	index	= "SeatColliders/ExterieurCamera22"	},
		{	slot			= 4,	index	= "SeatColliders/ExterieurCamera23"	},
		{	slot			= 4,	index	= "SeatColliders/ExterieurCamera24"	},
	},

	animatedParts			= {
		{
			index			= "RealisticCar04_HD_Complete/Car04_Body/Car04_Door_Front_Left",
			collision		= "RealisticCar04_HD_Complete/Car04_Body/Car04_Door_Front_Left/Car04_Body_CollisionMesh01e_door1",
			textOn			= "$doorOpen",
			textOff			= "$doorClose",
			defaultState	= false,
			onEnterState	= false,
		},
		{
			index			= "RealisticCar04_HD_Complete/Car04_Body/Car04_Door_Front_Right",
			collision		= "RealisticCar04_HD_Complete/Car04_Body/Car04_Door_Front_Right/Car04_Body_CollisionMesh01e_door2",
			textOn			= "$doorOpen",
			textOff			= "$doorClose",
			defaultState	= false,
			onEnterState	= false,
		},
		{
			index			= "RealisticCar04_HD_Complete/Car04_Body/Car04_Door_Back",
			collision		= "RealisticCar04_HD_Complete/Car04_Body/Car04_Door_Back/Car04_Door_Back_Collider",
			textOn			= "$doorOpen",
			textOff			= "$doorClose",
			defaultState	= false,
			onEnterState	= false,
		},
	},
});