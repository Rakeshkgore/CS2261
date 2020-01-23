// GBA Video Registers and Flags
#define REG_DISPCTL (*(volatile unsigned short *)0x4000000)
#define MODE3 3
#define BG2_ENABLE (1<<10)

// Create a color with the specified RGB values
#define COLOR(r, g, b) ((r) | (g)<<5 | (b)<<10)

// Calculate the position of a pixel based on its row and column
#define OFFSET(col, row, rowlen) ((row)*(rowlen)+(col))


// Predefined colors
#define RED COLOR(31, 0, 0)
#define GREEN COLOR(0, 31, 0)
#define BLUE COLOR(0, 0, 31)
#define MAGENTA COLOR(31, 0, 31)
#define CYAN COLOR(0, 31, 31)
#define YELLOW COLOR(31, 31, 0)
#define BLACK 0
#define WHITE COLOR(31, 31, 31)

// Function Prototypes
void setPixel(int, int, unsigned short);
void drawTriangle(int, int,unsigned short);
void drawRect(int, int, unsigned short);

// Global Variables
volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

int main() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;
    
    drawTriangle(0,0,RED);
    //drawTriangle(100,100);

    // TODO: Call your drawTriangle function twice your drawRect function once

    while(1){
        drawTriangle(0,0,BLACK);
        drawTriangle(50,50,RED);

        delay(300);      

        drawTriangle(50,50,BLACK); 
        drawTriangle(100,100,WHITE);

        delay(300);

        drawTriangle(100,100,BLACK);
        drawTriangle(0,0,BLUE);

        delay(300);

    }
}


void setPixel(int col, int row, unsigned short color) {

    // TODO: Complete this function
    videoBuffer[OFFSET(col,row,240)] = color;

}

void drawTriangle(int col, int row, unsigned short color) {

    // TODO: Complete this function
    
    for(int i = 10; i < 50; i++){
         
        setPixel(col + i ,row+i,color);

    }
    for(int i = 10; i < 50; i++){
         
        setPixel(col+10,row+i,color);

    }
    for(int i = 10; i < 50; i++){
         
        setPixel(col+i,row+50,color);

    }

}

void delay(int time){

    for(volatile int i =0; i < time * 1000; i++){
    }
}
