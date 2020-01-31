#include "myLib.h"

unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int col, int row, unsigned short color) {
    videoBuffer[OFFSET(col, row, SCREENWIDTH)] = color;
}

void drawRect(int col, int row, int width, int height, unsigned short color) {
    // TODO #1: implement this function
    // Function for drawing rectangle
    int i,j;
    for(i = 0; i < width; i++){
        for(j = 0; j < height; j++){
            setPixel(col + i, row + j, color);
        }
    }
}

void fillScreen(unsigned short color) {
    // TODO #2: implement this function
    // note: you may only use a single loop
    // function for filling screen with background color
    for(int i = 0; i < 240*160; i++){
        videoBuffer[i] = color;
    }
}

void waitForVBlank() {
    while (SCANLINECOUNTER > 160);
    while (SCANLINECOUNTER < 160);
}

int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    // TODO #5.0: implement this function
    // Collision function passing in parameters of two different rectangles and seeing if they collide
    if( (rowA + heightA >= rowB) && (rowA <= rowB + heightB) && (colA + widthA >= colB) && (colA <= colB + widthB))
    {
        return 1;
    }else {
        return 0;
    }
}