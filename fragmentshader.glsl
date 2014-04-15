#version 130

in vec4 pass_color;

in vec2 texCoord;
uniform sampler2D texture;

void main(){
	gl_FragColor = pass_color*texture2D(texture,texCoord);
}
