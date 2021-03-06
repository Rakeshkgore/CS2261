# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "game.h" 1

typedef struct {
 int row;
 int col;
    int rdel;
    int cdel;
 int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int active;
    int curFrame;
    int numFrames;
    int coinsCollected;
    int worldCol;
    int worldRow;
    int bulletTimer;

} USERSPRITE;

typedef struct {

    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniState;
    int active;
    int index;

} COINSPRITE;

typedef struct {

    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniState;
    int active;
    int index;

} REDCOINSPRITE;


typedef struct
{
    int row;
    int col;
    int oldRow;
    int oldCol;
    int rdel;
    int height;
    int width;
    unsigned short color;
    int active;
    int erased;
    int aniState;
    int index;

} BULLET;

typedef struct {

    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniState;
    int active;
    int index;

} TARGETSPRITE;
# 95 "game.h"
extern int lives;
extern int ammoRemaining;
extern int unlimited;
extern USERSPRITE user;
extern BULLET bullets[10];
extern COINSPRITE coiny[20];
extern TARGETSPRITE target[2];
extern REDCOINSPRITE red[20];





void initializeGame();
void initializeUser();
void initializeCoin();
void drawCoin();
void updateGame();
void updateUser();
void fireBullet();
void updateBullet();
void drawBullet();
void drawGame();

void drawUser();
void updateGame();
void fireCoin();
void updateCoin(COINSPRITE *);



enum { USERIDLE};
# 2 "game.c" 2
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 68 "myLib.h"
extern unsigned short *videoBuffer;
# 89 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 161 "myLib.h"
void hideSprites();
# 182 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 193 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 233 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);

extern unsigned short hOff;
# 330 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;
# 3 "game.c" 2
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 1 3
# 10 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\ieeefp.h" 1 3
# 11 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\_ansi.h" 1 3
# 10 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\_ansi.h" 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\newlib.h" 1 3
# 14 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\newlib.h" 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\_newlib_version.h" 1 3
# 15 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\newlib.h" 2 3
# 11 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\_ansi.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\config.h" 1 3



# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\config.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\features.h" 1 3
# 6 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\config.h" 2 3
# 12 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\_ansi.h" 2 3
# 12 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 2 3




# 1 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 1 3 4
# 209 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 3 4

# 209 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 321 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 3 4
typedef unsigned int wchar_t;
# 17 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 2 3

# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 1 3
# 13 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\_ansi.h" 1 3
# 14 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 1 3 4
# 143 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 1 3
# 24 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_types.h" 1 3



# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 1 3
# 41 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 5 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_types.h" 2 3


typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\lock.h" 1 3




# 1 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stdint.h" 1 3 4
# 9 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stdint.h" 3 4
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 1 3 4
# 13 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 3 4
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_intsup.h" 1 3 4
# 35 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 2 3 4
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_stdint.h" 1 3 4
# 20 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stdint.h" 2 3 4
# 6 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 3
typedef unsigned int __size_t;
# 145 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 3
typedef signed int _ssize_t;
# 156 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 1 3 4
# 350 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 38 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 610 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

  void *deviceData;
};
# 817 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\cdefs.h" 1 3
# 47 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\cdefs.h" 3
# 1 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 1 3 4
# 48 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\cdefs.h" 2 3
# 20 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\stdlib.h" 1 3
# 21 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 2 3
# 33 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);





int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);
# 134 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;
# 156 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 188 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
int system (const char *__string);
# 199 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
void _Exit (int __status) __attribute__ ((__noreturn__));




int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);



int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 221 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 260 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);
# 281 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
int _unsetenv_r (struct _reent *, const char *__string);







char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 319 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 336 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3

# 4 "game.c" 2


# 5 "game.c"
USERSPRITE user;
COINSPRITE coiny[20];
BULLET bullets[10];
TARGETSPRITE target[2];
REDCOINSPRITE red[20];


void initializeGame();
void initializeRed();
void initializeUser();
void initializeCoin();
void initializeBullets();
void initializeTargets();
void updateGame();
void updateUser();
void fireBullet();
void drawGame();
void drawGame1();
void drawUser();
void updateGame();
void fireCoin();
void updateCoin(COINSPRITE *);
void drawCoin(COINSPRITE *);
void updateBullet(BULLET *);
void drawBullet(BULLET *);
void drawAmmo();
void updateTarget(TARGETSPRITE *);
void drawTarget(TARGETSPRITE *);
void fireTarget();
void drawRed(REDCOINSPRITE *);
void fireRed();
void updateRed(REDCOINSPRITE *);
void drawCoinCount();
void drawLivesCount();


int ammoRemaining;
int lives;
int counter;
int targetCounter;
int unlimited;


void initializeGame() {

    initializeUser();
    initializeCoin();
    initializeBullets();
    initializeTargets();
    initializeRed();
    lives = 2;
    counter = 0;
    unlimited = 1;
    ammoRemaining = 10;
    targetCounter = 5000;

}

