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
	.global	drawStationaryRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStationaryRect, %function
drawStationaryRect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r5, .L24
	ldr	r3, [r5]
	cmp	r3, #0
	sub	sp, sp, #12
	ble	.L19
	mov	r4, #0
	mov	r9, #254
	ldr	r8, .L24+4
	add	r7, r5, #4
	add	r6, r5, #12
.L21:
	mov	r3, #8
	str	r9, [sp]
	mov	r2, r3
	ldr	r1, [r6], #4
	ldr	r0, [r7], #4
	mov	lr, pc
	bx	r8
	ldr	r3, [r5]
	add	r4, r4, #1
	cmp	r3, r4
	bgt	.L21
.L19:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.word	drawRect4
	.size	drawStationaryRect, .-drawStationaryRect
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
	ldr	r3, .L31
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
.L32:
	.align	2
.L31:
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
	push	{r4, lr}
	mov	r1, #5
	mov	r4, #1
	mov	lr, #10
	mov	ip, #253
	mov	r0, #20
	ldr	r3, .L35
	ldr	r2, [r3, #20]
	rsb	r2, r2, #160
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	r2, [r3]
	strh	ip, [r3, #28]	@ movhi
	str	r0, [r3, #32]
	str	r1, [r3, #4]
	str	r1, [r3, #24]
	pop	{r4, lr}
	bx	lr
.L36:
	.align	2
.L35:
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
	ldr	r0, .L39
	ldr	r4, .L39+4
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
.L40:
	.align	2
.L39:
	.word	user
	.word	drawRect4
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
	ldr	r3, .L45
	add	r0, r3, #240
.L42:
	str	r4, [r3, #20]
	str	lr, [r3, #24]
	str	r1, [r3, #4]
	str	r2, [r3]
	str	r2, [r3, #16]
	strh	ip, [r3, #28]	@ movhi
	str	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r0
	bne	.L42
	pop	{r4, lr}
	bx	lr
.L46:
	.align	2
.L45:
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
	ldr	r0, .L58
	mov	r2, r0
	ldr	r1, [r2, #32]
	cmp	r1, #0
	mov	r3, #0
	beq	.L57
.L48:
	add	r3, r3, #1
	cmp	r3, #6
	add	r2, r2, #40
	bxeq	lr
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L48
.L57:
	push	{r4, r5, lr}
	mov	r4, #1
	ldr	lr, .L58+4
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
.L59:
	.align	2
.L58:
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
	ldr	r3, .L118
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldrh	r2, [r3, #48]
	ldr	r3, .L118+4
	tst	r2, #16
	ldrh	r3, [r3]
	sub	sp, sp, #20
	beq	.L61
	tst	r3, #16
	beq	.L113
	ldr	r2, .L118+8
	ldrh	r2, [r2]
	tst	r2, #16
	bne	.L113
.L61:
	ldr	r4, .L118+12
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #16]
	add	r2, r2, r1
	str	r2, [r4, #4]
.L62:
	ldr	r2, .L118
	ldrh	r2, [r2, #48]
	tst	r2, #32
	beq	.L63
	tst	r3, #32
	bne	.L115
.L64:
	ldr	r2, .L118
	ldrh	r2, [r2, #48]
	tst	r2, #128
	beq	.L65
	tst	r3, #128
	bne	.L116
.L66:
	ldr	r2, .L118
	ldrh	r2, [r2, #48]
	tst	r2, #64
	beq	.L67
	tst	r3, #64
	bne	.L117
.L68:
	tst	r3, #2
	ldr	r3, [r4, #32]
	beq	.L114
	ldr	r2, .L118+8
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L71
.L114:
	add	r3, r3, #1
.L70:
	ldr	r5, .L118+16
	str	r3, [r4, #32]
	ldr	r6, .L118+20
	ldr	r8, .L118+24
	add	r7, r5, #240
.L74:
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
	bne	.L74
	ldr	r7, .L118+28
	ldr	r3, [r7]
	cmp	r3, #0
	ble	.L60
	mov	r5, #0
	mov	r10, #8
	ldr	fp, .L118+24
	add	r9, r7, #4
	add	r8, r7, #12
.L77:
	ldr	r2, [r9], #4
	ldr	r3, [r8], #4
	ldr	r1, [r4]
	stm	sp, {r2, r3, r10}
	str	r10, [sp, #12]
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #20]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r2, [fp]
	ldr	r3, [r7]
	subne	r2, r2, #1
	add	r5, r5, #1
	strne	r2, [fp]
	cmp	r3, r5
	bgt	.L77
.L60:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L117:
	ldr	r2, .L118+8
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L68
.L67:
	ldr	r2, [r4]
	ldr	r1, [r4, #16]
	sub	r2, r2, r1
	str	r2, [r4]
	b	.L68
.L116:
	ldr	r2, .L118+8
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L66
.L65:
	ldr	r2, [r4]
	ldr	r1, [r4, #16]
	add	r2, r2, r1
	str	r2, [r4]
	b	.L66
.L115:
	ldr	r2, .L118+8
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L64
.L63:
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #16]
	sub	r2, r2, r1
	str	r2, [r4, #4]
	b	.L64
.L113:
	ldr	r4, .L118+12
	b	.L62
.L71:
	cmp	r3, #19
	ble	.L114
	bl	fireBullet
	mov	r3, #1
	b	.L70
.L119:
	.align	2
.L118:
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	user
	.word	asteroids
	.word	collision
	.word	livesRemaining
	.word	.LANCHOR0
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
	ldr	r1, .L134
	ldr	r3, [r1]
	ldr	r0, .L134+4
	ldr	r2, .L134+8
	sub	r3, r3, #1
	mla	r2, r3, r2, r0
	ldr	r0, .L134+12
	cmp	r0, r2, ror #2
	ldrcs	r2, .L134+16
	str	r3, [r1]
	ldrcs	r3, [r2]
	subcs	r3, r3, #1
	strcs	r3, [r2]
	ldr	r3, .L134+20
	add	r1, r3, #240
.L125:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L123
	ldr	r2, [r3]
	ldr	r0, [r3, #16]
	add	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	strlt	ip, [r3, #32]
.L123:
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L125
	ldr	r4, .L134+24
	add	r5, r4, #240
.L127:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	movne	r0, r4
	blne	updateAsteroid.part.0
.L126:
	add	r4, r4, #48
	cmp	r4, r5
	bne	.L127
	pop	{r4, r5, r6, lr}
	bx	lr
.L135:
	.align	2
.L134:
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
	ldr	r4, .L145
	ldr	r2, [r0, #24]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L146:
	.align	2
.L145:
	.word	drawRect4
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
	ldr	r7, .L155
	mov	r9, #0
	mov	r8, r7
	mov	r10, #1
	ldr	r4, .L155+4
	ldr	r6, .L155+8
	ldr	r5, .L155+12
.L152:
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
	beq	.L149
	ldr	r3, [r8, #44]
	cmp	r3, #0
	moveq	r3, #10
	streq	r3, [r8, #24]
	streq	r3, [r8, #28]
	bne	.L149
.L151:
	add	r9, r9, #1
	cmp	r9, #5
	add	r8, r8, #48
	bne	.L152
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L149:
	mov	r2, #32
	mov	r3, #40
	str	r2, [r8, #24]
	str	r3, [r8, #28]
	b	.L151
.L156:
	.align	2
.L155:
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
	mov	r6, #5
	mov	r9, #10
	mov	r8, #253
	mov	r7, #20
	mov	r5, lr
	mov	ip, #2
	mov	r4, #0
	mvn	r2, #1
	mov	r0, #254
	ldr	r1, .L161
	ldr	r3, [r1, #20]
	rsb	r3, r3, #160
	str	r3, [r1]
	ldr	r3, .L161+4
	str	r9, [r1, #20]
	strh	r8, [r1, #28]	@ movhi
	str	r7, [r1, #32]
	str	r6, [r1, #4]
	str	r6, [r1, #24]
	str	lr, [r1, #16]
	add	r1, r3, #240
.L158:
	str	ip, [r3, #20]
	str	r5, [r3, #24]
	str	r2, [r3, #16]
	strh	r0, [r3, #28]	@ movhi
	str	r4, [r3, #32]
	stm	r3, {r2, r4}
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L158
	bl	initializeAsteroids
	mov	ip, #5
	mov	r2, #10
	ldr	r0, .L161+8
	ldr	r3, .L161+12
	ldr	r1, .L161+16
	str	ip, [r0]
	ldr	lr, .L161+20
	ldr	ip, .L161+24
	str	r2, [r3]
	str	r5, [r1]
	mov	r3, #512
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L161+28
	ldr	r5, .L161+32
	str	lr, [ip]
	mov	lr, pc
	bx	r5
	mov	lr, #31744
	mov	ip, #992
	mov	r0, #31
	mvn	r1, #32768
	ldr	r3, .L161+36
	ldr	r2, .L161+40
	strh	lr, [r3, #246]	@ movhi
	strh	r4, [r3, #244]	@ movhi
	strh	ip, [r3, #248]	@ movhi
	strh	r0, [r3, #250]	@ movhi
	strh	r1, [r3, #252]	@ movhi
	strh	r2, [r3, #254]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L162:
	.align	2
.L161:
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
	bne	.L175
	mov	ip, #251
	ldr	r4, .L176
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L175:
	ldr	ip, .L176+4
	ldr	r4, .L176+8
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L177:
	.align	2
.L176:
	.word	drawRect4
	.word	AsteroidBitmap
	.word	drawImage4
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
	ldr	r4, .L187
	mov	r0, #250
	ldr	r3, .L187+4
	sub	sp, sp, #8
	mov	lr, pc
	bx	r3
	ldr	r6, .L187+8
	bl	drawUser
	add	r5, r4, #240
	bl	drawStationaryRect
	b	.L180
.L179:
	add	r4, r4, #40
	cmp	r4, r5
	beq	.L186
.L180:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L179
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
	bne	.L180
.L186:
	ldr	r0, .L187+12
	bl	drawAsteroid
	ldr	r0, .L187+16
	bl	drawAsteroid
	ldr	r0, .L187+20
	bl	drawAsteroid
	ldr	r0, .L187+24
	bl	drawAsteroid
	ldr	r0, .L187+28
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawAsteroid
.L188:
	.align	2
.L187:
	.word	bullets
	.word	fillScreen4
	.word	drawRect4
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
	.global	arrLength
	.global	rectangleCols
	.global	rectangleRows
	.comm	time,4,4
	.comm	timeRemaining,4,4
	.comm	livesRemaining,4,4
	.comm	asteroidsRemaining,4,4
	.comm	asteroids,240,4
	.comm	bullets,240,4
	.comm	user,36,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	arrLength, %object
	.size	arrLength, 4
arrLength:
	.word	2
	.type	rectangleCols, %object
	.size	rectangleCols, 8
rectangleCols:
	.word	50
	.word	200
	.type	rectangleRows, %object
	.size	rectangleRows, 8
rectangleRows:
	.word	50
	.word	100
	.ident	"GCC: (devkitARM release 53) 9.1.0"
