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
#define BULLETCOUNT 6


//Lives variable
extern int lives;
#define UserCOUNT 20
#define COINTCOUNT 20
extern BULLET bullets[BULLETCOUNT];
extern COINSPRTIE coiny[COINTCOUNT];
USERSPRITE user;
COINSPRTIE coin;


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
enum { USERUP, USERRIGHT, USERDOWN, USERLEFT, USERBODY, COIN, USERIDLE, BLACKBG, BULLETS};
