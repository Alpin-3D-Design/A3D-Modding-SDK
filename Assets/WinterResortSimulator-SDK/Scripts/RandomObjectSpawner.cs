/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module RandomObjectSpawner.cs
 *
 * Randomly (according to a given probability) spawns an object
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

public class RandomObjectSpawner : MonoBehaviour {
	public GameObject[] prefabs;
	public float spawnProbability		= 1.0f;
}