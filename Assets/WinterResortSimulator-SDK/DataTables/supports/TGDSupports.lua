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

ModLoader.addContent("support", {
	contentName		= "tgd_supports",
	title			= "TGD Support",
	fullDesc		= "Support for a tricable gondola detachable (TGD).",
	class			= ModularSupportKit,

	shafts				= {
		{	height		= 15,	prefab	= "$ropeways/TGD/Stuetzen>Schaft_15"	},
		{	height		= 40,	prefab	= "$ropeways/TGD/Stuetzen>Schaft_40"	},
		{	height		= 60,	prefab	= "$ropeways/TGD/Stuetzen>Schaft_60"	},
	},

	yokes				= {
		{
			name		= "3S_Joch_1",
			variations	= {
				{
					gauge	= 11,
					prefab	= "$ropeways/TGD/Stuetzen>Joch_1",
					leftSheaveIndex		= "0",
					rightSheaveIndex	= "1",
					idleSound			= "TGDSupportSound",
					supportNoLabels		= {
						"Number1/Text",
						"Number2/Text",
						"Number3/Text",
						"Number4/Text",
					},
				}
			}
		},
		{
			name		= "3S_Joch_2",
			variations	= {
				{
					gauge	= 11,
					prefab	= "$ropeways/TGD/Stuetzen>Joch_2",
					leftSheaveIndex		= "0",
					rightSheaveIndex	= "1",
					idleSound			= "TGDSupportSound",
					supportNoLabels		= {
						"z_ausleger_1/Ausleger_1_mesh/Number1/Text",
						"z_ausleger_1/Ausleger_1_mesh/Number2/Text",
						"z_ausleger_2/Ausleger_2_mesh/Number1/Text",
						"z_ausleger_2/Ausleger_2_mesh/Number2/Text",
					},
				}
			}
		},
	},

	sheaveBatteries		= {
		{	prefab		= "$ropeways/TGD/Stuetzen>Tragseilsattel_kurz",		minForce	= 4,	maxForce	= 120,	yoke = "3S_Joch_1"	},
		{	prefab		= "$ropeways/TGD/Stuetzen>Tragseilsattel_lang",		minForce	= 120,	maxForce	= 1200,	yoke = "3S_Joch_2"	},
	},

	sheaveBatteryDetails		= {
		{
			prefab				= "$ropeways/TGD/Stuetzen>Tragseilsattel_kurz",
			mainBalancerIndex	= "0",
			balancers			= {},
			marshallerA			= "0",
			marshallers			= { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11" },
			animated			= {
				{	index		= "Rolle_kurz_01",		axis = 1,	diam	= 0.7,		scale	= -1.0 },
				{	index		= "Rolle_kurz_02",		axis = 1,	diam	= 0.7,		scale	= -1.0 },
			},
		},
		{
			prefab				= "$ropeways/TGD/Stuetzen>Tragseilsattel_lang",
			mainBalancerIndex	= "0",
			balancers			= {},
			marshallerA			= "0",
			marshallers			= { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19" },
			animated			= {
				{	index		= "20",		axis = 1,	diam	= 0.7,		scale	= -1.0 },
				{	index		= "21",		axis = 1,	diam	= 0.7,		scale	= -1.0 },
				{	index		= "22",		axis = 1,	diam	= 0.7,		scale	= -1.0 },
				{	index		= "23",		axis = 1,	diam	= 0.7,		scale	= -1.0 },
				{	index		= "24",		axis = 1,	diam	= 0.7,		scale	= -1.0 },
				{	index		= "25",		axis = 1,	diam	= 0.7,		scale	= -1.0 },
			},
		},
	}
});