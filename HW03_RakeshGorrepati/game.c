#include <stdlib.h> 
#include "myLib.h"
#include "game.h"

// Variables
USER user;
BULLET bullets[BULLETCOUNT];
ASTEROID asteroids[ASTEROIDCOUNT];
int asteroidsRemaining;
int livesRemaining;
int reachedTarget;

int boxHeight = 40;
int boxWidth = 60;

int rectangleRows1[] = {30,30};
int oldrectangleRows1[] = {30,30};
int rectangleCols1[] = {10,165};
int oldrectangleCols1[] = {10,165};

int arrLength = 2;
int targetCol = SCREENWIDTH/2;
int targetRow = 0 + 10;

int targetHeight = 10;
int targetWidth = 20;



void initializeGame(){

    
    initializeUser();
    initializeBullets();
    initializeAsteroids();
    asteroidsRemaining = ASTEROIDCOUNT;
    livesRemaining = LIVESCOUNT;
    reachedTarget = TARGETCOUNT;


}

void updateGame(){

    updateUser();
    updateBoundry();
    movingRectangles();
    fallingRectangles();

    for( int i = 0; i < BULLETCOUNT; i++ ){

        updateBullet(&bullets[i]);

    }

    for( int i = 0; i < ASTEROIDCOUNT; i++){

        updateAsteroid(&asteroids[i]);

    }
}

void updateBoundry(){

    if (user.col < 0) { 
		user.oldCol = user.col;
		user.col = 0;
	}
	if (user.col + user.width > SCREENWIDTH ) {
		user.oldCol = user.col;
		user.col = (SCREENWIDTH - user.width);
	}
	if (user.row < 0) {
		user.oldRow = user.row;
		user.row = 0;
	}
	if (user.row + user.height > SCREENHEIGHT ) {
		user.oldRow = user.row;
		user.row = (SCREENHEIGHT - user.height);
	}


}

void drawGame(){

    drawUser();

    for(int i = 0; i < BULLETCOUNT; i++){

        drawBullet(&bullets[i]);

    }

    for(int i = 0; i < ASTEROIDCOUNT; i++){
        
        drawAsteroid(&asteroids[i]);

    }

}

void initializeUser(){

    user.row = SCREENHEIGHT - user.height;
    user.col = SCREENWIDTH / 2;
    user.oldRow = user.row;
    user.oldCol = user.col;
    user.udel = 1;
    user.height = 10;
    user.width = 5;
    user.color = USERCOLOR;
    user.bulletTimer = 20;

}

void updateUser(){

    if((BUTTON_HELD(BUTTON_RIGHT)) || (BUTTON_PRESSED(BUTTON_RIGHT))){
        
        user.col += user.udel;

    }
    if((BUTTON_HELD(BUTTON_LEFT)) || (BUTTON_PRESSED(BUTTON_LEFT))){
        
        user.col -= user.udel;
    
    }
    if((BUTTON_HELD(BUTTON_DOWN)) || (BUTTON_PRESSED(BUTTON_DOWN))){

        user.row += user.udel;
        
    }
    if((BUTTON_HELD(BUTTON_UP)) || (BUTTON_PRESSED(BUTTON_UP))){

        user.row -= user.udel;

    }

    if((BUTTON_PRESSED(BUTTON_B)) && (user.bulletTimer >= 20)){

        fireBullet();
        user.bulletTimer = 0;

    }
    if(collision(user.col, user.row, user.width, user.height,targetCol, targetRow, targetWidth, targetHeight)){
                
        reachedTarget--;

    }
    

    user.bulletTimer++;
    for(int i = 0; i < ASTEROIDCOUNT; i++){

        if(collision(user.col, user.row, user.width, user.height,asteroids[i].col, asteroids[i].row, asteroids[i].width, asteroids[i].height)){
                
            livesRemaining--;

        }
    }

}

void drawUser(){

    drawRect(user.oldCol, user.oldRow, user.width, user.height, BLACK);
    drawRect(user.col, user.row, user.width, user.height, USERCOLOR);
    drawRect(targetCol,targetRow,targetWidth,targetHeight,GREEN);

    user.oldCol = user.col;
    user.oldRow = user.row;

}

