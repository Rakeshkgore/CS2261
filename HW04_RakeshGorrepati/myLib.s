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
	.global	setPixel4
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L6
	rsb	r1, r1, r1, lsl #4
	add	r1, r0, r1, lsl #4
	ldr	r3, [r3]
	add	r1, r1, r1, lsr #31
	bic	r1, r1, #1
	ldrh	ip, [r3, r1]
	sub	sp, sp, #8
	strh	ip, [sp, #6]	@ movhi
	tst	r0, #1
	ldrh	r0, [sp, #6]
	andne	r0, r0, #255
	andeq	r0, r0, #65280
	strhne	r0, [sp, #6]	@ movhi
	strheq	r0, [sp, #6]	@ movhi
	ldrhne	r0, [sp, #6]
	ldrheq	r0, [sp, #6]
	orrne	r2, r0, r2, lsl #8
	orreq	r2, r0, r2
	strh	r2, [sp, #6]	@ movhi
	ldrh	r2, [sp, #6]
	strh	r2, [r3, r1]	@ movhi
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.size	setPixel4, .-setPixel4
	.align	2
	.global	drawRect4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	ldrb	ip, [sp, #64]	@ zero_extendqisi2
	ldrb	lr, [sp, #64]	@ zero_extendqisi2
	subs	r4, r3, #0
	orr	ip, ip, lr, lsl #8
	strh	ip, [sp, #22]	@ movhi
	ble	.L8
	mov	r5, r2
	mov	r6, r0
	mov	fp, r1
	add	r9, r2, r2, lsr #31
	sub	r0, r2, #2
	asr	r1, r9, #1
	sub	r2, r2, #1
	orr	r1, r1, #-2130706432
	asr	r0, r0, #1
	asr	r2, r2, #1
	asr	r3, r5, #1
	str	r1, [sp]
	add	r10, r6, r5
	orr	r1, r0, #-2130706432
	orr	r2, r2, #-2130706432
	orr	r3, r3, #-2130706432
	ldr	r9, .L28
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	add	r4, r4, fp
	sub	r10, r10, #1
	and	r8, r6, #1
	and	r7, r5, #1
	b	.L14
.L26:
	cmp	r7, #0
	mov	r1, fp
	mov	r0, r6
	ldrb	r2, [sp, #64]	@ zero_extendqisi2
	bne	.L25
	bl	setPixel4
	cmp	r5, #2
	ble	.L21
	rsb	r2, fp, fp, lsl #4
	add	r3, r6, #1
	add	r3, r3, r2, lsl #4
	ldr	r0, [r9]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r9, #4]
	bic	r3, r3, #1
	add	r3, r0, r3
	add	r0, sp, #22
	str	r7, [r2, #44]
	str	r0, [r2, #36]
	str	r3, [r2, #40]
	ldr	r3, [sp, #12]
	str	r3, [r2, #44]
.L21:
	mov	r1, fp
	mov	r0, r10
	ldrb	r2, [sp, #64]	@ zero_extendqisi2
	bl	setPixel4
.L13:
	add	fp, fp, #1
	cmp	fp, r4
	beq	.L8
.L14:
	cmp	r8, #0
	bne	.L26
	cmp	r7, #0
	bne	.L27
	rsb	r3, fp, fp, lsl #4
	add	r3, r6, r3, lsl #4
	ldr	r0, [r9]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r9, #4]
	bic	r3, r3, #1
	add	r3, r0, r3
	add	r0, sp, #22
	str	r7, [r2, #44]
	add	fp, fp, #1
	str	r0, [r2, #36]
	str	r3, [r2, #40]
	ldr	r3, [sp]
	cmp	fp, r4
	str	r3, [r2, #44]
	bne	.L14
.L8:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L27:
	cmp	r5, #1
	ble	.L21
	rsb	r3, fp, fp, lsl #4
	add	r3, r6, r3, lsl #4
	ldr	r0, [r9]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r9, #4]
	bic	r3, r3, #1
	add	r3, r0, r3
	add	r0, sp, #22
	str	r8, [r2, #44]
	str	r0, [r2, #36]
	str	r3, [r2, #40]
	ldr	r3, [sp, #4]
	str	r3, [r2, #44]
	b	.L21
.L25:
	bl	setPixel4
	cmp	r5, #1
	ble	.L13
	mov	r0, #0
	add	r2, r6, #1
	rsb	r3, fp, fp, lsl #4
	add	r3, r2, r3, lsl #4
	ldr	ip, [r9]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r9, #4]
	bic	r3, r3, #1
	add	r3, ip, r3
	add	ip, sp, #22
	str	r0, [r2, #44]
	str	ip, [r2, #36]
	str	r3, [r2, #40]
	ldr	r3, [sp, #8]
	str	r3, [r2, #44]
	b	.L13
.L29:
	.align	2
.L28:
	.word	.LANCHOR0
	.size	drawRect4, .-drawRect4
	.align	2
	.global	fillScreen4
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #0
	sub	sp, sp, #20
	strb	r0, [sp, #7]
	ldr	r1, .L32
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	ldrb	ip, [sp, #7]	@ zero_extendqisi2
	ldm	r1, {r0, r3}
	ldr	r1, .L32+4
	orr	r2, r2, ip, lsl #8
	add	ip, sp, #14
	strh	r2, [sp, #14]	@ movhi
	str	lr, [r3, #44]
	str	ip, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #20
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.word	-2130687232
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	drawImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	cmp	r3, #0
	ldr	r6, [sp, #24]
	ble	.L34
	mov	ip, #0
	mov	r8, ip
	ldr	lr, .L39
	add	r4, r1, r3
	add	r5, r2, r2, lsr #31
	rsb	r4, r4, r4, lsl #4
	rsb	r1, r1, r1, lsl #4
	asr	r5, r5, #1
	ldm	lr, {r7, lr}
	add	r4, r0, r4, lsl #4
	orr	r5, r5, #-2147483648
	add	r0, r0, r1, lsl #4
.L36:
	add	r1, ip, ip, lsr #31
	add	r3, r0, r0, lsr #31
	bic	r1, r1, #1
	bic	r3, r3, #1
	add	r0, r0, #240
	add	r1, r6, r1
	add	r3, r7, r3
	cmp	r4, r0
	str	r8, [lr, #44]
	add	ip, ip, r2
	str	r1, [lr, #36]
	str	r3, [lr, #40]
	str	r5, [lr, #44]
	bne	.L36
.L34:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
	.size	drawImage4, .-drawImage4
	.align	2
	.global	drawFullscreenImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFullscreenImage4, %function
drawFullscreenImage4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L42
	ldr	r1, .L42+4
	ldm	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.word	-2147464448
	.size	drawFullscreenImage4, .-drawFullscreenImage4
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
.L45:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L45
	mov	r2, #67108864
.L46:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L46
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	flipPage
	.syntax unified
	.arm
	.fpu softvfp
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	ldrh	r3, [r1]
	tst	r3, #16
	ldr	r2, .L53
	moveq	r2, #100663296
	ldr	r0, .L53+4
	eor	r3, r3, #16
	str	r2, [r0]
	strh	r3, [r1]	@ movhi
	bx	lr
.L54:
	.align	2
.L53:
	.word	100704256
	.word	.LANCHOR0
	.size	flipPage, .-flipPage
	.align	2
	.global	DMANow
	.syntax unified
	.arm
	.fpu softvfp
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	ldr	ip, .L57
	ldr	lr, [ip, #4]
	add	r0, r0, r0, lsl #1
	add	ip, lr, r0, lsl #2
	orr	r3, r3, #-2147483648
	lsl	r0, r0, #2
	str	r4, [ip, #8]
	str	r1, [lr, r0]
	str	r2, [ip, #4]
	pop	{r4, lr}
	str	r3, [ip, #8]
	bx	lr
.L58:
	.align	2
.L57:
	.word	.LANCHOR0
	.size	DMANow, .-DMANow
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
	blt	.L63
	ldr	r3, [sp, #12]
	add	ip, ip, r3
	cmp	ip, r1
	blt	.L63
	ldr	r3, [sp]
	add	r2, r0, r2
	cmp	r2, r3
	blt	.L63
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	cmp	r3, r0
	movlt	r0, #0
	movge	r0, #1
	bx	lr
.L63:
	mov	r0, #0
	bx	lr
	.size	collision, .-collision
	.global	dma
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	dma, %object
	.size	dma, 4
dma:
	.word	67109040
	.ident	"GCC: (devkitARM release 53) 9.1.0"
