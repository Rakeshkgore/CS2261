#include "myLib.h"

unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int col, int row, unsigned short color) {
    videoBuffer[OFFSET(col, row, SCREENWIDTH)] = color;
}


void drawRect(int col, int row, int width, int height, unsigned short color) {

    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            setPixel(col + j, row + i, color);
        }
    }
}

void drawAster(int col, int row, int width, int height, unsigned short color) {

    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            setPixel(col + j, row + i, color);
            setPixel(col+ j/2, row + i/2, BLACK);
            setPixel(col+ (j+4), row + 10, BLACK);

        }
    }
}


void fillScreen(unsigned short color) {

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
