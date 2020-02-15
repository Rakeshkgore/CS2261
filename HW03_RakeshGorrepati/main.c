#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// My States
int state;
enum {START, GAME, PAUSE, WIN, LOSE, QUIT};

// Prototypes
void initialize();
void goToStart();
void goToGame();
void goToPause();
void goToWin();
void goToLose();
void goToQuit();
void Start();
void Game();
void Pause();
void Win();
void Lose();
void Quit();

int main() {

	initialize();

	while (1)
	{
		oldButtons = buttons;
		buttons = BUTTONS;

		// My Game's State Machine
		switch (state)
		{
		case START:
			Start();
			break;
		case GAME:
			Game();
			break;
		case PAUSE:
			Pause();
			break;
		case WIN:
			Win();
			break;
		case LOSE:
			Lose();
			break;
		case QUIT:
			Quit();
			break;

		default:
			break;
		}
	}

}

void initialize(){

	REG_DISPCTL = MODE3 | BG2_ENABLE;
	goToStart();

}

void goToStart(){

	fillScreen(STARTCOLOR);
	state = START;

} 

void Start(){

	if(BUTTON_PRESSED(BUTTON_START)) {

		goToGame();
		initializeGame();

	}
} 

void goToGame(){

	fillScreen(GAMECOLOR);
	state = GAME;

}

void Game(){

	updateGame();
	waitForVBlank();
	drawGame();
	if(BUTTON_PRESSED(BUTTON_START)){

		goToPause();

	}
	if(asteroidsRemaining == 0){

		goToWin();

	}
	if(BUTTON_PRESSED(BUTTON_B)){
		
		goToQuit();

	}
}

void goToPause(){

	fillScreen(PAUSECOLOR);
	state = PAUSE;

}

void Pause(){
	if(BUTTON_PRESSED(BUTTON_START)){

		goToGame();

	}
	if(BUTTON_PRESSED(BUTTON_B)){

		goToQuit();

	}
}

void goToWin(){

	fillScreen(WINCOLOR);
	state = WIN;

}

void Win(){

	if(BUTTON_PRESSED(BUTTON_START)){
		
		goToStart();

	}

}

void goToQuit(){

	fillScreen(QUITCOLOR);
	state = QUIT;

}

void Quit(){

	if(BUTTON_PRESSED(BUTTON_START)){

		goToStart();

	}
}