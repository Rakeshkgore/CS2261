#include "game.h"
#include "myLib.h"
#include <stdlib.h>

USERSPRITE user;
COINSPRITE coiny[COINTCOUNT];
BULLET bullets[BULLETCOUNT];
TARGETSPRITE target[TARGETCOUNT];
REDCOINSPRITE red[COINTCOUNT];

//Prototypes
void initializeGame();
void initializeRed();
void initializeUser();
void initializeCoin();
void initializeBullets();
void initializeTargets();
void updateGame();
void updateUser();
void fireBullet();
void drawGame();
void drawGame1();
void drawUser();
void updateGame();
void fireCoin();
void updateCoin(COINSPRITE *);
void drawCoin(COINSPRITE *);
void updateBullet(BULLET *);
void drawBullet(BULLET *);
void drawAmmo();
void updateTarget(TARGETSPRITE *);
void drawTarget(TARGETSPRITE *);
void fireTarget();
void drawRed(REDCOINSPRITE *);
void fireRed();
void updateRed(REDCOINSPRITE *);
void drawCoinCount();
void drawLivesCount();

//Game ends after a collision
int ammoRemaining;
int lives;
int counter;
int targetCounter;
int unlimited;

//main initialize calls User and coin
void initializeGame() {

    initializeUser();
    initializeCoin();
    initializeBullets();
    initializeTargets();
    initializeRed();
    lives = 2;
    counter = 0;
    unlimited = 1;
    ammoRemaining = BULLETCOUNT;
    targetCounter = TIME;

}

void drawGame(){

    drawUser();

    drawAmmo();
    drawCoinCount();
    drawLivesCount();
    

    for (int i = 0; i < COINTCOUNT; i++) {

        drawCoin(&coiny[i]);

    }
    for (int i = 0; i < COINTCOUNT; i++) {

        drawRed(&red[i]);

    }
    for(int i = 0; i < BULLETCOUNT; i++) {

        drawBullet(&bullets[i]);

    }
    for(int i = 0; i < TARGETCOUNT; i++){

        drawTarget(&target[i]);

    }

}

//Main update function
void updateGame() {
    
    updateUser();
    counter++;
    targetCounter--;

    for (int i = 0; i < COINTCOUNT; i++) {

        updateCoin(&coiny[i]);

    }
    for (int i = 0; i < COINTCOUNT; i++) {

        updateRed(&red[i]);

    }
    for(int i = 0; i < BULLETCOUNT; i++) {

        updateBullet(&bullets[i]);

    }
    for(int i = 0; i < TARGETCOUNT; i++) {

        updateTarget(&target[i]);

    }
    if(targetCounter % 500 == 0){
        
        fireTarget();

    }

    if (counter > 50) { // probably want this counter to be less frequent?
        counter = 0; // reset to 0 so that all coins don't come flying out at once
        int r = (rand() % 160);
        if (r > 60) {

            fireCoin();
            fireRed();
  
        }
    }

    if(((BUTTON_PRESSED(BUTTON_B)) && (user.bulletTimer >= 20)) && ((ammoRemaining > 0) || unlimited == 0)){

        fireBullet();
        ammoRemaining--;
        user.bulletTimer = 0;

    }
    if((BUTTON_PRESSED(BUTTON_A))){

        unlimited--;

    }
    user.bulletTimer++;


}

//Updating User with spirtesheet
void updateUser() {
    
    if (user.aniState != USERIDLE) {
        user.prevAniState = user.aniState;
        user.aniState = USERIDLE;
    }

    if(user.aniCounter % 18 == 0) {

      user.curFrame = (user.curFrame + 1) % user.numFrames;

	}
    //If up is pressed then eyes will be up
    if (BUTTON_HELD(BUTTON_UP) && (!(user.row < 8 + user.height))) {

        user.aniState = USERIDLE;  
        user.row-=user.rdel;
        
    }else{
        
        user.row++;

	}
 
    if (user.aniState == USERIDLE) {

        user.curFrame = 0;
        user.aniState = user.prevAniState;

    } else {

        user.aniCounter++;

    }

    //Ends game if User hits bottom of window
    if ((user.row > 150) && lives >= 1){
        
        lives--;
        user.col = SCREENWIDTH/2 - (user.width/2) - 50;
        user.row = SCREENHEIGHT/2 - (user.height/2) - 20;
        
    }
    if ((user.row > 150) && unlimited == 0){
        
        user.col = SCREENWIDTH/2 - (user.width/2) - 50;
        user.row = SCREENHEIGHT/2 - (user.height/2) - 20;
        
    }


}

