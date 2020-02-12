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

// buttons
unsigned short buttons;
unsigned short oldButtons;

//exit function used to stop when player wins or loses
void exit(int return_code);

//moving rectanlges 
int rectangleRows1[] = {30,20,10,60};
int oldrectangleRows1[] = {30,20,10,0,60};

int rectangleCols1[] = {200,50,65,75};
int oldrectangleCols1[] = {200,50,65,75};

int rectangleRows2[] = {30,100,150,40};
int oldrectangleRows2[] = {30,100,150,40};

int rectangleCols2[] = {150,100,250,300};
int oldrectangleCols2[] = {150,100,250,300};

//array length
int arrLength = 4;

// stationary red rectangles
int redRow1, redRow2, redRow3, redRow4, redRow5, redRow6;
int redCol1, redCol2, redCol3, redCol4, redCol5, redCol6;
int redHeight;
int redWidth;

//target rectangle
int targetRow;
int targetCol;
int targetHeight;
int targetWidth;

// user controlled rectangle
int userRow;
int userCol;
int userOldRow;
int userOldCol;
int userHeight;
int userWidth;

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

	//stationary 6 red rectangles
	redHeight = 5;
	redWidth = 8;
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
	redRow6 = SCREENHEIGHT/2;
	redCol6 = SCREENWIDTH/2 + 15;

	targetCol = SCREENWIDTH/2;
	targetRow = 5;
	targetWidth = 10;
	targetHeight = 5;

	// user controlled rectangle
	userHeight = 5;
	userWidth = 10;
	userRow = (SCREENHEIGHT); // bottom middle edge of screen
	userCol = (SCREENWIDTH / 2); // bottom middle edge of screen
	userOldRow = userRow;
	userOldCol = userCol;

}


void update() {

	//stops using controlled rectangle from going off righ,left,or bottom of screen
	inBoundry();
	
	//functionality to move user controlled rectangle
	isButton();

	//detects collision with with stationary rectangles
	isCollision();

}

void draw() {
	//erase the previous user controlled rectangle
	drawRect(userOldCol, userOldRow, userWidth, userHeight, BLACK);

	//draws the new user controlled rectangle 
	drawRect(userCol, userRow, userWidth, userHeight, WHITE);

	//draws the stationary red rectangles
	drawRect(redCol1, redRow1, redWidth, redHeight, RED);
	drawRect(redCol2, redRow2, redWidth, redHeight, RED);
	drawRect(redCol3, redRow3, redWidth, redHeight, RED);
	drawRect(redCol4, redRow4, redWidth, redHeight, RED);
	drawRect(redCol5, redRow5, redWidth, redHeight, RED);
	drawRect(redCol6, redRow6, redWidth, redHeight, RED);
	drawRect(targetCol,targetRow,targetWidth,targetHeight,YELLOW);
	
	// variable update for user rectangle
	userOldRow = userRow;
	userOldCol = userCol;
}

//draws rectangles that move down and checks for collision to the user rectangle
void movingRectangles(){

	 for (int i = 0; i < arrLength; i++) {

        oldrectangleRows1[i] = rectangleRows1[i];
		oldrectangleRows2[i] = rectangleRows2[i];
		if(collision(userCol, userRow, userWidth, userHeight,rectangleCols1[i], rectangleRows1[i], 8, 5) || collision(userCol, userRow, userWidth, userHeight,rectangleCols2[i], rectangleRows2[i], 8, 5)){

			exit(0);

		}else{

			rectangleRows1[i]++;
			rectangleRows2[i]++;

		}

        if (rectangleRows1[i] > 160  || rectangleRows2[i] > 160) {

			rectangleRows1[i] = 0;
			rectangleRows2[i] = 0;
		
		}

	}
	
}

//clears the rectangles that moves down and draws them again inorder to animate the movement
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

//refer to update function
void inBoundry(){

	if (userCol < 0) { 
		userOldCol = userCol;
		userCol = 0;
	}
	if (userCol + userWidth - 1 > SCREENWIDTH - 1) { 
		userOldCol = userCol;
		userCol = (SCREENWIDTH) - (userWidth);
	}
	if (userRow + userHeight - 1 > SCREENHEIGHT - 1) { 
		userOldRow = userRow;
		userRow = (SCREENHEIGHT) - (userHeight);
	}

}

//refer to update function
void isButton(){
	if ((BUTTON_PRESSED(BUTTON_LEFT)) || (BUTTON_HELD(BUTTON_LEFT))) {
	 	userCol-= 1;
	}
	if((BUTTON_PRESSED(BUTTON_UP)) || (BUTTON_HELD(BUTTON_UP))){
		userRow-= 1;
	}
	if((BUTTON_PRESSED(BUTTON_RIGHT)) || (BUTTON_HELD(BUTTON_RIGHT))){
		userCol+= 1;
	}
	if((BUTTON_PRESSED(BUTTON_DOWN)) || (BUTTON_HELD(BUTTON_DOWN))){
		userRow+= 1;
	}
}

//refer to update function
void isCollision(){

	if(collision(userCol, userRow, userWidth, userHeight,redCol1, redRow1, redWidth, redHeight)){
		//userRow = (SCREENHEIGHT);
		//userCol = (SCREENWIDTH / 2);
		exit(0);
	
	}
	if(collision(userCol, userRow, userWidth, userHeight,redCol2, redRow2, redWidth, redHeight)){
		
		exit(0);
	
	}
	if(collision(userCol, userRow, userWidth, userHeight,redCol3, redRow3, redWidth, redHeight)){
		
		exit(0);

	}
	if(collision(userCol, userRow, userWidth, userHeight,redCol4, redRow4, redWidth, redHeight)){
		
		exit(0);

	}
	if(collision(userCol, userRow, userWidth, userHeight,redCol5, redRow5, redWidth, redHeight)){
	
		exit(0);

	}
	if(collision(userCol, userRow, userWidth, userHeight,targetCol,targetRow,targetWidth,targetHeight)){
		
		exit(0);
	}
	if(collision(userCol, userRow, userWidth, userHeight,redCol6,redRow6,redWidth,redHeight)){
		
		exit(0);
	}
}

void drawRectangles(int row, int col){

	drawRect(col,row,8,5,RED);

}

void clearFallingRectangle(int row, int col){

	drawRect(col,row,8,5,BLACK);

}



