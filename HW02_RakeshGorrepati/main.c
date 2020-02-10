#include "myLib.h"
#include "stdlib.h"

// prototypes
void initialize();
void update();
void draw();
void clearFallingRectangle(int row,int col);
void fallingRectangles();
void drawRectanlges(int row,int col);
void movingRectangles();


int rectangleRows1[] = {30,20,10,0};
int oldrectangleRows1[] = {30,20,10,0};

int rectangleCols1[] = {200,50,65,30};
int oldrectangleCols1[] = {200,50,65,30};

int rectangleRows2[] = {30,20,10,0};
int oldrectangleRows2[] = {30,20,10,0};

int rectangleCols2[] = {150,100,250,150};
int oldrectangleCols2[] = {150,100,250,150};
int arrLength = 4;

// buttons
unsigned short buttons;
unsigned short oldButtons;


// green rectangles
int redRow1, redRow2, redRow3;
int redCol1, redCol2, redCol3;
int rHeight;
int rWidth;

// user rectangle
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
		// TODO #3.2: update the button variables each frame
		oldButtons = buttons;
		buttons = BUTTONS;

		update();
		waitForVBlank();
		draw();
		movingRectangles();
		fallingRectangles();

	}
}

void movingRectangles(){

	 for (int i = 0; i < arrLength; i++) {
        oldrectangleRows1[i] = rectangleRows1[i];
		oldrectangleRows2[i] = rectangleRows2[i];
		if(collision(uCol, uRow, uWidth, uHeight,rectangleCols1[i], rectangleRows1[i], 8, 8) || collision(uCol, uRow, uWidth, uHeight,rectangleCols2[i], rectangleRows2[i], 8, 8)){
	
			uRow = (SCREENHEIGHT / 2) - (uHeight / 2);
			uCol = (SCREENWIDTH / 2) - (uWidth / 2);
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

void drawRectangles(int row, int col){
	drawRect(col,row,8,8,RED);
}
void clearFallingRectangle(int row, int col){
	drawRect(col,row,8,8,BLACK);
}

void initialize() {
	REG_DISPCTL = MODE3 | BG2_ENABLE;

	buttons = BUTTONS;
	oldButtons = 0;
	fillScreen(BLACK);


	rHeight = 8;
	rWidth = 8;

	redRow1 = SCREENHEIGHT - 25;
	redCol1 = SCREENWIDTH/2 - 100;								

	redRow2 = SCREENHEIGHT - 25;
	redCol2 = SCREENWIDTH/2;			

	redRow3 = SCREENHEIGHT - 50;
	redCol3 = SCREENWIDTH/2 + 100;   

	// user controlled rectangle
	uHeight = 8;
	uWidth = 15;
	uRow = (SCREENHEIGHT - 5);
	uCol = (SCREENWIDTH / 2);
	uOldRow = uRow;
	uOldCol = uCol;
	uRDel = 1;
	uCDel = 1;
}

// performs all of the game's calculations
void update() {


	// boundary checks
	
	if (uCol < 0) { // left
		uOldCol = uCol;
		uCol = 0;
	}
	if (uCol + uWidth - 1 > SCREENWIDTH - 1) { // right
		uOldCol = uCol;
		uCol = (SCREENWIDTH - 1) - (uWidth - 1);
	}
	if (uRow + uHeight - 1 > SCREENHEIGHT - 1) { // bottom
		uOldRow = uRow;
		uRow = (SCREENHEIGHT - 1) - (uHeight - 1);
	}
	

	// move the blue rectangle with the buttons
	// TODO #4: make the blue rectangle move with the arrow keys
	if (BUTTON_PRESSED(BUTTON_LEFT) || BUTTON_HELD(BUTTON_LEFT)) {
	 	uCol-=1;
	}
	if(BUTTON_PRESSED(BUTTON_UP) || BUTTON_HELD(BUTTON_UP)){
		uRow-=1;
	}
	if(BUTTON_PRESSED(BUTTON_RIGHT) || BUTTON_HELD(BUTTON_RIGHT)){
		uCol+=1;
	}
	if(BUTTON_PRESSED(BUTTON_DOWN) || BUTTON_HELD(BUTTON_DOWN)){
		uRow+=1;
	}



	if(collision(uCol, uRow, uWidth, uHeight,redCol1, redRow1, rWidth, rHeight)){
	
		uRow = (SCREENHEIGHT / 2) - (uHeight / 2);
		uCol = (SCREENWIDTH / 2) - (uWidth / 2);
	}
	if(collision(uCol, uRow, uWidth, uHeight,redCol2, redRow2, rWidth, rHeight)){
	
		uRow = (SCREENHEIGHT / 2) - (uHeight / 2);
		uCol = (SCREENWIDTH / 2) - (uWidth / 2);
	}
	if(collision(uCol, uRow, uWidth, uHeight,redCol3, redRow3, rWidth, rHeight)){
	
		uRow = (SCREENHEIGHT / 2) - (uHeight / 2);
		uCol = (SCREENWIDTH / 2) - (uWidth / 2);
	}

}

// performs all of the writing to the screen
void draw() {
	// UNCOMMENT #1
	// // erase the previous blue rectangle location
	drawRect(uOldCol, uOldRow, uWidth, uHeight, BLACK);

	// // draw the new blue rectangle location
	drawRect(uCol, uRow, uWidth, uHeight, BLUE);

	// // draw stationary green rectangles
	drawRect(redCol1, redRow1, rWidth, rHeight, RED);
	drawRect(redCol2, redRow2, rWidth, rHeight, RED);
	drawRect(redCol3, redRow3, rWidth, rHeight, RED);


	// Update old variables
	uOldRow = uRow;
	uOldCol = uCol;
}