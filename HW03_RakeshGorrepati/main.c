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

// the random seed
int seed;

int main() {

	// initliazing function
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

// Fills color for Start State
void goToStart(){

	fillScreen(STARTCOLOR);
	state = START;
	srand(seed);

} 

// If start is pressed goes to Game state
// Increments seed
void Start(){
	seed++;
	if(BUTTON_PRESSED(BUTTON_START)) {

		goToGame();
		initializeGame();

	}
} 

// Fills color to Game state & Sets state to Game
void goToGame(){

	fillScreen(GAMECOLOR);
	state = GAME;

}

// Main state where game file/logic is called
void Game(){

	updateGame();
	waitForVBlank();
	drawGame();
	//game will end if either asteroids is 0 or if user collides with target
	if(asteroidsRemaining == 0 || reachedTarget == 0){

		goToWin();

	}
	// If user either collided with asteroids or moving rectangles then game is over
	if(livesRemaining == 0){

		goToLose();

	}
}

//Fill screen color and sets state to win
void goToWin(){

	fillScreen(WINCOLOR);
	state = WIN;

}

// After winning if start is pressed then restarts at gotostart
void Win(){

	if(BUTTON_PRESSED(BUTTON_START)){
		
		goToStart();

	}

}

// Fills screen to the Lose state and sets state to LOSE
void goToLose(){

	fillScreen(LOSECOLOR);
	state = LOSE;
}

//Lose state where you can restart game by pressing start
void Lose(){

	if(BUTTON_PRESSED(BUTTON_START)){

        goToStart();
    }

}