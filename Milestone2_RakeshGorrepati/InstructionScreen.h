
//{{BLOCK(InstructionScreen)

//======================================================================
//
//	InstructionScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 55 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 1760 + 2048 = 4320
//
//	Time-stamp: 2020-04-08, 19:55:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSCREEN_H
#define GRIT_INSTRUCTIONSCREEN_H

#define InstructionScreenTilesLen 1760
extern const unsigned short InstructionScreenTiles[880];

#define InstructionScreenMapLen 2048
extern const unsigned short InstructionScreenMap[1024];

#define InstructionScreenPalLen 512
extern const unsigned short InstructionScreenPal[256];

#endif // GRIT_INSTRUCTIONSCREEN_H

//}}BLOCK(InstructionScreen)
