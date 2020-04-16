//User Struct
typedef struct {
	int row;
	int col;
    int rdel;
    int cdel;
	int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int active;
    int curFrame;
    int numFrames;
    int coinsCollected;
    int worldCol;
    int worldRow;
    int bulletTimer;

} USERSPRITE;

// apple struct
typedef struct {

    int row;
    int col;
    int rdel;
    int cdel;
    int width; 
    int height;
    int aniState;
    int active;
    int index;

} COINSPRTIE;

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
    int aniState;
    int index;

} BULLET;

typedef struct {

    int row;
    int col;
    int rdel;
    int cdel;
    int width; 
    int height;
    int aniState;
    int active;
    int index;

} TARGETSPRITE;

#define BULLETCOUNT 10
#define COINTCOUNT 20
#define TARGETCOUNT 2
#define TIME 5000
#define GRAVITY 100
#define JUMPPOWER 1500
#define SHIFTUP(num) ((num) << 8)
#define SHIFTDOWN(num) ((num) >> 8)



//Lives variable

extern int lives;
extern int ammoRemaining;
extern USERSPRITE user;
extern BULLET bullets[BULLETCOUNT];
extern COINSPRTIE coiny[COINTCOUNT];
extern TARGETSPRITE target[TARGETCOUNT];



//Prototypes

void initializeGame();
void initializeUser();
void initializeCoin();
void drawCoin();
void updateGame();
void updateUser();
void fireBullet();
void updateBullet();
void drawBullet();
void drawGame();
void drawUser();
void updateGame();
void fireCoin();
void updateCoin(COINSPRTIE *);


//State enums
enum { USERUP, USERRIGHT, USERDOWN, USERLEFT, USERBODY, COIN, USERIDLE, BLACKBG, BULLETS, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, TEN, TARGET};
