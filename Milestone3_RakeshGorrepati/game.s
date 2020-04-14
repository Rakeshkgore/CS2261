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
	.global	drawGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, #5
	ldr	ip, .L12
	mov	r7, #512
	mov	r6, ip
	ldr	r0, .L12+4
	ldr	r3, [r0, #40]
	ldr	r2, [r0, #4]
	ldr	r1, .L12+8
	lsl	r3, r3, r5
	ldrb	r0, [r0]	@ zero_extendqisi2
	add	r3, r3, #6
	strh	r3, [r1, #4]	@ movhi
	and	r2, r2, ip
	ldr	r3, .L12+12
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	add	lr, r3, #720
.L4:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r2, [r3, #32]
	add	r0, r1, r2, lsl #3
	lsl	ip, r2, #3
	ldrne	r2, [r3, #4]
	ldrbne	r4, [r3]	@ zero_extendqisi2
	andne	r2, r2, r6
	lsleq	r2, r2, #3
	add	r3, r3, #36
	strhne	r4, [r1, ip]	@ movhi
	strheq	r7, [r1, r2]	@ movhi
	strhne	r2, [r0, #2]	@ movhi
	strhne	r5, [r0, #4]	@ movhi
	cmp	r3, lr
	bne	.L4
	mov	r6, #512
	mov	r5, #8
	ldr	r3, .L12+16
	add	lr, r3, #288
.L7:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	ldr	r2, [r3, #44]
	ldrbne	r4, [r3]	@ zero_extendqisi2
	add	r0, r1, r2, lsl #3
	lsl	ip, r2, #3
	ldrbne	r2, [r3, #4]	@ zero_extendqisi2
	lsleq	r2, r2, #3
	add	r3, r3, #48
	strhne	r4, [r1, ip]	@ movhi
	strheq	r6, [r1, r2]	@ movhi
	strhne	r5, [r0, #4]	@ movhi
	strhne	r2, [r0, #2]	@ movhi
	cmp	r3, lr
	bne	.L7
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	511
	.word	user
	.word	shadowOAM
	.word	coiny
	.word	bullets
	.size	drawGame, .-drawGame
	.align	2
	.global	updateUser
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateUser, %function
updateUser:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L33
	ldr	r3, [r2, #28]
	cmp	r3, #6
	movne	r1, #6
	strne	r1, [r2, #28]
	ldr	r1, [r2, #24]
	strne	r3, [r2, #32]
	rsb	r3, r1, r1, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r1, r3, lsl #3
	ldr	r0, .L33+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r1, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	ldr	r3, .L33+8
	ldrh	r3, [r3, #48]
	addcc	r1, r1, #1
	strcc	r1, [r2, #24]
	ands	r3, r3, #64
	streq	r3, [r2, #28]
	ldr	r3, .L33+8
	ldr	r1, [r2]
	ldreq	r0, [r2, #8]
	ldrh	r3, [r3, #48]
	subeq	r1, r1, r0
	addne	r1, r1, #1
	tst	r3, #16
	str	r1, [r2]
	beq	.L19
	ldr	r3, .L33+12
	ldrh	r3, [r3]
	tst	r3, #16
	bne	.L32
.L20:
	ldr	r3, [r2, #28]
	cmp	r3, #6
	bne	.L21
	mov	r1, #0
	ldr	r3, [r2, #32]
	str	r1, [r2, #40]
	str	r3, [r2, #28]
	bx	lr
.L32:
	ldr	r3, .L33+16
	ldrh	r3, [r3]
	tst	r3, #16
	bne	.L20
.L19:
	mov	r3, #1
	str	r3, [r2, #28]
.L21:
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	str	r3, [r2, #24]
	bx	lr
.L34:
	.align	2
.L33:
	.word	user
	.word	238609294
	.word	67109120
	.word	oldButtons
	.word	buttons
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
	ldr	r3, .L37
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
.L38:
	.align	2
.L37:
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
	push	{r4, r5, r6, lr}
	bl	initializeUser
	mov	r1, #9
	mov	r0, #8
	mov	r2, #0
	mov	lr, #5
	ldr	r3, .L45
	add	ip, r3, #720
.L40:
	str	r1, [r3, #32]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #4]
	str	r2, [r3]
	str	r2, [r3, #28]
	str	lr, [r3, #24]
	add	r3, r3, #36
	cmp	r3, ip
	add	r1, r1, #1
	bne	.L40
	mov	r2, #0
	mov	r6, #2
	mov	ip, r2
	mov	r5, #1
	mvn	r4, #1
	mov	lr, #8
	ldr	r1, .L45+4
	ldr	r3, .L45+8
	ldr	r0, [r1, #4]
	ldr	r1, [r1]
.L41:
	add	r2, r2, #1
	cmp	r2, #6
	str	r2, [r3, #44]
	str	r6, [r3, #20]
	str	r5, [r3, #24]
	str	r0, [r3, #4]
	str	r1, [r3]
	str	r0, [r3, #12]
	str	r1, [r3, #8]
	str	r4, [r3, #16]
	str	ip, [r3, #32]
	str	lr, [r3, #40]
	add	r3, r3, #48
	bne	.L41
	ldr	r3, .L45+12
	pop	{r4, r5, r6, lr}
	str	ip, [r3]
	bx	lr
.L46:
	.align	2
.L45:
	.word	coiny
	.word	user
	.word	bullets
	.word	counter
	.size	initializeGame, .-initializeGame
	.align	2
	.global	initializeBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeBullets, %function
initializeBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	mov	ip, #8
	mov	r6, #2
	mov	r5, r2
	mov	r4, #1
	mvn	lr, #1
	ldr	r1, .L51
	ldr	r3, .L51+4
	ldr	r0, [r1, #4]
	ldr	r1, [r1]
.L48:
	add	r2, r2, #1
	cmp	r2, #6
	str	r2, [r3, #44]
	str	r6, [r3, #20]
	str	r4, [r3, #24]
	str	r0, [r3, #4]
	str	r1, [r3]
	str	r0, [r3, #12]
	str	r1, [r3, #8]
	str	lr, [r3, #16]
	str	r5, [r3, #32]
	str	ip, [r3, #40]
	add	r3, r3, #48
	bne	.L48
	pop	{r4, r5, r6, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	user
	.word	bullets
	.size	initializeBullets, .-initializeBullets
	.align	2
	.global	initializeCoin
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeCoin, %function
initializeCoin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #9
	mov	r0, #8
	mov	r2, #0
	mov	lr, #5
	ldr	r3, .L57
	add	ip, r3, #720
.L54:
	str	r1, [r3, #32]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #4]
	str	r2, [r3]
	str	r2, [r3, #28]
	str	lr, [r3, #24]
	add	r3, r3, #36
	cmp	r3, ip
	add	r1, r1, #1
	bne	.L54
	ldr	lr, [sp], #4
	bx	lr
.L58:
	.align	2
.L57:
	.word	coiny
	.size	initializeCoin, .-initializeCoin
	.align	2
	.global	drawUser
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawUser, %function
drawUser:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L60
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #40]
	ldr	r1, .L60+4
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsl	r2, r2, #23
	lsl	r3, r3, #5
	lsr	r2, r2, #23
	add	r3, r3, #6
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L61:
	.align	2
.L60:
	.word	user
	.word	shadowOAM
	.size	drawUser, .-drawUser
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	ldr	r3, [r0, #44]
	beq	.L63
	mov	r1, #8
	ldr	r2, .L69
	str	lr, [sp, #-4]!
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldrb	r0, [r0, #4]	@ zero_extendqisi2
	lsl	ip, r3, #3
	add	r3, r2, r3, lsl #3
	strh	lr, [r2, ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L63:
	mov	r1, #512
	ldr	r2, .L69
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L70:
	.align	2
.L69:
	.word	shadowOAM
	.size	drawBullet, .-drawBullet
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
	ldr	r3, [r0, #28]
	cmp	r3, #0
	ldr	r3, [r0, #32]
	beq	.L72
	mov	ip, #5
	ldr	r2, [r0, #4]
	ldr	r1, .L78
	str	lr, [sp, #-4]!
	lsl	r2, r2, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	lsr	r2, r2, #23
	lsl	r0, r3, #3
	add	r3, r1, r3, lsl #3
	strh	lr, [r1, r0]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	ip, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L72:
	mov	r1, #512
	ldr	r2, .L78
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L79:
	.align	2
.L78:
	.word	shadowOAM
	.size	drawCoin, .-drawCoin
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L91
	mov	r2, r0
	ldr	r1, [r2, #32]
	cmp	r1, #0
	mov	r3, #0
	beq	.L90
.L81:
	add	r3, r3, #1
	cmp	r3, #6
	add	r2, r2, #48
	bxeq	lr
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L81
.L90:
	push	{r4, r5, lr}
	mov	r4, #1
	ldr	lr, .L91+4
	ldr	r2, [lr, #16]
	add	r3, r3, r3, lsl r4
	add	r1, r2, r2, lsr #31
	ldr	r2, [lr, #4]
	add	ip, r0, r3, lsl #4
	add	r2, r2, r1, asr r4
	ldr	r1, [ip, #24]
	ldr	r5, [lr]
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr r4
	str	r5, [r0, r3, lsl #4]
	str	r4, [ip, #32]
	str	r2, [ip, #4]
	pop	{r4, r5, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	bullets
	.word	user
	.size	fireBullet, .-fireBullet
	.global	__aeabi_idivmod
	.align	2
	.global	fireCoin
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireCoin, %function
fireCoin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L99
	mov	r4, #0
	mov	r3, r5
	b	.L96
.L94:
	add	r4, r4, #1
	cmp	r4, #20
	add	r3, r3, #36
	beq	.L93
.L96:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L94
	add	r4, r4, r4, lsl #3
	add	r6, r5, r4, lsl #2
	ldr	r3, .L99+4
	mov	lr, pc
	bx	r3
	ldr	r1, [r6, #20]
	ldr	r3, .L99+8
	rsb	r1, r1, #160
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r6, #16]
	lsl	r4, r4, #2
	rsb	r3, r3, #240
	str	r1, [r5, r4]
	str	r3, [r6, #4]
	str	r2, [r6, #28]
.L93:
	pop	{r4, r5, r6, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	coiny
	.word	rand
	.word	__aeabi_idivmod
	.size	fireCoin, .-fireCoin
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #24]
	add	r3, r3, #1
	rsb	r2, r2, #240
	cmp	r3, r2
	str	r3, [r0, #4]
	movgt	r3, #0
	strgt	r3, [r0, #32]
	bx	lr
	.size	updateBullet, .-updateBullet
	.align	2
	.global	updateCoin
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCoin, %function
updateCoin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, [r0, #28]
	cmp	r3, #0
	mov	r5, r0
	ldr	r2, [r0, #4]
	ldr	r1, [r0, #16]
	sub	sp, sp, #20
	bne	.L120
.L106:
	ldr	r4, .L122
	mov	r9, #0
	ldr	r8, .L122+4
	ldr	r7, .L122+8
	add	r6, r4, #288
	b	.L111
.L108:
	add	r4, r4, #48
	cmp	r4, r6
	beq	.L110
.L121:
	ldr	r3, [r5, #28]
.L111:
	cmp	r3, #0
	beq	.L108
	ldr	r0, [r5, #20]
	ldr	r3, [r5]
	str	r1, [sp, #8]
	str	r2, [sp]
	str	r0, [sp, #12]
	str	r3, [sp, #4]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r3, [r7, #48]
	add	r4, r4, #48
	addne	r3, r3, #1
	strne	r9, [r5, #28]
	ldrne	r2, [r5, #4]
	ldreq	r2, [r5, #4]
	strne	r3, [r7, #48]
	cmp	r4, r6
	ldr	r1, [r5, #16]
	bne	.L121
.L110:
	sub	r2, r2, #1
	cmp	r2, r1
	movle	r3, #0
	str	r2, [r5, #4]
	strle	r3, [r5, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L120:
	ldr	r4, .L122+8
	ldr	lr, [r0, #20]
	ldr	ip, [r0]
	str	r2, [sp]
	str	r1, [sp, #8]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L122+4
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #0
	ldrne	r1, [r4, #48]
	addne	r1, r1, #1
	strne	r2, [r5, #28]
	movne	r3, r2
	ldreq	r3, [r5, #28]
	ldrne	r2, [r5, #4]
	ldreq	r2, [r5, #4]
	strne	r1, [r4, #48]
	ldr	r1, [r5, #16]
	b	.L106
.L123:
	.align	2
.L122:
	.word	bullets
	.word	collision
	.word	user
	.size	updateCoin, .-updateCoin
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
	ldr	r6, .L143
	bl	updateUser
	ldr	r3, [r6]
	ldr	r4, .L143+4
	add	r3, r3, #1
	str	r3, [r6]
	add	r5, r4, #720
.L125:
	mov	r0, r4
	add	r4, r4, #36
	bl	updateCoin
	cmp	r4, r5
	bne	.L125
	mov	ip, #0
	ldr	r3, .L143+8
	add	r0, r3, #288
.L129:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L127
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #24]
	add	r2, r2, #1
	rsb	r1, r1, #240
	cmp	r2, r1
	str	r2, [r3, #4]
	strgt	ip, [r3, #32]
.L127:
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L129
	ldr	r3, [r6]
	cmp	r3, #50
	bgt	.L142
.L131:
	ldr	r3, .L143+12
	ldrh	r3, [r3]
	ldr	r4, .L143+16
	tst	r3, #2
	ldr	r3, [r4, #60]
	beq	.L141
	ldr	r2, .L143+20
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L135
.L141:
	add	r3, r3, #1
.L134:
	ldr	r2, [r4]
	cmp	r2, #150
	movgt	r2, #1
	str	r3, [r4, #60]
	ldrgt	r3, .L143+24
	pop	{r4, r5, r6, lr}
	strgt	r2, [r3]
	bx	lr
.L135:
	cmp	r3, #19
	ble	.L141
	bl	fireBullet
	mov	r3, #1
	b	.L134
.L142:
	mov	r2, #0
	ldr	r3, .L143+28
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	ldr	r3, .L143+32
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #5
	cmp	r0, #60
	ble	.L131
	bl	fireCoin
	b	.L131
.L144:
	.align	2
.L143:
	.word	counter
	.word	coiny
	.word	bullets
	.word	oldButtons
	.word	user
	.word	buttons
	.word	lives
	.word	rand
	.word	1717986919
	.size	updateGame, .-updateGame
	.comm	counter,4,4
	.comm	lives,4,4
	.comm	bullets,288,4
	.comm	coiny,720,4
	.comm	coin,36,4
	.comm	user,64,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
