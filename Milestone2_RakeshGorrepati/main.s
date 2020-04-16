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
	mov	r3, #144
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #0
	ldr	r1, .L4+24
	ldr	lr, .L4+28
	ldrh	ip, [r1, #48]
	ldr	r0, .L4+32
	strh	lr, [r2]	@ movhi
	ldr	r1, .L4+36
	ldr	r2, .L4+40
	strh	ip, [r0]	@ movhi
	str	r3, [r1]
	strh	r3, [r2]	@ movhi
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
	.word	67109120
	.word	4100
	.word	buttons
	.word	state
	.word	hOff
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
	mov	r2, #0
	ldr	r3, .L7
	str	r2, [r3]
	bx	lr
.L8:
	.align	2
.L7:
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
	mov	r5, #67108864
	ldr	r4, .L22
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L22+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1744
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L22+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L22+12
	ldr	r1, .L22+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L22+20
	add	r1, r3, #1024
.L10:
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	add	r3, r3, #8
	cmp	r3, r1
	bne	.L10
	ldr	r5, .L22+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L22+20
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L11
	ldr	r2, .L22+28
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L21
.L11:
	tst	r3, #1
	beq	.L9
	ldr	r3, .L22+28
	ldrh	r3, [r3]
	tst	r3, #1
	moveq	r2, #1
	ldreq	r3, .L22+32
	streq	r2, [r3]
.L9:
	pop	{r4, r5, r6, lr}
	bx	lr
.L21:
	ldr	r3, .L22+36
	mov	lr, pc
	bx	r3
	mov	r1, #2
	ldr	r2, .L22+32
	ldr	r3, .L22+40
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L11
.L23:
	.align	2
.L22:
	.word	DMANow
	.word	startPal
	.word	startTiles
	.word	100726784
	.word	startMap
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	state
	.word	hideSprites
	.word	initializeGame
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
	ldr	r3, .L26
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L26+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L27:
	.align	2
.L26:
	.word	hideSprites
	.word	state
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"Coins Collected: %d\000"
	.text
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
	mov	r2, #0
	mov	r5, #67108864
	mov	r4, #4608
	mov	lr, #31744
	mov	ip, #992
	mov	r0, #31
	mvn	r1, #32768
	ldr	r3, .L49
	strh	r4, [r5]	@ movhi
	strh	r2, [r3, #244]	@ movhi
	ldr	r2, .L49+4
	strh	lr, [r3, #246]	@ movhi
	strh	ip, [r3, #248]	@ movhi
	ldr	r4, .L49+8
	strh	r0, [r3, #250]	@ movhi
	strh	r1, [r3, #252]	@ movhi
	strh	r2, [r3, #254]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L49+12
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #304
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L49+16
	ldr	r5, .L49+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L49+24
	ldr	r1, .L49+28
	mov	lr, pc
	bx	r4
	ldr	r2, [r5, #48]
	ldr	r1, .L49+32
	ldr	r3, .L49+36
	ldr	r0, .L49+40
	mov	lr, pc
	bx	r3
	mov	r1, #5
	mov	r3, #254
	mov	r0, r1
	ldr	r2, .L49+40
	ldr	r4, .L49+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L49+48
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldr	r6, .L49+52
	beq	.L29
	ldrh	r3, [r6]
	tst	r3, #16
	beq	.L48
	ldr	r3, .L49+56
	ldrh	r3, [r3]
	tst	r3, #16
	bne	.L48
.L29:
	ldr	r4, .L49+60
	ldr	r1, .L49+64
	ldrh	r2, [r4]
	ldr	r3, [r1, #4]
	add	r2, r2, #1
	sub	r3, r3, #1
	strh	r2, [r4]	@ movhi
	str	r3, [r1, #4]
.L30:
	ldr	r3, .L49+68
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldrh	r1, [r4]
	ldr	r3, .L49+72
	strh	r1, [r2, #20]	@ movhi
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L31
	ldr	r3, .L49+56
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #3
	ldreq	r3, .L49+76
	streq	r2, [r3]
.L31:
	ldr	r3, .L49+80
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r2, #5
	ldrne	r3, .L49+76
	strne	r2, [r3]
	ldr	r3, [r5, #48]
	cmp	r3, #3
	moveq	r2, #4
	ldreq	r3, .L49+76
	pop	{r4, r5, r6, lr}
	streq	r2, [r3]
	bx	lr
.L48:
	ldr	r4, .L49+60
	b	.L30
.L50:
	.align	2
.L49:
	.word	83886336
	.word	15855
	.word	DMANow
	.word	gameScreenPal
	.word	gameScreenTiles
	.word	user
	.word	100726784
	.word	gameScreenMap
	.word	.LC1
	.word	sprintf
	.word	buffer
	.word	drawString
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	hOff
	.word	coin
	.word	waitForVBlank
	.word	updateGame
	.word	state
	.word	lives
	.size	Game, .-Game
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
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L52
	str	r2, [r3]
	bx	lr
.L53:
	.align	2
.L52:
	.word	state
	.size	goToInstructions, .-goToInstructions
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
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L65
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L65+4
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #880
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L65+8
	ldr	r5, .L65+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L65+16
	ldr	r1, .L65+20
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L55
	ldr	r2, .L65+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L64
.L55:
	tst	r3, #1
	beq	.L54
	ldr	r3, .L65+24
	ldrh	r3, [r3]
	ands	r3, r3, #1
	ldreq	r2, .L65+28
	streq	r3, [r2]
.L54:
	pop	{r4, r5, r6, lr}
	bx	lr
.L64:
	ldr	r3, .L65+32
	mov	lr, pc
	bx	r3
	mov	r1, #2
	ldr	r2, .L65+28
	ldrh	r3, [r5]
	str	r1, [r2]
	b	.L55
.L66:
	.align	2
.L65:
	.word	DMANow
	.word	InstructionScreenPal
	.word	InstructionScreenTiles
	.word	oldButtons
	.word	100726784
	.word	InstructionScreenMap
	.word	buttons
	.word	state
	.word	hideSprites
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
	@ link register save eliminated.
	mov	r2, #3
	ldr	r3, .L68
	str	r2, [r3]
	bx	lr
.L69:
	.align	2
.L68:
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
	ldr	r4, .L81
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L81+4
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1024
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L81+8
	ldr	r5, .L81+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L81+16
	ldr	r1, .L81+20
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L71
	ldr	r2, .L81+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L80
.L71:
	tst	r3, #1
	beq	.L70
	ldr	r3, .L81+24
	ldrh	r3, [r3]
	ands	r3, r3, #1
	ldreq	r2, .L81+28
	streq	r3, [r2]
.L70:
	pop	{r4, r5, r6, lr}
	bx	lr
.L80:
	ldr	r3, .L81+32
	mov	lr, pc
	bx	r3
	mov	r1, #2
	ldr	r2, .L81+28
	ldrh	r3, [r5]
	str	r1, [r2]
	b	.L71
.L82:
	.align	2
.L81:
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenTiles
	.word	oldButtons
	.word	100726784
	.word	pauseScreenMap
	.word	buttons
	.word	state
	.word	hideSprites
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
	mov	r2, #4
	ldr	r3, .L84
	str	r2, [r3]
	bx	lr
.L85:
	.align	2
.L84:
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
	ldr	r4, .L92
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L92+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #608
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L92+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L92+12
	ldr	r1, .L92+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L92+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L86
	ldr	r3, .L92+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	ldreq	r2, .L92+28
	streq	r3, [r2]
.L86:
	pop	{r4, r5, r6, lr}
	bx	lr
.L93:
	.align	2
.L92:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100726784
	.word	winScreenMap
	.word	oldButtons
	.word	buttons
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
	mov	r2, #5
	ldr	r3, .L95
	str	r2, [r3]
	bx	lr
.L96:
	.align	2
.L95:
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
	ldr	r4, .L103
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L103+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #368
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L103+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L103+12
	ldr	r1, .L103+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L103+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L97
	ldr	r3, .L103+24
	ldrh	r3, [r3]
	ands	r3, r3, #8
	ldreq	r2, .L103+28
	streq	r3, [r2]
.L97:
	pop	{r4, r5, r6, lr}
	bx	lr
.L104:
	.align	2
.L103:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
	.word	oldButtons
	.word	buttons
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
	ldr	r3, .L118
	mov	lr, pc
	bx	r3
	ldr	r6, .L118+4
	ldr	r7, .L118+8
	ldr	r5, .L118+12
	ldr	fp, .L118+16
	ldr	r10, .L118+20
	ldr	r9, .L118+24
	ldr	r8, .L118+28
	ldr	r4, .L118+32
.L106:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L107:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L107
.L109:
	.word	.L114
	.word	.L113
	.word	.L112
	.word	.L111
	.word	.L110
	.word	.L108
.L108:
	ldr	r3, .L118+36
	mov	lr, pc
	bx	r3
	b	.L106
.L110:
	ldr	r3, .L118+40
	mov	lr, pc
	bx	r3
	b	.L106
.L111:
	mov	lr, pc
	bx	r8
	b	.L106
.L112:
	mov	lr, pc
	bx	r9
	b	.L106
.L113:
	mov	lr, pc
	bx	r10
	b	.L106
.L114:
	mov	lr, pc
	bx	fp
	b	.L106
.L119:
	.align	2
.L118:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	Start
	.word	Instructions
	.word	Game
	.word	Pause
	.word	67109120
	.word	Lose
	.word	Win
	.size	main, .-main
	.comm	state,4,4
	.comm	buffer,50,4
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	shadowOAM,1024,4
	.comm	coin,36,4
	.comm	user,64,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
