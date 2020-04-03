#include "game.h"
#include "myLib.h"
#include <stdlib.h>


//Prototypes
void initializeGame();
void initializeSnake();
void initializeApple();
void drawApple();
void updateGame();
void updateSnake();
void growBody();

//Game ends after a collision
int lives;

//main initialize calls snake and apple
void initializeGame() {

    initializeSnake();
    initializeApple();

}

//Main update function
void updateGame() {
    
    drawApple();
    
    updateSnake();

    //Collision detection for snake head and apples
    if (collision(snake.col, snake.row, snake.width, snake.height, apple.col, apple.row, apple.width, apple.height)) {
        
        shadowOAM[2].attr0 = apple.row | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[2].attr1 = apple.col | ATTR1_TINY;
        shadowOAM[2].attr2 = ATTR2_TILEID(BLACKBG, 0);
        DMANow(3, shadowOAM, OAM, 128 * 4);
        apple.active = 0;
        snake.applesCollected++;   
        growBody();
        //Snake body grows 

    }

    if (!apple.active) {

        initializeApple();
    }

    //Ends game if snake hits edges of window
    if ((snake.row > 152) || (snake.row < 0) || (snake.col < 0) || (snake.col > 232)) {

        lives = 1;
        //Game ends

    }

    //Checks for collision of head with own body
    for (int i = 0; i < SNAKECOUNT; i++) {

        if (snakeArray[i].active) {

           if (collision(snake.col, snake.row, snake.width, snake.height, snakeArray[i].col, snakeArray[i].row, snakeArray[i].width, snakeArray[i].height)) {

                lives = 1;
                //Game ends

            }
        }
    
    }

    waitForVBlank();

}

//Updating snake with spirtesheet
void updateSnake() {

    if (snake.aniState != SNAKEIDLE) {
        snake.prevAniState = snake.aniState;
        snake.aniState = SNAKEIDLE;
    }

    if(snake.aniCounter % 18 == 0) {

        snake.curFrame = (snake.curFrame + 1) % snake.numFrames;

	} else {
        snake.aniCounter++;
    }
    //If up is pressed then eyes will be up
    if (BUTTON_HELD(BUTTON_UP)) {
        
        for (int i = SNAKECOUNT; i > 0; i--) {

            snakeArray[i].col = snakeArray[i-1].col;
            snakeArray[i].row = snakeArray[i-1].row;

        }

        snakeArray[0].col = snake.col;
        snakeArray[0].row = snake.row;
        snake.aniState = SNAKEUP;
        snake.row-=snake.rdel;
        
    }
    //If down is pressed then eyes will be down
    if (BUTTON_HELD(BUTTON_DOWN)) {

        for (int i = SNAKECOUNT; i > 0; i--) {

            snakeArray[i].col = snakeArray[i-1].col;
            snakeArray[i].row = snakeArray[i-1].row;

        }

        snakeArray[0].col = snake.col;
        snakeArray[0].row = snake.row;
        snake.aniState = SNAKEDOWN;
        snake.row+=snake.rdel;

    }
    //If left is pressed then eyes will be left
    if (BUTTON_HELD(BUTTON_LEFT)) {

        for (int i = SNAKECOUNT; i > 0; i--) {

            snakeArray[i].col = snakeArray[i-1].col;
            snakeArray[i].row = snakeArray[i-1].row; 
            
        }

        snakeArray[0].col = snake.col;
        snakeArray[0].row = snake.row;
        snake.aniState = SNAKELEFT;
        snake.col-=snake.cdel;
        
    }
    //If right is pressed then eyes will be right
    if (BUTTON_HELD(BUTTON_RIGHT)) {

        for (int i = SNAKECOUNT; i > 0; i--) {

            snakeArray[i].col = snakeArray[i-1].col;
            snakeArray[i].row = snakeArray[i-1].row;
            
        }

        snakeArray[0].col = snake.col;
        snakeArray[0].row = snake.row;
        snake.aniState = SNAKERIGHT;
        snake.col+=snake.cdel;
        
    }
    
    if (snake.aniState == SNAKEIDLE) {

        snake.curFrame = 0;
        snake.aniState = snake.prevAniState;

    } else {

        snake.aniCounter++;

    }

    //After going through what button the sprite is set accordinly     
    shadowOAM[0].attr0 = snake.row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = snake.col | ATTR1_TINY;
    shadowOAM[0].attr2 = ATTR2_TILEID(snake.aniState, snake.curFrame);

    
    for (int i = 0; i < SNAKECOUNT; i++) {

        if (snakeArray[i].active) {

            shadowOAM[i+3].attr0 = snakeArray[i].row | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[i+3].attr1 = snakeArray[i].col | ATTR1_TINY;
            shadowOAM[i+3].attr2 = ATTR2_TILEID(snakeArray[i].aniState, 0);
            DMANow(3, shadowOAM, OAM, 128 * 4);
            
        }

    }

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

}

//Snake and additional body parts are initialized 
void initializeSnake() { 

    snake.col = SCREENWIDTH/2 - (snake.width/2) - 50;
    snake.row = SCREENHEIGHT/2 - (snake.height/2) - 20;
    snake.width = 8;
    snake.height = 8;
    snake.cdel = 8;
    snake.rdel = 8;
    snake.aniCounter = 0;
    snake.curFrame = 0;
    snake.numFrames = 1;
    snake.applesCollected = 0;
    snake.aniState = SNAKEIDLE;
    snake.active = 1;

    for (int i = 0; i < SNAKECOUNT; i++) {

        snakeArray[i].width = 8;
        snakeArray[i].height = 8;
        snakeArray[i].col = snake.col + (8 * (i+1));
        snakeArray[i].row = snake.row;
        snakeArray[i].aniState = SNAKEBODY;   
        snakeArray[i].active = 0;

    }

}

// If apple is eaten then a body part will be added to snake
void growBody() {

    for (int i = 0; i < SNAKECOUNT; i++) {
        if (snakeArray[i].active == 0) {
            snakeArray[i].active = 1;
            break;
        }
    }

}

//Apple is initialized
void initializeApple() {

    apple.width = 8;
    apple.height = 8;
    apple.col = (rand() % 224);
    apple.row = (rand() % 144);
    apple.active = 1;
    apple.aniState = APPLE;

}

//Apple is drawn with mode 0
void drawApple() { 

    shadowOAM[2].attr0 = apple.row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[2].attr1 = apple.col | ATTR1_TINY;
    shadowOAM[2].attr2 = ATTR2_TILEID(apple.aniState, 0);
    DMANow(3, shadowOAM, OAM, 128 * 4);

}