void initializeBullets(){

    for(int i = 0; i < BULLETCOUNT; i++) {

        bullets[i].height = 2;
        bullets[i].width = 1;
        bullets[i].col = 0;
        bullets[i].row = -2;
        bullets[i].oldCol = bullets[i].col;
        bullets[i].oldRow = bullets[i].row;
        bullets[i].rdel = -2;
		bullets[i].color = WHITE;
        bullets[i].active = 0;
        

    }

}

void fireBullet(){

    for(int i = 0; i < BULLETCOUNT; i++){

        if(bullets[i].active == 0){

            bullets[i].row = user.row;
            bullets[i].col = user.col + user.width / 2 + bullets[i].width / 2;
            bullets[i].active = 1;
            bullets[i].erased = 0;
            break;

        }

    }

}

void drawBullet(BULLET *b){

    if(b -> active){
        
        drawRect( b-> oldCol, b -> oldRow, b -> width, b -> height,BLACK);
        drawRect( b-> col, b -> row, b -> width, b -> height, b -> color);

    }else if(!b -> erased){

        drawRect(b->oldCol, b->oldRow, b->width, b->height, BLACK);
 		b->erased = 1; 

    }

  	b->oldRow = b->row;
 	b->oldCol = b->col;   

}

void initializeAsteroids(){

    for (int i = 0; i < ASTEROIDCOUNT; i++) {

		asteroids[i].height = 10;
		asteroids[i].width = 10;
		asteroids[i].row = rand() % 110;
		asteroids[i].col = rand() % 130 + 10;
		asteroids[i].oldRow = asteroids[i].row;
		asteroids[i].oldCol = asteroids[i].col;
		asteroids[i].rdel = 1;
		asteroids[i].cdel = 1;
        asteroids[i].color = ASTEROIDCOLOR1;
        asteroids[i].active = 1;
		asteroids[i].erased = 0;
        
	}

}

void updateAsteroid(ASTEROID* a){

    if( a -> active){

        if (a->row <= 0 || a->row + a->height-1 >= SCREENHEIGHT - 1){
			
            a->rdel *= -1;
    
        }
		if (a->col <= 0 || a->col + a->width-1 >= SCREENWIDTH - 1){
			
            a->cdel *= -1;

        }

        
        a->row += a->rdel;
		a->col += a->cdel;


        for(int i = 0; i < BULLETCOUNT; i++){
			if(bullets[i].active == 1){

				if(collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height,a->col, a->row, a->width, a->height)){
					bullets[i].active = 0;
					a->active = 0;
                    
					asteroidsRemaining--;
				}

			}
			
		}

    }

}


void drawAsteroid(ASTEROID* a) {
	if(a->active) {

		drawAster(a->oldCol, a->oldRow, a->width, a->height, GAMECOLOR);
		drawAster(a->col, a->row, a->width, a->height, a->color);

	} else if (!a->erased) {

		drawAster(a->oldCol, a->oldRow, a->width, a->height, GAMECOLOR);
		a->erased = 1;

	}
	a->oldRow = a->row;
	a->oldCol = a->col;
}


void updateBullet(BULLET* b) {

	if (b->active) {
		b->row += b->rdel;
		if (b->row < 0){
			b->active = 0;
		}
	}
}

void fallingRectangles(){
	for(int i = 0; i < arrLength; i++){
		clearFallingRectangle(oldrectangleRows1[i],oldrectangleCols1[i]);
	}
	for (int i = 0; i < arrLength; i++)
	{
		drawRectangles(rectangleRows1[i],rectangleCols1[i]);
	}
	
}
void clearFallingRectangle(int row, int col){

	drawRect(col,row,8,5,BLACK);

}

void drawRectangles(int row, int col){

	drawRect(col,row,8,5,RED);

}

void movingRectangles(){

	 for (int i = 0; i < arrLength; i++) {

        oldrectangleRows1[i] = rectangleRows1[i];
	
		if(collision(user.col, user.row, user.width, user.height,rectangleCols1[i], rectangleRows1[i], 8, 5)){

			livesRemaining--;

		}else{

			rectangleRows1[i]++;

		}
        if (rectangleRows1[i] > 160) {

			rectangleRows1[i] = 0;

		}

	}
	
}













