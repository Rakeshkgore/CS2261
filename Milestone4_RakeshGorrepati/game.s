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
	ldr	r0, .L22
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	ldr	r2, .L22+4
	ldr	r1, .L22+8
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	push	{r4, r5, r6, r7, lr}
	ldr	r1, [r1]
	ldr	r5, [r0, #40]
	strh	r3, [r2, #2]	@ movhi
	ldr	r3, [r0, #28]
	ldrb	r4, [r0]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, r5, lsl #5
	add	r1, r1, #3
	add	r0, r2, #804
	strh	r3, [r2, #4]	@ movhi
	strh	r4, [r2]	@ movhi
	mov	lr, #7
	strh	r1, [r0]	@ movhi
	mov	ip, #100
	movle	r1, #3
	mov	r7, #512
	add	r3, r2, #800
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strhle	r1, [r3]	@ movhi
	ldr	r3, .L22+12
	ldr	r6, .L22+16
	add	lr, r3, #720
.L5:
	ldr	r1, [r3, #28]
	cmp	r1, #0
	ldr	r1, [r3, #32]
	add	r0, r2, r1, lsl #3
	lsl	ip, r1, #3
	ldrne	r1, [r3, #4]
	ldrbne	r5, [r3]	@ zero_extendqisi2
	ldrne	r4, [r3, #24]
	andne	r1, r1, r6
	lsleq	r1, r1, #3
	add	r3, r3, #36
	strhne	r5, [r2, ip]	@ movhi
	strheq	r7, [r2, r1]	@ movhi
	strhne	r1, [r0, #2]	@ movhi
	strhne	r4, [r0, #4]	@ movhi
	cmp	r3, lr
	bne	.L5
	mov	r7, #512
	ldr	r3, .L22+20
	ldr	r6, .L22+16
	add	lr, r3, #720
.L8:
	ldr	r1, [r3, #28]
	cmp	r1, #0
	ldr	r1, [r3, #32]
	add	r0, r2, r1, lsl #3
	lsl	ip, r1, #3
	ldrne	r1, [r3, #4]
	ldrbne	r5, [r3]	@ zero_extendqisi2
	ldrne	r4, [r3, #24]
	andne	r1, r1, r6
	lsleq	r1, r1, #3
	add	r3, r3, #36
	strhne	r5, [r2, ip]	@ movhi
	strheq	r7, [r2, r1]	@ movhi
	strhne	r1, [r0, #2]	@ movhi
	strhne	r4, [r0, #4]	@ movhi
	cmp	r3, lr
	bne	.L8
	mov	r6, #512
	ldr	r3, .L22+24
	add	lr, r3, #480
.L11:
	ldr	r1, [r3, #32]
	cmp	r1, #0
	ldr	r1, [r3, #44]
	ldrbne	r5, [r3]	@ zero_extendqisi2
	ldrbne	r4, [r3, #4]	@ zero_extendqisi2
	add	r0, r2, r1, lsl #3
	lsl	ip, r1, #3
	ldrne	r1, [r3, #40]
	lsleq	r1, r1, #3
	add	r3, r3, #48
	strhne	r5, [r2, ip]	@ movhi
	strheq	r6, [r2, r1]	@ movhi
	strhne	r4, [r0, #2]	@ movhi
	strhne	r1, [r0, #4]	@ movhi
	cmp	r3, lr
	bne	.L11
	ldr	r3, .L22+28
	ldr	r1, [r3, #28]
	cmp	r1, #0
	ldr	r1, [r3, #32]
	bne	.L12
	mov	r0, #512
	lsl	r1, r1, #3
	strh	r0, [r2, r1]	@ movhi
	ldr	r1, [r3, #64]
	cmp	r1, #0
	ldr	r1, [r3, #68]
	beq	.L14
.L21:
	ldr	r0, [r3, #40]
	ldrb	lr, [r3, #36]	@ zero_extendqisi2
	lsl	r0, r0, #23
	ldr	r3, [r3, #60]
	lsl	ip, r1, #3
	lsr	r0, r0, #23
	add	r1, r2, r1, lsl #3
	strh	lr, [r2, ip]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L12:
	ldr	r0, [r3, #4]
	ldrb	r4, [r3]	@ zero_extendqisi2
	ldr	ip, [r3, #24]
	lsl	r0, r0, #23
	lsl	lr, r1, #3
	lsr	r0, r0, #23
	add	r1, r2, r1, lsl #3
	strh	r4, [r2, lr]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	r1, [r3, #64]
	cmp	r1, #0
	ldr	r1, [r3, #68]
	bne	.L21
.L14:
	mov	r3, #512
	lsl	r1, r1, #3
	strh	r3, [r2, r1]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	user
	.word	shadowOAM
	.word	ammoRemaining
	.word	coiny
	.word	511
	.word	red
	.word	bullets
	.word	target
	.size	drawGame, .-drawGame
	.global	__aeabi_idivmod
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L35
	ldr	r3, [r4, #28]
	cmp	r3, #0
	movne	r2, #0
	ldr	r5, [r4, #24]
	strne	r3, [r4, #32]
	rsb	r3, r5, r5, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r5, r3, lsl #3
	strne	r2, [r4, #28]
	rsb	r3, r3, r3, lsl #15
	ldr	r2, .L35+4
	add	r3, r5, r3, lsl #3
	add	r3, r3, r2
	cmp	r2, r3, ror #1
	bcc	.L26
	ldr	r0, [r4, #40]
	ldr	r3, .L35+8
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L26:
	ldr	r3, .L35+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r3, [r4]
	bne	.L27
	cmp	r3, #0
	blt	.L27
	ldr	r2, [r4, #8]
	sub	r3, r3, r2
	str	r3, [r4]
.L28:
	mov	r2, #0
	ldr	r3, [r4, #32]
	str	r2, [r4, #40]
	str	r3, [r4, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L27:
	ldr	r2, [r4, #28]
	cmp	r2, #0
	add	r3, r3, #1
	addne	r5, r5, #1
	str	r3, [r4]
	strne	r5, [r4, #24]
	beq	.L28
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	user
	.word	238609294
	.word	__aeabi_idivmod
	.word	67109120
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
	push	{r4, r5, r6, lr}
	mov	r5, #1
	mov	r0, #0
	mov	lr, #8
	mov	r6, #3
	mov	r4, #20
	mov	ip, #2
	ldr	r3, .L39
	ldr	r2, [r3, #16]
	add	r2, r2, r2, lsr #31
	asr	r1, r2, r5
	ldr	r2, [r3, #20]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, r5
	rsb	r1, r1, #70
	rsb	r2, r2, #60
	str	r6, [r3, #44]
	str	r5, [r3, #36]
	str	r4, [r3, #60]
	str	lr, [r3, #16]
	str	lr, [r3, #20]
	str	r1, [r3, #4]
	str	r2, [r3]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	str	r0, [r3, #24]
	str	r0, [r3, #40]
	str	r0, [r3, #48]
	str	r0, [r3, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	.align	2
.L39:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bl	initializeUser
	mov	r1, #13
	mov	r0, #8
	mov	r2, #0
	mov	lr, #27
	ldr	r3, .L49
	add	ip, r3, #720
.L42:
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
	bne	.L42
	mov	r2, #0
	mov	ip, #1
	mov	r4, r2
	mvn	r5, #1
	mov	lr, #26
	ldr	r1, .L49+4
	ldr	r3, .L49+8
	ldr	r0, [r1, #4]
	ldr	r1, [r1]
.L43:
	add	r2, r2, #1
	cmp	r2, #10
	str	r2, [r3, #44]
	str	ip, [r3, #20]
	str	ip, [r3, #24]
	str	r0, [r3, #4]
	str	r1, [r3]
	str	r0, [r3, #12]
	str	r1, [r3, #8]
	str	r5, [r3, #16]
	str	r4, [r3, #32]
	str	lr, [r3, #40]
	add	r3, r3, #48
	bne	.L43
	mov	r3, #8
	mov	r7, #120
	mov	r6, #80
	mov	r5, #2
	mov	r9, #30
	mov	r8, #31
	mov	r1, #35
	mov	r2, #0
	mov	lr, #28
	ldr	ip, .L49+12
	mov	r0, r3
	str	r3, [ip, #16]
	str	r3, [ip, #20]
	str	r3, [ip, #52]
	str	r3, [ip, #56]
	ldr	r3, .L49+16
	str	r4, [ip, #28]
	str	r4, [ip, #64]
	str	r9, [ip, #32]
	str	r8, [ip, #68]
	str	r7, [ip, #4]
	str	r7, [ip, #40]
	str	r6, [ip]
	str	r6, [ip, #36]
	str	r5, [ip, #24]
	str	r5, [ip, #60]
	add	ip, r3, #720
.L44:
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
	bne	.L44
	mov	r3, #1
	mov	lr, #10
	ldr	r0, .L49+20
	ldr	r1, .L49+24
	str	r3, [r0]
	str	r3, [r1]
	ldr	ip, .L49+28
	ldr	r0, .L49+32
	ldr	r3, .L49+36
	ldr	r1, .L49+40
	str	lr, [ip]
	str	r2, [r0]
	str	r1, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	coiny
	.word	user
	.word	bullets
	.word	target
	.word	red
	.word	lives
	.word	unlimited
	.word	ammoRemaining
	.word	counter
	.word	targetCounter
	.word	5000
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
	push	{r4, r5, lr}
	mov	ip, #1
	mov	r5, r2
	mvn	r4, #1
	mov	lr, #26
	ldr	r1, .L55
	ldr	r3, .L55+4
	ldr	r0, [r1, #4]
	ldr	r1, [r1]
.L52:
	add	r2, r2, #1
	cmp	r2, #10
	str	r2, [r3, #44]
	str	ip, [r3, #20]
	str	ip, [r3, #24]
	str	r0, [r3, #4]
	str	r1, [r3]
	str	r0, [r3, #12]
	str	r1, [r3, #8]
	str	r4, [r3, #16]
	str	r5, [r3, #32]
	str	lr, [r3, #40]
	add	r3, r3, #48
	bne	.L52
	pop	{r4, r5, lr}
	bx	lr
.L56:
	.align	2
.L55:
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
	mov	lr, #27
	ldr	r3, .L61
	add	ip, r3, #720
.L58:
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
	bne	.L58
	ldr	lr, [sp], #4
	bx	lr
.L62:
	.align	2
.L61:
	.word	coiny
	.size	initializeCoin, .-initializeCoin
	.align	2
	.global	initializeRed
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeRed, %function
initializeRed:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #35
	mov	r0, #8
	mov	r2, #0
	mov	lr, #28
	ldr	r3, .L67
	add	ip, r3, #720
.L64:
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
	bne	.L64
	ldr	lr, [sp], #4
	bx	lr
.L68:
	.align	2
.L67:
	.word	red
	.size	initializeRed, .-initializeRed
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
	push	{r4, r5, lr}
	mov	r2, #8
	mov	lr, #120
	mov	r5, #30
	mov	r4, #31
	mov	ip, #80
	mov	r0, #0
	mov	r1, #2
	ldr	r3, .L71
	str	r5, [r3, #32]
	str	r4, [r3, #68]
	str	lr, [r3, #4]
	str	lr, [r3, #40]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	str	ip, [r3]
	str	ip, [r3, #36]
	str	r0, [r3, #28]
	str	r0, [r3, #64]
	str	r1, [r3, #24]
	str	r1, [r3, #60]
	pop	{r4, r5, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	target
	.size	initializeTargets, .-initializeTargets
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
	ldr	r2, .L75
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #28]
	ldr	lr, [r2, #40]
	lsl	r3, r3, #23
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L75+4
	lsr	r3, r3, #23
	add	r2, r0, lr, lsl #5
	orr	r3, r3, #16384
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L76:
	.align	2
.L75:
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
	beq	.L78
	ldr	r2, .L84
	str	lr, [sp, #-4]!
	ldrb	ip, [r0, #4]	@ zero_extendqisi2
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldr	r1, [r0, #40]
	lsl	r0, r3, #3
	add	r3, r2, r3, lsl #3
	strh	lr, [r2, r0]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L78:
	mov	r1, #512
	ldr	r2, .L84
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L85:
	.align	2
.L84:
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
	beq	.L87
	ldr	r2, [r0, #4]
	ldr	r1, .L93
	str	lr, [sp, #-4]!
	lsl	r2, r2, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldr	r0, [r0, #24]
	lsl	ip, r3, #3
	lsr	r2, r2, #23
	add	r3, r1, r3, lsl #3
	strh	lr, [r1, ip]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L87:
	mov	r1, #512
	ldr	r2, .L93
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L94:
	.align	2
.L93:
	.word	shadowOAM
	.size	drawCoin, .-drawCoin
	.align	2
	.global	drawRed
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRed, %function
drawRed:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #28]
	cmp	r3, #0
	ldr	r3, [r0, #32]
	beq	.L96
	ldr	r2, [r0, #4]
	ldr	r1, .L102
	str	lr, [sp, #-4]!
	lsl	r2, r2, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldr	r0, [r0, #24]
	lsl	ip, r3, #3
	lsr	r2, r2, #23
	add	r3, r1, r3, lsl #3
	strh	lr, [r1, ip]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L96:
	mov	r1, #512
	ldr	r2, .L102
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L103:
	.align	2
.L102:
	.word	shadowOAM
	.size	drawRed, .-drawRed
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
	beq	.L105
	ldr	r2, [r0, #4]
	ldr	r1, .L111
	str	lr, [sp, #-4]!
	lsl	r2, r2, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldr	r0, [r0, #24]
	lsl	ip, r3, #3
	lsr	r2, r2, #23
	add	r3, r1, r3, lsl #3
	strh	lr, [r1, ip]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L105:
	mov	r1, #512
	ldr	r2, .L111
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L112:
	.align	2
.L111:
	.word	shadowOAM
	.size	drawTarget, .-drawTarget
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
	ldr	r3, .L115
	ldr	r3, [r3]
	ldr	r2, .L115+4
	cmp	r3, #0
	add	r3, r3, #3
	mov	r0, #7
	mov	r1, #100
	strh	r3, [r2, #4]	@ movhi
	movle	r3, #3
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strhle	r3, [r2]	@ movhi
	bx	lr
.L116:
	.align	2
.L115:
	.word	ammoRemaining
	.word	shadowOAM+800
	.size	drawAmmo, .-drawAmmo
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
	ldr	r0, .L127
	mov	r3, #0
	mov	r2, r0
	b	.L120
.L118:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bxeq	lr
.L120:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L118
	push	{r4, r5, lr}
	mov	r4, #1
	ldr	lr, .L127+4
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
.L128:
	.align	2
.L127:
	.word	bullets
	.word	user
	.size	fireBullet, .-fireBullet
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
	ldr	r5, .L135
	mov	r4, #0
	mov	r3, r5
	b	.L132
.L130:
	add	r4, r4, #1
	cmp	r4, #20
	add	r3, r3, #36
	beq	.L129
.L132:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L130
	add	r4, r4, r4, lsl #3
	add	r6, r5, r4, lsl #2
	ldr	r3, .L135+4
	mov	lr, pc
	bx	r3
	ldr	r1, [r6, #20]
	ldr	r3, .L135+8
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
.L129:
	pop	{r4, r5, r6, lr}
	bx	lr
.L136:
	.align	2
.L135:
	.word	coiny
	.word	rand
	.word	__aeabi_idivmod
	.size	fireCoin, .-fireCoin
	.align	2
	.global	fireRed
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireRed, %function
fireRed:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L143
	mov	r4, #0
	mov	r3, r5
	b	.L140
.L138:
	add	r4, r4, #1
	cmp	r4, #20
	add	r3, r3, #36
	beq	.L137
.L140:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L138
	add	r4, r4, r4, lsl #3
	add	r6, r5, r4, lsl #2
	ldr	r3, .L143+4
	mov	lr, pc
	bx	r3
	ldr	r1, [r6, #20]
	ldr	r3, .L143+8
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
.L137:
	pop	{r4, r5, r6, lr}
	bx	lr
.L144:
	.align	2
.L143:
	.word	red
	.word	rand
	.word	__aeabi_idivmod
	.size	fireRed, .-fireRed
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
	ldr	r4, .L153
	ldr	r5, [r4, #28]
	cmp	r5, #0
	beq	.L146
	ldr	r3, [r4, #64]
	cmp	r3, #0
	beq	.L152
.L145:
	pop	{r4, r5, r6, lr}
	bx	lr
.L152:
	mov	r5, #1
.L146:
	ldr	r3, .L153+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	ip, #200
	ldr	r3, .L153+8
	smull	lr, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r5, r5, r5, lsl #3
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl r1
	add	r3, r4, r5, lsl #2
	str	r0, [r4, r5, lsl #2]
	str	ip, [r3, #4]
	str	r1, [r3, #28]
	b	.L145
.L154:
	.align	2
.L153:
	.word	target
	.word	rand
	.word	2114445439
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	mov	lr, #67108864
	ldr	r0, .L177
	ldrh	r3, [r0]
	add	r3, r3, #1
	ldr	r4, .L177+4
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	umull	r2, ip, r4, r3
	ldr	r2, [r5, #4]
	lsr	ip, ip, #3
	sub	r2, r2, #1
	strh	r3, [r0]	@ movhi
	str	r2, [r5, #4]
	strh	ip, [lr, #16]	@ movhi
	ldrh	r1, [r0]
	umull	r3, r1, r4, r1
	ldr	r3, [r5, #28]
	lsr	r1, r1, #4
	cmp	r3, #0
	strh	r1, [lr, #20]	@ movhi
	sub	sp, sp, #16
	ldr	r1, [r5, #16]
	bne	.L175
.L160:
	ldr	r4, .L177+8
	mov	r8, #0
	ldr	r7, .L177+12
	add	r6, r4, #480
	b	.L165
.L162:
	add	r4, r4, #48
	cmp	r4, r6
	beq	.L164
.L176:
	ldr	r3, [r5, #28]
.L165:
	cmp	r3, #0
	beq	.L162
	ldr	r0, [r5, #20]
	ldr	r3, [r5]
	str	r1, [sp, #8]
	str	r2, [sp]
	str	r0, [sp, #12]
	str	r3, [sp, #4]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r3, [r4, #20]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	add	r4, r4, #48
	cmp	r0, #0
	strne	r8, [r5, #28]
	cmp	r4, r6
	ldr	r1, [r5, #16]
	ldr	r2, [r5, #4]
	bne	.L176
.L164:
	sub	r1, r1, #7
	cmp	r1, r2
	movgt	r3, #0
	strgt	r3, [r5, #28]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L175:
	ldr	r0, .L177+16
	ldr	lr, [r5, #20]
	ldr	ip, [r5]
	str	r2, [sp]
	str	r1, [sp, #8]
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r0]
	ldr	r4, .L177+12
	ldr	r0, [r0, #4]
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r1, #0
	ldrne	r0, .L177+20
	ldrne	r2, [r0]
	subne	r2, r2, #1
	movne	r3, r1
	strne	r2, [r0]
	strne	r1, [r5, #28]
	ldreq	r3, [r5, #28]
	ldr	r2, [r5, #4]
	ldr	r1, [r5, #16]
	b	.L160
.L178:
	.align	2
.L177:
	.word	hOff
	.word	-2004318071
	.word	bullets
	.word	collision
	.word	user
	.word	lives
	.size	updateCoin, .-updateCoin
	.align	2
	.global	updateRed
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRed, %function
updateRed:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #28]
	sub	r2, r2, #1
	cmp	r3, #0
	mov	r5, r0
	str	r2, [r0, #4]
	ldr	r1, [r0, #16]
	sub	sp, sp, #16
	bne	.L195
.L180:
	ldr	r4, .L197
	mov	r8, #0
	ldr	r7, .L197+4
	add	r6, r4, #480
	b	.L185
.L182:
	add	r4, r4, #48
	cmp	r4, r6
	beq	.L184
.L196:
	ldr	r3, [r5, #28]
.L185:
	cmp	r3, #0
	beq	.L182
	ldr	r0, [r5, #20]
	ldr	r3, [r5]
	str	r1, [sp, #8]
	str	r2, [sp]
	str	r0, [sp, #12]
	str	r3, [sp, #4]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r3, [r4, #20]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	add	r4, r4, #48
	cmp	r0, #0
	strne	r8, [r5, #28]
	cmp	r4, r6
	ldr	r1, [r5, #16]
	ldr	r2, [r5, #4]
	bne	.L196
.L184:
	sub	r1, r1, #7
	cmp	r1, r2
	movgt	r3, #0
	strgt	r3, [r5, #28]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L195:
	ldr	r4, .L197+8
	ldr	lr, [r0, #20]
	ldr	ip, [r0]
	str	r2, [sp]
	str	r1, [sp, #8]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L197+4
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
	b	.L180
.L198:
	.align	2
.L197:
	.word	bullets
	.word	collision
	.word	user
	.size	updateRed, .-updateRed
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L210
	mov	r9, #0
	mov	r5, r0
	ldr	r8, .L210+4
	ldr	r7, .L210+8
	sub	sp, sp, #20
	add	r6, r4, #480
	b	.L203
.L201:
	add	r4, r4, #48
	cmp	r4, r6
	beq	.L209
.L203:
	ldr	r3, [r5, #28]
	cmp	r3, #0
	beq	.L201
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
	bx	r8
	cmp	r0, #0
	ldrne	r3, [r7]
	add	r4, r4, #48
	addne	r3, r3, #2
	strne	r9, [r5, #28]
	strne	r3, [r7]
	cmp	r4, r6
	bne	.L203
.L209:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L211:
	.align	2
.L210:
	.word	bullets
	.word	collision
	.word	ammoRemaining
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
	ldr	r6, .L243
	ldr	r7, .L243+4
	bl	updateUser
	ldr	r2, [r6]
	ldr	r3, [r7]
	ldr	r4, .L243+8
	add	r2, r2, #1
	sub	r3, r3, #1
	str	r2, [r6]
	str	r3, [r7]
	add	r5, r4, #720
.L213:
	mov	r0, r4
	add	r4, r4, #36
	bl	updateCoin
	cmp	r4, r5
	bne	.L213
	ldr	r4, .L243+12
	add	r5, r4, #720
.L214:
	mov	r0, r4
	add	r4, r4, #36
	bl	updateRed
	cmp	r4, r5
	bne	.L214
	mov	ip, #0
	ldr	r3, .L243+16
	add	r0, r3, #480
.L218:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L216
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #24]
	add	r2, r2, #1
	rsb	r1, r1, #240
	cmp	r2, r1
	str	r2, [r3, #4]
	strgt	ip, [r3, #32]
.L216:
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L218
	ldr	r0, .L243+20
	bl	updateTarget
	ldr	r0, .L243+24
	bl	updateTarget
	ldr	r2, .L243+28
	ldr	r3, [r7]
	ldr	r1, .L243+32
	mla	r3, r1, r3, r2
	ldr	r2, .L243+36
	cmp	r2, r3, ror #2
	bcs	.L241
.L219:
	ldr	r3, [r6]
	cmp	r3, #50
	bgt	.L242
.L221:
	ldr	r5, .L243+40
	ldrh	r2, [r5]
	ldr	r4, .L243+44
	tst	r2, #2
	ldr	r3, [r4, #60]
	beq	.L240
	ldr	r1, .L243+48
	ldrh	r1, [r1]
	tst	r1, #2
	beq	.L225
.L240:
	add	r3, r3, #1
.L224:
	tst	r2, #1
	beq	.L228
	ldr	r2, .L243+48
	ldrh	r2, [r2]
	ands	r2, r2, #1
	ldreq	r1, .L243+52
	streq	r2, [r1]
.L228:
	ldr	r2, [r4]
	cmp	r2, #150
	ldrgt	r2, .L243+56
	str	r3, [r4, #60]
	ldrgt	r3, [r2]
	subgt	r3, r3, #1
	strgt	r3, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L225:
	cmp	r3, #19
	ble	.L240
	ldr	r6, .L243+60
	ldr	r1, [r6]
	cmp	r1, #0
	bgt	.L227
	ldr	r1, .L243+52
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L240
.L227:
	bl	fireBullet
	ldr	r1, [r6]
	sub	r1, r1, #1
	mov	r3, #1
	ldrh	r2, [r5]
	str	r1, [r6]
	b	.L224
.L242:
	mov	r2, #0
	ldr	r3, .L243+64
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	ldr	r3, .L243+68
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #5
	cmp	r0, #60
	ble	.L221
	bl	fireCoin
	bl	fireRed
	b	.L221
.L241:
	bl	fireTarget
	b	.L219
.L244:
	.align	2
.L243:
	.word	counter
	.word	targetCounter
	.word	coiny
	.word	red
	.word	bullets
	.word	target
	.word	target+36
	.word	17179868
	.word	652835029
	.word	8589934
	.word	oldButtons
	.word	user
	.word	buttons
	.word	unlimited
	.word	lives
	.word	ammoRemaining
	.word	rand
	.word	1717986919
	.size	updateGame, .-updateGame
	.comm	unlimited,4,4
	.comm	targetCounter,4,4
	.comm	counter,4,4
	.comm	lives,4,4
	.comm	ammoRemaining,4,4
	.comm	red,720,4
	.comm	target,72,4
	.comm	bullets,480,4
	.comm	coiny,720,4
	.comm	user,64,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
