
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
#include "trees.h"
#include "furtherTrees.h"
#include "text.h"


OBJ_ATTR shadowOAM[128];

// Button Variables
unsigned short buttons;
unsigned short oldButtons;
unsigned short hOff;
char buffer[50];

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

//Loads the spritesheet tiles/pal into spaces in memory
void initialize(){

	DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    hideSprites(); // hides sprite from showing function
	REG_DISPCTL = MODE0 | SPRITE_ENABLE | MODE4; 
	buttons = BUTTONS;
	goToStart();
	hOff = 0;

}

// Sets state to start and lives to 0
void goToStart(){

    state = START;

} 

//Loads the START background's palette/tiles into space in memory
//If start pressed game begins
//If space pressed instructions show
void Start(){

	REG_DISPCTL = MODE0 | BG1_ENABLE;
	DMANow(3, startPal, PALETTE, startPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, startTiles, &CHARBLOCK[0], startTilesLen/2);
    DMANow(3, startMap, &SCREENBLOCK[31], startMapLen/2);

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

	hideSprites();
	state = GAME;

}

// Enables hidden sprites and loads GAME background
void Game(){
	unsigned short colors[NUMCOLORS] = {BLACK, BLUE, GREEN, RED, WHITE, GRAY};
    for (int i = 0; i < NUMCOLORS; i++) {

        PALETTE[256-NUMCOLORS+i] = colors[i];

    }

	REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    DMANow(3, gameScreenPal, PALETTE, gameScreenPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, gameScreenTiles, &CHARBLOCK[0], gameScreenTilesLen/2);
    DMANow(3, gameScreenMap, &SCREENBLOCK[31], gameScreenMapLen/2);
	sprintf(buffer, "Coins Collected: %d", user.coinsCollected);
	drawString(5,5,buffer,WHITES);


    if(BUTTON_HELD(BUTTON_RIGHT) || BUTTON_PRESSED(BUTTON_RIGHT)) {

        hOff++;
		coin.col--;
    }
	waitForVBlank();

	REG_BG1HOFF  = hOff;
	updateGame();

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

	state = INSTRUCTIONS;

}

void Instructions(){

	REG_DISPCTL = MODE0 | BG1_ENABLE;
    DMANow(3, InstructionScreenPal, PALETTE, InstructionScreenPalLen/2);
	REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, InstructionScreenTiles, &CHARBLOCK[0], InstructionScreenTilesLen/2);
    DMANow(3, InstructionScreenMap, &SCREENBLOCK[31], InstructionScreenMapLen/2);

	if (BUTTON_PRESSED(BUTTON_START)) {
        
		goToGame();

    }
	if (BUTTON_PRESSED(BUTTON_A)) {
        
		goToStart();

    }


}

// sets state to pause
void goToPause(){

	state = PAUSE;

}

//Loads the PAUSE background's palette/tiles into space in memory
//If start pressed game begins again
//IF space is pressed goes to menu
void Pause(){

    REG_DISPCTL = MODE0 | BG1_ENABLE;
	DMANow(3, pauseScreenPal, PALETTE, pauseScreenPalLen/2);
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
	DMANow(3, pauseScreenTiles, &CHARBLOCK[0], pauseScreenTilesLen/2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[31], pauseScreenMapLen/2);

	if(BUTTON_PRESSED(BUTTON_START)){
		
		goToGame();

	}
	if(BUTTON_PRESSED(BUTTON_A)){

		goToStart();

	}

}

//sets state to win
void goToWin(){

	state = WIN;

}

//Loads the WIN background's palette/tiles into space in memory
//If start pressed game goes to menu
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
