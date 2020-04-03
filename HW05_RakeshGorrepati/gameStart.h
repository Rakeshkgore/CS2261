
//{{BLOCK(gameStart)

//======================================================================
//
//	gameStart, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 32 + 2048 = 2592
//
//	Time-stamp: 2020-03-12, 17:36:31
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESTART_H
#define GRIT_GAMESTART_H

#define gameStartTilesLen 32
extern const unsigned short gameStartTiles[16];

#define gameStartMapLen 2048
extern const unsigned short gameStartMap[1024];

#define gameStartPalLen 512
extern const unsigned short gameStartPal[256];

#endif // GRIT_GAMESTART_H

//}}BLOCK(gameStart)
