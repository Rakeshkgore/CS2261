#include <stdio.h>
#include <stdlib.h>
#include "myLib.h"
#include "game.h"

#include "startbg.h"
#include "gameScreen.h"
#include "gameScreen2.h"
#include "spritesheet.h"
#include "pauseScreen.h"
#include "winBg.h"
#include "loseBg.h"
#include "instructionbg.h"
#include "spritesheetfinal.h"
#include "sound.h"
#include "letters.h"




OBJ_ATTR shadowOAM[128];

// Button Variables
unsigned short buttons;
unsigned short oldButtons;
unsigned short hOff;


// My States
int state;
enum {START,INSTRUCTIONS, GAME, PAUSE, WIN, LOSE};


SOUND soundA;
SOUND soundB;
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

		
	    setupSounds();
        setupInterrupts();

		

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

	goToStart();

}

void goToStart(){
	//playsound here 
	//playSoundA(startsound, STARTSOUNDLEN - 79000,STARTSOUNDFREQ, 1);
	hOff = 0;
	REG_DISPCTL = MODE0 | BG1_ENABLE;
	DMANow(3, startbgPal, PALETTE, startbgPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, startbgTiles, &CHARBLOCK[0], startbgTilesLen/2);
    DMANow(3, startbgMap, &SCREENBLOCK[31], startbgMapLen/2);
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

	REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE | BG0_ENABLE; //BG2_ENABLE;

    DMANow(3, gameScreenPal, PALETTE, gameScreenPalLen/2);
	
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, gameScreenTiles, &CHARBLOCK[0], gameScreenTilesLen/2);
    DMANow(3, gameScreenMap, &SCREENBLOCK[31], gameScreenMapLen/2);

	REG_BG0CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    DMANow(3, gameScreen2Tiles, &CHARBLOCK[1], gameScreen2TilesLen/2);
    DMANow(3, gameScreen2Map, &SCREENBLOCK[29], gameScreen2MapLen/2);
	
	//REG_BG2CNT = BG_SIZE_SMALL | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);
	//DMANow(3, lettersTiles, &CHARBLOCK[2], lettersTilesLen/2);
    //DMANow(3, lettersMap, &SCREENBLOCK[27], lettersMapLen/2)

	DMANow(3, spritesheetfinalPal, SPRITEPALETTE, spritesheetfinalPalLen/2);
    DMANow(3, spritesheetfinalTiles, &CHARBLOCK[4], spritesheetfinalTilesLen/2);

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
	if(lives == 0){

		goToLose();

	}
	if(user.coinsCollected == 3){
		
		goToWin();
	}


}

void goToInstructions(){
	
	hOff = 0;
    REG_BG1HOFF = hOff;
	REG_DISPCTL = MODE0 | BG1_ENABLE;
    DMANow(3, instructionbgPal, PALETTE, instructionbgPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, instructionbgTiles, &CHARBLOCK[0], instructionbgTilesLen/2);
    DMANow(3, instructionbgMap, &SCREENBLOCK[31], instructionbgMapLen/2);

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
	
	hOff = 0;
    REG_BG1HOFF = hOff;
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
	hOff = 0;
    REG_BG1HOFF = hOff;
	REG_DISPCTL = MODE0 | BG1_ENABLE;
	DMANow(3, winBgPal, PALETTE, winBgPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, winBgTiles, &CHARBLOCK[0], winBgTilesLen/2);
    DMANow(3, winBgMap, &SCREENBLOCK[31], winBgMapLen/2);
	state = WIN;

}

void Win(){
    
    if (BUTTON_PRESSED(BUTTON_START)) {

        goToStart();

    }

}

// sets state to lose
void goToLose(){
	hOff = 0;
    REG_BG1HOFF = hOff;
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    DMANow(3, loseBgPal, PALETTE, loseBgPalLen/2);
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, loseBgTiles, &CHARBLOCK[0], loseBgTilesLen/2);
    DMANow(3, loseBgMap, &SCREENBLOCK[31], loseBgMapLen/2);
	state = LOSE;

}

void Lose(){

    if (BUTTON_PRESSED(BUTTON_START)) {

        goToStart();

    }

}



