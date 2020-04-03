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
	.global	__aeabi_idivmod
	.align	2
	.global	updateSnake
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSnake, %function
updateSnake:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L42
	ldr	r3, [r4, #28]
	cmp	r3, #6
	movne	r2, #6
	strne	r2, [r4, #28]
	ldr	r2, [r4, #24]
	strne	r3, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L42+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	addcc	r2, r2, #1
	strcc	r2, [r4, #24]
	bcc	.L4
	ldr	r0, [r4, #40]
	ldr	r3, .L42+8
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L4:
	ldr	r3, .L42+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r5, .L42+16
	ldr	ip, [r4, #4]
	ldr	lr, [r4]
	bne	.L5
	mov	r3, r5
	sub	r2, r5, #1040
.L6:
	ldr	r0, [r3, #992]
	ldr	r1, [r3, #988]
	str	r0, [r3, #1044]
	str	r1, [r3, #1040]
	sub	r3, r3, #52
	cmp	r3, r2
	bne	.L6
	mov	r3, #0
	ldr	r2, [r4, #8]
	str	lr, [r5]
	sub	lr, lr, r2
	str	ip, [r5, #4]
	str	lr, [r4]
	str	r3, [r4, #28]
.L5:
	ldr	r3, .L42+12
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L7
	ldr	r3, .L42+16
	sub	r2, r3, #1040
.L8:
	ldr	r0, [r3, #992]
	ldr	r1, [r3, #988]
	str	r0, [r3, #1044]
	str	r1, [r3, #1040]
	sub	r3, r3, #52
	cmp	r3, r2
	bne	.L8
	mov	r3, #2
	ldr	r2, [r4, #8]
	str	lr, [r5]
	add	lr, lr, r2
	str	ip, [r5, #4]
	str	lr, [r4]
	str	r3, [r4, #28]
.L7:
	ldr	r3, .L42+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L9
	ldr	r3, .L42+16
	sub	r2, r3, #1040
.L10:
	ldr	r0, [r3, #992]
	ldr	r1, [r3, #988]
	str	r0, [r3, #1044]
	str	r1, [r3, #1040]
	sub	r3, r3, #52
	cmp	r3, r2
	bne	.L10
	mov	r3, #3
	ldr	r1, .L42+12
	ldrh	r1, [r1, #48]
	tst	r1, #16
	ldr	r1, [r4, #12]
	str	ip, [r5, #4]
	sub	ip, ip, r1
	str	lr, [r5]
	str	ip, [r4, #4]
	str	r3, [r4, #28]
	bne	.L16
.L11:
	ldr	r3, .L42+16
.L14:
	ldr	r0, [r3, #992]
	ldr	r1, [r3, #988]
	str	r0, [r3, #1044]
	str	r1, [r3, #1040]
	sub	r3, r3, #52
	cmp	r2, r3
	bne	.L14
	mov	r3, #1
	ldr	r2, [r4, #12]
	str	ip, [r5, #4]
	add	ip, ip, r2
	str	lr, [r5]
	str	ip, [r4, #4]
	str	r3, [r4, #28]
.L15:
	ldr	r2, [r4, #24]
	ldr	r1, [r4, #40]
	add	r2, r2, #1
	add	r3, r3, r1, lsl #5
	lsl	r3, r3, #16
	str	r2, [r4, #24]
	lsr	r3, r3, #16
.L17:
	ldr	r2, .L42+20
	ldr	r4, .L42+16
	mov	r5, r2
	mov	r7, r2
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	ldr	r8, .L42+24
	add	r6, r4, #1040
	b	.L19
.L18:
	add	r4, r4, #52
	cmp	r4, r6
	add	r5, r5, #8
	beq	.L40
.L19:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L18
	ldm	r4, {r9, lr}
	ldr	ip, [r4, #28]
	strh	r9, [r5, #24]	@ movhi
	strh	lr, [r5, #26]	@ movhi
	strh	ip, [r5, #28]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r7
	mov	r0, #3
	add	r4, r4, #52
	mov	lr, pc
	bx	r8
	cmp	r4, r6
	add	r5, r5, #8
	bne	.L19
.L40:
	ldr	r3, .L42+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L42+20
	mov	lr, pc
	bx	r8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L9:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L41
	ldr	r3, [r4, #28]
	cmp	r3, #6
	bne	.L16
	mov	r1, #0
	ldr	r2, [r4, #32]
	lsl	r3, r2, #16
	str	r2, [r4, #28]
	str	r1, [r4, #40]
	lsr	r3, r3, #16
	b	.L17
.L41:
	ldr	r2, .L42+32
	b	.L11
.L16:
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	b	.L15
.L43:
	.align	2
.L42:
	.word	snake
	.word	238609294
	.word	__aeabi_idivmod
	.word	67109120
	.word	snakeArray
	.word	shadowOAM
	.word	DMANow
	.word	waitForVBlank
	.word	snakeArray-1040
	.size	updateSnake, .-updateSnake
	.align	2
	.global	initializeSnake
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeSnake, %function
initializeSnake:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, #0
	mov	r6, #1
	mov	r3, #8
	mov	r7, #6
	mov	r4, r5
	mov	lr, #4
	ldr	r0, .L48
	ldr	r2, [r0, #16]
	ldr	r1, [r0, #20]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, r6
	add	r1, r1, r1, lsr #31
	str	r3, [r0, #16]
	str	r3, [r0, #20]
	str	r3, [r0, #12]
	str	r3, [r0, #8]
	rsb	r2, r2, #0
	mov	ip, r3
	asr	r1, r1, r6
	ldr	r3, .L48+4
	add	r8, r2, #70
	rsb	r1, r1, #60
	str	r8, [r0, #4]
	str	r7, [r0, #28]
	str	r1, [r0]
	str	r5, [r0, #24]
	str	r5, [r0, #40]
	str	r5, [r0, #48]
	str	r6, [r0, #44]
	str	r6, [r0, #36]
	add	r2, r2, #78
	add	r0, r3, #1040
.L45:
	stm	r3, {r1, r2}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	lr, [r3, #28]
	str	r4, [r3, #36]
	add	r3, r3, #52
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L45
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	snake
	.word	snakeArray
	.size	initializeSnake, .-initializeSnake
	.align	2
	.global	growBody
	.syntax unified
	.arm
	.fpu softvfp
	.type	growBody, %function
growBody:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L55
	mov	r3, #0
	mov	r2, r0
	b	.L53
.L51:
	add	r3, r3, #1
	cmp	r3, #20
	add	r2, r2, #52
	bxeq	lr
.L53:
	ldr	r1, [r2, #36]
	cmp	r1, #0
	bne	.L51
	mov	r2, #1
	add	r1, r3, r3, lsl r2
	add	r3, r3, r1, lsl #2
	add	r3, r0, r3, lsl #2
	str	r2, [r3, #36]
	bx	lr
.L56:
	.align	2
.L55:
	.word	snakeArray
	.size	growBody, .-growBody
	.align	2
	.global	initializeApple
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeApple, %function
initializeApple:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #8
	push	{r4, r5, r6, lr}
	ldr	r4, .L59
	ldr	r5, .L59+4
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	mov	lr, pc
	bx	r5
	ldr	r2, .L59+8
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	rsb	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #5
	str	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	mov	r1, #5
	mov	ip, #1
	ldr	r3, .L59+12
	smull	lr, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr r1
	add	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #4
	str	r0, [r4]
	str	ip, [r4, #28]
	str	r1, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	apple
	.word	rand
	.word	-1840700269
	.word	954437177
	.size	initializeApple, .-initializeApple
	.align	2
	.global	initializeGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeGame, %function
initializeGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	initializeSnake
	pop	{r4, lr}
	b	initializeApple
	.size	initializeGame, .-initializeGame
	.align	2
	.global	drawApple
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawApple, %function
drawApple:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L65
	ldr	r1, .L65+4
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	ip, [r3, #24]
	ldr	r4, .L65+8
	strh	r2, [r1, #16]	@ movhi
	strh	r0, [r1, #18]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	strh	ip, [r1, #20]	@ movhi
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L66:
	.align	2
.L65:
	.word	apple
	.word	shadowOAM
	.word	DMANow
	.size	drawApple, .-drawApple
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L91
	sub	sp, sp, #20
	bl	drawApple
	bl	updateSnake
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r5, .L91+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	ldr	r7, .L91+8
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L89
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L70
.L78:
	ldr	r3, [r5]
	cmp	r3, #152
	bhi	.L72
	ldr	r3, [r5, #4]
	cmp	r3, #232
	bls	.L73
.L72:
	mov	r2, #1
	ldr	r3, .L91+12
	str	r2, [r3]
.L73:
	ldr	r4, .L91+16
	mov	r9, #1
	ldr	r8, .L91+12
	add	r6, r4, #1040
	b	.L77
.L75:
	add	r4, r4, #52
	cmp	r4, r6
	beq	.L90
.L77:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L75
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldm	r4, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r7
	add	r4, r4, #52
	cmp	r0, #0
	strne	r9, [r8]
	cmp	r4, r6
	bne	.L77
.L90:
	ldr	r3, .L91+20
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L89:
	mov	r2, #7
	ldm	r4, {r0, ip}
	ldr	r1, .L91+24
	mov	r3, #512
	strh	r2, [r1, #20]	@ movhi
	strh	r0, [r1, #16]	@ movhi
	strh	ip, [r1, #18]	@ movhi
	mov	r2, #117440512
	mov	r0, #3
	ldr	r6, .L91+28
	mov	lr, pc
	bx	r6
	mov	ip, #0
	ldr	r1, [r5, #48]
	ldr	r0, .L91+16
	add	r1, r1, #1
	mov	r3, ip
	mov	r2, r0
	str	r1, [r5, #48]
	str	ip, [r4, #28]
	b	.L71
.L69:
	add	r3, r3, #1
	cmp	r3, #20
	add	r2, r2, #52
	beq	.L70
.L71:
	ldr	r1, [r2, #36]
	cmp	r1, #0
	bne	.L69
	mov	r2, #1
	add	r1, r3, r3, lsl r2
	add	r3, r3, r1, lsl #2
	add	r3, r0, r3, lsl #2
	str	r2, [r3, #36]
.L70:
	bl	initializeApple
	b	.L78
.L92:
	.align	2
.L91:
	.word	apple
	.word	snake
	.word	collision
	.word	lives
	.word	snakeArray
	.word	waitForVBlank
	.word	shadowOAM
	.word	DMANow
	.size	updateGame, .-updateGame
	.comm	lives,4,4
	.comm	apple,32,4
	.comm	snakeArray,1456,4
	.comm	snake,52,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