//user and additional body parts are initialized 
void initializeUser() { 

    user.col = SCREENWIDTH/2 - (user.width/2) - 70;
    user.row = SCREENHEIGHT/2 - (user.height/2) - 20;
    user.width = 8;
    user.height = 8;
    user.cdel = 2;
    user.rdel = 2;
    user.aniCounter = 0;
    user.curFrame = 0;
    user.numFrames = 3;
    user.coinsCollected = 0;
    user.aniState = USERIDLE;
    user.active = 1;
    user.bulletTimer = 20;

}

void initializeBullets(){

    for(int i = 0; i < BULLETCOUNT; i++) {

        bullets[i].height = 1;
        bullets[i].width = 1;
        bullets[i].col = user.col;
        bullets[i].row = user.row;
        bullets[i].oldCol = bullets[i].col;
        bullets[i].oldRow = bullets[i].row;
        bullets[i].rdel = -2;
        bullets[i].active = 0;
        bullets[i].aniState = 26;
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
        coiny[i].aniState = 27;
        coiny[i].index = BULLETCOUNT + 3 + i;

    }

}

void initializeRed() {

    for(int i = 0; i < COINTCOUNT; i++){

        red[i].width = 8;
        red[i].height = 8;
        red[i].col = 0;
        red[i].row = 0;
        red[i].active = 0;
        red[i].aniState = 28;
        red[i].index = BULLETCOUNT + COINTCOUNT + TARGETCOUNT + 3 + i;

    }

}

void initializeTargets() {

    for(int i = 0; i < TARGETCOUNT; i++){

        target[i].width = 8;
        target[i].height = 8;
        //target[i].col = rand() % 130;
        //target[i].row = rand() % 130;
        target[i].col = SCREENWIDTH/2;
        target[i].row = SCREENHEIGHT/2;
        target[i].active = 0;
        target[i].aniState = 2;
        target[i].index = BULLETCOUNT + COINTCOUNT + i;

    }

}

void drawUser(){

    shadowOAM[0].attr0 = (ROWMASK & user.row) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (COLMASK & user.col) | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_TILEID(user.aniState, user.curFrame); // not really sure why you have up down states for your sprite rn, so I just hard coded the idle one in

}

void drawBullet(BULLET *b){

    if(b -> active){
        
        shadowOAM[b->index].attr0 = (ROWMASK & b -> row) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[b->index].attr1 = (ROWMASK & b -> col)| ATTR1_TINY;
        shadowOAM[b->index].attr2 = ATTR2_TILEID(b->aniState, 0);

    }else{

        shadowOAM[b->index].attr0 = ATTR0_HIDE;

    }
 
}

//Coin is drawn with mode 0
void drawCoin(COINSPRITE *c) { 
  
    if(c -> active){
        // row mask and col mask just help draw sprites that may populate outside of the screen bounds
        shadowOAM[c->index].attr0 = (ROWMASK & c -> row) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[c->index].attr1 = (COLMASK & c -> col) | ATTR1_TINY;
        shadowOAM[c->index].attr2 = ATTR2_TILEID(c->aniState, 0); // hard coded again for coin sprite

    } else {

        shadowOAM[c->index].attr0 = ATTR0_HIDE;

    }


}

void drawRed(REDCOINSPRITE *r) { 
  
    if(r -> active){
        // row mask and col mask just help draw sprites that may populate outside of the screen bounds
        shadowOAM[r->index].attr0 = (ROWMASK & r -> row) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[r->index].attr1 = (COLMASK & r -> col) | ATTR1_TINY;
        shadowOAM[r->index].attr2 = ATTR2_TILEID(r->aniState, 0); // hard coded again for coin sprite

    } else {

        shadowOAM[r->index].attr0 = ATTR0_HIDE;

    }


}

