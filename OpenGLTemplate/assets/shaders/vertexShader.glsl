#version 330 core
layout (location = 0) in vec2 aPos;  
layout (location = 1) in vec4 aColor; 

uniform vec2 center;
uniform float zoom;
uniform float pointSize; 

out vec4 color;

void main() {
    vec2 pos = (aPos - center) * zoom;
    gl_Position = vec4(pos, 0.0, 1.0);
    color = aColor;
    gl_PointSize = pointSize;  
}
