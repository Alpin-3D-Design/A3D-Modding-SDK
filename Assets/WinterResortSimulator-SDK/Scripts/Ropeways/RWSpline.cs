/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module RWSpline.cs
 *
 * Point-based ropeway spline module, which also takes into
 * account speed and drive assignments.
 *
 *
 * Copyright (C) HR Innoways GmbH. All Rights Reserved.
 *
 * Please view the license file in the root directory. All scripts
 * contained in the Winter Resort Simulator Modding SDK may only be
 * used as specified in that license file.
 *
 */

using System.Collections.Generic;
using UnityEngine;
using System;

[Serializable]
public class RWDrvAssgn {
	public	float					speedScale0			= 1.0f;
	public	float					speedScale1			= 1.0f;
	public	float					posBegin			= 0.0f;
	public	float					posEnd				= 1.0f;
	public	bool					engaged				{	get	{ return _engaged && drive != null && drive.engaged;	}	set	{	_engaged	= value;	}	}		// drive engaged?
	public	float					inclination			{	get	{ return _inclination;	}
		set {
			_inclination			= value;
		}
	}
	
	private bool					_engaged			= true; // spline engaged?
	[HideInInspector]
	public	float					_inclination		= 0f;	// track inclination (causes gravity on carriers if drive is not engaged)
	[HideInInspector]
	public	float					_gravity			= 0f;	// gravity to be applied to carriers by inclination
	
	public	RWDrive					drive;
}

public class RWSpline : MonoBehaviour {
	public class AnimatedPartRail {
		public float position0, position1;
		public float value0, value1;
		public string channel;
		public int type;
	}
	
	
	public	Vector3[]				points				= new Vector3[] { new Vector3(0f, 0f, -1f), new Vector3(0f, 0f, 1f) };
	public	float[]					segmentLengths		= new float[1] { 2.0f };
	public	float[]					cumulativeLength	= new float[1] { 2.0f };
	public	float					splineLength		= 2.0f;
	
	public	RWSpline[]				nextSplines			= new RWSpline[0];
	public	RWSpline[]				prevSplines			= new RWSpline[0];

	public AnimatedPartRail[]		rails				= new AnimatedPartRail[0];
	
	public	List<RWDrvAssgn>		drives				= new List<RWDrvAssgn>();
}