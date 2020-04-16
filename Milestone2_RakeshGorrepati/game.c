#include "game.h"
#include "myLib.h"
#include <stdlib.h>


//Prototypes
void initializeGame();
void initializeUser();
void initializeCoin1();
void drawcoin();
void updateGame();
void updateUser();
void fireBullet();
void updateBullet();
void drawBullet();
void initializeCoin2();
void initializeCoin3();
void initializeCoin4();

//Game ends after a collision
int lives;

//main initialize calls User and coin
void initializeGame() {

    initializeUser();
    initializeCoin1();
    initializeCoin2();
    initializeCoin3();
    initializeCoin4();

}

//Main update function
void updateGame() {

    drawCoin();
    
    updateUser();

    //Collision detection for User head and coins
    if (collision(user.col, user.row, user.width, user.height, coin.col, coin.row, coin.width, coin.height)) {
        
        shadowOAM[2].attr0 = coin.row | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[2].attr1 = coin.col | ATTR1_TINY;
        shadowOAM[2].attr2 = ATTR2_TILEID(BLACKBG, 0);
        DMANow(3, shadowOAM, OAM, 128 * 4);
        coin.active = 0;
        user.coinsCollected++;   
  

    }
    if(coin.col <= 0){
        if(coin.coinType == 1){
            coin.active = 0;
            initializeCoin1();
        }
        if(coin.coinType == 2){

            coin.active = 0;
            initializeCoin2();
        }
        if(coin.coinType == 3){
            coin.active = 0;
            initializeCoin3();
        }
        if(coin.coinType == 4){

            coin.active = 0;
            initializeCoin1();
            
        }

    }
    if (!coin.active) {

        initializeCoin1();
    }

    //Ends game if User hits edges of window
    if ((user.row > 150)){

        lives = 1;
        //Game ends
    }

    

    waitForVBlank();

}

//Updating User with spirtesheet
void updateUser() {

    if (user.aniState != USERIDLE) {
        user.prevAniState = user.aniState;
        user.aniState = USERIDLE;
    }

    if(user.aniCounter % 18 == 0) {

        user.curFrame = (user.curFrame + 1) % user.numFrames;

	} else {
        user.aniCounter++;
    }
    //If up is pressed then eyes will be up
    if (BUTTON_HELD(BUTTON_UP)) {
        
        user.aniState = USERUP;
        user.row-=user.rdel;
        
        
    }
    //If down is pressed then eyes will be down
    if (BUTTON_HELD(BUTTON_DOWN)) {

        user.aniState = USERDOWN;
        user.row+=user.rdel;


    }
    //If right is pressed then eyes will be right
    if (BUTTON_HELD(BUTTON_RIGHT)) {

        user.aniState = USERRIGHT;
        //User.col+=User.cdel;

        
    }
    
    if (user.aniState == USERIDLE) {

        user.curFrame = 0;
        user.aniState = user.prevAniState;

    } else {

        user.aniCounter++;

    }

    //After going through what button the sprite is set accordinly     
    shadowOAM[0].attr0 = user.row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = user.col | ATTR1_TINY;
    shadowOAM[0].attr2 = ATTR2_TILEID(user.aniState, user.curFrame);


    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);

}

//user and additional body parts are initialized 
void initializeUser() { 

    user.col = SCREENWIDTH/2 - (user.width/2) - 50;
    user.row = SCREENHEIGHT/2 - (user.height/2) - 20;
    user.width = 8;
    user.height = 8;
    user.cdel = 2;
    user.rdel = 2;
    user.aniCounter = 0;
    user.curFrame = 0;
    user.numFrames = 1;
    user.coinsCollected = 0;
    user.aniState = USERIDLE;
    user.active = 1;
    user.bulletTimer = 20;

}

//coin is initialized
void initializeCoin1() {

    coin.width = 8;
    coin.height = 8;
    coin.col = SCREENWIDTH;
    coin.row = 80;
    coin.active = 1;
    coin.aniState = COIN;
    coin.coinType = 1;

}
void initializeCoin2() {

    coin.width = 8;
    coin.height = 8;
    coin.col = SCREENWIDTH - 60;
    coin.row = 60;
    coin.active = 1;
    coin.aniState = COIN;
    coin.coinType = 1;

}
void initializeCoin3() {

    coin.width = 8;
    coin.height = 8;
    coin.col = SCREENWIDTH- 40;
    coin.row = 40;
    coin.active = 1;
    coin.aniState = COIN;
    coin.coinType = 1;

}
void initializeCoin4() {

    coin.width = 8;
    coin.height = 8;
    coin.col = SCREENWIDTH - 20;
    coin.row = 120;
    coin.active = 1;
    coin.aniState = COIN;
    coin.coinType = 1;

}

//Coin is drawn with mode 0
void drawCoin() { 
  

    shadowOAM[2].attr0 = coin.row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[2].attr1 = coin.col | ATTR1_TINY;
    shadowOAM[2].attr2 = ATTR2_TILEID(coin.aniState, 0);
    DMANow(3, shadowOAM, OAM, 128 * 4);


}

