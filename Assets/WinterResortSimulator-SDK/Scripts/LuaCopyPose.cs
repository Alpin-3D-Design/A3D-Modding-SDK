/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module LuaCopyPose.cs
 *
 * Copies the pose from another transform every frame.
 * Can be helpful for some bone animations.
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

public class LuaCopyPose : MonoBehaviour {

	public Transform copyFrom;
	
	void Start() {
		if (!copyFrom)
			Destroy(this);
	}

	void LateUpdate() {
		transform.position			= copyFrom.position;
		transform.rotation			= copyFrom.rotation;
	}
}