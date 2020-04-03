
#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include <stdio.h>
#include "bgStart.h"
#include "gameScreen.h"
#include "spritesheet.h"
#include "pauseScreen.h"
#include "winScreen.h"
#include "loseScreen.h"

OBJ_ATTR shadowOAM[128];

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

//Loads the spritesheet tiles/pal into spaces in memory
void initialize(){

	DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    hideSprites(); // hides sprite from showing function
	REG_DISPCTL = MODE0 | SPRITE_ENABLE; 
	initializeSnake();
	buttons = BUTTONS;
	goToStart();

}

// Sets state to start and lives to 0
void goToStart(){

	seed = 0;
	lives = 0;
    state = START;

} 

//Loads the START background's palette/tiles into space in memory
//If start pressed game begins
void Start(){

	seed++;

	REG_DISPCTL = MODE0 | BG1_ENABLE;
	DMANow(3, bgStartPal, PALETTE, bgStartPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, bgStartTiles, &CHARBLOCK[0], bgStartTilesLen/2);
    DMANow(3, bgStartMap, &SCREENBLOCK[31], bgStartMapLen/2);

	for (int i = 0; i < 128; i++) {

        shadowOAM[i].attr0 = 0;
        shadowOAM[i].attr1 = 0;
        shadowOAM[i].attr2 = 0;

    }

	DMANow(3, shadowOAM, OAM, 128 * 4);

    if (BUTTON_PRESSED(BUTTON_START)) {

        srand(seed);
        initializeGame();
        goToGame(); 

    }

} 

// goes to game state
void goToGame(){

	hideSprites();
	state = GAME;

}

// Enables hidden sprites and loads GAME background
void Game(){

	REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    DMANow(3, gameScreenPal, PALETTE, gameScreenPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, gameScreenTiles, &CHARBLOCK[0], gameScreenTilesLen/2);
    DMANow(3, gameScreenMap, &SCREENBLOCK[31], gameScreenMapLen/2);

	updateGame();

	if (BUTTON_PRESSED(BUTTON_START)) {
        
		goToPause();

    }
	//Game ends WIN
    if (snake.applesCollected == 10) {

        goToWin();

    }
	//Game ends LOSE
    if (lives) {

        goToLose();

    }



}

// sets state to pause
void goToPause(){

	state = PAUSE;

}

//Loads the PAUSE background's palette/tiles into space in memory
//If start pressed game begins again
void Pause(){

    REG_DISPCTL = MODE0 | BG1_ENABLE;
	DMANow(3, pauseScreenPal, PALETTE, pauseScreenPalLen/2);
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, pauseScreenTiles, &CHARBLOCK[0], pauseScreenTilesLen/2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[31], pauseScreenMapLen/2);

	if(BUTTON_PRESSED(BUTTON_START)){
		
		goToGame();

	}

}

//sets state to win
void goToWin(){

	state = WIN;

}

//Loads the WIN background's palette/tiles into space in memory
//If start pressed game begins again
void Win(){

	REG_DISPCTL = MODE0 | BG1_ENABLE;
	DMANow(3, winScreenPal, PALETTE, winScreenPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, winScreenTiles, &CHARBLOCK[0], winScreenTilesLen/2);
    DMANow(3, winScreenMap, &SCREENBLOCK[31], winScreenMapLen/2);
    
    if (BUTTON_PRESSED(BUTTON_START)) {

        goToStart();

    }

}

// sets state to lose
void goToLose(){


	state = LOSE;
}

//Loads the LOSE background's palette/tiles into space in memory
//If start pressed game begins
void Lose(){

    REG_DISPCTL = MODE0 | BG1_ENABLE;
    DMANow(3, loseScreenPal, PALETTE, loseScreenPalLen/2);
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, loseScreenTiles, &CHARBLOCK[0], loseScreenTilesLen/2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[31], loseScreenMapLen/2);

    if (BUTTON_PRESSED(BUTTON_START)) {

        goToStart();

    }

}
