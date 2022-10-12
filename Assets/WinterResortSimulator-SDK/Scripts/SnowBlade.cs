/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module SnowBlade.cs
 *
 * Add this to your snowcat blade to make it interact with snow
 *
 *
 * Copyright (C) HR Innoways GmbH. All Rights Reserved.
 *
 * Please view the license file in the root directory. All scripts
 * contained in the Winter Resort Simulator Modding SDK may only be
 * used as specified in that license file.
 *
 */

using UnityEngine;

public class SnowBlade : MonoBehaviour {

	public Transform left;
	public Transform right;
	[HideInInspector]
	public float accumulatedSnow			= 0f;
	public float maxPushHeight				= 2.0f;
	public float maxPushDistance			= 3f;
	public float maxPushImpactDistance		= 10f;
	public float edgeAngle					= 0.15f;
}