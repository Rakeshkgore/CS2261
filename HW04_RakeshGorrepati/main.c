#include <stdlib.h>
#include "myLib.h"
#include "text.h"
#include "game.h"
#include "start.h"
#include <stdio.h>

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

// Random Seed
int seed;
char buffer[50];
int main() {

	// initliazing function
	initialize();

	while (1)
	{
		oldButtons = buttons;
		buttons = BUTTONS;

		// states
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

    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

	goToStart();

}

// Fills color for Start State
void goToStart(){

    DMANow(3,startPal,PALETTE,startPalLen);
    drawFullscreenImage(startBitmap);
    waitForVBlank();
    flipPage();

    state = START;

} 

// If start is pressed go to GAME
void Start(){

	seed++;
	waitForVBlank();

	if(BUTTON_PRESSED(BUTTON_START)) {

		srand(seed);
		goToGame();
		initializeGame();

	}
} 

// goes to game state
void goToGame(){

	state = GAME;

}

// game state
void Game(){

	updateGame();
	drawGame();
	sprintf(buffer, "Time Remaining: %d", timeRemaining);
	drawString(5,145,buffer,WHITEID);
	
    waitForVBlank();
    flipPage();


	if (asteroidsRemaining == 0 || reachedTarget == 0){
        goToWin();
	}
	if(livesRemaining == 0 || timeRemaining == 0){

		goToLose();
	}


}

//Fill screen color and sets state to win
void goToWin(){

	fillScreen(GREENID);
	state = WIN;

}

// After winning if start is pressed then restarts at gotostart
void Win(){

	if(BUTTON_PRESSED(BUTTON_START)){
		
		goToStart();

	}

}

// sets state to lose
void goToLose(){

	fillScreen(REDID);
	drawString(100, 50, "LOSE", BLACKID);
	waitForVBlank();
    flipPage();
	state = LOSE;
}

//Lose state, can restart game by pressing start
void Lose(){

	if(BUTTON_PRESSED(BUTTON_START)){

        goToStart();
    }

}