// Upgrade NOTE: upgraded instancing buffer 'Props' to new syntax.

Shader "HR Shaders/Snowmobile CrawlerShader" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Glossiness ("Smoothness", Range(0,1)) = 0.5
		_Metallic ("Metallic", Range(0,1)) = 0.0
		_CrawlerOffset ("Crawler Offset", float) = 0

		_CrawlerR1 ("Crawler Radius 1", float) = 0.08
		_CrawlerPhi1 ("Crawler Angle 1", float) = 133.29
		_CrawlerY1 ("Crawler Wheel 1 Distance y", float) = -.08
		_CrawlerZ1 ("Crawler Wheel 1 Distance z", float) = 0

		_CrawlerR2 ("Crawler Radius 2", float) = 0.822
		//_CrawlerPhi2 ("Crawler Angle 2", float) = 0.14274
		_CrawlerY2 ("Crawler Wheel 2 Distance y", float) = 0.4148
		_CrawlerZ2 ("Crawler Wheel 2 Distance z", float) = -0.518

		//_CrawlerL3 ("Crawler Length 3", float) = 1

		_CrawlerR4 ("Crawler Radius 4", float) = 1.75
		_CrawlerPhi4 ("Crawler Angle 4", float) = 9.3
		_CrawlerY4 ("Crawler Wheel 4 Distance y", float) = 1.36558
		_CrawlerZ4 ("Crawler Wheel 4 Distance z", float) = -1.32813

		_CrawlerR5 ("Crawler Radius 5", float) = 0.08
		_CrawlerPhi5 ("Crawler Angle 5", float) = 155
		_CrawlerY5 ("Crawler Wheel 5 Distance y", float) = -0.284799
		_CrawlerZ5 ("Crawler Wheel 5 Distance z", float) = -1.59413

		//_CrawlerL6 ("Crawler Length 6", float) = 12

		_CrawlerR7 ("Crawler Radius 7", float) = 0.08
		//_CrawlerPhi7 ("Crawler Angle 7", float) = 0.14274
		_CrawlerY7 ("Crawler Wheel 7 Distance y", float) = -.08
		_CrawlerZ7 ("Crawler Wheel 7 Distance z", float) = -1.035

		//_CrawlerL8 ("Crawler Length 8", float) = 1
			
		// still missing: Metallic Map, Normal Map, (Height Map?), Occlusion
		_MetallicTex ("Metallic (RGB)", 2D) = "white" {}
		_OcclusionTex ("Occlusion (RGB)", 2D) = "white" {}
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200

		CGPROGRAM
		// use standard lighting model
		// shadows on all light types shall be enabled
		#pragma vertex vert
		#pragma surface surf Standard fullforwardshadows addshadow

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;
		sampler2D _MetallicTex;
		sampler2D _OcclusionTex;

		struct Input {
			float2 uv_MainTex : TEXCOORD0;
		};

		half _Glossiness;
		half _Metallic;
		fixed4 _Color;
		
		float _CrawlerR1;
		float _CrawlerPhi1;
		float _CrawlerY1;
		float _CrawlerZ1;

		float _CrawlerR2;
		//float _CrawlerPhi2;
		float _CrawlerY2;
		float _CrawlerZ2;

		//float L3;

		float _CrawlerR4;
		float _CrawlerPhi4;
		float _CrawlerY4;
		float _CrawlerZ4;

		float _CrawlerR5;
		float _CrawlerPhi5;
		float _CrawlerY5;
		float _CrawlerZ5;

		//float _CrawlerL6;

		float _CrawlerR7;
		//float _CrawlerPhi7;
		float _CrawlerY7;
		float _CrawlerZ7;

		//float _CrawlerL8;

		// instancing support
		UNITY_INSTANCING_BUFFER_START(Props)
			UNITY_DEFINE_INSTANCED_PROP(float, _CrawlerOffset)
		UNITY_INSTANCING_BUFFER_END(Props)

		void vert (inout appdata_full v) {
			
			// access instanced properties
			UNITY_SETUP_INSTANCE_ID(v);
			float crawlerOffset = UNITY_ACCESS_INSTANCED_PROP(Props, _CrawlerOffset);
			
			v.vertex.z += crawlerOffset;
			
			float PI = 3.14159265;
			
			//float alpha = atan2(_CrawlerL3, -_CrawlerL1) + asin((_CrawlerRadius - _CrawlerR1)/ sqrt(pow(-_CrawlerL1,2) + pow(_CrawlerL3,2)));
			//float psi 	= acos((_CrawlerR2 + _CrawlerRadius - _CrawlerL3) / (_CrawlerR1 + _CrawlerR2));
		
			float Psi1 = _CrawlerPhi1/180 * PI;
			float Psi2 = PI - Psi1;

			float Psi4 = _CrawlerPhi4/180 * PI;
			float Psi5 = _CrawlerPhi5/180 * PI;

			float Psi7 = PI - Psi4 - Psi5;

			float L1 = Psi1 * _CrawlerR1;
			float L2 = Psi2 * _CrawlerR2;
			float L3 = abs(_CrawlerZ2 - _CrawlerZ4);
			float L4 = Psi4 * _CrawlerR4;
			float L5 = Psi5 * _CrawlerR5;
			float L6 = sqrt(pow(_CrawlerY7 - _CrawlerY5, 2) + pow(_CrawlerZ7 - _CrawlerZ5, 2) + pow(_CrawlerR7 - _CrawlerR5, 2));
			float L7 = Psi7 * _CrawlerR7;
			float L8 = abs(_CrawlerZ1 - _CrawlerZ7);

			float crawlerLength = L1 + L2 + L3 + L4 + L5 + L6 + L7 + L8;

			v.vertex.z %= crawlerLength;
							
			if (v.vertex.z <= L1) { 										// 1
				float localZ = v.vertex.z;
				float angle = localZ / _CrawlerR1;

				// bend it
				v.vertex.z = (v.vertex.y + _CrawlerR1) * sin(angle) + _CrawlerZ1;
				v.vertex.y = (v.vertex.y + _CrawlerR1) * cos(angle) + _CrawlerY1;

				// adjust normals
				float3 normal = v.normal;
				v.normal.y = normal.y * cos(angle) - normal.z * sin(angle);
				v.normal.z = normal.y * sin(angle) + normal.z * cos(angle);

				// adjust tangents
				float3 tangent = v.normal;
				v.tangent.y = tangent.y * cos(angle) - tangent.z * sin(angle);
				v.tangent.z = tangent.y * sin(angle) + tangent.z * cos(angle);

			} else if (v.vertex.z <= L1 + L2) { 							// 2
				float localZ = v.vertex.z - L1;
				float angle = localZ / _CrawlerR2 + Psi1;

				// bend it
				v.vertex.z = (v.vertex.y + _CrawlerR2) * sin(angle) + _CrawlerZ2;
				v.vertex.y = (v.vertex.y + _CrawlerR2) * cos(angle) + _CrawlerY2;

				// adjust normals
				float3 normal = v.normal;
				v.normal.y = normal.y * cos(angle) - normal.z * sin(angle);
				v.normal.z = normal.y * sin(angle) + normal.z * cos(angle);

				// adjust tangents
				float3 tangent = v.normal;
				v.tangent.y = tangent.y * cos(angle) - tangent.z * sin(angle);
				v.tangent.z = tangent.y * sin(angle) + tangent.z * cos(angle);
			
			} else if (v.vertex.z <= L1 + L2 + L3) { 						// 3
				float localZ = v.vertex.z - L1 - L2;

				// flip
				v.vertex.y = -v.vertex.y - _CrawlerR2 + _CrawlerY2;
				v.vertex.z = - localZ + _CrawlerZ2;

				// adjust normals
				v.normal.y *= -1;
				v.normal.z *= -1;

				// and tangents
				v.tangent.y *= -1;
				v.tangent.z *= -1;

			} else if (v.vertex.z <= L1 + L2 + L3 + L4) { 					// 4
				float localZ = v.vertex.z - L1 - L2 - L3;
				float angle = localZ / _CrawlerR4 + PI;

				// bend it
				v.vertex.z = (v.vertex.y + _CrawlerR4) * sin(angle) + _CrawlerZ4;
				v.vertex.y = (v.vertex.y + _CrawlerR4) * cos(angle) + _CrawlerY4;

				// adjust normals
				float3 normal = v.normal;
				v.normal.y = normal.y * cos(angle) - normal.z * sin(angle);
				v.normal.z = normal.y * sin(angle) + normal.z * cos(angle);

				// adjust tangents
				float3 tangent = v.normal;
				v.tangent.y = tangent.y * cos(angle) - tangent.z * sin(angle);
				v.tangent.z = tangent.y * sin(angle) + tangent.z * cos(angle);
			} else if (v.vertex.z <= L1 + L2 + L3 + L4 + L5) { 				// 5
				float localZ = v.vertex.z - L1 - L2 - L3 - L4;
				float angle = localZ / _CrawlerR5 + PI + Psi4;

				// bend it
				v.vertex.z = (v.vertex.y + _CrawlerR5) * sin(angle) + _CrawlerZ5;
				v.vertex.y = (v.vertex.y + _CrawlerR5) * cos(angle) + _CrawlerY5;

				// adjust normals
				float3 normal = v.normal;
				v.normal.y = normal.y * cos(angle) - normal.z * sin(angle);
				v.normal.z = normal.y * sin(angle) + normal.z * cos(angle);

				// adjust tangents
				float3 tangent = v.normal;
				v.tangent.y = tangent.y * cos(angle) - tangent.z * sin(angle);
				v.tangent.z = tangent.y * sin(angle) + tangent.z * cos(angle);

			} else if (v.vertex.z <= L1 + L2 + L3 + L4 + L5 + L6) { 		// 6
				float localZ = v.vertex.z - L1 - L2 - L3 - L4 - L5;
				float angle = Psi4 + Psi5 + PI;

				// bend it
				v.vertex.z = (v.vertex.y + _CrawlerR5) * sin(angle) + localZ * cos(angle) + _CrawlerZ5;
				v.vertex.y = (v.vertex.y + _CrawlerR5) * cos(angle) - localZ * sin(angle) + _CrawlerY5;

				// adjust normals
				float3 normal = v.normal;
				v.normal.y = normal.y * cos(angle) - normal.z * sin(angle);
				v.normal.z = normal.y * sin(angle) + normal.z * cos(angle);

				// adjust tangents
				float3 tangent = v.normal;
				v.tangent.y = tangent.y * cos(angle) - tangent.z * sin(angle);
				v.tangent.z = tangent.y * sin(angle) + tangent.z * cos(angle);
			} else if (v.vertex.z <= L1 + L2 + L3 + L4 + L5 + L6 + L7) {	// 7
				float localZ = v.vertex.z - L1 - L2 - L3 - L4 - L5 - L6;
				float angle = localZ/_CrawlerR7 + Psi4 + Psi5 + PI;

				// bend it
				v.vertex.z = (v.vertex.y + _CrawlerR7) * sin(angle) + _CrawlerZ7;
				v.vertex.y = (v.vertex.y + _CrawlerR7) * cos(angle) + _CrawlerY7;

				// adjust normals
				float3 normal = v.normal;
				v.normal.y = normal.y * cos(angle) - normal.z * sin(angle);
				v.normal.z = normal.y * sin(angle) + normal.z * cos(angle);

				// adjust tangents
				float3 tangent = v.normal;
				v.tangent.y = tangent.y * cos(angle) - tangent.z * sin(angle);
				v.tangent.z = tangent.y * sin(angle) + tangent.z * cos(angle);

			} else if (v.vertex.z <= L1 + L2 + L3 + L4 + L5 + L6 + L7 + L8 || v.vertex.z> crawlerLength) {// upperside horizontal and overfill
				v.vertex.z -= crawlerLength;
			}
		}	

		void surf (Input IN, inout SurfaceOutputStandard o) {
		
			fixed4 tex = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			fixed4 occ = tex2D(_OcclusionTex, IN.uv_MainTex);
			o.Albedo = tex.rgb * occ.rgb;
			
			float metallicMapValue = tex2D (_MetallicTex, IN.uv_MainTex);
			o.Metallic = metallicMapValue * _Metallic;
			o.Smoothness = metallicMapValue * _Glossiness;
			o.Alpha = tex.a;
		}
		ENDCG
	}
}