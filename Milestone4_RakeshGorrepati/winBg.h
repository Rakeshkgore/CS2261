
//{{BLOCK(winBg)

//======================================================================
//
//	winBg, 256x168@4, 
//	+ palette 256 entries, not compressed
//	+ 478 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x21 
//	Total size: 512 + 15296 + 1344 = 17152
//
//	Time-stamp: 2020-04-20, 17:50:37
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINBG_H
#define GRIT_WINBG_H

#define winBgTilesLen 15296
extern const unsigned short winBgTiles[7648];

#define winBgMapLen 1344
extern const unsigned short winBgMap[672];

#define winBgPalLen 512
extern const unsigned short winBgPal[256];

#endif // GRIT_WINBG_H

//}}BLOCK(winBg)
