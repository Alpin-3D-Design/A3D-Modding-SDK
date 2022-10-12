/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module EntryLaneWaypoint.cs
 *
 * Basic waypoint for ropeway entry lanes
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

public class EntryLaneWaypoint : MonoBehaviour {

	public	EntryLaneWaypoint[] following	= new EntryLaneWaypoint[0];
	public	EntryLaneWaypoint[] prev		= new EntryLaneWaypoint[0];
	public int personsAllowedToPass			= -1; // -1: infinitely many persons

	public float maxApproachSpeed			= 1f;
	public bool exactApproachSpeed			= false;
	public string animationTriggerMove		= "walk";
	public string animationTriggerIdle		= "idle";
	public bool animationShowSkis			= false;
	public bool animationShowSticks			= false;
	[HideInInspector]
	public float flowRatePerSecond			= 0f;
	[HideInInspector]
	public float incomingFlowRate			= 0f;
}