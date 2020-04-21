
//{{BLOCK(gameScreen)

//======================================================================
//
//	gameScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 93 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2976 + 2048 = 5536
//
//	Time-stamp: 2020-04-20, 20:06:33
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN_H
#define GRIT_GAMESCREEN_H

#define gameScreenTilesLen 2976
extern const unsigned short gameScreenTiles[1488];

#define gameScreenMapLen 2048
extern const unsigned short gameScreenMap[1024];

#define gameScreenPalLen 512
extern const unsigned short gameScreenPal[256];

#endif // GRIT_GAMESCREEN_H

//}}BLOCK(gameScreen)
