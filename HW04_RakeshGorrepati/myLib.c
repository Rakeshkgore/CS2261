#include "myLib.h"

// The start of the video memory
unsigned short *videoBuffer = (unsigned short *)0x6000000;

// The start of DMA registers
DMA *dma = (DMA *)0x40000B0;

// mode 4 set pixel function
void setPixel4(int col, int row, unsigned char colorIndex) {

    volatile u16 pixelData = videoBuffer[OFFSET(col,row,SCREENWIDTH)/2];
    if(col & 1){

        pixelData &= 0X00FF; // odd bits cleared
        pixelData |= (colorIndex << 8);

    } else {

        pixelData &= 0XFF00;// even bits cleared
        pixelData |= (colorIndex);

    }
    videoBuffer[OFFSET(col,row,SCREENWIDTH)/2] = pixelData;

}

// drawRect in mode 4
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex) {

    volatile u16 pixelData = colorIndex | (colorIndex << 8);
    for(int i = 0; i < height; i++){
        
        if((col & 1) && (width & 1)) { // odd and odd

            setPixel4(col, row + i , colorIndex);
            if(width > 1) {

                DMANow(3, &pixelData, &videoBuffer[OFFSET(col + 1,row + i,SCREENWIDTH)/2], DMA_SOURCE_FIXED | (width-1) / 2);
           
            }

        }
        if((col & 1) && !(width & 1)){ // odd and even
        
            setPixel4(col, row + i, colorIndex);
            if(width > 2){
                DMANow(3, &pixelData, &videoBuffer[OFFSET(col + 1,row + i,SCREENWIDTH)/2], DMA_SOURCE_FIXED | (width-2) / 2);
            }
            setPixel4(col+width-1, row + i, colorIndex);

        
        }
        if(!(col & 1) && !(width & 1)) { // even and even

           DMANow(3, &pixelData, &videoBuffer[OFFSET(col,row + i,SCREENWIDTH)/2], DMA_SOURCE_FIXED | width / 2);

        }
        if(!(col & 1) && (width & 1)) { // even and odd
            if(width > 1){
                DMANow(3, &pixelData, &videoBuffer[OFFSET(col,row + i,SCREENWIDTH)/2], DMA_SOURCE_FIXED | width / 2);
            }
           setPixel4(col + width - 1,row + i,colorIndex);

        }

    }

}

// Fill screen in mode 4
void fillScreen4(volatile unsigned char colorIndex) {

    volatile u16 pixelData = colorIndex | (colorIndex << 8);
    DMANow(3, &pixelData, videoBuffer, DMA_SOURCE_FIXED | (SCREENWIDTH * SCREENHEIGHT)/2);

}

// Drawing image in mode 4
void drawImage4(int col, int row, int width, int height, const unsigned short *image) {

    for(int r = 0; r < height; r++){

        DMANow(3,&image[OFFSET(0, r, width)/2],&videoBuffer[OFFSET(col,row + r, SCREENWIDTH)/2],width/2);

    }

}

// Making entire screen a image in mode 4
void drawFullscreenImage4(const unsigned short *image) {

    DMANow(3,image,videoBuffer,(SCREENWIDTH*SCREENHEIGHT)/2);

}

// waiting for Vblank function
void waitForVBlank() {

	while(SCANLINECOUNTER > 160);
	while(SCANLINECOUNTER < 160);

}

// Flipping the page
void flipPage() {

    if (REG_DISPCTL & DISP_BACKBUFFER) {
        videoBuffer = BACKBUFFER;
    } else {
        videoBuffer = FRONTBUFFER;
    }
    REG_DISPCTL ^= DISP_BACKBUFFER;

}

// Initializing the DMA
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt) {

    dma[channel].cnt = 0;
    dma[channel].src = src;
    dma[channel].dst = dst;
    dma[channel].cnt = cnt | DMA_ON;

}

// Original collision function
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    
    if( (rowA + heightA >= rowB) && (rowA <= rowB + heightB) && (colA + widthA >= colB) && (colA <= colB + widthB))
    {
        return 1;
    }else {
        return 0;
    }
}