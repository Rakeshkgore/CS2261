
#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include <stdio.h>
#include "start.h"
#include "gameScreen.h"
#include "spritesheet.h"
#include "pauseScreen.h"
#include "winScreen.h"
#include "loseScreen.h"
#include "InstructionScreen.h"




OBJ_ATTR shadowOAM[128];

// Button Variables
unsigned short buttons;
unsigned short oldButtons;
unsigned short hOff;


// My States
int state;
enum {START,INSTRUCTIONS, GAME, PAUSE, WIN, LOSE};

// Prototypes
void initialize();
void goToStart();
void goToGame();
void goToWin();
void goToLose();
void goToPause();
void goToInstructions();
void Start();
void Game();
void Win();
void Lose();
void Pause();
void Instructions();


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
		case INSTRUCTIONS:
			Instructions();
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

	DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    hideSprites();
	REG_DISPCTL = MODE0 | SPRITE_ENABLE; 
	buttons = BUTTONS;
	hOff = 0;
	REG_BG1HOFF  = hOff;
	goToStart();

}

void goToStart(){
	
	REG_DISPCTL = MODE0 | BG1_ENABLE;
	DMANow(3, startPal, PALETTE, startPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, startTiles, &CHARBLOCK[0], startTilesLen/2);
    DMANow(3, startMap, &SCREENBLOCK[31], startMapLen/2);
    state = START;

} 

void Start(){

	for (int i = 0; i < 128; i++) {

        shadowOAM[i].attr0 = 0;
        shadowOAM[i].attr1 = 0;
        shadowOAM[i].attr2 = 0;

    }

	DMANow(3, shadowOAM, OAM, 128 * 4);

    if (BUTTON_PRESSED(BUTTON_START)) {
		
        goToGame();
		initializeGame();


    }
	if(BUTTON_PRESSED(BUTTON_A)){

		goToInstructions();

	}

} 

// goes to game state
void goToGame(){

	REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    DMANow(3, gameScreenPal, PALETTE, gameScreenPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, gameScreenTiles, &CHARBLOCK[0], gameScreenTilesLen/2);
    DMANow(3, gameScreenMap, &SCREENBLOCK[31], gameScreenMapLen/2);
	hideSprites();
	state = GAME;

}

void Game(){

	// mode 0 program flow is always as follows:
	updateGame();
	drawGame();
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 512);

	if (BUTTON_PRESSED(BUTTON_START)) {
        
		goToPause();

    }
	if(lives){

		goToLose();
	}
	if(user.coinsCollected == 3){
		
		goToWin();
	}


}

void goToInstructions(){

	REG_DISPCTL = MODE0 | BG1_ENABLE;
    DMANow(3, InstructionScreenPal, PALETTE, InstructionScreenPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, InstructionScreenTiles, &CHARBLOCK[0], InstructionScreenTilesLen/2);
    DMANow(3, InstructionScreenMap, &SCREENBLOCK[31], InstructionScreenMapLen/2);

	state = INSTRUCTIONS;

}

void Instructions(){

	if (BUTTON_PRESSED(BUTTON_START)) {
        
		initializeGame();
		goToGame(); 
		

    }
	if (BUTTON_PRESSED(BUTTON_A)) {
        
		goToStart();

    }


}

void goToPause(){
    REG_DISPCTL = MODE0 | BG1_ENABLE;
	DMANow(3, pauseScreenPal, PALETTE, pauseScreenPalLen/2);
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, pauseScreenTiles, &CHARBLOCK[0], pauseScreenTilesLen/2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[31], pauseScreenMapLen/2);
	state = PAUSE;
	
}

void Pause(){


	if(BUTTON_PRESSED(BUTTON_START)){
		
		goToGame();

	}
	if(BUTTON_PRESSED(BUTTON_A)){

		goToStart();

	}

}

void goToWin(){

	REG_DISPCTL = MODE0 | BG1_ENABLE;
	DMANow(3, winScreenPal, PALETTE, winScreenPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, winScreenTiles, &CHARBLOCK[0], winScreenTilesLen/2);
    DMANow(3, winScreenMap, &SCREENBLOCK[31], winScreenMapLen/2);
	state = WIN;

}

void Win(){
    
    if (BUTTON_PRESSED(BUTTON_START)) {

        goToStart();

    }

}

// sets state to lose
void goToLose(){

    REG_DISPCTL = MODE0 | BG1_ENABLE;
    DMANow(3, loseScreenPal, PALETTE, loseScreenPalLen/2);
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, loseScreenTiles, &CHARBLOCK[0], loseScreenTilesLen/2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[31], loseScreenMapLen/2);
	state = LOSE;

}

void Lose(){

    if (BUTTON_PRESSED(BUTTON_START)) {

        goToStart();

    }

}



