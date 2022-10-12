/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module LuaAsset.cs
 *
 * Necessary to make lua scripts work within Unity.
 *
 *
 * Copyright (C) HR Innoways GmbH. All Rights Reserved.
 *
 * Please view the license file in the root directory. All scripts
 * contained in the Winter Resort Simulator Modding SDK may only be
 * used as specified in that license file.
 *
 */

using System;
using UnityEngine;

[Serializable]
public class LuaAsset : ScriptableObject {
	public string text;
	public string rawFilename;
	
	public LuaAsset(string content) {
		text = content;
	}
}