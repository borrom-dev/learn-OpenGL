#version 330 core

#define POSITION    0
#define COLOR       3
#define TEX_COORD   4

layout (location = POSITION) in vec3 aPos;
layout (location = TEX_COORD) in vec2 aTexCoord;

uniform mat4 transform;

out vec2 texCoord;

void main()
{
    gl_Position = transform * vec4(aPos, 1.0);
    texCoord = aTexCoord;
}