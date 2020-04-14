
//{{BLOCK(gameScreen)

//======================================================================
//
//	gameScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 19 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 608 + 2048 = 3168
//
//	Time-stamp: 2020-04-08, 20:57:42
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN_H
#define GRIT_GAMESCREEN_H

#define gameScreenTilesLen 608
extern const unsigned short gameScreenTiles[304];

#define gameScreenMapLen 2048
extern const unsigned short gameScreenMap[1024];

#define gameScreenPalLen 512
extern const unsigned short gameScreenPal[256];

#endif // GRIT_GAMESCREEN_H

//}}BLOCK(gameScreen)
