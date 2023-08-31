#pragma once

#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>

class Window {
public:
    void initialise(), update(), destroy();
    bool shouldClose();
private:
    GLFWwindow* window;
};