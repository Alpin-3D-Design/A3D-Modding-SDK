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
	contentName				= "MarmottaGigaSnow100",
	title					= "$shop_gigasnow100_title",
	fullDesc				= "$shop_gigasnow100_desc",
	techSpecs				= "$shop_gigasnow100_specs",
	previewFilename			= "$vehicles/snowCannons/GigaSnow100",
	logoFilename			= "$logos/marmotta",
	
	author					= "HR Innoways",
	shopCategory			= "snowmaking",
	price					= 35000,
	depreciationPeriod		= 80,
	
	class					= Vehicle,
	prefab					= "$vehicles/snowCannon01",
	vehicleScripts			= {
		SnowCannon,
		Attachable,
	},

	massCenter				= Vector3:new(0, 0.6, 0),

	axles					= { },

	slaveAttachers			= {
		{
			index			= "cannon/Attacher",
			type			= "SnowCannon",
		},
	},

	isPlaceable				= true,

	snowCannons				= {
		{
			snowSpawnIndex	= "cannon/turbine/SnowCannonParticles/ParticleSystem",
			propellerIndex	= "cannon/turbine/propeller",
			propellerSpeed	= 70,
			controlIndex	= "cannon",
			cameraIndex		= "cannon/turbine/Camera",
			idleSound		= "$sounds/snowCannonIdle",
			rotX			= {
				index		= "cannon/turbine",
				min			= -2,
				max			= 35,
			},
			rotY			= {
				index		= "cannon",
				min			= -10e8,
				max			= 10e8,
				attachValue	= 180,
			},
			particleSystems	= { "cannon/turbine/SnowCannonParticles/ParticleSystem/Snow_Particles_Main", "cannon/turbine/SnowCannonParticles/ParticleSystem/Snow_Particles_Near" },
		},
	},
});