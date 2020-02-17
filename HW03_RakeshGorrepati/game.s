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
	mov	r2, #1
	push	{r4, lr}
	mov	r1, #120
	mov	r4, #10
	mov	lr, #5
	mvn	ip, #54784
	mov	r0, #20
	ldr	r3, .L28
	str	r2, [r3, #16]
	ldr	r2, [r3, #20]
	rsb	r2, r2, #160
	str	r4, [r3, #20]
	str	lr, [r3, #24]
	str	r2, [r3]
	str	r2, [r3, #8]
	strh	ip, [r3, #28]	@ movhi
	str	r0, [r3, #32]
	str	r1, [r3, #4]
	str	r1, [r3, #12]
	pop	{r4, lr}
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
	mov	r3, #0
	push	{r4, r5, lr}
	ldr	r4, .L32
	sub	sp, sp, #12
	ldr	r5, .L32+4
	str	r3, [sp]
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	ldr	ip, .L32+8
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #992
	ldr	r0, .L32+12
	str	r3, [sp]
	ldr	r3, [r0]
	ldr	r2, [r0, #4]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r2, [r4, #12]
	str	r3, [r4, #8]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	user
	.word	drawRect
	.word	10751
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
	mvn	ip, #32768
	ldr	r3, .L38
	add	r0, r3, #240
.L35:
	str	r4, [r3, #20]
	str	lr, [r3, #24]
	str	r1, [r3, #4]
	str	r2, [r3]
	str	r1, [r3, #12]
	str	r2, [r3, #8]
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
	push	{r4, r5, r6, lr}
	mov	r5, #1
	ldr	r4, .L51+4
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #24]
	ldr	r6, [r4]
	add	ip, r0, r3, lsl #3
	add	lr, r2, r2, lsr #31
	str	r6, [r0, r3, lsl #3]
	ldr	r2, [r4, #4]
	ldr	r3, [ip, #24]
	add	r2, r2, lr, asr r5
	add	r3, r3, r3, lsr #31
	add	r3, r2, r3, asr r5
	str	r5, [ip, #32]
	str	r1, [ip, #36]
	str	r3, [ip, #4]
	pop	{r4, r5, r6, lr}
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
	ldr	r3, .L76
	ldrh	r3, [r3]
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L76+4
	tst	r3, #16
	ldreq	r2, [r4, #4]
	ldreq	r1, [r4, #16]
	addeq	r2, r2, r1
	streq	r2, [r4, #4]
	tst	r3, #32
	ldreq	r2, [r4, #4]
	ldreq	r1, [r4, #16]
	subeq	r2, r2, r1
	streq	r2, [r4, #4]
	tst	r3, #128
	ldreq	r2, [r4]
	ldreq	r1, [r4, #16]
	addeq	r2, r2, r1
	streq	r2, [r4]
	tst	r3, #64
	ldreq	r2, [r4]
	ldreq	r1, [r4, #16]
	subeq	r2, r2, r1
	streq	r2, [r4]
	ldr	r2, .L76+8
	ldrh	r2, [r2]
	tst	r2, #2
	sub	sp, sp, #16
	beq	.L58
	ands	r5, r3, #2
	beq	.L75
.L58:
	ldr	r3, .L76+12
	ldm	r3, {r0, r1, r2, r3}
	ldr	r6, .L76+16
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
	ldrne	r2, .L76+20
	ldrne	r3, [r2]
	subne	r3, r3, #1
	strne	r3, [r2]
	ldr	r3, [r4, #32]
	ldr	r5, .L76+24
	add	r3, r3, #1
	str	r3, [r4, #32]
	ldr	r8, .L76+28
	add	r7, r5, #132
.L61:
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
	add	r5, r5, #44
	subne	r3, r3, #1
	strne	r3, [r8]
	cmp	r7, r5
	bne	.L61
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L75:
	ldr	r3, [r4, #32]
	cmp	r3, #19
	ble	.L58
	bl	fireBullet
	str	r5, [r4, #32]
	b	.L58
.L77:
	.align	2
.L76:
	.word	buttons
	.word	user
	.word	oldButtons
	.word	.LANCHOR0
	.word	collision
	.word	reachedTarget
	.word	asteroids
	.word	livesRemaining
	.size	updateUser, .-updateUser
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
	push	{r4, r5, lr}
	ldr	r3, [r0, #32]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L82
	ldr	r3, [r0, #36]
	cmp	r3, #0
	beq	.L83
.L80:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L83:
	str	r3, [sp]
	ldr	r5, .L84
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #36]
	b	.L80
.L82:
	mov	r2, #0
	ldr	r3, [r0, #20]
	str	r2, [sp]
	ldr	r5, .L84
	ldr	r2, [r0, #24]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #28]
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L80
.L85:
	.align	2
.L84:
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
	ldr	r4, .L90
	ldr	r5, .L90+4
	ldr	r9, .L90+8
	ldr	r8, .L90+12
	ldr	r7, .L90+16
	add	r6, r4, #132
.L87:
	mov	r3, #10
	str	r3, [r4, #24]
	str	r3, [r4, #28]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r9, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r0, r0, r3, lsl #1
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	mov	r2, #1
	mov	r1, #0
	smull	r3, ip, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl r2
	ldr	r3, [r4]
	add	r0, r0, #10
	strh	r7, [r4, #32]	@ movhi
	str	r0, [r4, #4]
	str	r0, [r4, #12]
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	str	r3, [r4, #8]
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L87
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L91:
	.align	2
.L90:
	.word	asteroids
	.word	rand
	.word	156180629
	.word	2114445439
	.word	32751
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
	mov	r5, #1
	mov	r6, #120
	mov	r10, #10
	mov	r9, #5
	mvn	r8, #54784
	mov	r7, #20
	mov	r4, r5
	mov	lr, #2
	mov	r1, #0
	mvn	r2, #1
	mvn	ip, #32768
	ldr	r0, .L96
	ldr	r3, [r0, #20]
	rsb	r3, r3, #160
	str	r3, [r0]
	str	r3, [r0, #8]
	ldr	r3, .L96+4
	str	r10, [r0, #20]
	str	r9, [r0, #24]
	strh	r8, [r0, #28]	@ movhi
	str	r7, [r0, #32]
	str	r6, [r0, #4]
	str	r6, [r0, #12]
	str	r5, [r0, #16]
	add	r0, r3, #240
.L93:
	str	lr, [r3, #20]
	str	r4, [r3, #24]
	str	r1, [r3, #4]
	str	r2, [r3]
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #16]
	strh	ip, [r3, #28]	@ movhi
	str	r1, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r0
	bne	.L93
	bl	initializeAsteroids
	mov	r0, #3
	ldr	r1, .L96+8
	ldr	r2, .L96+12
	ldr	r3, .L96+16
	str	r4, [r2]
	str	r4, [r3]
	str	r0, [r1]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L97:
	.align	2
.L96:
	.word	user
	.word	bullets
	.word	asteroidsRemaining
	.word	livesRemaining
	.word	reachedTarget
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
	push	{r4, r5, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L104
	ldr	r3, [r0, #40]
	cmp	r3, #0
	beq	.L105
.L102:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L105:
	str	r3, [sp]
	ldr	r5, .L106
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L102
.L104:
	mov	r2, #0
	ldr	r3, [r0, #24]
	str	r2, [sp]
	ldr	r5, .L106
	ldr	r2, [r0, #28]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #32]
	ldr	r3, [r4, #24]
	str	r2, [sp]
	ldr	r2, [r4, #28]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L102
.L107:
	.align	2
.L106:
	.word	drawAster
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
	ldr	r4, .L110
	bl	drawUser
	mov	r0, r4
	bl	drawBullet
	add	r0, r4, #40
	bl	drawBullet
	add	r0, r4, #80
	bl	drawBullet
	add	r0, r4, #120
	ldr	r5, .L110+4
	bl	drawBullet
	add	r0, r4, #160
	bl	drawBullet
	add	r0, r4, #200
	bl	drawBullet
	mov	r0, r5
	bl	drawAsteroid
	add	r0, r5, #44
	bl	drawAsteroid
	add	r0, r5, #88
	pop	{r4, r5, r6, lr}
	b	drawAsteroid
.L111:
	.align	2
.L110:
	.word	bullets
	.word	asteroids
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
	.align	2
	.global	fallingRectangles
	.syntax unified
	.arm
	.fpu softvfp
	.type	fallingRectangles, %function
fallingRectangles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L124
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #12
	ble	.L116
	mov	r5, #0
	mov	r9, r5
	ldr	r8, .L124+4
	add	r7, r4, #20
	add	r6, r4, #28
.L118:
	str	r9, [sp]
	mov	r3, #5
	mov	r2, #8
	ldr	r1, [r7], #4
	ldr	r0, [r6], #4
	mov	lr, pc
	bx	r8
	ldr	r3, [r4, #16]
	add	r5, r5, #1
	cmp	r3, r5
	bgt	.L118
	cmp	r3, #0
	ble	.L116
	mov	r5, #0
	mov	r9, #31
	ldr	r6, .L124+8
	add	r7, r6, #8
.L120:
	str	r9, [sp]
	mov	r3, #5
	mov	r2, #8
	ldr	r1, [r6], #4
	ldr	r0, [r7], #4
	mov	lr, pc
	bx	r8
	ldr	r3, [r4, #16]
	add	r5, r5, #1
	cmp	r3, r5
	bgt	.L120
.L116:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L125:
	.align	2
.L124:
	.word	.LANCHOR0
	.word	drawRect
	.word	.LANCHOR0+36
	.size	fallingRectangles, .-fallingRectangles
	.align	2
	.global	clearFallingRectangle
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearFallingRectangle, %function
clearFallingRectangle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, r1
	mov	r3, #0
	push	{r4, lr}
	sub	sp, sp, #8
	mov	r1, r0
	str	r3, [sp]
	mov	r0, r2
	mov	r3, #5
	mov	r2, #8
	ldr	r4, .L128
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L129:
	.align	2
.L128:
	.word	drawRect
	.size	clearFallingRectangle, .-clearFallingRectangle
	.align	2
	.global	drawRectangles
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRectangles, %function
drawRectangles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, r1
	mov	r3, #31
	push	{r4, lr}
	sub	sp, sp, #8
	mov	r1, r0
	str	r3, [sp]
	mov	r0, r2
	mov	r3, #5
	mov	r2, #8
	ldr	r4, .L132
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L133:
	.align	2
.L132:
	.word	drawRect
	.size	drawRectangles, .-drawRectangles
	.align	2
	.global	movingRectangles
	.syntax unified
	.arm
	.fpu softvfp
	.type	movingRectangles, %function
movingRectangles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L143
	ldr	r3, [r7, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	ble	.L134
	mov	r6, #0
	mov	fp, #5
	ldr	r5, .L143+4
	ldr	r10, .L143+8
	add	r4, r7, #36
	add	r9, r7, #20
	add	r8, r7, #44
.L139:
	mov	r2, #8
	ldr	ip, [r4], #4
	ldr	r3, [r8], #4
	ldr	r1, [r5]
	stm	sp, {r3, ip}
	str	r2, [sp, #8]
	ldr	r3, [r5, #20]
	str	fp, [sp, #12]
	ldr	r2, [r5, #24]
	str	ip, [r9], #4
	ldr	r0, [r5, #4]
	ldr	ip, .L143+12
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrne	r3, [r10]
	ldreq	r3, [r4, #-4]
	subne	r3, r3, #1
	strne	r3, [r10]
	ldrne	r3, [r4, #-4]
	addeq	r3, r3, #1
	streq	r3, [r4, #-4]
	cmp	r3, #160
	movgt	r3, #0
	strgt	r3, [r4, #-4]
	ldr	r3, [r7, #16]
	add	r6, r6, #1
	cmp	r3, r6
	bgt	.L139
.L134:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L144:
	.align	2
.L143:
	.word	.LANCHOR0
	.word	user
	.word	livesRemaining
	.word	collision
	.size	movingRectangles, .-movingRectangles
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
	bl	movingRectangles
	bl	fallingRectangles
	mov	ip, #0
	ldr	r3, .L162
	add	r1, r3, #240
.L149:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L147
	ldr	r2, [r3]
	ldr	r0, [r3, #16]
	add	r2, r2, r0
	cmp	r2, #0
	str	r2, [r3]
	strlt	ip, [r3, #32]
.L147:
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L149
	ldr	r4, .L162+4
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L161
.L150:
	ldr	r3, [r4, #80]
	cmp	r3, #0
	ldrne	r0, .L162+8
	blne	updateAsteroid.part.0
.L151:
	ldr	r3, [r4, #124]
	cmp	r3, #0
	ldrne	r0, .L162+12
	popne	{r4, lr}
	bne	updateAsteroid.part.0
.L145:
	pop	{r4, lr}
	bx	lr
.L161:
	mov	r0, r4
	bl	updateAsteroid.part.0
	b	.L150
.L163:
	.align	2
.L162:
	.word	bullets
	.word	asteroids
	.word	asteroids+44
	.word	asteroids+88
	.size	updateGame, .-updateGame
	.global	targetWidth
	.global	targetHeight
	.global	targetRow
	.global	targetCol
	.global	arrLength
	.global	oldrectangleCols1
	.global	rectangleCols1
	.global	oldrectangleRows1
	.global	rectangleRows1
	.global	boxWidth
	.global	boxHeight
	.comm	reachedTarget,4,4
	.comm	livesRemaining,4,4
	.comm	asteroidsRemaining,4,4
	.comm	asteroids,132,4
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
	.type	arrLength, %object
	.size	arrLength, 4
arrLength:
	.word	2
	.type	oldrectangleRows1, %object
	.size	oldrectangleRows1, 8
oldrectangleRows1:
	.word	30
	.word	30
	.type	oldrectangleCols1, %object
	.size	oldrectangleCols1, 8
oldrectangleCols1:
	.word	10
	.word	165
	.type	rectangleRows1, %object
	.size	rectangleRows1, 8
rectangleRows1:
	.word	30
	.word	30
	.type	rectangleCols1, %object
	.size	rectangleCols1, 8
rectangleCols1:
	.word	10
	.word	165
	.type	boxWidth, %object
	.size	boxWidth, 4
boxWidth:
	.word	60
	.type	boxHeight, %object
	.size	boxHeight, 4
boxHeight:
	.word	40
	.ident	"GCC: (devkitARM release 53) 9.1.0"
