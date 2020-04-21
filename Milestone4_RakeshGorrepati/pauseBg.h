
//{{BLOCK(pauseBg)

//======================================================================
//
//	pauseBg, 256x168@4, 
//	+ palette 256 entries, not compressed
//	+ 438 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x21 
//	Total size: 512 + 14016 + 1344 = 15872
//
//	Time-stamp: 2020-04-20, 23:01:49
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSEBG_H
#define GRIT_PAUSEBG_H

#define pauseBgTilesLen 14016
extern const unsigned short pauseBgTiles[7008];

#define pauseBgMapLen 1344
extern const unsigned short pauseBgMap[672];

#define pauseBgPalLen 512
extern const unsigned short pauseBgPal[256];

#endif // GRIT_PAUSEBG_H

//}}BLOCK(pauseBg)
