	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r0, #3
	ldr	r2, .L4+4
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4096
	ldr	r3, .L4+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L4+28
	ldr	ip, .L4+32
	ldrh	lr, [r2, #48]
	ldr	r0, .L4+36
	ldr	r1, .L4+40
	ldr	r2, .L4+44
	strh	lr, [ip]	@ movhi
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	initializeSnake
	.word	67109120
	.word	buttons
	.word	seed
	.word	lives
	.word	state
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r0, .L7
	ldr	r1, .L7+4
	ldr	r2, .L7+8
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L8:
	.align	2
.L7:
	.word	seed
	.word	lives
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	Start
	.syntax unified
	.arm
	.fpu softvfp
	.type	Start, %function
Start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r6, #67108864
	ldr	r5, .L18
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	ldr	r4, .L18+4
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r6]	@ movhi
	ldr	r1, .L18+8
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #928
	mov	r0, #3
	strh	r2, [r6, #10]	@ movhi
	ldr	r1, .L18+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L18+16
	ldr	r1, .L18+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L18+24
	add	r1, r3, #1024
.L10:
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	bne	.L10
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L18+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L18+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L9
	ldr	r3, .L18+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L17
.L9:
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	ldr	r0, [r5]
	ldr	r3, .L18+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+44
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L18+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L19:
	.align	2
.L18:
	.word	seed
	.word	DMANow
	.word	bgStartPal
	.word	bgStartTiles
	.word	100726784
	.word	bgStartMap
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	initializeGame
	.word	hideSprites
	.word	state
	.size	Start, .-Start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L22
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L22+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L23:
	.align	2
.L22:
	.word	hideSprites
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	Game
	.syntax unified
	.arm
	.fpu softvfp
	.type	Game, %function
Game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r4, .L35
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L35+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #16
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L35+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L35+12
	ldr	r1, .L35+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L35+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L25
	ldr	r3, .L35+28
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #2
	ldreq	r3, .L35+32
	streq	r2, [r3]
.L25:
	ldr	r3, .L35+36
	ldr	r3, [r3, #48]
	cmp	r3, #10
	moveq	r2, #3
	ldreq	r3, .L35+32
	streq	r2, [r3]
	ldr	r3, .L35+40
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #4
	ldrne	r3, .L35+32
	pop	{r4, r5, r6, lr}
	strne	r2, [r3]
	bx	lr
.L36:
	.align	2
.L35:
	.word	DMANow
	.word	gameScreenPal
	.word	gameScreenTiles
	.word	100726784
	.word	gameScreenMap
	.word	updateGame
	.word	oldButtons
	.word	buttons
	.word	state
	.word	snake
	.word	lives
	.size	Game, .-Game
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #2
	ldr	r3, .L38
	str	r2, [r3]
	bx	lr
.L39:
	.align	2
.L38:
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	Pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	Pause, %function
Pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L47
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L47+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1392
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L47+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L47+12
	ldr	r1, .L47+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L47+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L40
	ldr	r3, .L47+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L46
.L40:
	pop	{r4, r5, r6, lr}
	bx	lr
.L46:
	ldr	r3, .L47+28
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L47+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L48:
	.align	2
.L47:
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenTiles
	.word	100726784
	.word	pauseScreenMap
	.word	oldButtons
	.word	buttons
	.word	hideSprites
	.word	state
	.size	Pause, .-Pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #3
	ldr	r3, .L50
	str	r2, [r3]
	bx	lr
.L51:
	.align	2
.L50:
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	Win
	.syntax unified
	.arm
	.fpu softvfp
	.type	Win, %function
Win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L58
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L58+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1664
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L58+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L58+12
	ldr	r1, .L58+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L58+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L52
	ldr	r3, .L58+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L52
	ldr	r0, .L58+28
	ldr	r1, .L58+32
	ldr	r2, .L58+36
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
.L52:
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100726784
	.word	winScreenMap
	.word	oldButtons
	.word	buttons
	.word	seed
	.word	lives
	.word	state
	.size	Win, .-Win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #4
	ldr	r3, .L61
	str	r2, [r3]
	bx	lr
.L62:
	.align	2
.L61:
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	Lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	Lose, %function
Lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L69
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L69+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1968
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L69+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L69+12
	ldr	r1, .L69+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L69+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L63
	ldr	r3, .L69+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L63
	ldr	r0, .L69+28
	ldr	r1, .L69+32
	ldr	r2, .L69+36
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
.L63:
	pop	{r4, r5, r6, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
	.word	oldButtons
	.word	buttons
	.word	seed
	.word	lives
	.word	state
	.size	Lose, .-Lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L83
	mov	lr, pc
	bx	r3
	ldr	r6, .L83+4
	ldr	r7, .L83+8
	ldr	r5, .L83+12
	ldr	fp, .L83+16
	ldr	r10, .L83+20
	ldr	r9, .L83+24
	ldr	r8, .L83+28
	ldr	r4, .L83+32
.L72:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L73:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L73
.L75:
	.word	.L79
	.word	.L78
	.word	.L77
	.word	.L76
	.word	.L74
.L74:
	ldr	r3, .L83+36
	mov	lr, pc
	bx	r3
	b	.L72
.L76:
	mov	lr, pc
	bx	r8
	b	.L72
.L77:
	mov	lr, pc
	bx	r9
	b	.L72
.L78:
	mov	lr, pc
	bx	r10
	b	.L72
.L79:
	mov	lr, pc
	bx	fp
	b	.L72
.L84:
	.align	2
.L83:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	Start
	.word	Game
	.word	Pause
	.word	Win
	.word	67109120
	.word	Lose
	.size	main, .-main
	.comm	seed,4,4
	.comm	state,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	shadowOAM,1024,4
	.comm	apple,32,4
	.comm	snakeArray,1456,4
	.comm	snake,52,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
