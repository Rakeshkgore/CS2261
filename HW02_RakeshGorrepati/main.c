#include "myLib.h"
#include "stdlib.h"

// my prototypes
void initialize();
void update();
void draw();
void clearFallingRectangle(int row,int col);
void drawRectangles(int row,int col);
void fallingRectangles();
void movingRectangles();
void isCollision();
void isButton();
void inBoundry();
void delay(int time);

// buttons
unsigned short buttons;
unsigned short oldButtons;

//exit function
void exit(int return_code);

//moving rectanlges 
int rectangleRows1[] = {30,20,10,0,60};
int oldrectangleRows1[] = {30,20,10,0,60};

int rectangleCols1[] = {200,50,65,30,75};
int oldrectangleCols1[] = {200,50,65,30,75};

int rectangleRows2[] = {30,100,10,150,40};
int oldrectangleRows2[] = {30,100,10,150,40};

int rectangleCols2[] = {150,100,250,150,300};
int oldrectangleCols2[] = {150,100,250,150,300};

//array length
int arrLength = 5;

// stationary red rectangles
int redRow1, redRow2, redRow3, redRow4, redRow5;
int redCol1, redCol2, redCol3, redCol4, redCol5;
int rHeight;
int rWidth;

//target rectangle
int targetRow;
int targetCol;
int tHeight;
int tWidth;

// user controlled rectangle
int uRow;
int uCol;
int uOldRow;
int uOldCol;
int uRDel;
int uCDel;
int uHeight;
int uWidth;

int main() {

	initialize();

	while (1) {

		oldButtons = buttons;
		buttons = BUTTONS;

		update();
		waitForVBlank();
		draw();
		movingRectangles();
		fallingRectangles();
	}
}

void initialize() {

	REG_DISPCTL = MODE3 | BG2_ENABLE;

	buttons = BUTTONS;
	oldButtons = 0;
	fillScreen(BLACK);

	//stationary 3 red rectangles
	rHeight = 8;
	rWidth = 8;
	redRow1 = SCREENHEIGHT - 25;
	redCol1 = SCREENWIDTH/2 - 100;								
	redRow2 = SCREENHEIGHT - 25;
	redCol2 = SCREENWIDTH/2;			
	redRow3 = SCREENHEIGHT - 50;
	redCol3 = SCREENWIDTH/2 + 100; 
	redRow4 = SCREENHEIGHT - 100;
	redCol4 = SCREENWIDTH/2 - 100;
	redRow5 = SCREENHEIGHT - 100;
	redCol5 = SCREENWIDTH/2 + 50;  

	targetCol = SCREENWIDTH/2;
	targetRow = 5;
	tWidth = 10;
	tHeight = 5;

	// user controlled rectangle
	uHeight = 5;
	uWidth = 10;
	uRow = (SCREENHEIGHT);
	uCol = (SCREENWIDTH / 2);
	uOldRow = uRow;
	uOldCol = uCol;
	uRDel = 1;
	uCDel = 1;
}


void update() {

	//stops using controlled rectangle from going off righ,left,or bottom of screen
	inBoundry();
	
	//functionality to movie user controlled rectanle
	isButton();

	//detects collision with with stationary rectangles
	isCollision();

}

void draw() {
	//erase the previous user controlled rectangle
	drawRect(uOldCol, uOldRow, uWidth, uHeight, BLACK);

	//draws the new user controlled rectangle 
	drawRect(uCol, uRow, uWidth, uHeight, GREEN);

	//draws the stationary red rectangles
	drawRect(redCol1, redRow1, rWidth, rHeight, RED);
	drawRect(redCol2, redRow2, rWidth, rHeight, RED);
	drawRect(redCol3, redRow3, rWidth, rHeight, RED);
	drawRect(redCol4, redRow4, rWidth, rHeight, RED);
	drawRect(redCol5, redRow5, rWidth, rHeight, RED);
	drawRect(targetCol,targetRow,tWidth,tHeight,YELLOW);
	
	// variable update
	uOldRow = uRow;
	uOldCol = uCol;
}

void movingRectangles(){

	 for (int i = 0; i < arrLength; i++) {
        oldrectangleRows1[i] = rectangleRows1[i];
		oldrectangleRows2[i] = rectangleRows2[i];
		if(collision(uCol, uRow, uWidth, uHeight,rectangleCols1[i], rectangleRows1[i], 8, 8) || collision(uCol, uRow, uWidth, uHeight,rectangleCols2[i], rectangleRows2[i], 8, 8)){
	
			exit(0);

		}else{

			rectangleRows1[i]++;
			rectangleRows2[i]++;

		}

        if (rectangleRows1[i] > 240 - 20 || rectangleRows2[i] > 240 - 20   ) {

			rectangleRows1[i] = 0;
			rectangleRows2[i] = 0;
		
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
	for(int i = 0; i < arrLength; i++){
		clearFallingRectangle(oldrectangleRows2[i],oldrectangleCols2[i]);
	}
	for (int i = 0; i < arrLength; i++)
	{
		drawRectangles(rectangleRows2[i],rectangleCols2[i]);
	}
	
}

void inBoundry(){
	if (uCol < 0) { 
		uOldCol = uCol;
		uCol = 0;
	}
	if (uCol + uWidth - 1 > SCREENWIDTH - 1) { 
		uOldCol = uCol;
		uCol = (SCREENWIDTH - 1) - (uWidth - 1);
	}
	if (uRow + uHeight - 1 > SCREENHEIGHT - 1) { 
		uOldRow = uRow;
		uRow = (SCREENHEIGHT - 1) - (uHeight - 1);
	}
	
}

void isButton(){
	if ((BUTTON_PRESSED(BUTTON_LEFT)) || (BUTTON_HELD(BUTTON_LEFT))) {
	 	uCol-=1;
	}
	if((BUTTON_PRESSED(BUTTON_UP)) || (BUTTON_HELD(BUTTON_UP))){
		uRow-=1;
	}
	if((BUTTON_PRESSED(BUTTON_RIGHT)) || (BUTTON_HELD(BUTTON_RIGHT))){
		uCol+=1;
	}
	if((BUTTON_PRESSED(BUTTON_DOWN)) || (BUTTON_HELD(BUTTON_DOWN))){
		uRow+=1;
	}
}

void isCollision(){
	if(collision(uCol, uRow, uWidth, uHeight,redCol1, redRow1, rWidth, rHeight)){
		//uRow = (SCREENHEIGHT);
		//uCol = (SCREENWIDTH / 2);
		exit(0);
	
	}
	if(collision(uCol, uRow, uWidth, uHeight,redCol2, redRow2, rWidth, rHeight)){
	
		exit(0);
	
	}
	if(collision(uCol, uRow, uWidth, uHeight,redCol3, redRow3, rWidth, rHeight)){
	
		exit(0);

	}
	if(collision(uCol, uRow, uWidth, uHeight,redCol4, redRow4, rWidth, rHeight)){
	
		exit(0);

	}
	if(collision(uCol, uRow, uWidth, uHeight,redCol5, redRow5, rWidth, rHeight)){
	
		exit(0);

	}
	if(collision(uCol, uRow, uWidth, uHeight,targetCol,targetRow,tWidth,tHeight)){

		exit(0);
	}
}

void drawRectangles(int row, int col){

	drawRect(col,row,8,8,RED);

}

void clearFallingRectangle(int row, int col){

	drawRect(col,row,8,8,BLACK);

}



