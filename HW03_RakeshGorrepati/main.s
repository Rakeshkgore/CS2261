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
	ldr	r0, .L4
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r3, .L4+8
	ldr	r2, .L4+12
	ldr	r0, [r3]
	ldr	r3, .L4+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	16383
	.word	fillScreen
	.word	seed
	.word	state
	.word	srand
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
	.word	1027
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
	ldr	r2, .L22
	ldr	r1, .L22+4
	ldr	r3, [r2]
	ldrh	r1, [r1]
	add	r3, r3, #1
	tst	r1, #8
	str	r3, [r2]
	bxeq	lr
	ldr	r3, .L22+8
	ldrh	r0, [r3]
	ands	r0, r0, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L22+12
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L22+16
	ldr	r3, .L22+20
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	fillScreen
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
	push	{r4, lr}
	ldr	r3, .L26
	mov	r0, #0
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L26+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L27:
	.align	2
.L26:
	.word	fillScreen
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
	push	{r4, lr}
	ldr	r3, .L37
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L29
	ldr	r3, .L37+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L29
	ldr	r3, .L37+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L36
.L28:
	pop	{r4, lr}
	bx	lr
.L29:
	ldr	r3, .L37+24
	ldr	r0, .L37+28
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L37+32
	str	r2, [r3]
	ldr	r3, .L37+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L28
.L36:
	ldr	r3, .L37+24
	ldr	r0, .L37+36
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L37+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L38:
	.align	2
.L37:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	asteroidsRemaining
	.word	reachedTarget
	.word	livesRemaining
	.word	fillScreen
	.word	32239
	.word	state
	.word	5311
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
	ldr	r2, .L52
	push	{r4, r7, fp, lr}
	ldr	r6, .L52+4
	ldr	fp, .L52+8
	strh	r2, [r3]	@ movhi
	ldr	r3, .L52+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L52+16
	ldr	r2, [r6]
	ldrh	r1, [fp]
	ldr	r8, .L52+20
	ldr	r7, .L52+24
	ldr	r10, .L52+28
	ldr	r9, .L52+32
	ldr	r4, .L52+36
.L41:
	strh	r1, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L48
.L43:
	.word	.L46
	.word	.L45
	.word	.L44
	.word	.L42
.L42:
	tst	r1, #8
	beq	.L48
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r1, [fp]
	b	.L41
.L44:
	tst	r1, #8
	beq	.L48
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r1, [fp]
	b	.L41
.L45:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r1, [fp]
	b	.L41
.L46:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r1, [fp]
	b	.L41
.L48:
	mov	r1, r3
	b	.L41
.L53:
	.align	2
.L52:
	.word	1027
	.word	state
	.word	buttons
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
	ldr	r3, .L56
	ldr	r0, .L56+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L56+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
	.word	fillScreen
	.word	32239
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
	ldr	r3, .L60
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	Win.part.0
.L61:
	.align	2
.L60:
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
	push	{r4, lr}
	ldr	r3, .L64
	ldr	r0, .L64+4
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L64+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L65:
	.align	2
.L64:
	.word	fillScreen
	.word	5311
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
	@ link register save eliminated.
	b	Win
	.size	Lose, .-Lose
	.comm	seed,4,4
	.comm	state,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
