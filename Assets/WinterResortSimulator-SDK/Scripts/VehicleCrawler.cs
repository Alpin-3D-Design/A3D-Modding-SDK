/*
 *
 * Winter Resort Simulator - Modding SDK
 * Module VehicleCrawler.cs
 *
 * Script responsible for animating vehicle crawlers
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

[RequireComponent(typeof(MeshRenderer))]
public class VehicleCrawler : MonoBehaviour {

	[Serializable]
	public struct CrawlerWheel {
		public Transform wheel;
		public float diameter;
		public bool randomStartPosition;
	}

	public CrawlerWheel[] wheels	= new CrawlerWheel[0];
	public Vector3 boundsCenter;
	public Vector3 boundsSize;
	public float totalCrawlerLength = 9.668f;
	
	public void ApplyBounds() {
		MeshFilter filter			= GetComponent<MeshFilter>();
		Bounds bounds				= filter.sharedMesh.bounds;
		bounds.center				= boundsCenter;
		bounds.size					= boundsSize;
		filter.sharedMesh.bounds	= bounds;
	}
}
