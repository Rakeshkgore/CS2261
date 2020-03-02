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
	.type	updateAsteroid.part.0, %function
updateAsteroid.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r2, [r0]
	cmp	r2, #0
	mov	r5, r0
	sub	sp, sp, #20
	ldr	r0, [r0, #16]
	ble	.L2
	ldr	r3, [r5, #24]
	add	r3, r2, r3
	cmp	r3, #159
	bgt	.L2
.L3:
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ldr	r1, [r5, #20]
	ble	.L4
	ldr	ip, [r5, #28]
	add	ip, r3, ip
	cmp	ip, #239
	bgt	.L4
.L5:
	ldr	r4, .L17
	add	r2, r2, r0
	add	r3, r3, r1
	mov	r7, #0
	stm	r5, {r2, r3}
	ldr	r8, .L17+4
	ldr	r9, .L17+8
	add	r6, r4, #240
	b	.L9
.L7:
	add	r4, r4, #40
	cmp	r6, r4
	beq	.L16
.L9:
	ldr	r3, [r4, #32]
	cmp	r3, #1
	bne	.L7
	add	r0, r5, #24
	ldm	r0, {r0, r1}
	ldm	r5, {r2, r3}
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
	ldrne	r3, [r9]
	strne	r7, [r4, #32]
	subne	r3, r3, #1
	add	r4, r4, #40
	strne	r3, [r9]
	strne	r7, [r5, #36]
	cmp	r6, r4
	bne	.L9
.L16:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L4:
	rsb	r1, r1, #0
	str	r1, [r5, #20]
	b	.L5
.L2:
	rsb	r0, r0, #0
	str	r0, [r5, #16]
	b	.L3
.L18:
	.align	2
.L17:
	.word	bullets
	.word	collision
	.word	asteroidsRemaining
	.size	updateAsteroid.part.0, .-updateAsteroid.part.0
	.align	2
	.global	updateBoundry
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBoundry, %function
updateBoundry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L24
	ldr	r2, [r3, #4]
	cmp	r2, #0
	movlt	r1, #0
	strlt	r2, [r3, #12]
	movlt	r2, r1
	strlt	r1, [r3, #4]
	ldr	r1, [r3, #24]
	add	r0, r1, r2
	cmp	r0, #240
	strgt	r2, [r3, #12]
	ldr	r2, [r3]
	rsbgt	r1, r1, #240
	strgt	r1, [r3, #4]
	cmp	r2, #0
	movlt	r1, #0
	strlt	r2, [r3, #8]
	movlt	r2, r1
	strlt	r1, [r3]
	ldr	r1, [r3, #20]
	add	r0, r1, r2
	cmp	r0, #160
	rsbgt	r1, r1, #160
	strgt	r1, [r3]
	strgt	r2, [r3, #8]
	bx	lr
.L25:
	.align	2
.L24:
	.word	user
	.size	updateBoundry, .-updateBoundry
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
	push	{r4, r5, lr}
	mov	ip, #5
	mov	r5, #120
	mov	r4, #1
	mov	lr, #10
	mov	r0, #253
	mov	r1, #20
	ldr	r3, .L28
	ldr	r2, [r3, #20]
	rsb	r2, r2, #160
	stm	r3, {r2, r5}
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #24]
	strh	r0, [r3, #28]	@ movhi
	str	r1, [r3, #32]
	pop	{r4, r5, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	user
	.size	initializeUser, .-initializeUser
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
	mov	r3, #253
	push	{r4, lr}
	sub	sp, sp, #8
	str	r3, [sp]
	ldr	r0, .L32
	ldr	r4, .L32+4
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	user
	.word	drawRect
	.size	drawUser, .-drawUser
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
	push	{r4, lr}
	mov	r1, #0
	mov	r4, #2
	mov	lr, #1
	mvn	r2, #1
	mov	ip, #254
	ldr	r3, .L38
	add	r0, r3, #240
.L35:
	str	r4, [r3, #20]
	str	lr, [r3, #24]
	str	r1, [r3, #4]
	str	r2, [r3]
	str	r2, [r3, #16]
	strh	ip, [r3, #28]	@ movhi
	str	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r0
	bne	.L35
	pop	{r4, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	bullets
	.size	initializeBullets, .-initializeBullets
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
	ldr	r0, .L51
	mov	r2, r0
	ldr	r1, [r2, #32]
	cmp	r1, #0
	mov	r3, #0
	beq	.L50
.L41:
	add	r3, r3, #1
	cmp	r3, #6
	add	r2, r2, #40
	bxeq	lr
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L41
.L50:
	push	{r4, r5, lr}
	mov	r4, #1
	ldr	lr, .L51+4
	ldr	r2, [lr, #24]
	add	r3, r3, r3, lsl #2
	add	r1, r2, r2, lsr #31
	ldr	r2, [lr, #4]
	add	ip, r0, r3, lsl #3
	add	r2, r2, r1, asr r4
	ldr	r1, [ip, #24]
	ldr	r5, [lr]
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr r4
	str	r5, [r0, r3, lsl #3]
	str	r4, [ip, #32]
	str	r2, [ip, #4]
	pop	{r4, r5, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	bullets
	.word	user
	.size	fireBullet, .-fireBullet
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
	ldr	r3, .L103
	push	{r4, r5, r6, r7, r8, lr}
	ldrh	r2, [r3, #48]
	ldr	r3, .L103+4
	tst	r2, #16
	ldrh	r3, [r3]
	sub	sp, sp, #16
	beq	.L54
	tst	r3, #16
	beq	.L98
	ldr	r2, .L103+8
	ldrh	r2, [r2]
	tst	r2, #16
	bne	.L98
.L54:
	ldr	r5, .L103+12
	ldr	r2, [r5, #4]
	ldr	r1, [r5, #16]
	add	r2, r2, r1
	str	r2, [r5, #4]
.L55:
	ldr	r2, .L103
	ldrh	r2, [r2, #48]
	tst	r2, #32
	beq	.L56
	tst	r3, #32
	bne	.L100
.L57:
	ldr	r2, .L103
	ldrh	r2, [r2, #48]
	tst	r2, #128
	beq	.L58
	tst	r3, #128
	bne	.L101
.L59:
	ldr	r2, .L103
	ldrh	r2, [r2, #48]
	tst	r2, #64
	beq	.L60
	tst	r3, #64
	bne	.L102
.L61:
	tst	r3, #2
	ldr	r3, [r5, #32]
	beq	.L99
	ldr	r2, .L103+8
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L64
.L99:
	add	r3, r3, #1
.L63:
	ldr	r4, .L103+16
	str	r3, [r5, #32]
	ldr	r7, .L103+20
	ldr	r8, .L103+24
	add	r6, r4, #240
.L67:
	add	r0, r4, #24
	ldm	r0, {r0, r1}
	ldm	r4, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #24]
	ldr	r3, [r5, #20]
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8]
	add	r4, r4, #48
	subne	r3, r3, #1
	strne	r3, [r8]
	cmp	r4, r6
	bne	.L67
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L102:
	ldr	r2, .L103+8
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L61
.L60:
	ldr	r2, [r5]
	ldr	r1, [r5, #16]
	sub	r2, r2, r1
	str	r2, [r5]
	b	.L61
.L101:
	ldr	r2, .L103+8
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L59
.L58:
	ldr	r2, [r5]
	ldr	r1, [r5, #16]
	add	r2, r2, r1
	str	r2, [r5]
	b	.L59
.L100:
	ldr	r2, .L103+8
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L57
.L56:
	ldr	r2, [r5, #4]
	ldr	r1, [r5, #16]
	sub	r2, r2, r1
	str	r2, [r5, #4]
	b	.L57
.L98:
	ldr	r5, .L103+12
	b	.L55
.L64:
	cmp	r3, #19
	ble	.L99
	bl	fireBullet
	mov	r3, #1
	b	.L63
.L104:
	.align	2
.L103:
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	user
	.word	asteroids
	.word	collision
	.word	livesRemaining
	.size	updateUser, .-updateUser
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
	bl	updateUser
	bl	updateBoundry
	mov	ip, #0
	ldr	r1, .L119
	ldr	r3, [r1]
	ldr	r0, .L119+4
	ldr	r2, .L119+8
	sub	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L119+12
	cmp	r0, r2, ror #2
	ldrcs	r2, .L119+16
	str	r3, [r1]
	ldrcs	r3, [r2]
	subcs	r3, r3, #1
	strcs	r3, [r2]
	ldr	r3, .L119+20
	add	r1, r3, #240
.L110:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L108
	ldr	r2, [r3]
	ldr	r0, [r3, #16]
	add	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	strlt	ip, [r3, #32]
.L108:
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L110
	ldr	r4, .L119+24
	add	r5, r4, #240
.L112:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	movne	r0, r4
	blne	updateAsteroid.part.0
.L111:
	add	r4, r4, #48
	cmp	r4, r5
	bne	.L112
	pop	{r4, r5, r6, lr}
	bx	lr
.L120:
	.align	2
.L119:
	.word	time
	.word	85899344
	.word	-1030792151
	.word	42949672
	.word	timeRemaining
	.word	bullets
	.word	asteroids
	.size	updateGame, .-updateGame
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
	bxeq	lr
	push	{r4, lr}
	ldrb	r2, [r0, #28]	@ zero_extendqisi2
	sub	sp, sp, #8
	ldr	r3, [r0, #20]
	str	r2, [sp]
	ldr	r4, .L130
	ldr	r2, [r0, #24]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L131:
	.align	2
.L130:
	.word	drawRect
	.size	drawBullet, .-drawBullet
	.align	2
	.global	initializeAsteroids
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeAsteroids, %function
initializeAsteroids:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L140
	mov	r9, #0
	mov	r8, r7
	mov	r10, #1
	ldr	r4, .L140+4
	ldr	r6, .L140+8
	ldr	r5, .L140+12
.L137:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3, lsl #1
	str	r0, [r8]
	mov	lr, pc
	bx	r4
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #1
	cmp	r9, #1
	add	r0, r0, #10
	str	r10, [r8, #16]
	str	r10, [r8, #20]
	str	r10, [r8, #36]
	str	r0, [r8, #4]
	streq	r9, [r7, #92]
	beq	.L134
	ldr	r3, [r8, #44]
	cmp	r3, #0
	moveq	r3, #10
	streq	r3, [r8, #24]
	streq	r3, [r8, #28]
	bne	.L134
.L136:
	add	r9, r9, #1
	cmp	r9, #5
	add	r8, r8, #48
	bne	.L137
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L134:
	mov	r2, #32
	mov	r3, #40
	str	r2, [r8, #24]
	str	r3, [r8, #28]
	b	.L136
.L141:
	.align	2
.L140:
	.word	asteroids
	.word	rand
	.word	156180629
	.word	2114445439
	.size	initializeAsteroids, .-initializeAsteroids
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
	mov	lr, #1
	mov	r10, #120
	mov	r9, #10
	mov	r8, #5
	mov	r7, #253
	mov	r6, #20
	mov	r5, lr
	mov	ip, #2
	mov	r4, #0
	mvn	r2, #1
	mov	r0, #254
	ldr	r1, .L146
	ldr	r3, [r1, #20]
	rsb	r3, r3, #160
	stm	r1, {r3, r10}
	ldr	r3, .L146+4
	str	r9, [r1, #20]
	str	r8, [r1, #24]
	strh	r7, [r1, #28]	@ movhi
	str	r6, [r1, #32]
	str	lr, [r1, #16]
	add	r1, r3, #240
.L143:
	str	ip, [r3, #20]
	str	r5, [r3, #24]
	str	r2, [r3, #16]
	strh	r0, [r3, #28]	@ movhi
	str	r4, [r3, #32]
	stm	r3, {r2, r4}
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L143
	bl	initializeAsteroids
	mov	ip, #5
	mov	r2, #10
	ldr	r0, .L146+8
	ldr	r3, .L146+12
	ldr	r1, .L146+16
	str	ip, [r0]
	ldr	lr, .L146+20
	ldr	ip, .L146+24
	str	r2, [r3]
	str	r5, [r1]
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L146+28
	ldr	r5, .L146+32
	str	lr, [ip]
	mov	lr, pc
	bx	r5
	mov	lr, #31744
	mov	ip, #992
	mov	r0, #31
	mvn	r1, #32768
	ldr	r3, .L146+36
	ldr	r2, .L146+40
	strh	lr, [r3, #246]	@ movhi
	strh	r4, [r3, #244]	@ movhi
	strh	ip, [r3, #248]	@ movhi
	strh	r0, [r3, #250]	@ movhi
	strh	r1, [r3, #252]	@ movhi
	strh	r2, [r3, #254]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L147:
	.align	2
.L146:
	.word	user
	.word	bullets
	.word	asteroidsRemaining
	.word	timeRemaining
	.word	livesRemaining
	.word	5000
	.word	time
	.word	AsteroidPal
	.word	DMANow
	.word	83886336
	.word	15855
	.size	initializeGame, .-initializeGame
	.align	2
	.global	updateAsteroid
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateAsteroid, %function
updateAsteroid:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bxeq	lr
	b	updateAsteroid.part.0
	.size	updateAsteroid, .-updateAsteroid
	.align	2
	.global	drawAsteroid
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAsteroid, %function
drawAsteroid:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #36]
	cmp	r2, #0
	bxeq	lr
	mov	r3, r0
	push	{r4, lr}
	ldr	r2, [r0, #44]
	cmp	r2, #0
	ldr	r1, [r3]
	ldr	r2, [r3, #28]
	ldr	r0, [r0, #4]
	ldr	r3, [r3, #24]
	sub	sp, sp, #8
	bne	.L160
	mov	ip, #251
	ldr	r4, .L161
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L160:
	ldr	ip, .L161+4
	ldr	r4, .L161+8
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L162:
	.align	2
.L161:
	.word	drawRect
	.word	AsteroidBitmap
	.word	drawImage
	.size	drawAsteroid, .-drawAsteroid
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L172
	mov	r0, #250
	ldr	r3, .L172+4
	sub	sp, sp, #8
	mov	lr, pc
	bx	r3
	ldr	r6, .L172+8
	bl	drawUser
	add	r5, r4, #240
	b	.L165
.L164:
	add	r4, r4, #40
	cmp	r4, r5
	beq	.L171
.L165:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L164
	ldrb	r2, [r4, #28]	@ zero_extendqisi2
	ldr	r3, [r4, #20]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	str	r2, [sp]
	add	r4, r4, #40
	ldr	r2, [r4, #-16]
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L165
.L171:
	ldr	r0, .L172+12
	bl	drawAsteroid
	ldr	r0, .L172+16
	bl	drawAsteroid
	ldr	r0, .L172+20
	bl	drawAsteroid
	ldr	r0, .L172+24
	bl	drawAsteroid
	ldr	r0, .L172+28
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawAsteroid
.L173:
	.align	2
.L172:
	.word	bullets
	.word	fillScreen
	.word	drawRect
	.word	asteroids
	.word	asteroids+48
	.word	asteroids+96
	.word	asteroids+144
	.word	asteroids+192
	.size	drawGame, .-drawGame
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
	ldr	r3, [r0]
	ldr	r2, [r0, #16]
	add	r3, r3, r2
	cmp	r3, #0
	str	r3, [r0]
	movlt	r3, #0
	strlt	r3, [r0, #32]
	bx	lr
	.size	updateBullet, .-updateBullet
	.global	safeWidth
	.global	safeHeight
	.global	safeRow
	.global	safeCol
	.comm	time,4,4
	.comm	timeRemaining,4,4
	.comm	livesRemaining,4,4
	.comm	asteroidsRemaining,4,4
	.comm	asteroids,240,4
	.comm	bullets,240,4
	.comm	user,36,4
	.data
	.align	2
	.type	safeWidth, %object
	.size	safeWidth, 4
safeWidth:
	.word	10
	.type	safeHeight, %object
	.size	safeHeight, 4
safeHeight:
	.word	20
	.type	safeRow, %object
	.size	safeRow, 4
safeRow:
	.word	140
	.type	safeCol, %object
	.size	safeCol, 4
safeCol:
	.word	230
	.ident	"GCC: (devkitARM release 53) 9.1.0"
