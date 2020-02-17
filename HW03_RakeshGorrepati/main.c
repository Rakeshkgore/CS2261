#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// My States
int state;
enum {START, GAME, WIN, LOSE};

// Prototypes
void initialize();
void goToStart();
void goToGame();
void goToGame();
void goToWin();
void goToLose();
void Start();
void Game();
void Win();
void Lose();


int seed;

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
		case WIN:
			Win();
			break;
		case LOSE:
			Lose();
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
	srand(seed);

} 

void Start(){
	seed++;
	if(BUTTON_PRESSED(BUTTON_START)) {

		goToGame();
		initializeGame();

	}
} 

void goToGame(){

	fillScreen(GAMECOLOR);
	state = GAME;
	srand(seed);

}

void Game(){

	updateGame();
	waitForVBlank();
	drawGame();
	//game will end if either asteroids is 0 or if user collides with target
	if(asteroidsRemaining == 0 || reachedTarget == 0){

		goToWin();

	}
	if(livesRemaining == 0){

		goToLose();
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

void goToLose(){

	fillScreen(LOSECOLOR);
	state = LOSE;
}

void Lose(){

	if(BUTTON_PRESSED(BUTTON_START)){

        goToStart();
    }

}