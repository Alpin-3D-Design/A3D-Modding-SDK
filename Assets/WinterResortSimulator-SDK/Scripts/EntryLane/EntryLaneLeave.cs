/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module EntryLaneLeave.cs
 *
 * Entry lane point to leave a carrier.
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

public class EntryLaneLeave : EntryLaneWaypoint {
	public RWSpline targetSpline;
	public float regionBegin;
	public float regionEnd = 1.0f;
	public int carrierSeatId;
	public bool teleportLeave		= false;
}