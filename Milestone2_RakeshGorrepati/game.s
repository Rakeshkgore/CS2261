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
	.global	updateUser
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateUser, %function
updateUser:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L20
	ldr	r3, [r4, #28]
	cmp	r3, #6
	movne	r2, #6
	strne	r2, [r4, #28]
	ldr	r2, [r4, #24]
	strne	r3, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L20+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	addcc	r2, r2, #1
	strcc	r2, [r4, #24]
	bcc	.L4
	ldr	r0, [r4, #40]
	ldr	r3, .L20+8
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L4:
	ldr	r3, .L20+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	ldreq	r1, [r4, #8]
	ldr	r2, [r4]
	subeq	r2, r2, r1
	ldr	r1, .L20+12
	streq	r3, [r4, #28]
	ldrh	r3, [r1, #48]
	streq	r2, [r4]
	tst	r3, #128
	bne	.L6
	mov	r3, #2
	ldrh	r1, [r1, #48]
	ldr	r0, [r4, #8]
	tst	r1, #16
	add	r2, r2, r0
	str	r2, [r4]
	str	r3, [r4, #28]
	bne	.L8
.L7:
	mov	r3, #1
	str	r3, [r4, #28]
.L8:
	ldr	r1, [r4, #24]
	ldr	r0, [r4, #40]
	add	r1, r1, #1
	add	r3, r3, r0, lsl #5
	lsl	r3, r3, #16
	str	r1, [r4, #24]
	lsr	r3, r3, #16
.L11:
	ldr	r0, [r4, #4]
	ldr	r4, .L20+16
	ldr	r1, .L20+20
	strh	r0, [r4, #2]	@ movhi
	strh	r2, [r4]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	mov	lr, pc
	bx	r1
	mov	r1, r4
	mov	r3, #512
	ldr	r4, .L20+24
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L6:
	ldrh	r3, [r1, #48]
	tst	r3, #16
	beq	.L7
	ldr	r3, [r4, #28]
	cmp	r3, #6
	lslne	r3, r3, #16
	lsrne	r3, r3, #16
	bne	.L8
	mov	r0, #0
	ldr	r1, [r4, #32]
	lsl	r3, r1, #16
	str	r1, [r4, #28]
	str	r0, [r4, #40]
	lsr	r3, r3, #16
	b	.L11
.L21:
	.align	2
.L20:
	.word	user
	.word	238609294
	.word	__aeabi_idivmod
	.word	67109120
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.size	updateUser, .-updateUser
	.align	2
	.global	initializeUser
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeUser, %function
initializeUser:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #1
	push	{r4, r5, r6, lr}
	mov	r0, #0
	mov	r4, #8
	mov	lr, #2
	mov	r6, #6
	mov	r5, #20
	ldr	r3, .L24
	ldr	r2, [r3, #16]
	add	r2, r2, r2, lsr #31
	asr	r1, r2, ip
	ldr	r2, [r3, #20]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, ip
	rsb	r1, r1, #70
	rsb	r2, r2, #60
	str	r6, [r3, #28]
	str	r5, [r3, #60]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #12]
	str	lr, [r3, #8]
	str	r1, [r3, #4]
	str	r2, [r3]
	str	r0, [r3, #24]
	str	r0, [r3, #40]
	str	r0, [r3, #48]
	str	ip, [r3, #44]
	str	ip, [r3, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	user
	.size	initializeUser, .-initializeUser
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
	bl	initializeUser
	mov	r1, #8
	mov	lr, #5
	mov	r2, #1
	mov	ip, #220
	mov	r0, #120
	ldr	r3, .L28
	str	lr, [r3, #24]
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	coin
	.size	initializeGame, .-initializeGame
	.align	2
	.global	initializeCoin1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeCoin1, %function
initializeCoin1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #8
	mov	lr, #240
	mov	r2, #1
	mov	ip, #80
	mov	r0, #5
	ldr	r3, .L32
	stm	r3, {ip, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L33:
	.align	2
.L32:
	.word	coin
	.size	initializeCoin1, .-initializeCoin1
	.align	2
	.global	initializeCoin2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeCoin2, %function
initializeCoin2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #8
	mov	lr, #180
	mov	r2, #1
	mov	ip, #60
	mov	r0, #5
	ldr	r3, .L36
	stm	r3, {ip, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L37:
	.align	2
.L36:
	.word	coin
	.size	initializeCoin2, .-initializeCoin2
	.align	2
	.global	initializeCoin3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeCoin3, %function
initializeCoin3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #8
	mov	lr, #200
	mov	r2, #1
	mov	ip, #40
	mov	r0, #5
	ldr	r3, .L40
	stm	r3, {ip, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L41:
	.align	2
.L40:
	.word	coin
	.size	initializeCoin3, .-initializeCoin3
	.align	2
	.global	initializeCoin4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeCoin4, %function
initializeCoin4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #8
	mov	lr, #220
	mov	r2, #1
	mov	ip, #120
	mov	r0, #5
	ldr	r3, .L44
	stm	r3, {ip, lr}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L45:
	.align	2
.L44:
	.word	coin
	.size	initializeCoin4, .-initializeCoin4
	.align	2
	.global	drawCoin
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCoin, %function
drawCoin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L48
	ldr	r1, .L48+4
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	ip, [r3, #24]
	ldr	r4, .L48+8
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
.L49:
	.align	2
.L48:
	.word	coin
	.word	shadowOAM
	.word	DMANow
	.size	drawCoin, .-drawCoin
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L76
	sub	sp, sp, #16
	bl	drawCoin
	bl	updateUser
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r5, .L76+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	ldr	r6, .L76+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L74
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L52
.L71:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L60
.L53:
	mov	r2, #8
	mov	ip, #240
	mov	r0, #80
.L73:
	mov	r3, #1
	mov	r1, #5
	stm	r4, {r0, ip}
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r3, [r4, #28]
	str	r3, [r4, #32]
	str	r1, [r4, #24]
.L60:
	ldr	r3, [r5]
	cmp	r3, #150
	movgt	r2, #1
	ldrgt	r3, .L76+12
	strgt	r2, [r3]
	ldr	r3, .L76+16
	mov	lr, pc
	bx	r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L74:
	mov	r2, #7
	ldr	r1, .L76+20
	ldm	r4, {r0, ip}
	mov	r3, #512
	strh	r2, [r1, #20]	@ movhi
	strh	r0, [r1, #16]	@ movhi
	mov	r2, #117440512
	strh	ip, [r1, #18]	@ movhi
	mov	r0, #3
	ldr	r6, .L76+24
	mov	lr, pc
	bx	r6
	mov	r2, #0
	ldr	r3, [r5, #48]
	ldr	r1, [r4, #4]
	add	r3, r3, #1
	cmp	r1, r2
	str	r3, [r5, #48]
	str	r2, [r4, #28]
	bgt	.L53
.L52:
	ldr	r3, [r4, #32]
	cmp	r3, #1
	beq	.L75
	cmp	r3, #2
	bne	.L58
	mov	r3, #1
	mov	r2, #8
	mov	ip, #180
	mov	r0, #60
	mov	r1, #5
	str	r3, [r4, #28]
	str	r3, [r4, #32]
	ldr	r3, [r4, #28]
	cmp	r3, #0
	stm	r4, {r0, ip}
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r1, [r4, #24]
	beq	.L53
	b	.L60
.L58:
	cmp	r3, #3
	bne	.L59
	mov	r2, #8
	mov	ip, #200
	mov	r0, #40
	b	.L73
.L75:
	mov	r2, #8
	mov	ip, #240
	mov	r0, #80
	mov	r1, #5
	str	r3, [r4, #28]
	ldr	r3, [r4, #28]
	cmp	r3, #0
	stm	r4, {r0, ip}
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r1, [r4, #24]
	beq	.L53
	b	.L60
.L59:
	cmp	r3, #4
	beq	.L53
	b	.L71
.L77:
	.align	2
.L76:
	.word	coin
	.word	user
	.word	collision
	.word	lives
	.word	waitForVBlank
	.word	shadowOAM
	.word	DMANow
	.size	updateGame, .-updateGame
	.comm	lives,4,4
	.comm	coin,36,4
	.comm	user,64,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
