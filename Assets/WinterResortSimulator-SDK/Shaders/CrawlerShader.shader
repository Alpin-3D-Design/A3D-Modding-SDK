// Upgrade NOTE: upgraded instancing buffer 'Props' to new syntax.

Shader "Custom/CrawlerShader" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Glossiness ("Smoothness", Range(0,1)) = 0.5
		_Metallic ("Metallic", Range(0,1)) = 0.0
		_CrawlerOffset ("Crawler Offset", float) = 0

		_CrawlerRadius ("Crawler Radius", float) = 0.358
		_CrawlerR1 ("Crawler Back Axle Radius", float) = 0.17
		_CrawlerL3 ("Crawler Back Axle Distance y", float) = 0.14274
		_CrawlerL1 ("Crawler Back Axle Distance z", float) = -0.79268
		_CrawlerL2 ("Crawler Length on Ground", float) = 3.25817
		_CrawlerR2 ("Crawler Lay Down Radius", float) = 0.3
		
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
		
		float _CrawlerRadius;
		float _CrawlerL1;
		float _CrawlerL2;
		float _CrawlerL3;
		float _CrawlerR1;
		float _CrawlerR2;

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
			
			float alpha = atan2(_CrawlerL3, -_CrawlerL1) + asin((_CrawlerRadius - _CrawlerR1)/ sqrt(pow(-_CrawlerL1,2) + pow(_CrawlerL3,2)));
			float psi 	= acos((_CrawlerR2 + _CrawlerRadius - _CrawlerL3) / (_CrawlerR1 + _CrawlerR2));
		
			float L1 = -_CrawlerL1 + _CrawlerL2 - (_CrawlerR1 + _CrawlerR2) * sin(psi);
			float L2 = PI * _CrawlerRadius;
			float L3 = _CrawlerL2;
			float L4 = alpha * _CrawlerRadius;
			float L5 = sqrt(pow(-_CrawlerL1, 2) + pow(_CrawlerL3, 2) - pow(_CrawlerRadius - _CrawlerR1, 2));
			float L6 = (PI- alpha + psi) * _CrawlerR1;
			float L7 = _CrawlerR2 * psi;

			float crawlerLength = L1 + L2 + L3 + L4 + L5 + L6 + L7;

			v.vertex.z %= crawlerLength;
							
			if (v.vertex.z <= L2) { 										// front wheel
				float localZ = v.vertex.z;
				float angle = localZ / _CrawlerRadius;

				// bend it
				v.vertex.z = v.vertex.y * sin(angle);
				v.vertex.y = v.vertex.y * cos(angle);

				// adjust normals
				float3 normal = v.normal;
				v.normal.y = normal.y * cos(angle) - normal.z * sin(angle);
				v.normal.z = normal.y * sin(angle) + normal.z * cos(angle);

				// adjust tangents
				float3 tangent = v.normal;
				v.tangent.y = tangent.y * cos(angle) - tangent.z * sin(angle);
				v.tangent.z = tangent.y * sin(angle) + tangent.z * cos(angle);

			} else if (v.vertex.z <= L2 + L3) { 							// lowerside horizontal
				float localZ = v.vertex.z - L2;

				// flip
				v.vertex.y = -v.vertex.y;
				v.vertex.z = - localZ;

				// adjust normals
				v.normal.y *= -1;
				v.normal.z *= -1;

				// and tangents
				v.tangent.y *= -1;
				v.tangent.z *= -1;

			} else if (v.vertex.z <= L2 + L3 + L4) { 						// lower Radius backside
				float localZ = v.vertex.z - L2 - L3;
				float angle = localZ / _CrawlerRadius + PI;

				// bend it
				v.vertex.z = v.vertex.y * sin(angle) - L3;
				v.vertex.y = v.vertex.y * cos(angle);

				// adjust normals
				float3 normal = v.normal;
				v.normal.y = normal.y * cos(angle) - normal.z * sin(angle);
				v.normal.z = normal.y * sin(angle) + normal.z * cos(angle);

				// adjust tangents
				float3 tangent = v.normal;
				v.tangent.y = tangent.y * cos(angle) - tangent.z * sin(angle);
				v.tangent.z = tangent.y * sin(angle) + tangent.z * cos(angle);

			} else if (v.vertex.z <= L2 + L3 + L4 + L5) { 					// diagonal upwards backside
				float localZ = v.vertex.z - L2 - L3 - L4;
				float angle = alpha + PI;

				// bend it
				v.vertex.z = v.vertex.y * sin(angle) + localZ * cos(angle) - L3;
				v.vertex.y = v.vertex.y * cos(angle) - localZ * sin(angle);

				// adjust normals
				float3 normal = v.normal;
				v.normal.y = normal.y * cos(angle) - normal.z * sin(angle);
				v.normal.z = normal.y * sin(angle) + normal.z * cos(angle);

				// adjust tangents
				float3 tangent = v.normal;
				v.tangent.y = tangent.y * cos(angle) - tangent.z * sin(angle);
				v.tangent.z = tangent.y * sin(angle) + tangent.z * cos(angle);

			} else if (v.vertex.z <= L2 + L3 + L4 + L5 + L6) { 				// upper Radius backside
				float localZ = v.vertex.z - L2 - L3 - L4 - L5;
				float angle = localZ / _CrawlerR1 + alpha + PI;
				float deltaR = _CrawlerRadius - _CrawlerR1;

				// bend it
				v.vertex.z = (v.vertex.y - deltaR) * sin(angle) + _CrawlerL1 - L3;
				v.vertex.y = (v.vertex.y - deltaR) * cos(angle) + _CrawlerL3;

				// adjust normals
				float3 normal = v.normal;
				v.normal.y = normal.y * cos(angle) - normal.z * sin(angle);
				v.normal.z = normal.y * sin(angle) + normal.z * cos(angle);

				// adjust tangents
				float3 tangent = v.normal;
				v.tangent.y = tangent.y * cos(angle) - tangent.z * sin(angle);
				v.tangent.z = tangent.y * sin(angle) + tangent.z * cos(angle);

			} else if (v.vertex.z <= L2 + L3 + L4 + L5 + L6 + L7){			// Lay Down Radius
				float localZ = v.vertex.z - L2 - L3 - L4 - L5 - L6;
				float angle = psi -  localZ/_CrawlerR2;

				// bend it
				v.vertex.z = (v.vertex.y - _CrawlerRadius - _CrawlerR2) * sin(angle) - L1;
				v.vertex.y = (v.vertex.y - _CrawlerRadius - _CrawlerR2) * cos(angle) + _CrawlerRadius + _CrawlerR2;

				// adjust normals
				float3 normal = v.normal;
				v.normal.y = normal.y * cos(angle) - normal.z * sin(angle);
				v.normal.z = normal.y * sin(angle) + normal.z * cos(angle);

				// adjust tangents
				float3 tangent = v.normal;
				v.tangent.y = tangent.y * cos(angle) - tangent.z * sin(angle);
				v.tangent.z = tangent.y * sin(angle) + tangent.z * cos(angle);

			} else if (v.vertex.z <= L2 + L3 + L4 + L5 + L6 + L7 + L1 || v.vertex.z> crawlerLength) {// upperside horizontal and overfill
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