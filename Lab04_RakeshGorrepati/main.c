#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Prototypes
void initialize();

// State Prototypes
// TODO 1.2: Add your state and state transition function prototypes here
void goToStart();
void Start();
void goToGame();
void Game();
void goToPause();
void Pause();
void goToWin();
void Win();
void goToLose();
void Lose();

// States
enum {START, GAME, PAUSE, WIN, LOSE};
int state;


// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;
                
        // State Machine
        // TODO 1.0: Make the state machine here
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

// Sets up GBA
void initialize() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;

    // TODO 1.3: Call your goToStart function here
    goToStart();

}

// TODO 1.1: Make your state and state transition functions
void goToStart() {

    fillScreen(CYAN);
    state = START;
    srand(seed);
}
void Start() {

    seed++;
    if(BUTTON_PRESSED(BUTTON_START)){
        goToGame();
        initGame();
    }
}

void goToGame() {

    fillScreen(BLACK);
    state = GAME;
}

void Game() {
    updateGame();
    waitForVBlank();
    drawGame();
    if(BUTTON_PRESSED(BUTTON_START)){
        goToPause();
    }
    if(ballsRemaining == 0){
        goToWin();
    }
     if(BUTTON_PRESSED(BUTTON_B)){
        goToLose();
    }
}

void goToPause() {
    
    fillScreen(GRAY);
    state = PAUSE;

}
void Pause() {

    if(BUTTON_PRESSED(BUTTON_START)){
        goToGame();
    }
    if(BUTTON_PRESSED(BUTTON_SELECT)){
        goToStart();
    }
}

void goToWin() {

    fillScreen(GREEN);
    state = WIN;
}
void Win() {

    if(BUTTON_PRESSED(BUTTON_START)){
        goToStart();
    }

}

void goToLose() {

    fillScreen(RED);
    state = LOSE;

}

void Lose() {

    if(BUTTON_PRESSED(BUTTON_START)){
        goToStart();
    }
}