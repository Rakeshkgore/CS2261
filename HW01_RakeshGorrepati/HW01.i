# 1 "HW01.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "HW01.c"
# 24 "HW01.c"
void setPixel(int, int, unsigned short);
void drawTriangle(int, int,unsigned short);
void drawRect(int, int, unsigned short);


volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

int main() {

    (*(volatile unsigned short *)0x4000000) = 3 | (1<<10);

    drawTriangle(0,0,((31) | (0)<<5 | (0)<<10));




    while(1){
        drawTriangle(0,0,0);
        drawTriangle(50,50,((31) | (0)<<5 | (0)<<10));

        delay(300);

        drawTriangle(50,50,0);
        drawTriangle(100,100,((31) | (31)<<5 | (31)<<10));

        delay(300);

        drawTriangle(100,100,0);
        drawTriangle(0,0,((0) | (0)<<5 | (31)<<10));

        delay(300);

    }
}


void setPixel(int col, int row, unsigned short color) {


    videoBuffer[((row)*(240)+(col))] = color;

}

void drawTriangle(int col, int row, unsigned short color) {



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
