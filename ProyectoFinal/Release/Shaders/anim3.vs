#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

const float amplitude = 1.3;
const float PI = 3.14159;
out vec2 TexCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform float time;

void main()
{
  float distance = length(aNormal);
  float effect = amplitude*sin(time);
  float effect2 = amplitude*sin(time+PI/2); 
  gl_Position = projection*view*model*vec4(aPos.x+effect,aPos.y, aPos.z+effect2,1);
  TexCoords=vec2(aTexCoords.x,aTexCoords.y);
}