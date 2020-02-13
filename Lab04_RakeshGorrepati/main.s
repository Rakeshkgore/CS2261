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
	.word	32736
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
	.word	initGame
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
	ldr	r3, .L42
	mov	lr, pc
	bx	r3
	ldr	r4, .L42+4
	ldr	r3, .L42+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L42+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L29
	ldr	r3, .L42+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L39
.L29:
	ldr	r3, .L42+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L40
.L30:
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L28
	ldr	r3, .L42+16
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L41
.L28:
	pop	{r4, lr}
	bx	lr
.L40:
	ldr	r3, .L42+24
	mov	r0, #992
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L42+28
	str	r2, [r3]
	b	.L30
.L41:
	ldr	r3, .L42+24
	mov	r0, #31
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L42+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L39:
	ldr	r3, .L42+24
	ldr	r0, .L42+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L42+28
	str	r2, [r3]
	b	.L29
.L43:
	.align	2
.L42:
	.word	updateGame
	.word	oldButtons
	.word	waitForVBlank
	.word	drawGame
	.word	buttons
	.word	ballsRemaining
	.word	fillScreen
	.word	state
	.word	15855
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
	push	{r4, lr}
	ldr	r3, .L46
	ldr	r0, .L46+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L46+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L47:
	.align	2
.L46:
	.word	fillScreen
	.word	15855
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
	ldr	r4, .L60
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L49
	ldr	r2, .L60+4
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L58
.L49:
	tst	r3, #4
	beq	.L48
	ldr	r3, .L60+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L59
.L48:
	pop	{r4, lr}
	bx	lr
.L59:
	pop	{r4, lr}
	b	goToStart
.L58:
	ldr	r3, .L60+8
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L60+12
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L49
.L61:
	.align	2
.L60:
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	state
	.size	Pause, .-Pause
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
	ldr	r2, .L76
	ldr	r6, .L76+4
	ldr	r10, .L76+8
	push	{r4, r7, fp, lr}
	strh	r2, [r3]	@ movhi
	ldr	r3, .L76+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L76+16
	ldr	r2, [r6]
	ldrh	r0, [r10]
	ldr	r9, .L76+20
	ldr	r8, .L76+24
	ldr	r7, .L76+28
	ldr	fp, .L76+32
	ldr	r4, .L76+36
.L64:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L72
.L66:
	.word	.L70
	.word	.L69
	.word	.L68
	.word	.L67
	.word	.L65
.L65:
	tst	r0, #8
	beq	.L72
	ldr	r3, .L76+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L64
.L67:
	tst	r0, #8
	beq	.L72
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L64
.L68:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L64
.L69:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L64
.L70:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L64
.L72:
	mov	r0, r3
	b	.L64
.L77:
	.align	2
.L76:
	.word	1027
	.word	state
	.word	buttons
	.word	goToStart
	.word	oldButtons
	.word	Start
	.word	Game
	.word	Pause
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
	ldr	r3, .L80
	mov	r0, #992
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L80+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L81:
	.align	2
.L80:
	.word	fillScreen
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
	ldr	r3, .L84
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	Win.part.0
.L85:
	.align	2
.L84:
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
	ldr	r3, .L88
	mov	r0, #31
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L88+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L89:
	.align	2
.L88:
	.word	fillScreen
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
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
