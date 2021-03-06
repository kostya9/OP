#version 330 core

in vec3 position;
in vec2 textureCoordinates;
in vec3 normal;	
in vec4 color;

out vec2 out_textureCoordinates;
out vec3 surfaceNormal;
out vec3 toLightVector;
out vec3 toCameraVector;

uniform mat4 transformationMatrix;
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform vec3 lightPosition;
uniform bool shake;
uniform float time;

void main(void)
{
	vec4 worldPosition = transformationMatrix * vec4(position, 1.0);
	gl_Position = projectionMatrix * viewMatrix * worldPosition;
	out_textureCoordinates = textureCoordinates;
	surfaceNormal =  mat3(transpose(inverse(transformationMatrix))) * normal; ;
	toLightVector =  (lightPosition - worldPosition.xyz);
	if(shake)
	{
		float strength = 0.02;
		gl_Position.x += cos(time * 10) * strength;
		gl_Position.y += cos(time * 15) * strength;
	}
	//toCameraVector = (inverse(viewMatrix) * vec4(0.0,0.0,0.0,1.0)).xyz - worldPosition.xyz;
}