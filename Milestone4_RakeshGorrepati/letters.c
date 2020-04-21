
//{{BLOCK(letters)

//======================================================================
//
//	letters, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 40 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1280 + 2048 = 3840
//
//	Time-stamp: 2020-04-20, 20:06:07
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short lettersTiles[640] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x2111,0x1111,0x2111,0x1111,0x1211,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1221,0x1111,0x1221,0x1112,0x2121,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1122,0x1111,0x1122,0x2111,0x1121,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1122,0x2111,0x1122,0x2111,0x1212,0x1211,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1112,0x2221,0x1112,0x1112,0x2112,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1112,0x1111,0x1121,0x1111,0x1211,0x1211,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2111,0x1222,0x1211,0x2111,0x1121,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x2222,0x2111,0x1111,0x1211,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1222,0x1112,0x1121,0x1121,0x1121,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1221,0x2111,0x1221,0x2111,0x2121,0x2111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2111,0x2222,0x1211,0x1111,0x1211,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1112,0x1111,0x1111,0x1112,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1112,0x1111,0x1112,0x1111,0x1112,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2111,0x1122,0x1111,0x1112,0x1111,0x1112,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1112,0x1211,0x1112,0x1211,0x1112,0x1211,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2221,0x1222,0x1121,0x1111,0x1121,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2211,0x1222,0x1121,0x2111,0x1121,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2111,0x1111,

	0x1111,0x1211,0x1111,0x1121,0x1111,0x1121,0x1111,0x2221,
	0x1111,0x1112,0x1111,0x1112,0x2222,0x2222,0x2222,0x2222,
	0x1112,0x2121,0x1121,0x1121,0x1121,0x1121,0x1122,0x1121,
	0x1211,0x1121,0x1211,0x1121,0x2222,0x2222,0x2222,0x2222,
	0x2111,0x1121,0x1212,0x1121,0x1212,0x1121,0x1121,0x1121,
	0x1121,0x1121,0x1111,0x1121,0x2222,0x2222,0x2222,0x2222,
	0x1212,0x1211,0x2112,0x1121,0x2112,0x1121,0x1112,0x1112,
	0x1112,0x1112,0x1112,0x1111,0x2222,0x2222,0x2222,0x2222,

	0x2112,0x1111,0x2112,0x1111,0x2112,0x1111,0x2112,0x1111,
	0x1112,0x1112,0x1112,0x2221,0x2222,0x2222,0x2222,0x2222,
	0x1211,0x1211,0x1211,0x1111,0x1211,0x1111,0x1211,0x1111,
	0x1121,0x1211,0x1112,0x1211,0x2222,0x2222,0x2222,0x2222,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x2222,0x2222,0x2222,0x2222,
	0x1121,0x1111,0x1121,0x1111,0x1121,0x1111,0x1121,0x1111,
	0x1211,0x2111,0x2111,0x1222,0x2222,0x2222,0x2222,0x2222,

	0x1211,0x1111,0x1211,0x1111,0x1211,0x1111,0x1211,0x1111,
	0x2111,0x1111,0x1111,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x1121,0x1121,0x1121,0x1121,0x1121,0x1121,0x1121,0x1121,
	0x1112,0x1121,0x1111,0x1222,0x2222,0x2222,0x2222,0x2222,
	0x2121,0x2111,0x1121,0x2112,0x1121,0x2121,0x1121,0x2121,
	0x1121,0x2211,0x1121,0x2211,0x2222,0x2222,0x2222,0x2222,
	0x1211,0x1111,0x2111,0x2222,0x1111,0x1111,0x1111,0x1111,
	0x1211,0x1111,0x2111,0x2222,0x2222,0x2222,0x2222,0x2222,

	0x1111,0x1112,0x1111,0x1111,0x1112,0x1111,0x1112,0x1111,
	0x1112,0x1112,0x1111,0x1112,0x2222,0x2222,0x2222,0x2222,
	0x1111,0x1112,0x1111,0x1112,0x1111,0x1112,0x1111,0x1112,
	0x1111,0x1112,0x1111,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x1111,0x1112,0x1111,0x1112,0x1111,0x1112,0x1111,0x1112,
	0x1111,0x1112,0x2122,0x1122,0x2222,0x2222,0x2222,0x2222,
	0x1121,0x1121,0x1121,0x1121,0x1211,0x1112,0x1211,0x1112,
	0x2111,0x1111,0x2111,0x1111,0x2222,0x2222,0x2222,0x2222,

	0x1121,0x1111,0x2221,0x1222,0x1121,0x1111,0x1121,0x1111,
	0x1121,0x1111,0x2221,0x1222,0x2222,0x2222,0x2222,0x2222,
	0x1121,0x1111,0x2211,0x1222,0x1111,0x2111,0x1111,0x2111,
	0x1121,0x2111,0x2211,0x1222,0x2222,0x2222,0x2222,0x2222,
	0x2111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x2111,0x1111,0x2111,0x1111,0x2222,0x2222,0x2222,0x2222,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2111,
};

const unsigned short lettersMap[1024] __attribute__((aligned(4)))=
{
	0x2001,0x2002,0x2003,0x2004,0x2005,0x2006,0x2007,0x2007,
	0x2007,0x2007,0x2008,0x2009,0x200A,0x200B,0x200C,0x200D,
	0x2007,0x2007,0x2007,0x2007,0x200E,0x200F,0x2010,0x2011,
	0x2012,0x2013,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2014,0x2015,0x2016,0x2017,0x2018,0x2019,0x201A,0x201A,
	0x201A,0x201A,0x201B,0x201C,0x201D,0x201E,0x201F,0x2020,
	0x201A,0x201A,0x201A,0x201A,0x2021,0x2022,0x2023,0x2024,
	0x2025,0x2026,0x201A,0x201A,0x201A,0x201A,0x201A,0x201A,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,

	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,
	0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2007,0x2027,
};

const unsigned short lettersPal[256] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x76A0,0x017F,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(letters)
