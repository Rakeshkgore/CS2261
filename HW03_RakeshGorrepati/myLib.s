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
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	rsb	r1, r1, r1, lsl #4
	ldr	r3, [r3]
	add	r0, r0, r1, lsl #4
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r3, #0
	ldrh	ip, [sp, #8]
	ble	.L5
	ldr	r3, .L13
	rsb	r1, r1, r1, lsl #4
	add	r0, r0, r1, lsl #4
	ldr	r1, [r3]
	add	r3, r0, r2
	mov	r0, #0
	rsb	r4, r2, r2, lsl #31
	add	r1, r1, r3, lsl #1
	lsl	r4, r4, #1
.L7:
	cmp	r2, #0
	addgt	r3, r1, r4
	ble	.L10
.L8:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L8
.L10:
	add	r0, r0, #1
	cmp	lr, r0
	add	r1, r1, #480
	bne	.L7
.L5:
	pop	{r4, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	drawAster
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAster, %function
drawAster:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	fp, r3, #0
	sub	sp, sp, #12
	ldrh	r8, [sp, #48]
	ble	.L15
	mov	r9, #0
	mov	r5, r9
	ldr	ip, .L23
	add	r10, r1, #10
	rsb	r10, r10, r10, lsl #4
	ldr	r7, [ip]
	lsl	r10, r10, #4
	add	r3, r0, #3
	add	r3, r3, r10
	add	r3, r7, r3, lsl #1
	str	r3, [sp, #4]
	add	r3, r7, r0, lsl #1
	str	r3, [sp]
	sub	r10, r10, #2400
.L17:
	cmp	r2, #0
	ble	.L20
	mov	r3, #0
	ldr	ip, [sp]
	add	r6, r1, r9, asr #1
	rsb	r6, r6, r6, lsl #4
	ldr	r4, [sp, #4]
	add	r6, r0, r6, lsl #4
	add	lr, ip, r10, lsl #1
.L18:
	add	ip, r6, r3, asr #1
	add	r3, r3, #1
	lsl	ip, ip, #1
	cmp	r2, r3
	strh	r8, [lr], #2	@ movhi
	strh	r5, [r7, ip]	@ movhi
	strh	r5, [r4, #2]!	@ movhi
	bne	.L18
.L20:
	add	r9, r9, #1
	cmp	fp, r9
	add	r10, r10, #240
	bne	.L17
.L15:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.size	drawAster, .-drawAster
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L29
	ldr	r2, .L29+4
	ldr	r1, [r3]
	sub	r3, r1, #2
	add	r2, r1, r2
.L26:
	strh	r0, [r3, #2]!	@ movhi
	cmp	r3, r2
	bne	.L26
	bx	lr
.L30:
	.align	2
.L29:
	.word	.LANCHOR0
	.word	76798
	.size	fillScreen, .-fillScreen
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L32:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L32
	mov	r2, #67108864
.L33:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L33
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [sp, #4]
	add	r3, r1, r3
	cmp	r3, ip
	blt	.L41
	ldr	r3, [sp, #12]
	add	ip, ip, r3
	cmp	ip, r1
	blt	.L41
	ldr	r3, [sp]
	add	r2, r0, r2
	cmp	r2, r3
	blt	.L41
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	cmp	r3, r0
	movlt	r0, #0
	movge	r0, #1
	bx	lr
.L41:
	mov	r0, #0
	bx	lr
	.size	collision, .-collision
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
