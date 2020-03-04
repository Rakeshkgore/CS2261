# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1




typedef unsigned short u16;
# 27 "myLib.h"
extern unsigned short *videoBuffer;
# 47 "myLib.h"
void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();
# 76 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 87 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    unsigned int cnt;
} DMA;


extern DMA *dma;
# 127 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "myLib.c" 2


unsigned short *videoBuffer = (unsigned short *)0x6000000;


DMA *dma = (DMA *)0x40000B0;


void setPixel4(int col, int row, unsigned char colorIndex) {

    volatile u16 pixelData = videoBuffer[((row)*(240)+(col))/2];
    if(col & 1){

        pixelData &= 0X00FF;
        pixelData |= (colorIndex << 8);

    } else {

        pixelData &= 0XFF00;
        pixelData |= (colorIndex);

    }
    videoBuffer[((row)*(240)+(col))/2] = pixelData;

}


void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex) {

    volatile u16 pixelData = colorIndex | (colorIndex << 8);
    for(int i = 0; i < height; i++){

        if((col & 1) && (width & 1)) {

            setPixel4(col, row + i , colorIndex);
            if(width > 1) {

                DMANow(3, &pixelData, &videoBuffer[((row + i)*(240)+(col + 1))/2], (2 << 23) | (width-1) / 2);

            }

        }
        if((col & 1) && !(width & 1)){

            setPixel4(col, row + i, colorIndex);
            if(width > 2){
                DMANow(3, &pixelData, &videoBuffer[((row + i)*(240)+(col + 1))/2], (2 << 23) | (width-2) / 2);
            }
            setPixel4(col+width-1, row + i, colorIndex);


        }
        if(!(col & 1) && !(width & 1)) {

           DMANow(3, &pixelData, &videoBuffer[((row + i)*(240)+(col))/2], (2 << 23) | width / 2);

        }
        if(!(col & 1) && (width & 1)) {
            if(width > 1){
                DMANow(3, &pixelData, &videoBuffer[((row + i)*(240)+(col))/2], (2 << 23) | width / 2);
            }
           setPixel4(col + width - 1,row + i,colorIndex);

        }

    }

}


void fillScreen4(volatile unsigned char colorIndex) {

    volatile u16 pixelData = colorIndex | (colorIndex << 8);
    DMANow(3, &pixelData, videoBuffer, (2 << 23) | (240 * 160)/2);

}


void drawImage4(int col, int row, int width, int height, const unsigned short *image) {

    for(int r = 0; r < height; r++){

        DMANow(3,&image[((r)*(width)+(0))/2],&videoBuffer[((row + r)*(240)+(col))/2],width/2);

    }

}


void drawFullscreenImage4(const unsigned short *image) {

    DMANow(3,image,videoBuffer,(240*160)/2);

}


void waitForVBlank() {

 while((*(volatile unsigned short *)0x4000006) > 160);
 while((*(volatile unsigned short *)0x4000006) < 160);

}


void flipPage() {

    if ((*(unsigned short *)0x4000000) & (1<<4)) {
        videoBuffer = ((unsigned short *)0x600A000);
    } else {
        videoBuffer = ((unsigned short *)0x6000000);
    }
    (*(unsigned short *)0x4000000) ^= (1<<4);

}


void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt) {

    dma[channel].cnt = 0;
    dma[channel].src = src;
    dma[channel].dst = dst;
    dma[channel].cnt = cnt | (1 << 31);

}


int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {

    if( (rowA + heightA >= rowB) && (rowA <= rowB + heightB) && (colA + widthA >= colB) && (colA <= colB + widthB))
    {
        return 1;
    }else {
        return 0;
    }
}
