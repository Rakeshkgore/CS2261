#include <stdlib.h> 
#include "myLib.h"
#include "game.h"

// Prototypes
void initializeGame();
void updateGame();
void drawGame();
void initializeUser();
void updateUser();
void drawUser();
void initializeBullets();
void fireBullet();
void updateBullet(BULLET *);
void drawBullet(BULLET *);
void initializeAsteroids();
void updateAsteroid(ASTEROID *);
void drawAsteroid(ASTEROID *);

// Variable 
USER user;
BULLET bullets[BULLETCOUNT];
ASTEROID asteroids[ASTEROIDCOUNT];
int asteroidsRemaining;

void initializeGame(){
    
    initializeUser();
    initializeBullets();
    initializeAsteroids();
    asteroidsRemaining = ASTEROIDCOUNT;

}

void updateGame(){

    updateUser();

    for( int i = 0; i < BULLETCOUNT; i++ ){
        updateBullet(&bullets[i]);
    }
}






