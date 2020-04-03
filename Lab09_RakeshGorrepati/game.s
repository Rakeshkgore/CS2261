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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer.part.0, %function
drawPlayer.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L3
	ldr	r3, [r1, #4]
	ldr	ip, [r1, #44]
	ldr	r2, [r1, #36]
	lsl	r3, r3, #23
	ldr	r0, .L3+4
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsr	r3, r3, #23
	add	r2, r2, ip, lsl #5
	orr	r3, r3, #16384
	lsl	r2, r2, #1
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	pikachu
	.word	shadowOAM
	.size	drawPlayer.part.0, .-drawPlayer.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #96
	mov	r5, #9
	mov	r2, #0
	mov	r0, #16
	mov	r4, #168
	mov	lr, #121
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L7
	str	r6, [r3]
	ldr	r3, .L7+4
	str	r5, [r3]
	ldr	r3, .L7+8
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	ip, [r3, #48]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	vOff
	.word	hOff
	.word	pikachu
	.size	initGame, .-initGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L13
	ldr	r3, [r3, #52]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L10
	ldr	r2, .L13+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L11:
	ldr	r3, .L13+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L13+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L13+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L13+16
	ldrh	r1, [r2]
	ldr	r2, .L13+20
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L10:
	bl	drawPlayer.part.0
	b	.L11
.L14:
	.align	2
.L13:
	.word	pikachu
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	lr, #16
	mov	r4, #3
	mov	ip, #1
	ldr	r1, .L17
	ldr	r3, .L17+4
	ldr	r0, [r1]
	ldr	r1, [r3]
	ldr	r3, .L17+8
	add	r0, r0, #72
	add	r1, r1, #112
	str	r4, [r3, #48]
	str	lr, [r3, #24]
	str	lr, [r3, #28]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	vOff
	.word	hOff
	.word	pikachu
	.size	initPlayer, .-initPlayer
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	push	{r4, r5, r6, lr}
	ldr	r4, .L32
	ldr	r3, .L32+4
	ldr	r5, [r4, #32]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #3
	ldr	r6, [r4, #36]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r6, [r4, #40]
	str	r1, [r4, #36]
	bne	.L20
	ldr	r0, [r4, #44]
	ldr	r3, .L32+8
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L20:
	ldr	r3, .L32+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #36]
	ldr	r3, .L32+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #36]
	ldr	r3, .L32+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L23
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #36]
	bne	.L25
.L26:
	mov	r3, #2
	str	r3, [r4, #36]
.L25:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L26
	ldr	r3, [r4, #36]
	cmp	r3, #4
	bne	.L25
	mov	r3, #0
	str	r6, [r4, #36]
	str	r3, [r4, #44]
	str	r3, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	pikachu
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L65
	ldrh	r2, [r3, #48]
	ldr	r0, .L65+4
	ldr	r3, .L65+8
	tst	r2, #64
	push	{r4, r5, r6, lr}
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #12]
	ldr	ip, [r0]
	bne	.L35
	cmp	r2, #0
	ble	.L35
	ldr	r4, .L65+12
	add	lr, r1, r2, lsl #8
	add	lr, r4, lr, lsl #1
	ldrh	lr, [lr, #-2]
	cmp	lr, #0
	lsl	lr, r2, #8
	beq	.L35
	ldr	r5, [r3, #24]
	add	lr, lr, r5
	add	lr, lr, r1
	sub	lr, lr, #256
	sub	lr, lr, #1
	lsl	lr, lr, #1
	ldrh	lr, [r4, lr]
	cmp	lr, #0
	beq	.L35
	ldr	lr, [r3, #16]
	cmp	ip, #0
	sub	r2, r2, lr
	str	r2, [r3, #8]
	ble	.L35
	ldr	r4, [r3]
	cmp	r4, #80
	suble	ip, ip, lr
	strle	ip, [r0]
.L35:
	ldr	lr, .L65
	ldrh	lr, [lr, #48]
	tst	lr, #128
	bne	.L36
	ldr	lr, [r3, #28]
	add	lr, r2, lr
	cmp	lr, #255
	ble	.L64
.L36:
	ldr	lr, .L65
	ldrh	lr, [lr, #48]
	tst	lr, #32
	bne	.L37
	ldr	lr, [r3, #24]
	sub	lr, r1, lr
	cmp	lr, #0
	ble	.L37
	sub	lr, r1, #1
	ldr	r5, .L65+12
	add	r4, lr, r2, lsl #8
	lsl	r4, r4, #1
	ldrh	r4, [r5, r4]
	cmp	r4, #0
	beq	.L37
	ldr	r4, [r3, #28]
	add	r4, r2, r4
	sub	r4, r4, #1
	add	lr, lr, r4, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r5, lr]
	cmp	lr, #0
	beq	.L37
	ldr	lr, [r3, #20]
	cmp	ip, #95
	sub	r1, r1, lr
	ldrle	lr, [r3, #16]
	addle	ip, ip, lr
	str	r1, [r3, #12]
	strle	ip, [r0]
.L37:
	ldr	r0, .L65
	ldrh	r0, [r0, #48]
	ldr	r5, .L65+16
	tst	r0, #16
	ldr	r4, [r5]
	bne	.L38
	ldr	r0, [r3, #24]
	add	r0, r1, r0
	cmp	r0, #255
	bgt	.L38
	ldr	r6, .L65+12
	add	lr, r0, r2, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r6, lr]
	cmp	lr, #0
	beq	.L38
	ldr	lr, [r3, #28]
	add	lr, r2, lr
	sub	lr, lr, #1
	add	r0, r0, lr, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [r6, r0]
	cmp	r0, #0
	beq	.L38
	ldr	r0, [r3, #20]
	cmp	r4, #15
	add	r1, r1, r0
	str	r1, [r3, #12]
	bgt	.L38
	ldr	lr, [r3, #4]
	cmp	lr, #119
	addgt	r4, r4, r0
	strgt	r4, [r5]
.L38:
	sub	r1, r1, r4
	sub	r2, r2, ip
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	str	r1, [r3, #4]
	b	animatePlayer
.L64:
	ldr	lr, [r3, #24]
	add	r4, lr, r2
	add	r5, r1, r4, lsl #8
	ldr	r6, .L65+12
	lsl	r5, r5, #1
	ldrh	r5, [r6, r5]
	cmp	r5, #0
	lsl	r4, r4, #8
	beq	.L36
	add	lr, lr, r4
	add	lr, lr, r1
	add	lr, r6, lr, lsl #1
	ldrh	lr, [lr, #-2]
	cmp	lr, #0
	beq	.L36
	ldr	lr, [r3, #16]
	cmp	ip, #95
	add	r2, r2, lr
	addle	ip, ip, lr
	str	r2, [r3, #8]
	strle	ip, [r0]
	b	.L36
.L66:
	.align	2
.L65:
	.word	67109120
	.word	vOff
	.word	pikachu
	.word	collisionmapBitmap
	.word	hOff
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayer
	.size	updateGame, .-updateGame
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L72
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L69
	ldr	r2, .L72+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L69:
	b	drawPlayer.part.0
.L73:
	.align	2
.L72:
	.word	pikachu
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.comm	pikachu,56,4
	.comm	shadowOAM,1024,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
