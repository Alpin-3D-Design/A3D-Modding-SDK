/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module RWSound.cs
 *
 * Sound module for RWDrive
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

public class RWSound : MonoBehaviour {
	
	private	AudioSource				_mainAudio; // must be this gameObject's AudioSource
	public	AudioSource				startAudio;
	public	AudioSource				stopAudio;
	
	public	RWDrive					drive;
	
	public	float					speed0				= 0.5f;
	public	float					speed1				= 5f;
	public	float					volume0				= 0.4f;
	public	float					volume1				= 1f;
	public	float					maxVolumeChange		= 10f;	// minimum blend duration 100 ms
	
	public	float					pitch0				= 0.4f;
	public	float					pitch1				= 1f;
	
	public	float					minSpeed			= 1e-3f;
	
}