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
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L4
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1744
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+12
	mov	r0, #3
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startPal
	.word	startTiles
	.word	100726784
	.word	startMap
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
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L8
	mov	r0, #3
	ldr	r2, .L8+4
	ldr	r1, .L8+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	lr, #4096
	mov	r2, #0
	ldr	r1, .L8+24
	ldr	r0, .L8+28
	ldrh	ip, [r1, #48]
	ldr	r1, .L8+32
	strh	lr, [r3]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r2, [r1]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #20]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	67109120
	.word	buttons
	.word	hOff
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
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L13:
	.align	2
.L12:
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
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r4, .L16
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L16+4
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #704
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L16+8
	mov	lr, pc
	bx	r4
	ldr	r2, .L16+12
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+20
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L16+24
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	gameScreenPal
	.word	gameScreenTiles
	.word	100726784
	.word	gameScreenMap
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
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L20
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L20+4
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #880
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L20+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L20+12
	mov	r0, #3
	ldr	r1, .L20+16
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L20+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	DMANow
	.word	InstructionScreenPal
	.word	InstructionScreenTiles
	.word	100726784
	.word	InstructionScreenMap
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
	ldr	r3, .L36
	add	r1, r3, #1024
.L23:
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	bne	.L23
	ldr	r4, .L36+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L36
	ldr	r5, .L36+8
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L24
	ldr	r2, .L36+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L34
.L24:
	tst	r3, #1
	beq	.L22
	ldr	r3, .L36+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L35
.L22:
	pop	{r4, r5, r6, lr}
	bx	lr
.L35:
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L34:
	bl	goToGame
	ldr	r3, .L36+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L24
.L37:
	.align	2
.L36:
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
	ldr	r4, .L50
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L39
	ldr	r2, .L50+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L48
.L39:
	tst	r3, #1
	beq	.L38
	ldr	r3, .L50+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L49
.L38:
	pop	{r4, lr}
	bx	lr
.L49:
	pop	{r4, lr}
	b	goToStart
.L48:
	ldr	r3, .L50+8
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L39
.L51:
	.align	2
.L50:
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
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L54
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L54+4
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1024
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L54+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L54+12
	mov	r0, #3
	ldr	r1, .L54+16
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L54+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L55:
	.align	2
.L54:
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenTiles
	.word	100726784
	.word	pauseScreenMap
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
	ldr	r4, .L68
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L57
	ldr	r2, .L68+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L66
.L57:
	tst	r3, #1
	beq	.L56
	ldr	r3, .L68+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L67
.L56:
	pop	{r4, lr}
	bx	lr
.L67:
	pop	{r4, lr}
	b	goToStart
.L66:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L57
.L69:
	.align	2
.L68:
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
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L72
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L72+4
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #608
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L72+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L72+12
	mov	r0, #3
	ldr	r1, .L72+16
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L72+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L73:
	.align	2
.L72:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100726784
	.word	winScreenMap
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
	ldr	r3, .L76
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	Win.part.0
.L77:
	.align	2
.L76:
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
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L80
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L80+4
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #368
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L80+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L80+12
	mov	r0, #3
	ldr	r1, .L80+16
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L80+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L81:
	.align	2
.L80:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
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
	ldr	r3, .L96
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L96+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L96+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L96+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L96+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L83
	ldr	r3, .L96+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L93
.L83:
	ldr	r3, .L96+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L94
	ldr	r3, .L96+32
	ldr	r3, [r3, #48]
	cmp	r3, #3
	beq	.L95
.L82:
	pop	{r4, lr}
	bx	lr
.L94:
	bl	goToLose
	ldr	r3, .L96+32
	ldr	r3, [r3, #48]
	cmp	r3, #3
	bne	.L82
.L95:
	pop	{r4, lr}
	b	goToWin
.L93:
	bl	goToPause
	b	.L83
.L97:
	.align	2
.L96:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	lives
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
	ldr	r6, .L113
	ldr	fp, .L113+4
	ldr	r3, .L113+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L113+12
	ldr	r2, [r6]
	ldrh	r0, [fp]
	ldr	r10, .L113+16
	ldr	r9, .L113+20
	ldr	r8, .L113+24
	ldr	r7, .L113+28
	ldr	r4, .L113+32
.L100:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L109
.L102:
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L104
	.word	.L103
	.word	.L101
.L101:
	tst	r0, #8
	beq	.L109
	ldr	r3, .L113+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L103:
	tst	r0, #8
	beq	.L109
	ldr	r3, .L113+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L104:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L105:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L106:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L107:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L100
.L109:
	mov	r0, r3
	b	.L100
.L114:
	.align	2
.L113:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	Start
	.word	Instructions
	.word	Game
	.word	Pause
	.word	67109120
	.word	Lose.part.0
	.word	Win.part.0
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
