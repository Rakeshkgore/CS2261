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
    int bulletTimer;
    
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
#define ASTEROIDCOUNT 3
#define BULLETCOUNT 6
#define LIVESCOUNT 1
#define FALLINGRECTSNGLECOUNT 2
#define TARGETCOUNT 1

// Variables
extern USER user;
extern BULLET bullets[BULLETCOUNT];
extern ASTEROID asteroids[ASTEROIDCOUNT];
extern int asteroidsRemaining;
extern int fallingRectanglesRemaining;
extern int livesRemaining;
extern int reachedTarget;


// Prototypes
void updateBoundry();
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
void movingRectangles();
void fallingRectangles();
void clearFallingRectangle(int row, int col);
void drawRectangles(int row, int col);












