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
	contentName				= "MarmottaSnowfox",
	title					= "$shop_snowfox_title",
	fullDesc				= "$shop_snowfox_desc",
	techSpecs				= "$shop_snowfox_specs",
	previewFilename			= "$vehicles/snowMobiles/snowfox",
	logoFilename			= "$logos/marmotta",

	author					= "HR Innoways",
	shopCategory			= "slopeMachinery",
	price					= 19900,
	length					= 3.3,
	width					= 1.5,
	depreciationPeriod		= 30,
	
	class					= Vehicle,
	prefab					= "$vehicles/snowfox",
	vehicleScripts			= {
		Seats,
		VehicleMotor,
		FuelTank,
		VehicleLighting,
		WarningSound,
		--AnimatedParts,
	},

	massCenter				= Vector3:new(0, 0.10, 0.15),		-- ursprünglich 0,0.15,0.15  (0.336)

	maxRpm					= 7250,
	maxSpeed				= 80,
	wheelRadius				= 0.25,

	maxBrakeTorque			= 1200,
	parkingBrakeTorque		= 800,

	steeringAngle			= 30,		-- urpünglich 30
	steeringWheelIndex		= "LOD_0/Lenkrad/Lenkrad_symm_1",
	steeringWheelAngle		= 30,
	steeringWheelAxis		= 2,
	steeringAnimationIndex	= "",		-- animation at root node

	rpmPointerIndex			= "LOD_0/Zeiger_2",
	rpmPointerMaxAngle		= -236.394,

	speedPointerIndex		= "LOD_0/Zeiger_1",
	speedPointerMaxAngle	= -233.5,

	fuelUsagePerHour		= 4,
	fuelUsagePer100Km		= 50,
	fuelTankCapacity		= 45,

	axles					= {
		{
			motor			= 0,
			useABS			= false,
			brake			= false,
			steeringScale	= 1,
			leftWheelIndex	= "Wheels/WheelFrontLeft",
			rightWheelIndex	= "Wheels/WheelFrontRight",
		},
		{
			motor			= 1,
			useABS			= false,
			brake			= true,
			steeringScale	= 0,
			leftWheelIndex	= "Wheels/WheelRearLeft",
			rightWheelIndex	= "Wheels/WheelRearRight",
		},
	},

	gears					= { -3.23, 3.23, 1.98, },  --ursprünglich -3.23, 3.23, 1.98
	gearLabels				= { "R",   "1",  "2", },
	motorFinalDriveRatio	= 3.60,

	motorMaxRpm				= 6200,  -- ursprünglich 6200
	motorInertiaMoment		= 0.3, -- ursprünglich 0.2
	
	motorTorqueCurve		= {
		{	rpm	= 1500,		torque	=  90	},
		{	rpm	= 2000,		torque	= 140	},
		{	rpm	= 5000,		torque	= 140	},
		{	rpm	= 5500,		torque	= 120	},
		{	rpm	= 6000,		torque	=   0	},
	},

	automaticDrive			= true,
	automaticLowerLimitRpm	= 2200,
	automaticUpperLimitRpm	= 4500,
	automaticGearSwitchPace	= 0.3,

	seats					= {
		{	index			= "SeatCol",		cameraIndex	= "InteriorCamera",		leaveIndex	= "LeaveNode",	isDriver	= true	},
	},
	cameras					= {
		{	slot			= 2,	index	= "Cameras/ExterieurCameraRoot/Camera",	rotIndex	= "Cameras/ExterieurCameraRoot",		zoomIndex	= "Cameras/ExterieurCameraRoot/Camera" },
		{	slot			= 3,	index	= "Cameras/ExterieurCamera11"	},
		{	slot			= 3,	index	= "Cameras/ExterieurCamera12"	},
		{	slot			= 4,	index	= "Cameras/ExterieurCamera21"	},
		{	slot			= 4,	index	= "Cameras/ExterieurCamera22"	},
		{	slot			= 4,	index	= "Cameras/ExterieurCamera23"	},
		{	slot			= 4,	index	= "Cameras/ExterieurCamera24"	},
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

		warningSound			= {	
			prefab			= "$sounds/Pistenbully/PB_beep",
			volume = 1,
			enabledByKey 		= true,
			enableReverse 		= false,
		},

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
			{
				prefab			= "$sounds/SkiDoo/SkiDoo_load",
				minPitch		= 0.6,
				maxPitch		= 3,

				--baseRpm			= 800,
				pitchOffset		= 1,
				pitchScale		= 0.025/100,
				
				interieurLowpass		= 0.2,
				exterieurLowpass        = 0.2,
				
				minVolume		= 0.65,
				maxVolume		= 0.75,

				minFadeOutRpm	= 650,
				maxFadeOutRpm	= 800,

				fadeOutSpeed	= 0.05,

				--pitchOffset		= 0,
				--pitchScale		= 1,
				--volumeScale		= 1,
			},
			{
				prefab			= "$sounds/SkiDoo/SkiDoo_run",
				minPitch		= 0.6,
				maxPitch		= 2,

				--baseRpm			= 800,
				pitchOffset		= 0.9,
				pitchScale		= 0.017/100,

				interieurLowpass		= 0.25,
				exterieurLowpass        = 0.25,
				
				minVolume		= 0.1,
				maxVolume		= 0.8,

				minFadeInRpm	= 570,
				maxFadeInRpm	= 600,

				fadeInSpeed		= 0.1,

				--pitchOffset		= 0,
				--pitchScale		= 1,
				--volumeScale		= 1,
			},
			{
				prefab			= "$sounds/SkiDoo/SkiDoo_load",
				minPitch		= 0.6,
				maxPitch		= 2,

				--baseRpm			= 800,
				pitchOffset		= 1,
				pitchScale		= 0.018/100,

				interieurLowpass		= 0.25,
				exterieurLowpass        = 0.25,
				
				--minVolume		= 0.0,
				minVolume		= 0.6,
				--maxVolume		= 0.0,
				maxVolume		= 0.65,

				minFadeInRpm	= 570,
				maxFadeInRpm	= 600,

				fadeInSpeed		= 0.3,

				--pitchOffset		= 0,
				--pitchScale		= 1,
				--volumeScale		= 1,
			},
		},
		motorLoad			= {
			prefab			= "$sounds/SkiDoo/SkiDoo_load",
			minPitch		= 0.7,
			maxPitch		= 3,

			--baseRpm			= 1800,
			pitchOffset 	= 0.45,
			pitchScale		= 0.03/100,

			--minVolume		= 0.3,
			minVolume		= 0.0,
			--maxVolume		= 0.55,
			maxVolume		= 0.0,
			
			-- Volume/Second
			fadeInSpeed		= 0.25,
			fadeOutSpeed	= 0.1,
		},
		motorStart			= {
			prefab			= "$sounds/SkiDoo/SkiDoo_start",
		},
		motorStop			= {
			prefab			= "$sounds/SkiDoo/SkiDoo_stop",
		},
	},
	lights					= {
		headlights			= {
			"LOD_0/Scheinwerfer_on",
			"LOD_0/Reflektor_on",
		},
		headlightsInverse	= {
			"LOD_0/Scheinwerfer",
			"LOD_0/Reflektor_1",
		},

		brakelights			= { "LOD_0/BrakeLight" },
		--reverselights			= { "RealisticCar04_HD_Lights/Car04_Lights_Reverse" },
		--leftIndicator			= { "RealisticCar04_HD_Lights/Car04_Lights_TurnLeft" },
		--rightIndicator		= { "RealisticCar04_HD_Lights/Car04_Lights_TurnRight" },
	},
});