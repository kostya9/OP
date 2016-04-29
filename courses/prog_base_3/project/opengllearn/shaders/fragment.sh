#version 330 core

in vec2 out_textureCoordinates;
in vec3 surfaceNormal;
in vec3 toLightVector;

out vec4 out_Color;

uniform sampler2D textureSampler;
uniform vec3 lightColor;
uniform float alpha;

void main(void)
{
	float ambientStrength = 0.2f; // HARDCODED GENERAL LIGHT
    vec3 ambient = ambientStrength * lightColor;

	vec3 unitNormal = normalize(surfaceNormal); 
	vec3 unitLightVector = normalize(toLightVector); 
	
	float nDot = dot(unitNormal, unitLightVector);
	float brigtness = max(nDot, 0.0);
	vec3 diffuse = brigtness * lightColor;
	out_Color = vec4(ambient + diffuse, alpha) * texture(textureSampler, out_textureCoordinates);

}