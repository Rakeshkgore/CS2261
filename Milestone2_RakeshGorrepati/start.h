
//{{BLOCK(start)

//======================================================================
//
//	start, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 109 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 3488 + 2048 = 6048
//
//	Time-stamp: 2020-04-08, 19:52:42
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_START_H
#define GRIT_START_H

#define startTilesLen 3488
extern const unsigned short startTiles[1744];

#define startMapLen 2048
extern const unsigned short startMap[1024];

#define startPalLen 512
extern const unsigned short startPal[256];

#endif // GRIT_START_H

//}}BLOCK(start)
