
//{{BLOCK(pauseScreen)

//======================================================================
//
//	pauseScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 64 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 2048 + 2048 = 4608
//
//	Time-stamp: 2020-04-08, 20:00:04
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSESCREEN_H
#define GRIT_PAUSESCREEN_H

#define pauseScreenTilesLen 2048
extern const unsigned short pauseScreenTiles[1024];

#define pauseScreenMapLen 2048
extern const unsigned short pauseScreenMap[1024];

#define pauseScreenPalLen 512
extern const unsigned short pauseScreenPal[256];

#endif // GRIT_PAUSESCREEN_H

//}}BLOCK(pauseScreen)
