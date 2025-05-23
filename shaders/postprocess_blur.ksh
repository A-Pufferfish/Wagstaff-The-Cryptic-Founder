   postprocess_blur      SAMPLER    +         BLUR_PARAMS                                postprocess_base.vs�   attribute vec3 POSITION;
attribute vec2 TEXCOORD0;

varying vec2 PS_TEXCOORD0;

void main()
{
	gl_Position = vec4( POSITION.xyz, 1.0 );
	PS_TEXCOORD0.xy = TEXCOORD0.xy;
}    postprocess_blur.ps�  #if defined( GL_ES )
precision highp float;
#endif

uniform sampler2D SAMPLER[2];

#define SRC_IMAGE        SAMPLER[0]
#define BLUR_BUFFER	     SAMPLER[1]

varying vec2 PS_TEXCOORD0;

uniform vec4 BLUR_PARAMS;

#define BLUR_CENTER_X		BLUR_PARAMS.x
#define BLUR_CENTER_Y		BLUR_PARAMS.y
#define BLUR_START_RADIUS	BLUR_PARAMS.z
#define BLUR_STENGTH		BLUR_PARAMS.w

void main()
{
	float dist = clamp((distance(PS_TEXCOORD0, vec2(BLUR_CENTER_X, BLUR_CENTER_Y)) - BLUR_START_RADIUS) * BLUR_STENGTH, 0.0, 1.0);

    gl_FragColor = vec4(mix(texture2D(SRC_IMAGE, PS_TEXCOORD0).rgb, texture2D(BLUR_BUFFER, PS_TEXCOORD0).rgb, dist), 1.0);
}

               