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
	push	{r4, lr}
	mov	r2, #83886080
	ldr	r1, .L4
	mov	r3, #512
	mov	r0, #3
	ldr	r4, .L4+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L4+8
	ldr	r3, .L4+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	startPal
	.word	DMANow
	.word	startBitmap
	.word	drawFullscreenImage
	.word	waitForVBlank
	.word	flipPage
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
	mov	r3, #67108864
	ldr	r2, .L7
	strh	r2, [r3]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	1044
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
	ldr	r3, .L11
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L12:
	.align	2
.L11:
	.word	buttons
	.size	Win.part.0, .-Win.part.0
	.set	Lose.part.0,Win.part.0
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
	push	{r4, lr}
	ldr	r4, .L20
	ldr	r3, [r4]
	ldr	r2, .L20+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L20+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L13
	ldr	r3, .L20+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L19
.L13:
	pop	{r4, lr}
	bx	lr
.L19:
	ldr	r0, [r4]
	ldr	r3, .L20+16
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L20+20
	ldr	r3, .L20+24
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	state
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
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L23
	str	r2, [r3]
	bx	lr
.L24:
	.align	2
.L23:
	.word	state
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VICTORY\000"
	.text
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
	push	{r4, lr}
	mov	r0, #255
	ldr	r3, .L27
	mov	lr, pc
	bx	r3
	ldr	r4, .L27+4
	ldr	r2, .L27+8
	mov	r1, #80
	mov	r0, #105
	mov	r3, #250
	mov	lr, pc
	bx	r4
	ldr	r3, .L27+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+16
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L27+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L28:
	.align	2
.L27:
	.word	fillScreen
	.word	drawString
	.word	.LC0
	.word	waitForVBlank
	.word	flipPage
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
	@ link register save eliminated.
	ldr	r3, .L34
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L34+4
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #1
	ldreq	r3, .L34+8
	streq	r2, [r3]
	bx	lr
.L35:
	.align	2
.L34:
	.word	oldButtons
	.word	buttons
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
	push	{r4, lr}
	mov	r0, #252
	ldr	r3, .L38
	mov	lr, pc
	bx	r3
	ldr	r4, .L38+4
	ldr	r2, .L38+8
	mov	r1, #80
	mov	r0, #105
	mov	r3, #250
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+16
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L38+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L39:
	.align	2
.L38:
	.word	fillScreen
	.word	drawString
	.word	.LC0
	.word	waitForVBlank
	.word	flipPage
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
	ldr	r3, .L42
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	Win.part.0
.L43:
	.align	2
.L42:
	.word	oldButtons
	.size	Win, .-Win
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"DEFEATED\000"
	.text
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
	push	{r4, lr}
	mov	r0, #253
	ldr	r3, .L46
	mov	lr, pc
	bx	r3
	ldr	r4, .L46+4
	ldr	r2, .L46+8
	mov	r1, #80
	mov	r0, #105
	mov	r3, #250
	mov	lr, pc
	bx	r4
	ldr	r3, .L46+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L46+16
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L46+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L47:
	.align	2
.L46:
	.word	fillScreen
	.word	drawString
	.word	.LC1
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToLose, .-goToLose
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"Time Remaining: %d\000"
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
	ldr	r3, .L62
	ldr	r4, .L62+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+8
	mov	lr, pc
	bx	r3
	ldr	r2, [r4]
	ldr	r1, .L62+12
	ldr	r3, .L62+16
	ldr	r0, .L62+20
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r2, .L62+20
	mov	r0, r1
	mov	r3, #254
	ldr	r5, .L62+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L62+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L60
.L49:
	ldr	r3, .L62+40
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L50
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L50
.L51:
	ldr	r3, .L62+44
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L48
	ldr	r3, .L62+48
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L61
.L48:
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	bl	goToLose
	b	.L51
.L60:
	bl	goToWin
	b	.L49
.L61:
	pop	{r4, r5, r6, lr}
	b	goToPause
.L63:
	.align	2
.L62:
	.word	updateGame
	.word	timeRemaining
	.word	drawGame
	.word	.LC2
	.word	sprintf
	.word	buffer
	.word	drawString
	.word	waitForVBlank
	.word	flipPage
	.word	asteroidsRemaining
	.word	livesRemaining
	.word	oldButtons
	.word	buttons
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
	mov	r3, #67108864
	ldr	r2, .L80
	push	{r4, r7, fp, lr}
	ldr	r10, .L80+4
	ldr	r4, .L80+8
	strh	r2, [r3]	@ movhi
	ldr	r3, .L80+12
	mov	lr, pc
	bx	r3
	ldr	r9, .L80+16
	ldr	r2, [r4]
	ldrh	r0, [r10]
	ldr	r6, .L80+20
	ldr	r5, .L80+24
	ldr	r8, .L80+28
	ldr	r7, .L80+32
	ldr	fp, .L80+36
.L66:
	strh	r0, [r9]	@ movhi
	ldrh	r3, [fp, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L74
.L68:
	.word	.L72
	.word	.L71
	.word	.L70
	.word	.L69
	.word	.L67
.L67:
	tst	r0, #8
	beq	.L74
	mov	lr, pc
	bx	r7
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L66
.L69:
	tst	r0, #8
	beq	.L74
	mov	lr, pc
	bx	r8
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L66
.L70:
	tst	r0, #8
	beq	.L74
	tst	r3, #8
	bne	.L74
	mov	r2, #1
	mov	r0, r3
	str	r2, [r4]
	b	.L66
.L71:
	mov	lr, pc
	bx	r5
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L66
.L72:
	mov	lr, pc
	bx	r6
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L66
.L74:
	mov	r0, r3
	b	.L66
.L81:
	.align	2
.L80:
	.word	1044
	.word	buttons
	.word	state
	.word	goToStart
	.word	oldButtons
	.word	Start
	.word	Game
	.word	Win.part.0
	.word	Lose.part.0
	.word	67109120
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
	.comm	buffer,50,4
	.comm	seed,4,4
	.comm	state,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
