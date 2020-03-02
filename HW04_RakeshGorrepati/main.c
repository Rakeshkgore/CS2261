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
enum {START, GAME, PAUSE, WIN, LOSE};

// Prototypes
void initialize();
void goToStart();
void goToGame();
void goToWin();
void goToLose();
void goToPause();
void Start();
void Game();
void Win();
void Lose();
void Pause();

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
		case PAUSE:
			Pause();
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
	drawString(5,5,buffer,WHITES);
    waitForVBlank();
    flipPage();


	if(asteroidsRemaining == 0){

        goToWin();

	}
	if(livesRemaining == 0 || timeRemaining == 0){

		goToLose();

	}
	if(BUTTON_PRESSED(BUTTON_B)){

		goToPause();

	}


}

void goToPause(){

	fillScreen(GRAYS);
	drawString(SCREENWIDTH/2-15, SCREENHEIGHT/2, "VICTORY", BLACKS);
	waitForVBlank();
    flipPage();
	state = PAUSE;

}

void Pause(){

	if(BUTTON_PRESSED(BUTTON_START)){
		
		goToGame();

	}

}

//Fill screen color and sets state to win
void goToWin(){

	fillScreen(GREENS);
	drawString(SCREENWIDTH/2-15, SCREENHEIGHT/2, "VICTORY", BLACKS);
	waitForVBlank();
    flipPage();
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

	fillScreen(REDS);
	drawString(SCREENWIDTH/2-15, SCREENHEIGHT/2, "DEFEATED", BLACKS);
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