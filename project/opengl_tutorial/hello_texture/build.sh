#!/bin/bash

g++ -o test main.cpp glad.c Shader.cpp -lglfw3 -lGL -lm -lXrandr -lXi -lX11 -lXxf86vm -lpthread -ldl -lXinerama -lXcursor