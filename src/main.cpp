#include <memory>
#include "window.h"

int main(void)
{   
    // Pointer is deleted when it goes out of scope
    std::unique_ptr<Window> window = std::make_unique<Window>();

    window->initialise();

    while (!window->shouldClose())
    {
        window->update();
    }

    window->destroy();
    
    return 0;
}