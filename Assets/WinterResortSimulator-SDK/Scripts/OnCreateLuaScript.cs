/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module OnCreateLuaScript.cs
 *
 * Executes the attached code when the object is spawned.
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

public class OnCreateLuaScript : MonoBehaviour {
	
	[TextArea(3,10)]
	public	string			luaScript	= "";
	public	bool			isEnabled	= true;
}
