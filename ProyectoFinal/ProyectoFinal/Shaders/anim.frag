#version 330 core
out vec4 FragColor;
in vec2 TexCoords;
uniform sampler2D texture1;
uniform float trans;
void main()
{
 
  vec4 texColor= vec4(trans)*texture(texture1,TexCoords);
    if(texColor.a < 0.1)
        discard;
    FragColor = texColor;

}