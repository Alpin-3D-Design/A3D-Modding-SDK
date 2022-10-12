/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module VehicleFloor.cs
 *
 * Add this to your vehicle to make it interact with snow.
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

public class VehicleFloor : MonoBehaviour {
	
	public Transform a;
	public Transform b;
	public Transform c;
	public Transform d;

	public float dontReduceBelow	= 0f;
}