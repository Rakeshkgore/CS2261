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
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #512
	mov	r5, #0
	mov	r6, #67108864
	ldr	r2, .L4
	ldr	r4, .L4+4
	strh	r5, [r2]	@ movhi
	mov	r3, #256
	strh	r1, [r6]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r0, #3
	strh	r2, [r6, #10]	@ movhi
	ldr	r3, .L4+12
	mov	r2, #100663296
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+28
	str	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	hOff
	.word	DMANow
	.word	startbgPal
	.word	10832
	.word	startbgTiles
	.word	100726784
	.word	startbgMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	goToStart
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	Win.part.0, %function
Win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L9
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L10:
	.align	2
.L9:
	.word	buttons
	.size	Win.part.0, .-Win.part.0
	.set	Lose.part.0,Win.part.0
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
	push	{r4, r5, r6, lr}
	mov	r2, #5888
	mov	r5, #67108864
	ldr	r4, .L13
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L13+4
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1488
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L13+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L13+12
	ldr	r1, .L13+16
	mov	lr, pc
	bx	r4
	ldr	r2, .L13+20
	mov	r3, #1776
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	ldr	r2, .L13+24
	ldr	r1, .L13+28
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L13+32
	ldr	r1, .L13+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L13+40
	mov	r3, #640
	strh	r2, [r5, #12]	@ movhi
	mov	r0, #3
	ldr	r2, .L13+44
	ldr	r1, .L13+48
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L13+52
	ldr	r1, .L13+56
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L13+60
	ldr	r1, .L13+64
	mov	lr, pc
	bx	r4
	ldr	r2, .L13+68
	mov	r3, #16384
	mov	r0, #3
	ldr	r1, .L13+72
	mov	lr, pc
	bx	r4
	ldr	r3, .L13+76
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L13+80
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L14:
	.align	2
.L13:
	.word	DMANow
	.word	gameScreenPal
	.word	gameScreenTiles
	.word	100726784
	.word	gameScreenMap
	.word	23812
	.word	100679680
	.word	gameScreen2Tiles
	.word	100722688
	.word	gameScreen2Map
	.word	6920
	.word	100696064
	.word	lettersTiles
	.word	100718592
	.word	lettersMap
	.word	83886592
	.word	spritesheetfinalPal
	.word	100728832
	.word	spritesheetfinalTiles
	.word	hideSprites
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #0
	mov	r5, #67108864
	mov	r0, #512
	ldr	r2, .L17
	ldr	r4, .L17+4
	strh	r1, [r2]	@ movhi
	mov	r3, #256
	strh	r1, [r5, #20]	@ movhi
	strh	r0, [r5]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L17+8
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, .L17+12
	mov	r2, #100663296
	ldr	r1, .L17+16
	mov	lr, pc
	bx	r4
	mov	r3, #672
	ldr	r2, .L17+20
	mov	r0, #3
	ldr	r1, .L17+24
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L17+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L18:
	.align	2
.L17:
	.word	hOff
	.word	DMANow
	.word	instructionbgPal
	.word	6512
	.word	instructionbgTiles
	.word	100726784
	.word	instructionbgMap
	.word	state
	.size	goToInstructions, .-goToInstructions
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
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r3, .L33
	add	r1, r3, #1024
.L20:
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	bne	.L20
	ldr	r4, .L33+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L33
	ldr	r5, .L33+8
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L21
	ldr	r2, .L33+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L31
.L21:
	tst	r3, #1
	beq	.L19
	ldr	r3, .L33+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L32
.L19:
	pop	{r4, r5, r6, lr}
	bx	lr
.L32:
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L31:
	bl	goToGame
	ldr	r3, .L33+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L21
.L34:
	.align	2
.L33:
	.word	shadowOAM
	.word	oldButtons
	.word	DMANow
	.word	buttons
	.word	initializeGame
	.size	Start, .-Start
	.align	2
	.global	Instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	Instructions, %function
Instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L47
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L36
	ldr	r2, .L47+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L45
.L36:
	tst	r3, #1
	beq	.L35
	ldr	r3, .L47+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L46
.L35:
	pop	{r4, lr}
	bx	lr
.L46:
	pop	{r4, lr}
	b	goToStart
.L45:
	ldr	r3, .L47+8
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L36
.L48:
	.align	2
.L47:
	.word	oldButtons
	.word	buttons
	.word	initializeGame
	.size	Instructions, .-Instructions
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
	push	{r4, r5, r6, lr}
	mov	r1, #0
	mov	r5, #67108864
	mov	r0, #512
	ldr	r2, .L51
	ldr	r4, .L51+4
	strh	r1, [r2]	@ movhi
	mov	r3, #256
	strh	r1, [r5, #20]	@ movhi
	strh	r0, [r5]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L51+8
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, .L51+12
	mov	r2, #100663296
	ldr	r1, .L51+16
	mov	lr, pc
	bx	r4
	mov	r3, #672
	ldr	r2, .L51+20
	mov	r0, #3
	ldr	r1, .L51+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L51+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L52:
	.align	2
.L51:
	.word	hOff
	.word	DMANow
	.word	pauseBgPal
	.word	7008
	.word	pauseBgTiles
	.word	100726784
	.word	pauseBgMap
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
	push	{r4, lr}
	ldr	r4, .L65
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L54
	ldr	r2, .L65+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L63
.L54:
	tst	r3, #1
	beq	.L53
	ldr	r3, .L65+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L64
.L53:
	pop	{r4, lr}
	bx	lr
.L64:
	pop	{r4, lr}
	b	goToStart
.L63:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L54
.L66:
	.align	2
.L65:
	.word	oldButtons
	.word	buttons
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
	push	{r4, r5, r6, lr}
	mov	r1, #0
	mov	r5, #67108864
	mov	r0, #512
	ldr	r2, .L69
	ldr	r4, .L69+4
	strh	r1, [r2]	@ movhi
	mov	r3, #256
	strh	r1, [r5, #20]	@ movhi
	strh	r0, [r5]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L69+8
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, .L69+12
	mov	r2, #100663296
	ldr	r1, .L69+16
	mov	lr, pc
	bx	r4
	mov	r3, #672
	ldr	r2, .L69+20
	mov	r0, #3
	ldr	r1, .L69+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L69+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L70:
	.align	2
.L69:
	.word	hOff
	.word	DMANow
	.word	winBgPal
	.word	7648
	.word	winBgTiles
	.word	100726784
	.word	winBgMap
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
	@ link register save eliminated.
	ldr	r3, .L73
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	Win.part.0
.L74:
	.align	2
.L73:
	.word	oldButtons
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
	push	{r4, r5, r6, lr}
	mov	r1, #0
	mov	r5, #67108864
	mov	r0, #512
	ldr	r2, .L77
	ldr	r4, .L77+4
	strh	r1, [r2]	@ movhi
	mov	r3, #256
	strh	r1, [r5, #20]	@ movhi
	strh	r0, [r5]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L77+8
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #7424
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L77+12
	mov	lr, pc
	bx	r4
	mov	r3, #672
	ldr	r2, .L77+16
	mov	r0, #3
	ldr	r1, .L77+20
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L77+24
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L78:
	.align	2
.L77:
	.word	hOff
	.word	DMANow
	.word	loseBgPal
	.word	loseBgTiles
	.word	100726784
	.word	loseBgMap
	.word	state
	.size	goToLose, .-goToLose
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
	push	{r4, lr}
	ldr	r3, .L93
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L93+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L93+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L93+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L80
	ldr	r3, .L93+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L90
.L80:
	ldr	r3, .L93+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L81
	ldr	r3, .L93+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L91
.L81:
	ldr	r3, .L93+36
	ldr	r3, [r3, #48]
	cmp	r3, #10
	beq	.L92
	pop	{r4, lr}
	bx	lr
.L92:
	pop	{r4, lr}
	b	goToWin
.L91:
	bl	goToLose
	b	.L81
.L90:
	bl	goToPause
	b	.L80
.L94:
	.align	2
.L93:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	lives
	.word	unlimited
	.word	user
	.size	Game, .-Game
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
	ldr	r3, .L114
	mov	lr, pc
	bx	r3
	ldr	r5, .L114+4
	ldr	r4, .L114+8
	ldr	r9, .L114+12
	ldr	r8, .L114+16
	ldr	r7, .L114+20
	ldr	fp, .L114+24
	ldr	r10, .L114+28
	ldr	r6, .L114+32
.L97:
	ldrh	r3, [r4]
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r6, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	ldr	r3, [r7]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L97
.L99:
	.word	.L104
	.word	.L103
	.word	.L102
	.word	.L101
	.word	.L100
	.word	.L98
.L98:
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L97
	ldr	r3, .L114+36
	mov	lr, pc
	bx	r3
	b	.L97
.L100:
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L97
	ldr	r3, .L114+40
	mov	lr, pc
	bx	r3
	b	.L97
.L101:
	ldr	r3, .L114+44
	mov	lr, pc
	bx	r3
	b	.L97
.L102:
	ldr	r3, .L114+48
	mov	lr, pc
	bx	r3
	b	.L97
.L103:
	mov	lr, pc
	bx	r10
	b	.L97
.L104:
	mov	lr, pc
	bx	fp
	b	.L97
.L115:
	.align	2
.L114:
	.word	goToStart
	.word	oldButtons
	.word	buttons
	.word	setupSounds
	.word	setupInterrupts
	.word	state
	.word	Start
	.word	Instructions
	.word	67109120
	.word	Lose.part.0
	.word	Win.part.0
	.word	Pause
	.word	Game
	.size	main, .-main
	.text
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
	@ link register save eliminated.
	b	Win
	.size	Lose, .-Lose
	.comm	state,4,4
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	shadowOAM,1024,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
