/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module RandomColorizer.cs
 *
 * Applies a random color to the object.
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

public class RandomColorizer : MonoBehaviour {

	[Serializable]
	public struct ColorCombination {
		public Color ColorR;
		public Color ColorG;
		public Color ColorB;
	}
	public Renderer[]			recolorRenderers;
	public ColorCombination[]	instanceColors;
}