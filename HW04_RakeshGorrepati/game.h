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
    int isAsteroid;
} ASTEROID;

// Constants
#define ASTEROIDCOUNT 5
#define BULLETCOUNT 6
#define LIVESCOUNT 1
#define FALLINGRECTSNGLECOUNT 2
#define TIMEREMAINING 10
#define TIME 5000

// Custom Game Colors
#define NUMCOLORS 6
// This does an enum trick to make them the last indeces of the palette
enum {BLACKS=(256-NUMCOLORS), BLUES, GREENS, REDS, WHITES, GRAYS};
extern unsigned short colors[NUMCOLORS];

// Variables
extern USER user;
extern BULLET bullets[BULLETCOUNT];
extern ASTEROID asteroids[ASTEROIDCOUNT];
extern int asteroidsRemaining;
extern int fallingRectanglesRemaining;
extern int livesRemaining;
extern int reachedTarget;
extern int timeRemaining;
extern int time;


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












