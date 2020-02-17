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
	mov	r0, #0
	ldr	r3, .L15
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r3, .L15+4
	ldr	r2, .L15+8
	ldr	r0, [r3]
	ldr	r3, .L15+12
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	fillScreen
	.word	seed
	.word	state
	.word	srand
	.size	goToGame, .-goToGame
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	Start.part.0, %function
Start.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L23
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	bl	goToGame
	ldr	r3, .L23+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	buttons
	.word	initializeGame
	.size	Start.part.0, .-Start.part.0
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
	@ link register save eliminated.
	ldr	r2, .L27
	ldr	r1, .L27+4
	ldr	r3, [r2]
	ldrh	r1, [r1]
	add	r3, r3, #1
	tst	r1, #8
	str	r3, [r2]
	bxeq	lr
	b	Start.part.0
.L28:
	.align	2
.L27:
	.word	seed
	.word	oldButtons
	.size	Start, .-Start
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
	ldr	r3, .L38
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L30
	ldr	r3, .L38+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L30
	ldr	r3, .L38+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L37
.L29:
	pop	{r4, lr}
	bx	lr
.L30:
	ldr	r3, .L38+24
	ldr	r0, .L38+28
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L38+32
	str	r2, [r3]
	ldr	r3, .L38+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L29
.L37:
	ldr	r3, .L38+24
	ldr	r0, .L38+36
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L38+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L39:
	.align	2
.L38:
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
	ldr	r2, .L54
	push	{r4, r7, fp, lr}
	ldr	r10, .L54+4
	ldr	r4, .L54+8
	strh	r2, [r3]	@ movhi
	ldr	r3, .L54+12
	mov	lr, pc
	bx	r3
	ldr	r7, .L54+16
	ldr	r2, [r4]
	ldrh	r0, [r10]
	ldr	r5, .L54+20
	ldr	r9, .L54+24
	ldr	r6, .L54+28
	ldr	r8, .L54+32
	ldr	fp, .L54+36
.L42:
	strh	r0, [r7]	@ movhi
	ldrh	r3, [fp, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L49
.L44:
	.word	.L47
	.word	.L46
	.word	.L45
	.word	.L43
.L43:
	tst	r0, #8
	beq	.L49
	ldr	r3, .L54+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L42
.L45:
	tst	r0, #8
	beq	.L49
	mov	lr, pc
	bx	r8
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L42
.L46:
	mov	lr, pc
	bx	r6
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L42
.L47:
	ldr	ip, [r5]
	tst	r0, #8
	add	r0, ip, #1
	str	r0, [r5]
	beq	.L49
	mov	lr, pc
	bx	r9
	ldr	r2, [r4]
	ldrh	r0, [r10]
	b	.L42
.L49:
	mov	r0, r3
	b	.L42
.L55:
	.align	2
.L54:
	.word	1027
	.word	buttons
	.word	state
	.word	goToStart
	.word	oldButtons
	.word	seed
	.word	Start.part.0
	.word	Game
	.word	Win.part.0
	.word	67109120
	.word	Lose.part.0
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
	ldr	r3, .L58
	ldr	r0, .L58+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L58+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r3, .L62
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	Win.part.0
.L63:
	.align	2
.L62:
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
	ldr	r3, .L66
	ldr	r0, .L66+4
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L66+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L67:
	.align	2
.L66:
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
