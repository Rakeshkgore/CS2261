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

//Arrays for Falling rectangles
int rectangleRows1[] = {30,30};
int oldrectangleRows1[] = {30,30};
int rectangleCols1[] = {10,165};
int oldrectangleCols1[] = {10,165};

//Array Length Global variable
int arrLength = 2;

//Target Box location and dimensions
int targetCol = SCREENWIDTH/2;
int targetRow = 0 + 10;
int targetHeight = 10;
int targetWidth = 20;


// where all items are intiliazed
void initializeGame(){

    
    initializeUser();
    initializeBullets();
    initializeAsteroids();
    asteroidsRemaining = ASTEROIDCOUNT;
    livesRemaining = LIVESCOUNT;
    reachedTarget = TARGETCOUNT;


}

//Updates: User,falling rectanlges, checks for boundry
// Updates the game each frame
void updateGame(){

    updateUser();
    updateBoundry();
    movingRectangles();
    fallingRectangles();

    //Updates all Bullets
    for( int i = 0; i < BULLETCOUNT; i++ ){

        updateBullet(&bullets[i]);

    }

    //Updates all asteroids
    for( int i = 0; i < ASTEROIDCOUNT; i++){

        updateAsteroid(&asteroids[i]);

    }
}

//stops using controlled rectangle from going off righ,left,or bottom of screen
void updateBoundry(){

    //Left
    if (user.col < 0) { 
		user.oldCol = user.col;
		user.col = 0;
	}
    //Right
	if (user.col + user.width > SCREENWIDTH ) {
		user.oldCol = user.col;
		user.col = (SCREENWIDTH - user.width);
	}
    //Top
	if (user.row < 0) {
		user.oldRow = user.row;
		user.row = 0;
	}
    //Bottom
	if (user.row + user.height > SCREENHEIGHT ) {
		user.oldRow = user.row;
		user.row = (SCREENHEIGHT - user.height);
	}


}

//Draws user, bullets, asteroids
void drawGame(){

    drawUser();

    //Draws all bullets
    for(int i = 0; i < BULLETCOUNT; i++){

        drawBullet(&bullets[i]);

    }

    //Draws all asteroids
    for(int i = 0; i < ASTEROIDCOUNT; i++){
        
        drawAsteroid(&asteroids[i]);

    }

}

//Object pooling for user
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

//functionality to move user controlled rectangle
void updateUser(){
    
    //To move right
    if((BUTTON_HELD(BUTTON_RIGHT)) || (BUTTON_PRESSED(BUTTON_RIGHT))){
        
        user.col += user.udel;

    }

    //To move left
    if((BUTTON_HELD(BUTTON_LEFT)) || (BUTTON_PRESSED(BUTTON_LEFT))){
        
        user.col -= user.udel;
    
    }

    //To move down
    if((BUTTON_HELD(BUTTON_DOWN)) || (BUTTON_PRESSED(BUTTON_DOWN))){

        user.row += user.udel;
        
    }

    //To move up
    if((BUTTON_HELD(BUTTON_UP)) || (BUTTON_PRESSED(BUTTON_UP))){

        user.row -= user.udel;

    }

    //To fire bullets by pressing B
    if((BUTTON_PRESSED(BUTTON_B)) && (user.bulletTimer >= 20)){

        fireBullet();
        user.bulletTimer = 0;

    }
    //Checks for collision with target box and user 
    if(collision(user.col, user.row, user.width, user.height,targetCol, targetRow, targetWidth, targetHeight)){
                
        reachedTarget--;
        //Game is over

    }
    

    user.bulletTimer++;
    //Checks all asteroids for collision with user 
    for(int i = 0; i < ASTEROIDCOUNT; i++){

        if(collision(user.col, user.row, user.width, user.height,asteroids[i].col, asteroids[i].row, asteroids[i].width, asteroids[i].height)){

            //game is over      
            livesRemaining--;

        }
    }

}

//Clears previous frame and draws user and target 
void drawUser(){

    drawRect(user.oldCol, user.oldRow, user.width, user.height, BLACK);
    drawRect(user.col, user.row, user.width, user.height, USERCOLOR);
    drawRect(targetCol,targetRow,targetWidth,targetHeight,GREEN);

    user.oldCol = user.col;
    user.oldRow = user.row;

}

//Pooling for bullets
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

//Sets bullet to active and fires it from user
//Finds first inactive bullet and initialize/set it active
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

//Draws bullet by calling drawRect and utilzes a pointer thats passed in
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

//Pooling for asteroids
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

//Takes in pointer and bounces asteroids from edges
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

        //Iterates through bullets and checks collision with passed in asteroid pointer
        for(int i = 0; i < BULLETCOUNT; i++){
			if(bullets[i].active == 1){

				if(collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height,a->col, a->row, a->width, a->height)){
					bullets[i].active = 0;
					a->active = 0;
                    
					asteroidsRemaining--;
                    //If all asteroids are gone game is over
				}

			}
			
		}

    }

}

// Takes in pointer and calls drawAster if it is active
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

// Takes in pointer and if its active then moves it up and updates bullet
void updateBullet(BULLET* b) {

	if (b->active) {
		b->row += b->rdel;
		if (b->row < 0){
			b->active = 0;
		}
	}
}

//Iterates through array. Clears them then draws them. 
void fallingRectangles(){
	for(int i = 0; i < arrLength; i++){
		clearFallingRectangle(oldrectangleRows1[i],oldrectangleCols1[i]);
	}
	for (int i = 0; i < arrLength; i++)
	{
		drawRectangles(rectangleRows1[i],rectangleCols1[i]);
	}
	
}

// Clears falling rectangles with drawRect with black color
void clearFallingRectangle(int row, int col){

	drawRect(col,row,8,5,BLACK);

}

//Draws falling rectangels. Calls drawRect
void drawRectangles(int row, int col){

	drawRect(col,row,8,5,RED);

}

//Main fucntion for iterating through array and moving the rectangles down the screen
void movingRectangles(){

	 for (int i = 0; i < arrLength; i++) {

        oldrectangleRows1[i] = rectangleRows1[i];
        
        //Checks collision with user as falling rectangles move down the screen
		if(collision(user.col, user.row, user.width, user.height,rectangleCols1[i], rectangleRows1[i], 8, 5)){

			livesRemaining--;
            //game is over

		}else{

			rectangleRows1[i]++;

		}
        if (rectangleRows1[i] > 160) {

			rectangleRows1[i] = 0;

		}

	}
	
}













