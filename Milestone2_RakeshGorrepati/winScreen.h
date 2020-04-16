
//{{BLOCK(winScreen)

//======================================================================
//
//	winScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 38 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 1216 + 2048 = 3776
//
//	Time-stamp: 2020-04-08, 19:59:25
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINSCREEN_H
#define GRIT_WINSCREEN_H

#define winScreenTilesLen 1216
extern const unsigned short winScreenTiles[608];

#define winScreenMapLen 2048
extern const unsigned short winScreenMap[1024];

#define winScreenPalLen 512
extern const unsigned short winScreenPal[256];

#endif // GRIT_WINSCREEN_H

//}}BLOCK(winScreen)
