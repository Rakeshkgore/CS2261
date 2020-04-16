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
    int coinType;

} COINSPRTIE;



//Lives variable
extern int lives;
#define UserCOUNT 20
//Sprite Initialization
USERSPRITE user;
COINSPRTIE coin;


//Prototypes

void initializeGame();
void initializeUser();
void initializeCoin();
void drawCoin();
void updateGame();


//State enums
enum { USERUP, USERRIGHT, USERDOWN, USERLEFT, USERBODY, COIN, USERIDLE, BLACKBG, BULLETS};
