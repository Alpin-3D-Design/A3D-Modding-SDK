/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module RWDrive.cs
 *
 * Script for a ropeway drive.
 * Make sure to assign this only to custom drives, but not
 * to the ropeway's main drive.
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
public struct AnimatedRWPart {
	public Transform transform;
	public float scale;
	public int axis;
}

[Serializable]
public class RWDrive : MonoBehaviour {
	// important for splines: engage state
	public	bool					engaged				= true;
	
	// mechanical limits
	public	float					maxSpeed			= 6.0f;		// maximum target output speed in [m/s]
	[HideInInspector]
	public	float					brakeDec			= 0f;		// additional brake deceleration in [m/s]
	// animated parts
	public List<AnimatedRWPart>		animatedParts		= new List<AnimatedRWPart>();
}