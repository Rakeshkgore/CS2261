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
	push	{r4, r5, lr}
	mov	r5, #253
	sub	sp, sp, #12
	str	r5, [sp]
	ldr	r0, .L32
	ldr	r4, .L32+4
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	str	r5, [sp]
	ldr	r0, .L32+8
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	user
	.word	drawRect
	.word	.LANCHOR0
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
	ldr	r3, .L107
	push	{r4, r5, r6, r7, r8, lr}
	ldrh	r2, [r3, #48]
	ldr	r3, .L107+4
	tst	r2, #16
	ldrh	r3, [r3]
	sub	sp, sp, #16
	beq	.L54
	tst	r3, #16
	beq	.L102
	ldr	r2, .L107+8
	ldrh	r2, [r2]
	tst	r2, #16
	bne	.L102
.L54:
	ldr	r4, .L107+12
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #16]
	add	r2, r2, r1
	str	r2, [r4, #4]
.L55:
	ldr	r2, .L107
	ldrh	r2, [r2, #48]
	tst	r2, #32
	beq	.L56
	tst	r3, #32
	bne	.L103
.L57:
	ldr	r2, .L107
	ldrh	r2, [r2, #48]
	tst	r2, #128
	beq	.L58
	tst	r3, #128
	bne	.L104
.L59:
	ldr	r2, .L107
	ldrh	r2, [r2, #48]
	tst	r2, #64
	beq	.L60
	tst	r3, #64
	bne	.L105
.L61:
	tst	r3, #2
	beq	.L62
	ldr	r3, .L107+8
	ldrh	r3, [r3]
	ands	r5, r3, #2
	beq	.L106
.L62:
	ldr	r3, .L107+16
	ldm	r3, {r0, r1, r2, r3}
	ldr	r6, .L107+20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #20]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r2, .L107+24
	ldrne	r3, [r2]
	subne	r3, r3, #1
	strne	r3, [r2]
	ldr	r3, [r4, #32]
	ldr	r5, .L107+28
	add	r3, r3, #1
	str	r3, [r4, #32]
	ldr	r8, .L107+32
	add	r7, r5, #144
.L65:
	add	r0, r5, #24
	ldm	r5, {r2, r3}
	ldm	r0, {r0, r1}
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #20]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r3, [r8]
	add	r5, r5, #48
	subne	r3, r3, #1
	strne	r3, [r8]
	cmp	r5, r7
	bne	.L65
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L105:
	ldr	r2, .L107+8
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L61
.L60:
	ldr	r2, [r4]
	ldr	r1, [r4, #16]
	sub	r2, r2, r1
	str	r2, [r4]
	b	.L61
.L104:
	ldr	r2, .L107+8
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L59
.L58:
	ldr	r2, [r4]
	ldr	r1, [r4, #16]
	add	r2, r2, r1
	str	r2, [r4]
	b	.L59
.L103:
	ldr	r2, .L107+8
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L57
.L56:
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #16]
	sub	r2, r2, r1
	str	r2, [r4, #4]
	b	.L57
.L102:
	ldr	r4, .L107+12
	b	.L55
.L106:
	ldr	r3, [r4, #32]
	cmp	r3, #19
	ble	.L62
	bl	fireBullet
	str	r5, [r4, #32]
	b	.L62
.L108:
	.align	2
.L107:
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	user
	.word	.LANCHOR0
	.word	collision
	.word	reachedTarget
	.word	asteroids
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
	push	{r4, lr}
	bl	updateUser
	bl	updateBoundry
	mov	ip, #0
	ldr	r1, .L127
	ldr	r3, [r1]
	ldr	r0, .L127+4
	ldr	r2, .L127+8
	sub	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L127+12
	cmp	r0, r2, ror #2
	ldrcs	r2, .L127+16
	str	r3, [r1]
	ldrcs	r3, [r2]
	subcs	r3, r3, #1
	strcs	r3, [r2]
	ldr	r3, .L127+20
	add	r1, r3, #240
.L114:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L112
	ldr	r2, [r3]
	ldr	r0, [r3, #16]
	add	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	strlt	ip, [r3, #32]
.L112:
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L114
	ldr	r4, .L127+24
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L126
.L115:
	ldr	r3, [r4, #84]
	cmp	r3, #0
	ldrne	r0, .L127+28
	blne	updateAsteroid.part.0
.L116:
	ldr	r3, [r4, #132]
	cmp	r3, #0
	ldrne	r0, .L127+32
	popne	{r4, lr}
	bne	updateAsteroid.part.0
.L109:
	pop	{r4, lr}
	bx	lr
.L126:
	mov	r0, r4
	bl	updateAsteroid.part.0
	b	.L115
.L128:
	.align	2
.L127:
	.word	time
	.word	85899344
	.word	-1030792151
	.word	42949672
	.word	timeRemaining
	.word	bullets
	.word	asteroids
	.word	asteroids+48
	.word	asteroids+96
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
	ldr	r4, .L138
	ldr	r2, [r0, #24]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L139:
	.align	2
.L138:
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
	mov	r8, #0
	mov	r9, #1
	ldr	r4, .L146
	ldr	r5, .L146+4
	ldr	r7, .L146+8
	ldr	r6, .L146+12
.L143:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3, lsl #1
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #1
	and	r3, r8, #1
	cmp	r3, #0
	str	r3, [r4, #44]
	movne	r2, #32
	moveq	r3, #10
	movne	r3, #40
	add	r8, r8, #1
	strne	r2, [r4, #24]
	streq	r3, [r4, #24]
	add	r0, r0, #10
	cmp	r8, #3
	str	r9, [r4, #16]
	str	r9, [r4, #20]
	str	r9, [r4, #36]
	str	r0, [r4, #4]
	str	r3, [r4, #28]
	add	r4, r4, #48
	bne	.L143
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L147:
	.align	2
.L146:
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
	ldr	r1, .L152
	ldr	r3, [r1, #20]
	rsb	r3, r3, #160
	stm	r1, {r3, r10}
	ldr	r3, .L152+4
	str	r9, [r1, #20]
	str	r8, [r1, #24]
	strh	r7, [r1, #28]	@ movhi
	str	r6, [r1, #32]
	str	lr, [r1, #16]
	add	r1, r3, #240
.L149:
	str	ip, [r3, #20]
	str	r5, [r3, #24]
	str	r2, [r3, #16]
	strh	r0, [r3, #28]	@ movhi
	str	r4, [r3, #32]
	stm	r3, {r2, r4}
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L149
	bl	initializeAsteroids
	mov	r0, #3
	mov	ip, #10
	ldr	r2, .L152+8
	ldr	r1, .L152+12
	str	r0, [r2]
	ldr	r3, .L152+16
	ldr	r2, .L152+20
	str	ip, [r1]
	ldr	lr, .L152+24
	ldr	ip, .L152+28
	str	r5, [r3]
	str	r5, [r2]
	mov	r3, #512
	mov	r2, #83886080
	ldr	r1, .L152+32
	ldr	r5, .L152+36
	str	lr, [ip]
	mov	lr, pc
	bx	r5
	mov	lr, #31744
	mov	ip, #992
	mov	r0, #31
	mvn	r1, #32768
	ldr	r3, .L152+40
	ldr	r2, .L152+44
	strh	lr, [r3, #246]	@ movhi
	strh	r4, [r3, #244]	@ movhi
	strh	ip, [r3, #248]	@ movhi
	strh	r0, [r3, #250]	@ movhi
	strh	r1, [r3, #252]	@ movhi
	strh	r2, [r3, #254]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L153:
	.align	2
.L152:
	.word	user
	.word	bullets
	.word	asteroidsRemaining
	.word	timeRemaining
	.word	livesRemaining
	.word	reachedTarget
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
	bne	.L166
	mov	ip, #251
	ldr	r4, .L167
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L166:
	ldr	ip, .L167+4
	ldr	r4, .L167+8
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L168:
	.align	2
.L167:
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
	ldr	r4, .L178
	mov	r0, #250
	ldr	r3, .L178+4
	sub	sp, sp, #8
	mov	lr, pc
	bx	r3
	ldr	r6, .L178+8
	bl	drawUser
	add	r5, r4, #240
	b	.L171
.L170:
	add	r4, r4, #40
	cmp	r4, r5
	beq	.L177
.L171:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L170
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
	bne	.L171
.L177:
	ldr	r0, .L178+12
	bl	drawAsteroid
	ldr	r0, .L178+16
	bl	drawAsteroid
	ldr	r0, .L178+20
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawAsteroid
.L179:
	.align	2
.L178:
	.word	bullets
	.word	fillScreen
	.word	drawRect
	.word	asteroids
	.word	asteroids+48
	.word	asteroids+96
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
	.global	targetWidth
	.global	targetHeight
	.global	targetRow
	.global	targetCol
	.comm	time,4,4
	.comm	reachedTarget,4,4
	.comm	timeRemaining,4,4
	.comm	livesRemaining,4,4
	.comm	asteroidsRemaining,4,4
	.comm	asteroids,144,4
	.comm	bullets,240,4
	.comm	user,36,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	targetHeight, %object
	.size	targetHeight, 4
targetHeight:
	.word	10
	.type	targetWidth, %object
	.size	targetWidth, 4
targetWidth:
	.word	20
	.type	targetRow, %object
	.size	targetRow, 4
targetRow:
	.word	10
	.type	targetCol, %object
	.size	targetCol, 4
targetCol:
	.word	120
	.ident	"GCC: (devkitARM release 53) 9.1.0"
