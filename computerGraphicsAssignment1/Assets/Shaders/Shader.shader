Shader "Custom/Shader"
{
    Properties
    {
        _myColor ("Color", Color) = (1,1,1,1)
        _myEmision ("Emission", Color) = (1,1,1,0)
    }
    SubShader
    {
        CGPROGRAM
        // Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf Lambert

        // Use shader model 3.0 target, to get nicer looking lighting

        sampler2D _MainTex;

        struct Input
        {
            float2 uv_MainTex;
        };

        fixed4 _myColor;
        fixed4 _myEmission;

        void surf (Input IN, inout SurfaceOutput o)
        {   
            //default
            o.Albedo = _myColor.rgb;
            o.Emission = _myEmission.rgb;

            /*challenge 1
                o.Albedo = fixed3(0, 0, _myColor.b);
                o.Emission = fixed3(0, 0, _myEmission.b);*/

            /*challenge 2
                o.Albedo = fixed3(_myColor.r, _myColor.g, max(_myColor.b, 0.1));
                o.Emission = fixed3(_myColor.r, _myColor.g, max(_myColor.b, 0.1));
            */

        }
        ENDCG
    }
    FallBack "Diffuse"
}
