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
	ldr	ip, .L18
	ldr	r3, .L18+4
	ldr	r2, [ip, #4]
	ldr	r0, [r3]
	ldr	r3, [ip, #40]
	ldr	r1, .L18+8
	lsl	r2, r2, #23
	ldrb	ip, [ip]	@ zero_extendqisi2
	lsr	r2, r2, #23
	lsl	r3, r3, #5
	push	{r4, r5, r6, r7, lr}
	cmp	r0, #0
	strh	r2, [r1, #2]	@ movhi
	add	r3, r3, #6
	add	r2, r1, #804
	add	r0, r0, #8
	strh	r3, [r1, #4]	@ movhi
	strh	ip, [r1]	@ movhi
	mov	lr, #120
	strh	r0, [r2]	@ movhi
	mov	r4, #7
	movle	r2, #512
	mov	r7, #512
	mov	r6, #5
	add	r3, r1, #800
	strh	r4, [r3]	@ movhi
	strh	lr, [r3, #2]	@ movhi
	strhle	r2, [r3]	@ movhi
	ldr	r3, .L18+12
	ldr	r5, .L18+16
	add	lr, r3, #720
.L5:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r2, [r3, #32]
	add	r0, r1, r2, lsl #3
	lsl	ip, r2, #3
	ldrne	r2, [r3, #4]
	ldrbne	r4, [r3]	@ zero_extendqisi2
	andne	r2, r2, r5
	lsleq	r2, r2, #3
	add	r3, r3, #36
	strhne	r4, [r1, ip]	@ movhi
	strheq	r7, [r1, r2]	@ movhi
	strhne	r2, [r0, #2]	@ movhi
	strhne	r6, [r0, #4]	@ movhi
	cmp	r3, lr
	bne	.L5
	mov	r6, #512
	mov	r5, #8
	ldr	r3, .L18+20
	add	lr, r3, #480
.L8:
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
	bne	.L8
	ldr	r3, .L18+24
	ldr	r2, [r3, #28]
	cmp	r2, #0
	ldr	r2, [r3, #32]
	bne	.L9
	mov	r0, #512
	lsl	r2, r2, #3
	strh	r0, [r1, r2]	@ movhi
	ldr	r2, [r3, #64]
	cmp	r2, #0
	ldr	r2, [r3, #68]
	beq	.L11
.L17:
	mov	ip, #19
	ldr	r0, [r3, #40]
	ldrb	lr, [r3, #36]	@ zero_extendqisi2
	lsl	r3, r0, #23
	lsr	r3, r3, #23
	lsl	r0, r2, #3
	add	r2, r1, r2, lsl #3
	strh	lr, [r1, r0]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L9:
	mov	ip, #19
	ldr	r0, [r3, #4]
	ldrb	r4, [r3]	@ zero_extendqisi2
	lsl	r0, r0, #23
	lsl	lr, r2, #3
	lsr	r0, r0, #23
	add	r2, r1, r2, lsl #3
	strh	r4, [r1, lr]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	ldr	r2, [r3, #64]
	cmp	r2, #0
	ldr	r2, [r3, #68]
	bne	.L17
.L11:
	mov	r3, #512
	lsl	r2, r2, #3
	strh	r3, [r1, r2]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	user
	.word	ammoRemaining
	.word	shadowOAM
	.word	coiny
	.word	511
	.word	bullets
	.word	target
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
	ldr	r2, .L39
	ldr	r3, [r2, #28]
	cmp	r3, #6
	movne	r1, #6
	strne	r1, [r2, #28]
	ldr	r1, [r2, #24]
	strne	r3, [r2, #32]
	rsb	r3, r1, r1, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r1, r3, lsl #3
	ldr	r0, .L39+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r1, r3, lsl #3
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	ldr	r3, .L39+8
	ldrh	r3, [r3, #48]
	addcc	r1, r1, #1
	strcc	r1, [r2, #24]
	ands	r3, r3, #64
	streq	r3, [r2, #28]
	ldr	r3, .L39+8
	ldr	r1, [r2]
	ldreq	r0, [r2, #8]
	ldrh	r3, [r3, #48]
	subeq	r1, r1, r0
	addne	r1, r1, #1
	tst	r3, #16
	str	r1, [r2]
	beq	.L25
	ldr	r3, .L39+12
	ldrh	r3, [r3]
	tst	r3, #16
	bne	.L38
.L26:
	ldr	r3, [r2, #28]
	cmp	r3, #6
	bne	.L27
	mov	r1, #0
	ldr	r3, [r2, #32]
	str	r1, [r2, #40]
	str	r3, [r2, #28]
	bx	lr
.L38:
	ldr	r3, .L39+16
	ldrh	r3, [r3]
	tst	r3, #16
	bne	.L26
.L25:
	mov	r3, #1
	str	r3, [r2, #28]
.L27:
	ldr	r3, [r2, #24]
	add	r3, r3, #1
	str	r3, [r2, #24]
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	r3, .L43
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
.L44:
	.align	2
.L43:
	.word	user
	.size	initializeUser, .-initializeUser
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
	ldr	r1, .L49
	ldr	r3, .L49+4
	ldr	r0, [r1, #4]
	ldr	r1, [r1]
.L46:
	add	r2, r2, #1
	cmp	r2, #10
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
	bne	.L46
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	.align	2
.L49:
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
	mov	r1, #13
	mov	r0, #8
	mov	r2, #0
	mov	lr, #5
	ldr	r3, .L55
	add	ip, r3, #720
.L52:
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
	bne	.L52
	ldr	lr, [sp], #4
	bx	lr
.L56:
	.align	2
.L55:
	.word	coiny
	.size	initializeCoin, .-initializeCoin
	.align	2
	.global	initializeTargets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeTargets, %function
initializeTargets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #8
	ldr	r4, .L59
	ldr	r6, .L59+4
	str	r9, [r4, #16]
	str	r9, [r4, #20]
	mov	lr, pc
	bx	r6
	ldr	r5, .L59+8
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #1
	str	r0, [r4, #4]
	mov	lr, pc
	bx	r6
	mov	r8, #0
	mov	r2, #30
	mov	r7, #19
	smull	r3, r1, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #1
	str	r2, [r4, #32]
	str	r9, [r4, #52]
	str	r9, [r4, #56]
	str	r0, [r4]
	str	r8, [r4, #28]
	str	r7, [r4, #24]
	mov	lr, pc
	bx	r6
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #1
	str	r0, [r4, #40]
	mov	lr, pc
	bx	r6
	mov	r2, #31
	smull	r3, r5, r0, r5
	asr	r3, r0, r2
	rsb	r5, r3, r5, asr #6
	add	r5, r5, r5, lsl #6
	sub	r0, r0, r5, lsl #1
	str	r8, [r4, #64]
	str	r7, [r4, #60]
	str	r0, [r4, #36]
	str	r2, [r4, #68]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	target
	.word	rand
	.word	2114445439
	.size	initializeTargets, .-initializeTargets
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
	mov	r1, #13
	mov	r0, #8
	mov	r2, #0
	mov	lr, #5
	ldr	r3, .L67
	add	ip, r3, #720
.L62:
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
	bne	.L62
	mov	r4, #0
	mov	r6, #2
	mov	r5, r4
	mov	lr, #1
	mvn	ip, #1
	mov	r0, #8
	ldr	r2, .L67+4
	ldr	r3, .L67+8
	ldr	r1, [r2, #4]
	ldr	r2, [r2]
.L63:
	add	r4, r4, #1
	cmp	r4, #10
	str	r4, [r3, #44]
	str	r6, [r3, #20]
	str	lr, [r3, #24]
	str	r1, [r3, #4]
	str	r2, [r3]
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	str	ip, [r3, #16]
	str	r5, [r3, #32]
	str	r0, [r3, #40]
	add	r3, r3, #48
	bne	.L63
	bl	initializeTargets
	ldr	r0, .L67+12
	ldr	r1, .L67+16
	ldr	r3, .L67+20
	ldr	r2, .L67+24
	str	r5, [r0]
	str	r4, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	coiny
	.word	user
	.word	bullets
	.word	counter
	.word	ammoRemaining
	.word	targetCounter
	.word	5000
	.size	initializeGame, .-initializeGame
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
	ldr	r0, .L70
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #40]
	ldr	r1, .L70+4
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsl	r2, r2, #23
	lsl	r3, r3, #5
	lsr	r2, r2, #23
	add	r3, r3, #6
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L71:
	.align	2
.L70:
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
	beq	.L73
	mov	r1, #8
	ldr	r2, .L79
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
.L73:
	mov	r1, #512
	ldr	r2, .L79
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L80:
	.align	2
.L79:
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
	beq	.L82
	mov	ip, #5
	ldr	r2, [r0, #4]
	ldr	r1, .L88
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
.L82:
	mov	r1, #512
	ldr	r2, .L88
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L89:
	.align	2
.L88:
	.word	shadowOAM
	.size	drawCoin, .-drawCoin
	.align	2
	.global	drawTarget
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTarget, %function
drawTarget:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #28]
	cmp	r3, #0
	ldr	r3, [r0, #32]
	beq	.L91
	mov	ip, #19
	ldr	r2, [r0, #4]
	ldr	r1, .L97
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
.L91:
	mov	r1, #512
	ldr	r2, .L97
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L98:
	.align	2
.L97:
	.word	shadowOAM
	.size	drawTarget, .-drawTarget
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
	ldr	r0, .L109
	mov	r3, #0
	mov	r2, r0
	b	.L102
.L100:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bxeq	lr
.L102:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L100
	push	{r4, r5, lr}
	mov	r4, #1
	ldr	lr, .L109+4
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
.L110:
	.align	2
.L109:
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
	ldr	r5, .L117
	mov	r4, #0
	mov	r3, r5
	b	.L114
.L112:
	add	r4, r4, #1
	cmp	r4, #20
	add	r3, r3, #36
	beq	.L111
.L114:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L112
	add	r4, r4, r4, lsl #3
	add	r6, r5, r4, lsl #2
	ldr	r3, .L117+4
	mov	lr, pc
	bx	r3
	ldr	r1, [r6, #20]
	ldr	r3, .L117+8
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
.L111:
	pop	{r4, r5, r6, lr}
	bx	lr
.L118:
	.align	2
.L117:
	.word	coiny
	.word	rand
	.word	__aeabi_idivmod
	.size	fireCoin, .-fireCoin
	.align	2
	.global	fireTarget
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireTarget, %function
fireTarget:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L127
	ldr	r5, [r4, #28]
	cmp	r5, #0
	beq	.L120
	ldr	r3, [r4, #64]
	cmp	r3, #0
	beq	.L126
.L119:
	pop	{r4, r5, r6, lr}
	bx	lr
.L126:
	mov	r5, #1
.L120:
	add	r5, r5, r5, lsl #3
	add	r6, r4, r5, lsl #2
	ldr	r3, .L127+4
	mov	lr, pc
	bx	r3
	ldr	r1, [r6, #20]
	ldr	r3, .L127+8
	rsb	r1, r1, #160
	mov	lr, pc
	bx	r3
	mov	r2, #200
	mov	r3, #1
	lsl	r5, r5, #2
	str	r1, [r4, r5]
	str	r2, [r6, #4]
	str	r3, [r6, #28]
	b	.L119
.L128:
	.align	2
.L127:
	.word	target
	.word	rand
	.word	__aeabi_idivmod
	.size	fireTarget, .-fireTarget
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
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #28]
	sub	r2, r2, #1
	cmp	r3, #0
	mov	r5, r0
	str	r2, [r0, #4]
	ldr	r1, [r0, #16]
	sub	sp, sp, #20
	bne	.L148
.L134:
	ldr	r4, .L150
	mov	r9, #0
	ldr	r8, .L150+4
	ldr	r7, .L150+8
	add	r6, r4, #480
	b	.L139
.L136:
	add	r4, r4, #48
	cmp	r4, r6
	beq	.L138
.L149:
	ldr	r3, [r5, #28]
.L139:
	cmp	r3, #0
	beq	.L136
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
	bne	.L149
.L138:
	cmp	r2, r1
	movle	r3, #0
	strle	r3, [r5, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L148:
	ldr	r4, .L150+8
	ldr	lr, [r0, #20]
	ldr	ip, [r0]
	str	r2, [sp]
	str	r1, [sp, #8]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L150+4
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
	b	.L134
.L151:
	.align	2
.L150:
	.word	bullets
	.word	collision
	.word	user
	.size	updateCoin, .-updateCoin
	.align	2
	.global	updateTarget
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTarget, %function
updateTarget:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L163
	mov	r8, #0
	mov	r5, r0
	ldr	r7, .L163+4
	sub	sp, sp, #16
	add	r6, r4, #480
	b	.L156
.L154:
	add	r4, r4, #48
	cmp	r4, r6
	beq	.L162
.L156:
	ldr	r3, [r5, #28]
	cmp	r3, #0
	beq	.L154
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #20]
	mov	lr, pc
	bx	r7
	add	r4, r4, #48
	cmp	r0, #0
	strne	r8, [r5, #28]
	cmp	r4, r6
	bne	.L156
.L162:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L164:
	.align	2
.L163:
	.word	bullets
	.word	collision
	.size	updateTarget, .-updateTarget
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L186
	ldr	r7, .L186+4
	bl	updateUser
	ldr	r2, [r6]
	ldr	r3, [r7]
	ldr	r4, .L186+8
	add	r2, r2, #1
	sub	r3, r3, #1
	str	r2, [r6]
	str	r3, [r7]
	add	r5, r4, #720
.L166:
	mov	r0, r4
	add	r4, r4, #36
	bl	updateCoin
	cmp	r4, r5
	bne	.L166
	mov	ip, #0
	ldr	r3, .L186+12
	add	r0, r3, #480
.L170:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L168
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #24]
	add	r2, r2, #1
	rsb	r1, r1, #240
	cmp	r2, r1
	str	r2, [r3, #4]
	strgt	ip, [r3, #32]
.L168:
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L170
	ldr	r0, .L186+16
	bl	updateTarget
	ldr	r0, .L186+20
	bl	updateTarget
	ldr	r2, .L186+24
	ldr	r3, [r7]
	ldr	r1, .L186+28
	mla	r3, r1, r3, r2
	ldr	r2, .L186+32
	cmp	r2, r3, ror #2
	bcs	.L184
.L171:
	ldr	r3, [r6]
	cmp	r3, #50
	bgt	.L185
.L173:
	ldr	r3, .L186+36
	ldrh	r3, [r3]
	ldr	r4, .L186+40
	tst	r3, #2
	ldr	r3, [r4, #60]
	beq	.L183
	ldr	r2, .L186+44
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L177
.L183:
	add	r3, r3, #1
.L176:
	ldr	r2, [r4]
	cmp	r2, #150
	movgt	r2, #1
	str	r3, [r4, #60]
	ldrgt	r3, .L186+48
	pop	{r4, r5, r6, r7, r8, lr}
	strgt	r2, [r3]
	bx	lr
.L177:
	cmp	r3, #19
	ble	.L183
	bl	fireBullet
	ldr	r1, .L186+52
	ldr	r2, [r1]
	sub	r2, r2, #1
	mov	r3, #1
	str	r2, [r1]
	b	.L176
.L185:
	mov	r2, #0
	ldr	r3, .L186+56
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	ldr	r3, .L186+60
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #5
	cmp	r0, #60
	ble	.L173
	bl	fireCoin
	b	.L173
.L184:
	bl	fireTarget
	b	.L171
.L187:
	.align	2
.L186:
	.word	counter
	.word	targetCounter
	.word	coiny
	.word	bullets
	.word	target
	.word	target+36
	.word	17179868
	.word	652835029
	.word	8589934
	.word	oldButtons
	.word	user
	.word	buttons
	.word	lives
	.word	ammoRemaining
	.word	rand
	.word	1717986919
	.size	updateGame, .-updateGame
	.align	2
	.global	drawAmmo
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAmmo, %function
drawAmmo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #120
	ldr	r3, .L190
	cmp	r0, #0
	mov	r1, #7
	strh	r2, [r3, #2]	@ movhi
	movle	r2, #512
	add	r0, r0, #8
	strh	r1, [r3]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strhle	r2, [r3]	@ movhi
	bx	lr
.L191:
	.align	2
.L190:
	.word	shadowOAM+800
	.size	drawAmmo, .-drawAmmo
	.comm	targetCounter,4,4
	.comm	counter,4,4
	.comm	lives,4,4
	.comm	ammoRemaining,4,4
	.comm	target,72,4
	.comm	bullets,480,4
	.comm	coiny,720,4
	.comm	user,64,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
