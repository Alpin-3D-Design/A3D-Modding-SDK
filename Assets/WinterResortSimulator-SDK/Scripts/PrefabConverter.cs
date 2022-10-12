/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module PrefabConverter.cs
 *
 * Not required for mods (you can delete the component without issues).
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


public class PrefabConverter : MonoBehaviour {

	[HideInInspector]
	public string			templateName;
	[HideInInspector]
	public bool				disabled	= true;
}