#version 130

uniform mat4 Matrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

in vec3 in_position;

in vec4 in_color;
out vec4 pass_color;

in vec2 s_vTexCoord;
out vec2 texCoord;

void main(){
    gl_Position = Matrix*viewMatrix*modelMatrix*vec4(in_position,1.0); 
  	pass_color=in_color;
	texCoord = s_vTexCoord;
}
