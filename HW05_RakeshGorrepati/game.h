//Snake Struct
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
    int applesCollected;

} SNAKESPRITE;

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

} APPLESPRITE;

//Lives variable
extern int lives;
#define SNAKECOUNT 20
//Sprite Initialization
SNAKESPRITE snake;
SNAKESPRITE snakeArray[28];
APPLESPRITE apple;


//Prototypes
void initializeGame();
void initializeSnake();
void initializeApple();
void drawApple();
void updateGame();
void growBody();
void updateSnake();

//State enums
enum { SNAKEUP, SNAKERIGHT, SNAKEDOWN, SNAKELEFT, SNAKEBODY, APPLE, SNAKEIDLE, BLACKBG};
