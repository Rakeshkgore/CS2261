
//{{BLOCK(gameScreen2)

//======================================================================
//
//	gameScreen2, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 111 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 3552 + 4096 = 8160
//
//	Time-stamp: 2020-04-20, 19:59:48
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN2_H
#define GRIT_GAMESCREEN2_H

#define gameScreen2TilesLen 3552
extern const unsigned short gameScreen2Tiles[1776];

#define gameScreen2MapLen 4096
extern const unsigned short gameScreen2Map[2048];

#define gameScreen2PalLen 512
extern const unsigned short gameScreen2Pal[256];

#endif // GRIT_GAMESCREEN2_H

//}}BLOCK(gameScreen2)
