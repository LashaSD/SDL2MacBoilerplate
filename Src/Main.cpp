#include <iostream>
#include <SDL.h>
#include <SDL_image.h>

#include "RenderWindow.hpp"

int main(int argc, char* args[])
{
	if (SDL_Init(SDL_INIT_EVERYTHING) > 0)
		printf("Couldn't Initialize SDL, SDL_ERROR: %s\n", SDL_GetError());

	if (!(IMG_Init(IMG_INIT_PNG)))
		printf("Couldn't initialize SDL_Image, SDL_ERROR %s\n", IMG_GetError());
	
	RenderWindow window("Program V1.0.0", 1280, 720);

	bool appRunning = true;
	SDL_Event e;

	while (appRunning)
	{
		while(SDL_PollEvent(&e))
		{
			if (e.type == SDL_QUIT)
				appRunning = false;
		}
	}
	window.cleanUp();
	SDL_Quit();
	return 0; 
}
