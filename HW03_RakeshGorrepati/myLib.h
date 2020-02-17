#ifndef MY_LIB_H
#define MY_LIB_H

// common typedefs
typedef unsigned short u16;

// common macros
#define OFFSET(col,row,rowlen) ((row)*(rowlen)+(col))

// ================================= DISPLAY ==================================

// display control register
#define REG_DISPCTL (*(unsigned short *)0x4000000)
#define MODE3 3
#define BG2_ENABLE (1<<10)

// display status registers
#define SCANLINECOUNTER (*(volatile unsigned short *)0x4000006)

// display constants
#define SCREENHEIGHT 160
#define SCREENWIDTH 240

// video buffer
extern unsigned short *videoBuffer;

// color
#define COLOR(r,g,b) ((r) | (g)<<5 | (b)<<10)
#define BLACK 0
#define WHITE COLOR(31,31,31)
#define RED COLOR(31,0,0)
#define GREEN COLOR(0,31,0)
#define BLUE COLOR(0,0,31)
#define CYAN COLOR(0,31,31)
#define MAGENTA COLOR(31,0,31)
#define YELLOW COLOR(31,31,0)
#define GRAY COLOR(15,15,15)


#define STARTCOLOR COLOR(31, 31, 15)
#define GAMECOLOR COLOR (0,0,0)
#define PAUSECOLOR COLOR(31, 31, 31)
#define WINCOLOR COLOR(15, 15, 31)
#define LOSECOLOR COLOR(31,5,5)
#define QUITCOLOR COLOR(31,0,0)
#define USERCOLOR COLOR(31,15,10)
#define ASTEROIDCOLOR1 COLOR (15,31,31)
#define ASTEROIDCOLOR2 COLOR (31,15,31)
#define BULLETCOLOR1 COLOR (31,31,20)
#define BULLETCOLOR2 COLOR (25,31,31)

// mode 3 drawing functions
void setPixel(int col, int row, unsigned short color);
void drawRect(int col, int row, int width, int height, unsigned short color);
void fillScreen(unsigned short color);
void drawAster(int col, int row, int width, int height, unsigned short color);


// miscellaneous drawing functions
void waitForVBlank();


// ================================== INPUT ===================================

// button register
#define BUTTONS (*(volatile unsigned short *)0x04000130)

// button masks
#define BUTTON_A		(1<<0)
#define BUTTON_B		(1<<1)
#define BUTTON_SELECT	(1<<2)
#define BUTTON_START	(1<<3)
#define BUTTON_RIGHT	(1<<4)
#define BUTTON_LEFT		(1<<5)
#define BUTTON_UP		(1<<6)
#define BUTTON_DOWN		(1<<7)
#define BUTTON_R		(1<<8)
#define BUTTON_L		(1<<9)

// variables for button macros
extern unsigned short oldButtons;
extern unsigned short buttons;

// button macros
// TODO #3.0: complete these macros
// Macros for button held and pressed
// Initlialize these in main.c and in main while loop
#define BUTTON_HELD(key) (~buttons & (key))
#define BUTTON_PRESSED(key) (!(~oldButtons & (key))) && (~buttons & (key))


// ============================== MISCELLANEOUS ===============================

// miscellaneous functions
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);


#endif