void drawTarget(TARGETSPRITE *t){

    if(t -> active) {
        
        shadowOAM[t->index].attr0 = (ROWMASK & t -> row) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[t->index].attr1 = (COLMASK & t -> col) | ATTR1_TINY;
        shadowOAM[t->index].attr2 = ATTR2_TILEID(t->aniState, 0); // hard coded again for coin sprite

    } else {

        shadowOAM[t->index].attr0 = ATTR0_HIDE;

    }
    
}

void drawAmmo(){


    shadowOAM[100].attr0 = (6) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[100].attr1 = (50) | ATTR1_TINY;
    shadowOAM[100].attr2 = ATTR2_TILEID(ammoRemaining + 3 , 0); 

    if (ammoRemaining < 1) {

        shadowOAM[100].attr0 = ATTR2_TILEID(3 , 0); 

    }

}

void drawCoinCount(){

    if (user.coinsCollected < 1) {

        shadowOAM[101].attr0 = ATTR2_TILEID(3 , 0); 

    }

    shadowOAM[101].attr0 = (5) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[101].attr1 = (127) | ATTR1_TINY;
    shadowOAM[101].attr2 = ATTR2_TILEID(user.coinsCollected + 3 , 0); 

}

void drawLivesCount(){
    if(unlimited != 0){

    shadowOAM[102].attr0 = (6) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[102].attr1 = (207) | ATTR1_TINY;
    shadowOAM[102].attr2 = ATTR2_TILEID(lives + 3 , 0); 

    }else {

        shadowOAM[102].attr2 = ATTR2_TILEID(14 , 0); 

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

void fireRed() {
    
    for (int i = 0; i < COINTCOUNT; i++) {

        if(red[i].active == 0){

            red[i].row = (rand() % (160 - red[i].height));
            red[i].col = SCREENWIDTH - red[i].width;
            red[i].active = 1;
            break;

        }

    }


}

void fireTarget() { 
    
    for(int i = 0; i < TARGETCOUNT; i++){

        if(target[i].active == 0){

            target[i].row = rand() % 130;
            target[i].col = 200;
            target[i].active = 1;
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


void updateCoin(COINSPRITE *d){
    d -> col--;
    hOff++;
    REG_BG0HOFF = hOff/15;
    REG_BG1HOFF = hOff/30;
    // check for user coin collision between each active coin
    if (d->active && collision(user.col, user.row, user.width, user.height, d->col, d->row, d->width, d->height)) {

        d->active = 0;
        lives--;   

    }
    if (d->active && collision(user.col, user.row, user.width, user.height, d->col, d->row, d->width, d->height) && unlimited == 0) {
        
        d->active = 0;
 
    }
    for(int i = 0; i < BULLETCOUNT; i++){

        if (d->active && collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, d->col, d->row, d->width, d->height)) {
            d->active = 0;
            
        }  

    }

    if (d-> col <= d -> width - 8) {

        d -> active = 0;

    }
 
}


void updateRed(REDCOINSPRITE *d){
    d -> col--;
    // check for user coin collision between each active coin
    if (d->active && collision(user.col, user.row, user.width, user.height, d->col, d->row, d->width, d->height)) {
        d->active = 0;
        user.coinsCollected++;   
    }
    for(int i = 0; i < BULLETCOUNT; i++){

        if (d->active && collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, d->col, d->row, d->width, d->height)) {
            
            d->active = 0;
            
        }  

    }

    if (d-> col <= 0 + d -> width - 8) {

        d -> active = 0;

    }
 
}

void updateTarget(TARGETSPRITE *t){

    for(int i = 0; i < BULLETCOUNT; i++){

        if (t->active && collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, t->col, t->row, t->width, t->height)) {
            
            t->active = 0;
            lives++;

        }  

    }
}