void drawGame(){

    drawUser();

    drawAmmo();
    drawCoinCount();
    drawLivesCount();


    for (int i = 0; i < 20; i++) {

        drawCoin(&coiny[i]);

    }
    for (int i = 0; i < 20; i++) {

        drawRed(&red[i]);

    }
    for(int i = 0; i < 10; i++) {

        drawBullet(&bullets[i]);

    }
    for(int i = 0; i < 2; i++){

        drawTarget(&target[i]);

    }

}


void updateGame() {

    updateUser();
    counter++;
    targetCounter--;

    for (int i = 0; i < 20; i++) {

        updateCoin(&coiny[i]);

    }
    for (int i = 0; i < 20; i++) {

        updateRed(&red[i]);

    }
    for(int i = 0; i < 10; i++) {

        updateBullet(&bullets[i]);

    }
    for(int i = 0; i < 2; i++) {

        updateTarget(&target[i]);

    }
    if(targetCounter % 500 == 0){

        fireTarget();

    }

    if (counter > 50) {
        counter = 0;
        int r = (rand() % 160);
        if (r > 60) {

            fireCoin();
            fireRed();

        }
    }

    if((((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) && (user.bulletTimer >= 20)) && ((ammoRemaining > 0) || unlimited == 0)){

        fireBullet();
        ammoRemaining--;
        user.bulletTimer = 0;

    }
    if(((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))))){

        unlimited--;

    }
    user.bulletTimer++;


}


void updateUser() {

    if (user.aniState != USERIDLE) {
        user.prevAniState = user.aniState;
        user.aniState = USERIDLE;
    }

    if(user.aniCounter % 18 == 0) {

      user.curFrame = (user.curFrame + 1) % user.numFrames;

 }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6))) && (!(user.row < 8 + user.height))) {

        user.aniState = USERIDLE;
        user.row-=user.rdel;

    }else{

        user.row++;

 }

    if (user.aniState == USERIDLE) {

        user.curFrame = 0;
        user.aniState = user.prevAniState;

    } else {

        user.aniCounter++;

    }


    if ((user.row > 150) && lives >= 1){

        lives--;
        user.col = 240/2 - (user.width/2) - 50;
        user.row = 160/2 - (user.height/2) - 20;

    }
    if ((user.row > 150) && unlimited == 0){

        user.col = 240/2 - (user.width/2) - 50;
        user.row = 160/2 - (user.height/2) - 20;

    }


}


void initializeUser() {

    user.col = 240/2 - (user.width/2) - 70;
    user.row = 160/2 - (user.height/2) - 20;
    user.width = 8;
    user.height = 8;
    user.cdel = 2;
    user.rdel = 2;
    user.aniCounter = 0;
    user.curFrame = 0;
    user.numFrames = 3;
    user.coinsCollected = 0;
    user.aniState = USERIDLE;
    user.active = 1;
    user.bulletTimer = 20;

}

void initializeBullets(){

    for(int i = 0; i < 10; i++) {

        bullets[i].height = 1;
        bullets[i].width = 1;
        bullets[i].col = user.col;
        bullets[i].row = user.row;
        bullets[i].oldCol = bullets[i].col;
        bullets[i].oldRow = bullets[i].row;
        bullets[i].rdel = -2;
        bullets[i].active = 0;
        bullets[i].aniState = 26;
        bullets[i].index = i + 1;

    }

}


void initializeCoin() {
    for(int i = 0; i < 20; i++){

        coiny[i].width = 8;
        coiny[i].height = 8;
        coiny[i].col = 0;
        coiny[i].row = 0;
        coiny[i].active = 0;
        coiny[i].aniState = 27;
        coiny[i].index = 10 + 3 + i;

    }

}

void initializeRed() {

    for(int i = 0; i < 20; i++){

        red[i].width = 8;
        red[i].height = 8;
        red[i].col = 0;
        red[i].row = 0;
        red[i].active = 0;
        red[i].aniState = 28;
        red[i].index = 10 + 20 + 2 + 3 + i;

    }

}

void initializeTargets() {

    for(int i = 0; i < 2; i++){

        target[i].width = 8;
        target[i].height = 8;


        target[i].col = 240/2;
        target[i].row = 160/2;
        target[i].active = 0;
        target[i].aniState = 2;
        target[i].index = 10 + 20 + i;

    }

}

void drawUser(){

    shadowOAM[0].attr0 = (0xFF & user.row) | (0<<13) | (0<<14);
    shadowOAM[0].attr1 = (0x1FF & user.col) | (1<<14);
    shadowOAM[0].attr2 = ((user.curFrame)*32+(user.aniState));

}

void drawBullet(BULLET *b){

    if(b -> active){

        shadowOAM[b->index].attr0 = (0xFF & b -> row) | (0<<13) | (0<<14);
        shadowOAM[b->index].attr1 = (0xFF & b -> col)| (0<<14);
        shadowOAM[b->index].attr2 = ((0)*32+(b->aniState));

    }else{

        shadowOAM[b->index].attr0 = (2<<8);

    }

}


