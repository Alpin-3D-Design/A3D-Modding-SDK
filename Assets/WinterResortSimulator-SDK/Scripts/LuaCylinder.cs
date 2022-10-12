/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module LuaCylinder.cs
 *
 * Makes a cylinder always fit to its target.
 * Apply this component to the cylinder and assign
 * the piston and target transforms.
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

public class LuaCylinder : MonoBehaviour {

	public Transform piston;
	public Transform target;

	void LateUpdate() {
		if (transform.position == target.position) {
			Debug.LogError("Error in Cylinder Animator: Cylinder '" + gameObject.name + "' has no valid target (position of cylinder is equal to target position)");
			return;
		}
		
		transform.rotation			= Quaternion.LookRotation(target.position-transform.position, Vector3.up);
		piston.position				= target.position;
	}
}