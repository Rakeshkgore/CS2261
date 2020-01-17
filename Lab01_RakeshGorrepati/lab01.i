# 1 "lab01.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lab01.c"
# 24 "lab01.c"
void setPixel(int, int, unsigned short);
void drawTriangle(int, int);
void drawRect(int, int);


volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

int main() {

    (*(volatile unsigned short *)0x4000000) = 3 | (1<<10);
    drawRect(0,50);
    drawTriangle(0,0);
    drawTriangle(100,100);



    while(1);
}


void setPixel(int col, int row, unsigned short color) {


    videoBuffer[((row)*(240)+(col))] = color;

}

void drawTriangle(int col, int row) {



    for(int i = 10; i < 50; i++){

        setPixel(col + i ,row+i,((31) | (31)<<5 | (31)<<10));

    }
    for(int i = 10; i < 50; i++){

        setPixel(col+10,row+i,((31) | (31)<<5 | (31)<<10));

    }
    for(int i = 10; i < 50; i++){

        setPixel(col+i,row+50,((31) | (31)<<5 | (31)<<10));

    }

}

void drawRect(int col, int row) {


    for(int i = 50; i < 100; i++){

        for(int j = 50; j<60; j++){

            setPixel(col + i ,row+j,((31) | (31)<<5 | (31)<<10));

        }

    }



}
