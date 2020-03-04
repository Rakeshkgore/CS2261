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

		// Game States
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
    drawFullscreenImage4(startBitmap);
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

	// win if no asteroids and time remaining is greater than 0
	if(asteroidsRemaining == 0 && timeRemaining != 0){

        goToWin();

	}
	// lose if user has collision or time runs out
	if(livesRemaining == 0 || timeRemaining == 0){

		goToLose();

	}
	// press B to go to pause screen
	if(BUTTON_PRESSED(BUTTON_A)){

		goToPause();

	}

}

// sets state to pause and draws Paused on screen
void goToPause(){

	fillScreen4(GRAYS);
	drawString(SCREENWIDTH/2-15, SCREENHEIGHT/2, "PAUSED", BLACKS);
	waitForVBlank();
    flipPage();
	state = PAUSE;

}

// Can press start to start again
void Pause(){

	if(BUTTON_PRESSED(BUTTON_START)){
		
		goToGame();

	}

}

//Fill screen color and sets state to win  and draws victory 
void goToWin(){

	fillScreen4(GREENS);
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

	fillScreen4(REDS);
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