/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module EntryLaneEnter.cs
 *
 * Entry lane point to enter a carrier.
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

public class EntryLaneEnter : EntryLaneWaypoint {
	public RWSpline targetSpline;
	public float regionBegin;
	public float regionEnd = 1.0f;
	public int carrierSeatId;
}