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
	ldr	r1, .L24
	ldr	r3, [r1, #4]
	lsl	r3, r3, #23
	ldr	r2, .L24+4
	ldr	r0, .L24+8
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	push	{r4, r5, r6, r7, lr}
	ldr	r0, [r0]
	ldr	r4, [r1, #40]
	strh	r3, [r2, #2]	@ movhi
	ldrb	r3, [r1]	@ zero_extendqisi2
	strh	r3, [r2]	@ movhi
	ldr	r3, [r1, #28]
	add	r3, r3, r4, lsl #5
	strh	r3, [r2, #4]	@ movhi
	cmp	r0, #0
	add	r3, r2, #804
	add	r0, r0, #3
	strh	r0, [r3]	@ movhi
	mov	lr, #6
	movle	r0, #3
	mov	ip, #50
	add	r3, r2, #800
	strh	lr, [r3]	@ movhi
	strhle	r0, [r3]	@ movhi
	mov	r0, #127
	strh	ip, [r3, #2]	@ movhi
	mov	ip, #5
	ldr	r3, .L24+12
	ldr	lr, [r3]
	ldr	r3, .L24+16
	cmp	lr, #0
	ldr	r1, [r1, #48]
	movne	lr, #6
	strh	r0, [r3, #2]	@ movhi
	movne	r0, r3
	add	r1, r1, #3
	strh	r1, [r3, #4]	@ movhi
	strh	ip, [r3]	@ movhi
	moveq	r1, #14
	movne	ip, #207
	mov	r7, #512
	ldrne	r1, .L24+20
	ldrne	r1, [r1]
	strhne	lr, [r0, #8]!	@ movhi
	addne	r1, r1, #3
	strhne	ip, [r0, #2]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	ldr	r3, .L24+24
	ldr	r6, .L24+28
	add	lr, r3, #720
.L7:
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
	bne	.L7
	mov	r7, #512
	ldr	r3, .L24+32
	ldr	r6, .L24+28
	add	lr, r3, #720
.L10:
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
	bne	.L10
	mov	r6, #512
	ldr	r3, .L24+36
	add	lr, r3, #480
.L13:
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
	bne	.L13
	ldr	r3, .L24+40
	ldr	r1, [r3, #28]
	cmp	r1, #0
	ldr	r1, [r3, #32]
	bne	.L14
	mov	r0, #512
	lsl	r1, r1, #3
	strh	r0, [r2, r1]	@ movhi
	ldr	r1, [r3, #64]
	cmp	r1, #0
	ldr	r1, [r3, #68]
	beq	.L16
.L23:
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
.L14:
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
	bne	.L23
.L16:
	mov	r3, #512
	lsl	r1, r1, #3
	strh	r3, [r2, r1]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	user
	.word	shadowOAM
	.word	ammoRemaining
	.word	unlimited
	.word	shadowOAM+808
	.word	lives
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
	ldr	r4, .L43
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
	ldr	r2, .L43+4
	add	r3, r5, r3, lsl #3
	add	r3, r3, r2
	cmp	r2, r3, ror #1
	bcc	.L28
	ldr	r0, [r4, #40]
	ldr	r3, .L43+8
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L28:
	ldr	r3, .L43+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r3, [r4]
	bne	.L29
	ldr	r2, [r4, #20]
	add	r2, r2, #7
	cmp	r2, r3
	bge	.L29
	mov	r1, #0
	ldr	r2, [r4, #8]
	sub	r3, r3, r2
	ldr	r2, [r4, #32]
	str	r3, [r4]
	str	r1, [r4, #40]
	str	r2, [r4, #28]
.L32:
	cmp	r3, #150
	ble	.L26
	ldr	r0, .L43+16
	ldr	r1, [r0]
	cmp	r1, #0
	ble	.L38
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	add	r2, r2, r2, lsr #31
	rsb	r3, r3, #60
	asr	r2, r2, #1
	sub	r1, r1, #1
	rsb	r2, r2, #70
	cmp	r3, #150
	str	r1, [r0]
	str	r3, [r4]
	str	r2, [r4, #4]
	ble	.L26
.L38:
	ldr	r3, .L43+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L26
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	add	r2, r2, r2, lsr #31
	add	r3, r3, r3, lsr #31
	asr	r2, r2, #1
	asr	r3, r3, #1
	rsb	r2, r2, #70
	rsb	r3, r3, #60
	str	r2, [r4, #4]
	str	r3, [r4]
.L26:
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	ldr	r2, [r4, #28]
	cmp	r2, #0
	add	r3, r3, #1
	addne	r5, r5, #1
	str	r3, [r4]
	strne	r5, [r4, #24]
	moveq	r1, #0
	ldreq	r2, [r4, #32]
	streq	r1, [r4, #40]
	streq	r2, [r4, #28]
	b	.L32
.L44:
	.align	2
.L43:
	.word	user
	.word	238609294
	.word	__aeabi_idivmod
	.word	67109120
	.word	lives
	.word	unlimited
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
	ldr	r3, .L47
	ldr	r2, [r3, #16]
	add	r2, r2, r2, lsr #31
	asr	r1, r2, r5
	ldr	r2, [r3, #20]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, r5
	rsb	r1, r1, #50
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
.L48:
	.align	2
.L47:
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
	ldr	r3, .L57
	add	ip, r3, #720
.L50:
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
	bne	.L50
	mov	r2, #0
	mov	ip, #1
	mov	r4, r2
	mvn	r5, #1
	mov	lr, #26
	ldr	r1, .L57+4
	ldr	r3, .L57+8
	ldr	r0, [r1, #4]
	ldr	r1, [r1]
.L51:
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
	bne	.L51
	mov	r3, #8
	mov	r7, #120
	mov	r6, #80
	mov	r5, #2
	mov	r9, #30
	mov	r8, #31
	mov	r1, #35
	mov	r2, #0
	mov	lr, #28
	ldr	ip, .L57+12
	mov	r0, r3
	str	r3, [ip, #16]
	str	r3, [ip, #20]
	str	r3, [ip, #52]
	str	r3, [ip, #56]
	ldr	r3, .L57+16
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
	mov	ip, #2
	mov	r1, #1
	mov	lr, #10
	ldr	r0, .L57+20
	ldr	r3, .L57+24
	str	ip, [r0]
	str	r1, [r3]
	ldr	ip, .L57+28
	ldr	r0, .L57+32
	ldr	r3, .L57+36
	ldr	r1, .L57+40
	str	lr, [ip]
	str	r2, [r0]
	str	r1, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L58:
	.align	2
.L57:
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
	ldr	r1, .L63
	ldr	r3, .L63+4
	ldr	r0, [r1, #4]
	ldr	r1, [r1]
.L60:
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
	bne	.L60
	pop	{r4, r5, lr}
	bx	lr
.L64:
	.align	2
.L63:
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
	ldr	r3, .L69
	add	ip, r3, #720
.L66:
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
	bne	.L66
	ldr	lr, [sp], #4
	bx	lr
.L70:
	.align	2
.L69:
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
	ldr	r3, .L75
	add	ip, r3, #720
.L72:
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
	bne	.L72
	ldr	lr, [sp], #4
	bx	lr
.L76:
	.align	2
.L75:
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
	ldr	r3, .L79
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
.L80:
	.align	2
.L79:
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
	ldr	r2, .L83
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, [r2, #28]
	ldr	lr, [r2, #40]
	lsl	r3, r3, #23
	ldrb	ip, [r2]	@ zero_extendqisi2
	ldr	r1, .L83+4
	lsr	r3, r3, #23
	add	r2, r0, lr, lsl #5
	orr	r3, r3, #16384
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L84:
	.align	2
.L83:
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
	beq	.L86
	ldr	r2, .L92
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
.L86:
	mov	r1, #512
	ldr	r2, .L92
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L93:
	.align	2
.L92:
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
	beq	.L95
	ldr	r2, [r0, #4]
	ldr	r1, .L101
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
.L95:
	mov	r1, #512
	ldr	r2, .L101
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L102:
	.align	2
.L101:
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
	beq	.L104
	ldr	r2, [r0, #4]
	ldr	r1, .L110
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
.L104:
	mov	r1, #512
	ldr	r2, .L110
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L111:
	.align	2
.L110:
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
	beq	.L113
	ldr	r2, [r0, #4]
	ldr	r1, .L119
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
.L113:
	mov	r1, #512
	ldr	r2, .L119
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L120:
	.align	2
.L119:
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
	ldr	r3, .L123
	ldr	r3, [r3]
	ldr	r2, .L123+4
	cmp	r3, #0
	add	r3, r3, #3
	mov	r0, #6
	mov	r1, #50
	strh	r3, [r2, #4]	@ movhi
	movle	r3, #3
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strhle	r3, [r2]	@ movhi
	bx	lr
.L124:
	.align	2
.L123:
	.word	ammoRemaining
	.word	shadowOAM+800
	.size	drawAmmo, .-drawAmmo
	.align	2
	.global	drawCoinCount
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCoinCount, %function
drawCoinCount:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #5
	mov	r1, #127
	ldr	r2, .L126
	ldr	r3, .L126+4
	ldr	r2, [r2, #48]
	add	ip, r3, #812
	add	r2, r2, #3
	add	r3, r3, #808
	strh	r2, [ip]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	bx	lr
.L127:
	.align	2
.L126:
	.word	user
	.word	shadowOAM
	.size	drawCoinCount, .-drawCoinCount
	.align	2
	.global	drawLivesCount
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLivesCount, %function
drawLivesCount:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L131
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L129
	mov	r0, #6
	mov	r1, #207
	ldr	r3, .L131+4
	ldr	r2, [r3]
	ldr	r3, .L131+8
	add	r2, r2, #3
	strh	r2, [r3, #4]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	bx	lr
.L129:
	mov	r2, #14
	ldr	r3, .L131+12
	strh	r2, [r3]	@ movhi
	bx	lr
.L132:
	.align	2
.L131:
	.word	unlimited
	.word	lives
	.word	shadowOAM+816
	.word	shadowOAM+820
	.size	drawLivesCount, .-drawLivesCount
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
	ldr	r0, .L143
	mov	r3, #0
	mov	r2, r0
	b	.L136
.L134:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bxeq	lr
.L136:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L134
	push	{r4, r5, lr}
	mov	r4, #1
	ldr	lr, .L143+4
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
.L144:
	.align	2
.L143:
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
	ldr	r5, .L151
	mov	r4, #0
	mov	r3, r5
	b	.L148
.L146:
	add	r4, r4, #1
	cmp	r4, #20
	add	r3, r3, #36
	beq	.L145
.L148:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L146
	add	r4, r4, r4, lsl #3
	add	r6, r5, r4, lsl #2
	ldr	r3, .L151+4
	mov	lr, pc
	bx	r3
	ldr	r1, [r6, #20]
	ldr	r3, .L151+8
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
.L145:
	pop	{r4, r5, r6, lr}
	bx	lr
.L152:
	.align	2
.L151:
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
	ldr	r5, .L159
	mov	r4, #0
	mov	r3, r5
	b	.L156
.L154:
	add	r4, r4, #1
	cmp	r4, #20
	add	r3, r3, #36
	beq	.L153
.L156:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L154
	add	r4, r4, r4, lsl #3
	add	r6, r5, r4, lsl #2
	ldr	r3, .L159+4
	mov	lr, pc
	bx	r3
	ldr	r1, [r6, #20]
	ldr	r3, .L159+8
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
.L153:
	pop	{r4, r5, r6, lr}
	bx	lr
.L160:
	.align	2
.L159:
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
	ldr	r4, .L169
	ldr	r5, [r4, #28]
	cmp	r5, #0
	beq	.L162
	ldr	r3, [r4, #64]
	cmp	r3, #0
	beq	.L168
.L161:
	pop	{r4, r5, r6, lr}
	bx	lr
.L168:
	mov	r5, #1
.L162:
	ldr	r3, .L169+4
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	ip, #200
	ldr	r3, .L169+8
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
	b	.L161
.L170:
	.align	2
.L169:
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
	ldr	r1, .L201
	ldrh	r3, [r1]
	add	r3, r3, #1
	ldr	ip, .L201+4
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	umull	r2, r0, ip, r3
	ldr	r2, [r5, #4]
	lsr	r0, r0, #3
	sub	r2, r2, #1
	strh	r3, [r1]	@ movhi
	str	r2, [r5, #4]
	strh	r0, [lr, #16]	@ movhi
	ldrh	r3, [r1]
	umull	r1, r3, ip, r3
	ldr	r1, [r5, #28]
	lsr	r3, r3, #4
	cmp	r1, #0
	strh	r3, [lr, #20]	@ movhi
	ldr	r1, [r5, #16]
	sub	sp, sp, #16
	bne	.L197
.L176:
	mov	r3, #0
.L178:
	ldr	r4, .L201+8
	mov	r8, #0
	ldr	r7, .L201+12
	add	r6, r4, #480
	b	.L184
.L181:
	add	r4, r4, #48
	cmp	r6, r4
	beq	.L183
.L198:
	ldr	r3, [r5, #28]
.L184:
	cmp	r3, #0
	beq	.L181
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
	cmp	r6, r4
	ldr	r1, [r5, #16]
	ldr	r2, [r5, #4]
	bne	.L198
.L183:
	sub	r1, r1, #7
	cmp	r1, r2
	movgt	r3, #0
	strgt	r3, [r5, #28]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L197:
	ldr	r4, .L201+16
	ldr	lr, [r5, #20]
	ldr	ip, [r5]
	str	r2, [sp]
	str	r1, [sp, #8]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L201+12
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L199
	ldr	r3, [r5, #28]
	cmp	r3, #0
	ldr	r2, [r5, #4]
	ldr	r1, [r5, #16]
	beq	.L178
	ldr	r0, [r5, #20]
	ldr	r3, [r5]
	str	r2, [sp]
	str	r1, [sp, #8]
	str	r0, [sp, #12]
	str	r3, [sp, #4]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L200
	ldr	r3, .L201+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldr	r2, [r5, #4]
	ldr	r1, [r5, #16]
	ldrne	r3, [r5, #28]
	streq	r3, [r5, #28]
	b	.L178
.L200:
	ldr	r3, [r5, #28]
	ldr	r2, [r5, #4]
	ldr	r1, [r5, #16]
	b	.L178
.L199:
	mov	r1, #0
	ldr	r2, .L201+24
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r5, #28]
	ldr	r2, [r5, #4]
	ldr	r1, [r5, #16]
	b	.L176
.L202:
	.align	2
.L201:
	.word	hOff
	.word	-2004318071
	.word	bullets
	.word	collision
	.word	user
	.word	unlimited
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
	bne	.L219
.L204:
	ldr	r4, .L221
	mov	r8, #0
	ldr	r7, .L221+4
	add	r6, r4, #480
	b	.L209
.L206:
	add	r4, r4, #48
	cmp	r4, r6
	beq	.L208
.L220:
	ldr	r3, [r5, #28]
.L209:
	cmp	r3, #0
	beq	.L206
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
	bne	.L220
.L208:
	sub	r1, r1, #7
	cmp	r1, r2
	movgt	r3, #0
	strgt	r3, [r5, #28]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L219:
	ldr	r4, .L221+8
	ldr	lr, [r0, #20]
	ldr	ip, [r0]
	str	r2, [sp]
	str	r1, [sp, #8]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L221+4
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
	b	.L204
.L222:
	.align	2
.L221:
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
	ldr	r4, .L234
	mov	r9, #0
	mov	r5, r0
	ldr	r8, .L234+4
	ldr	r7, .L234+8
	sub	sp, sp, #20
	add	r6, r4, #480
	b	.L227
.L225:
	add	r4, r4, #48
	cmp	r4, r6
	beq	.L233
.L227:
	ldr	r3, [r5, #28]
	cmp	r3, #0
	beq	.L225
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
	addne	r3, r3, #1
	strne	r9, [r5, #28]
	strne	r3, [r7]
	cmp	r4, r6
	bne	.L227
.L233:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L235:
	.align	2
.L234:
	.word	bullets
	.word	collision
	.word	lives
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
	ldr	r6, .L266
	ldr	r7, .L266+4
	bl	updateUser
	ldr	r2, [r6]
	ldr	r3, [r7]
	ldr	r4, .L266+8
	add	r2, r2, #1
	sub	r3, r3, #1
	str	r2, [r6]
	str	r3, [r7]
	add	r5, r4, #720
.L237:
	mov	r0, r4
	add	r4, r4, #36
	bl	updateCoin
	cmp	r4, r5
	bne	.L237
	ldr	r4, .L266+12
	add	r5, r4, #720
.L238:
	mov	r0, r4
	add	r4, r4, #36
	bl	updateRed
	cmp	r4, r5
	bne	.L238
	mov	ip, #0
	ldr	r3, .L266+16
	add	r0, r3, #480
.L242:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L240
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #24]
	add	r2, r2, #1
	rsb	r1, r1, #240
	cmp	r2, r1
	str	r2, [r3, #4]
	strgt	ip, [r3, #32]
.L240:
	add	r3, r3, #48
	cmp	r3, r0
	bne	.L242
	ldr	r0, .L266+20
	bl	updateTarget
	ldr	r0, .L266+24
	bl	updateTarget
	ldr	r2, .L266+28
	ldr	r3, [r7]
	ldr	r1, .L266+32
	mla	r3, r1, r3, r2
	ldr	r2, .L266+36
	cmp	r2, r3, ror #2
	bcs	.L264
.L243:
	ldr	r3, [r6]
	cmp	r3, #50
	bgt	.L265
.L245:
	ldr	r5, .L266+40
	ldrh	r2, [r5]
	ldr	r4, .L266+44
	tst	r2, #2
	ldr	r3, [r4, #60]
	beq	.L263
	ldr	r1, .L266+48
	ldrh	r1, [r1]
	tst	r1, #2
	beq	.L249
.L263:
	add	r3, r3, #1
.L248:
	tst	r2, #1
	beq	.L252
	ldr	r2, .L266+48
	ldrh	r2, [r2]
	tst	r2, #1
	ldreq	r1, .L266+52
	ldreq	r2, [r1]
	subeq	r2, r2, #1
	streq	r2, [r1]
.L252:
	str	r3, [r4, #60]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L249:
	cmp	r3, #19
	ble	.L263
	ldr	r6, .L266+56
	ldr	r1, [r6]
	cmp	r1, #0
	bgt	.L251
	ldr	r1, .L266+52
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L263
.L251:
	bl	fireBullet
	ldr	r1, [r6]
	sub	r1, r1, #1
	mov	r3, #1
	ldrh	r2, [r5]
	str	r1, [r6]
	b	.L248
.L265:
	mov	r2, #0
	ldr	r3, .L266+60
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	ldr	r3, .L266+64
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #5
	cmp	r0, #60
	ble	.L245
	bl	fireCoin
	bl	fireRed
	b	.L245
.L264:
	bl	fireTarget
	b	.L243
.L267:
	.align	2
.L266:
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