void drawCoin(COINSPRITE *c) {

    if(c -> active){

        shadowOAM[c->index].attr0 = (0xFF & c -> row) | (0<<13) | (0<<14);
        shadowOAM[c->index].attr1 = (0x1FF & c -> col) | (0<<14);
        shadowOAM[c->index].attr2 = ((0)*32+(c->aniState));

    } else {

        shadowOAM[c->index].attr0 = (2<<8);

    }


}

void drawRed(REDCOINSPRITE *r) {

    if(r -> active){

        shadowOAM[r->index].attr0 = (0xFF & r -> row) | (0<<13) | (0<<14);
        shadowOAM[r->index].attr1 = (0x1FF & r -> col) | (0<<14);
        shadowOAM[r->index].attr2 = ((0)*32+(r->aniState));

    } else {

        shadowOAM[r->index].attr0 = (2<<8);

    }


}

void drawTarget(TARGETSPRITE *t){

    if(t -> active) {

        shadowOAM[t->index].attr0 = (0xFF & t -> row) | (0<<13) | (0<<14);
        shadowOAM[t->index].attr1 = (0x1FF & t -> col) | (0<<14);
        shadowOAM[t->index].attr2 = ((0)*32+(t->aniState));

    } else {

        shadowOAM[t->index].attr0 = (2<<8);

    }

}

void drawAmmo(){


    shadowOAM[100].attr0 = (6) | (0<<13) | (0<<14);
    shadowOAM[100].attr1 = (50) | (0<<14);
    shadowOAM[100].attr2 = ((0)*32+(ammoRemaining + 3));

    if (ammoRemaining < 1) {

        shadowOAM[100].attr0 = ((0)*32+(3));

    }

}

void drawCoinCount(){

    if (user.coinsCollected < 1) {

        shadowOAM[101].attr0 = ((0)*32+(3));

    }

    shadowOAM[101].attr0 = (5) | (0<<13) | (0<<14);
    shadowOAM[101].attr1 = (127) | (0<<14);
    shadowOAM[101].attr2 = ((0)*32+(user.coinsCollected + 3));

}

void drawLivesCount(){
    if(unlimited != 0){

    shadowOAM[102].attr0 = (6) | (0<<13) | (0<<14);
    shadowOAM[102].attr1 = (207) | (0<<14);
    shadowOAM[102].attr2 = ((0)*32+(lives + 3));

    }else {

        shadowOAM[102].attr2 = ((0)*32+(14));

    }


}

void fireBullet(){

    for(int i = 0; i < 10; i++){

        if(bullets[i].active == 0){

            bullets[i].row = user.row;
            bullets[i].col = user.col + user.width / 2 + bullets[i].width / 2;
            bullets[i].active = 1;
            break;

        }

    }

}

void fireCoin() {

    for (int i = 0; i < 20; i++) {

        if(coiny[i].active == 0){

            coiny[i].row = (rand() % (160 - coiny[i].height));
            coiny[i].col = 240 - coiny[i].width;
            coiny[i].active = 1;
            break;

        }

    }


}

void fireRed() {

    for (int i = 0; i < 20; i++) {

        if(red[i].active == 0){

            red[i].row = (rand() % (160 - red[i].height));
            red[i].col = 240 - red[i].width;
            red[i].active = 1;
            break;

        }

    }


}

void fireTarget() {

    for(int i = 0; i < 2; i++){

        if(target[i].active == 0){

            target[i].row = rand() % 130;
            target[i].col = 200;
            target[i].active = 1;
            break;

        }
    }
}

void updateBullet(BULLET* b) {

 if (b->active) {

  b-> col++;

     if (b->col > (240 - b->width)){

      b->active = 0;
     }
 }
}


void updateCoin(COINSPRITE *d){
    d -> col--;
    hOff++;
    (*(volatile unsigned short *)0x04000010) = hOff/15;
    (*(volatile unsigned short *)0x04000014) = hOff/30;

    if (d->active && collision(user.col, user.row, user.width, user.height, d->col, d->row, d->width, d->height)) {

        d->active = 0;
        lives--;

    }
    if (d->active && collision(user.col, user.row, user.width, user.height, d->col, d->row, d->width, d->height) && unlimited == 0) {

        d->active = 0;

    }
    for(int i = 0; i < 10; i++){

        if (d->active && collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, d->col, d->row, d->width, d->height)) {
            d->active = 0;

        }

    }

    if (d-> col <= d -> width - 8) {

        d -> active = 0;

    }

}


void updateRed(REDCOINSPRITE *d){
    d -> col--;

    if (d->active && collision(user.col, user.row, user.width, user.height, d->col, d->row, d->width, d->height)) {
        d->active = 0;
        user.coinsCollected++;
    }
    for(int i = 0; i < 10; i++){

        if (d->active && collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, d->col, d->row, d->width, d->height)) {

            d->active = 0;

        }

    }

    if (d-> col <= 0 + d -> width - 8) {

        d -> active = 0;

    }

}

void updateTarget(TARGETSPRITE *t){

    for(int i = 0; i < 10; i++){

        if (t->active && collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, t->col, t->row, t->width, t->height)) {

            t->active = 0;
            lives++;

        }

    }
}
