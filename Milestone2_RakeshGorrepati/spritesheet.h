
//{{BLOCK(spritesheet)

//======================================================================
//
//	spritesheet, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 9 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 288 + 2048 = 2848
//
//	Time-stamp: 2020-04-08, 22:21:43
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SPRITESHEET_H
#define GRIT_SPRITESHEET_H

#define spritesheetTilesLen 288
extern const unsigned short spritesheetTiles[144];

#define spritesheetMapLen 2048
extern const unsigned short spritesheetMap[1024];

#define spritesheetPalLen 512
extern const unsigned short spritesheetPal[256];

#endif // GRIT_SPRITESHEET_H

//}}BLOCK(spritesheet)
