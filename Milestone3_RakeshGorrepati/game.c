#include "game.h"
#include "myLib.h"
#include <stdlib.h>

COINSPRTIE coiny[COINTCOUNT];
BULLET bullets[BULLETCOUNT];

//Prototypes
void initializeGame();
void initializeUser();
void initializeCoin();
void initializeBullets();
void updateGame();
void updateUser();
void fireBullet();
void drawGame();
void drawUser();
void updateGame();
void fireCoin();
void updateCoin(COINSPRTIE *);
void drawCoin(COINSPRTIE *);
void updateBullet(BULLET *);
void drawBullet(BULLET *);

//Game ends after a collision
int lives;
int counter;

//main initialize calls User and coin
void initializeGame() {

    initializeUser();
    initializeCoin();
    initializeBullets();
    counter = 0;

}

void drawGame(){

    drawUser();

    for (int i = 0; i < COINTCOUNT; i++) {

        drawCoin(&coiny[i]);
    }
    for(int i = 0; i < BULLETCOUNT; i++) {

        drawBullet(&bullets[i]);

    }

}



//Main update function
void updateGame() {
    
    updateUser();
    counter++;

    for (int i = 0; i < COINTCOUNT; i++) {

        updateCoin(&coiny[i]);

    }
    for(int i = 0; i < BULLETCOUNT; i++) {

        updateBullet(&bullets[i]);

    }

    if (counter > 50) { // probably want this counter to be less frequent?
        counter = 0; // reset to 0 so that all coins don't come flying out at once
        int r = (rand() % 160);
        if (r > 60) {

            fireCoin();
  
        }
    }

    if((BUTTON_PRESSED(BUTTON_B)) && (user.bulletTimer >= 20)){

        fireBullet();
        user.bulletTimer = 0;

    }
    user.bulletTimer++;

    //Ends game if User hits bottom of window
    if ((user.row > 150)){

        lives = 1;
        //Game ends
    }

}

//Updating User with spirtesheet
void updateUser() {
    
    if (user.aniState != USERIDLE) {
        user.prevAniState = user.aniState;
        user.aniState = USERIDLE;
    }

    if(user.aniCounter % 18 == 0) {

      // not sure that this is needed now because you don't have animation sprites in place in your sprite sheet
      //  user.curFrame = (user.curFrame + 1) % user.numFrames;

	} else {

        user.aniCounter++;

    }
    //If up is pressed then eyes will be up
    if (BUTTON_HELD(BUTTON_UP)) {
        
        user.aniState = USERUP;
        user.row-=user.rdel;
        
        
    }else{

        user.row++;

    }
    //If right is pressed then eyes will be right
    if(BUTTON_HELD(BUTTON_RIGHT) || BUTTON_PRESSED(BUTTON_RIGHT)) {

        //hOff++;
		
        user.aniState = USERRIGHT;
        
    }
    
    if (user.aniState == USERIDLE) {

        user.curFrame = 0;
        user.aniState = user.prevAniState;

    } else {

        user.aniCounter++;

    }


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

void initializeBullets(){

    for(int i = 0; i < BULLETCOUNT; i++) {

        bullets[i].height = 2;
        bullets[i].width = 1;
        bullets[i].col = user.col;
        bullets[i].row = user.row;
        bullets[i].oldCol = bullets[i].col;
        bullets[i].oldRow = bullets[i].row;
        bullets[i].rdel = -2;
        bullets[i].active = 0;
        bullets[i].aniState = BULLETS;
        bullets[i].index = i + 1;
        
    }

}

//coin is initialized
void initializeCoin() {
    for(int i = 0; i < COINTCOUNT; i++){

        coiny[i].width = 8;
        coiny[i].height = 8;
        coiny[i].col = 0;
        coiny[i].row = 0;
        coiny[i].active = 0;
        coiny[i].aniState = COIN;
        coiny[i].index = BULLETCOUNT + 3 + i;

    }

}

void drawUser(){

    shadowOAM[0].attr0 = (ROWMASK & user.row) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (COLMASK & user.col) | ATTR1_TINY;
    shadowOAM[0].attr2 = ATTR2_TILEID(6, user.curFrame); // not really sure why you have up down states for your sprite rn, so I just hard coded the idle one in

}

void drawBullet(BULLET *b){

    if(b -> active){
        
        shadowOAM[b->index].attr0 = (ROWMASK & b -> row) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[b->index].attr1 = (ROWMASK & b -> col)| ATTR1_TINY;
        shadowOAM[b->index].attr2 = ATTR2_TILEID(8, 0);

    }else{

        shadowOAM[b->index].attr0 = ATTR0_HIDE;

    }
 
}

//Coin is drawn with mode 0
void drawCoin(COINSPRTIE *c) { 
  
    if(c -> active){
        // row mask and col mask just help draw sprites that may populate outside of the screen bounds
        shadowOAM[c->index].attr0 = (ROWMASK & c -> row) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[c->index].attr1 = (COLMASK & c -> col) | ATTR1_TINY;
        shadowOAM[c->index].attr2 = ATTR2_TILEID(5, 0); // hard coded again for coin sprite

    } else {

        shadowOAM[c->index].attr0 = ATTR0_HIDE;

    }


}

void fireBullet(){

    for(int i = 0; i < BULLETCOUNT; i++){

        if(bullets[i].active == 0){

            bullets[i].row = user.row;
            bullets[i].col = user.col + user.width / 2 + bullets[i].width / 2;
            bullets[i].active = 1;
            break;

        }

    }

}

void fireCoin() {
    
    for (int i = 0; i < COINTCOUNT; i++) {

        if(coiny[i].active == 0){

            coiny[i].row = (rand() % (160 - coiny[i].height));
            coiny[i].col = SCREENWIDTH - coiny[i].width;
            coiny[i].active = 1;
            break;

        }

    }


}

void updateBullet(BULLET* b) {

	if (b->active) {

		b-> col++;

	    if (b->col > (SCREENWIDTH - b->width)){

		    b->active = 0;
	    }
	}
}


void updateCoin(COINSPRTIE *d){

    // check for user coin collision between each active coin
    if (d->active && collision(user.col, user.row, user.width, user.height, d->col, d->row, d->width, d->height)) {
        d->active = 0;
        user.coinsCollected++;   
    }
    for(int i = 0; i < BULLETCOUNT; i++){

        if (d->active && collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, d->col, d->row, d->width, d->height)) {
            d->active = 0;
            user.coinsCollected++;
        }  

    }

    //if (d -> active && (BUTTON_PRESSED(BUTTON_RIGHT) || BUTTON_HELD(BUTTON_RIGHT))) {
        // move the coin to the left no matter what
        d -> col--;
    //}
    if (d-> col <= 0 + d -> width) {

        d -> active = 0;

    }
 
}






