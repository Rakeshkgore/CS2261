//User Struct
typedef struct{
    int row;
    int col;
    int oldRow;
    int oldCol;
    int udel;
    int height;
    int width;
    unsigned short color;
    
} USER;

// Bullet Struct 
typedef struct
{
    int row;
    int col;
    int oldRow;
    int oldCol;
    int rdel;
    int height;
    int width;
    unsigned short color;
    int active;
    int erased;
} BULLET;

// Asteroid Struct
typedef struct
{
    int row;
    int col;
    int oldRow;
    int oldCol;
    int rdel;
    int cdel;
    int height;
    int width;
    unsigned short color;
    int active;
    int erased;
} ASTEROID;

// Constants
#define ASTEROIDCOUNT 6
#define BULLETCOUNT 6

// Variables
extern USER user;
extern BULLET bullets[BULLETCOUNT];
extern ASTEROID asteroids[ASTEROIDCOUNT];
extern int asteroidsRemaining;











