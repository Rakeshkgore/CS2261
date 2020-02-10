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
	.file	"main.c"
	.text
	.align	2
	.global	movingRectangles
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	movingRectangles, %function
movingRectangles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L13
	ldr	r3, [r8]
	cmp	r3, #0
	sub	sp, sp, #36
	ble	.L1
	mov	r6, #0
	mov	r7, #8
	add	r3, r8, #20
	str	r3, [sp, #24]
	add	r3, r8, #52
	str	r3, [sp, #20]
	add	r3, r8, #68
	ldr	fp, .L13+4
	ldr	r10, .L13+8
	ldr	r9, .L13+12
	str	r3, [sp, #28]
	add	r4, r8, #4
	add	r5, r8, #36
.L8:
	ldr	r2, [sp, #28]
	ldr	r0, [r4], #4
	ldr	r3, [r2], #4
	ldr	lr, [sp, #24]
	ldr	ip, [r5], #4
	stmib	sp, {r0, r7}
	str	r3, [sp]
	str	r7, [sp, #12]
	str	r0, [lr], #4
	str	lr, [sp, #24]
	ldr	lr, [sp, #20]
	ldr	r0, .L13+16
	str	ip, [lr], #4
	str	r2, [sp, #28]
	ldr	r3, [fp]
	ldr	r2, [r10]
	ldr	r1, [r9]
	ldr	r0, [r0]
	ldr	ip, .L13+20
	str	lr, [sp, #20]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L3
.L5:
	ldr	r2, [fp]
	ldr	r3, [r10]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	rsb	r2, r2, #80
	add	r3, r3, r3, lsr #31
	str	r2, [r9]
	asr	r3, r3, #1
	ldr	r2, .L13+16
	rsb	r3, r3, #120
	str	r3, [r2]
	ldr	r3, [r4, #-4]
.L4:
	cmp	r3, #220
	ldr	r2, [r8]
	add	r6, r6, #1
	bgt	.L6
	ldr	r3, [r5, #-4]
	cmp	r3, #220
	ble	.L7
.L6:
	mov	r3, #0
	str	r3, [r4, #-4]
	str	r3, [r5, #-4]
.L7:
	cmp	r2, r6
	bgt	.L8
.L1:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L3:
	ldr	r3, .L13+24
	ldr	r2, [r5, #-4]
	ldr	r3, [r3, r6, lsl #2]
	stmib	sp, {r2, r7}
	str	r3, [sp]
	str	r7, [sp, #12]
	ldr	r0, .L13+16
	ldr	r3, [fp]
	ldr	r2, [r10]
	ldr	r1, [r9]
	ldr	r0, [r0]
	ldr	ip, .L13+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L5
	ldr	r3, [r4, #-4]
	ldr	r2, [r5, #-4]
	add	r3, r3, #1
	add	r2, r2, #1
	str	r3, [r4, #-4]
	str	r2, [r5, #-4]
	b	.L4
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.word	uHeight
	.word	uWidth
	.word	uRow
	.word	uCol
	.word	collision
	.word	.LANCHOR0+84
	.size	movingRectangles, .-movingRectangles
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
	ldr	r4, .L28
	ldr	r3, [r4]
	cmp	r3, #0
	sub	sp, sp, #12
	ble	.L15
	mov	r6, #0
	mov	r9, r6
	ldr	r5, .L28+4
	add	r8, r4, #20
	add	r7, r4, #100
.L17:
	mov	r3, #8
	str	r9, [sp]
	mov	r2, r3
	ldr	r1, [r8], #4
	ldr	r0, [r7], #4
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	add	r6, r6, #1
	cmp	r3, r6
	bgt	.L17
	cmp	r3, #0
	ble	.L15
	mov	r6, #0
	mov	r9, #31
	ldr	r7, .L28+8
	add	r8, r7, #64
.L18:
	mov	r3, #8
	str	r9, [sp]
	mov	r2, r3
	ldr	r1, [r7], #4
	ldr	r0, [r8], #4
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	add	r6, r6, #1
	cmp	r3, r6
	bgt	.L18
	cmp	r3, #0
	ble	.L15
	mov	r6, #0
	mov	r9, r6
	ldr	r7, .L28+12
	add	r8, r7, #64
.L20:
	mov	r3, #8
	str	r9, [sp]
	mov	r2, r3
	ldr	r1, [r7], #4
	ldr	r0, [r8], #4
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	add	r6, r6, #1
	cmp	r3, r6
	bgt	.L20
	cmp	r3, #0
	ble	.L15
	mov	r6, #0
	mov	r9, #31
	ldr	r7, .L28+16
	add	r8, r7, #48
.L22:
	mov	r3, #8
	str	r9, [sp]
	mov	r2, r3
	ldr	r1, [r7], #4
	ldr	r0, [r8], #4
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	add	r6, r6, #1
	cmp	r3, r6
	bgt	.L22
.L15:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	.LANCHOR0
	.word	drawRect
	.word	.LANCHOR0+4
	.word	.LANCHOR0+52
	.word	.LANCHOR0+36
	.size	fallingRectangles, .-fallingRectangles
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
	mov	ip, r0
	mov	r3, #8
	mov	r2, #31
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r0, r1
	mov	r2, r3
	mov	r1, ip
	ldr	r4, .L32
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	drawRect
	.size	drawRectangles, .-drawRectangles
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
	mov	ip, r0
	mov	r3, #8
	mov	r2, #0
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r0, r1
	mov	r2, r3
	mov	r1, ip
	ldr	r4, .L36
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	drawRect
	.size	clearFallingRectangle, .-clearFallingRectangle
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r0, #0
	ldr	r2, .L40
	push	{r4, r5, r6, r7, r8, lr}
	ldr	lr, .L40+4
	ldrh	ip, [r2, #48]
	ldr	r1, .L40+8
	ldr	r2, .L40+12
	strh	lr, [r3]	@ movhi
	ldr	r3, .L40+16
	strh	ip, [r1]	@ movhi
	strh	r0, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #8
	mov	ip, #135
	mov	r6, #20
	mov	r3, #120
	mov	r5, #110
	mov	lr, #220
	mov	r4, #15
	mov	r0, #155
	mov	r1, #1
	ldr	r7, .L40+20
	str	r2, [r7]
	ldr	r7, .L40+24
	str	r2, [r7]
	ldr	r7, .L40+28
	str	r2, [r7]
	ldr	r2, .L40+32
	str	ip, [r2]
	ldr	r2, .L40+36
	str	ip, [r2]
	ldr	r2, .L40+40
	str	r6, [r2]
	ldr	r2, .L40+44
	str	r3, [r2]
	ldr	r2, .L40+48
	str	r3, [r2]
	ldr	r2, .L40+52
	str	r3, [r2]
	ldr	r3, .L40+56
	ldr	r2, .L40+60
	str	r5, [r3]
	ldr	r3, .L40+64
	str	lr, [r2]
	str	r4, [r3]
	ldr	lr, .L40+68
	ldr	ip, .L40+72
	ldr	r2, .L40+76
	ldr	r3, .L40+80
	str	r0, [lr]
	str	r0, [ip]
	str	r1, [r2]
	str	r1, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	67109120
	.word	1027
	.word	buttons
	.word	oldButtons
	.word	fillScreen
	.word	rHeight
	.word	rWidth
	.word	uHeight
	.word	redRow1
	.word	redRow2
	.word	redCol1
	.word	redCol2
	.word	uCol
	.word	uOldCol
	.word	redRow3
	.word	redCol3
	.word	uWidth
	.word	uRow
	.word	uOldRow
	.word	uRDel
	.word	uCDel
	.size	initialize, .-initialize
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L79
	ldr	r0, [r4]
	cmp	r0, #0
	movlt	r3, #0
	ldrlt	r2, .L79+4
	strlt	r0, [r2]
	movlt	r0, r3
	ldr	r6, .L79+8
	ldr	r2, [r6]
	strlt	r3, [r4]
	add	r3, r2, r0
	cmp	r3, #240
	ldr	r5, .L79+12
	ldrgt	r3, .L79+4
	ldr	r7, .L79+16
	ldr	r1, [r5]
	strgt	r0, [r3]
	ldr	r3, [r7]
	rsbgt	r0, r2, #240
	add	ip, r1, r3
	strgt	r0, [r4]
	cmp	ip, #160
	ldrgt	ip, .L79+20
	strgt	r1, [ip]
	ldr	ip, .L79+24
	ldrh	ip, [ip]
	rsbgt	r1, r3, #160
	and	r8, ip, #32
	strgt	r1, [r5]
	cmp	r8, #0
	subeq	r0, r0, #1
	and	r8, ip, #64
	streq	r0, [r4]
	cmp	r8, #0
	subeq	r1, r1, #1
	and	r8, ip, #16
	streq	r1, [r5]
	ldr	r10, .L79+28
	cmp	r8, #0
	addeq	r0, r0, #1
	and	ip, ip, #128
	ldr	r8, [r10]
	streq	r0, [r4]
	ldr	lr, .L79+32
	cmp	ip, #0
	ldr	ip, .L79+36
	sub	sp, sp, #20
	ldr	lr, [lr]
	ldr	ip, [ip]
	ldr	r9, .L79+40
	str	r8, [sp, #12]
	ldr	r8, [r9]
	addeq	r1, r1, #1
	str	lr, [sp, #4]
	str	r8, [sp, #8]
	str	ip, [sp]
	ldr	r8, .L79+44
	streq	r1, [r5]
	mov	lr, pc
	bx	r8
	ldr	lr, .L79+48
	ldr	ip, .L79+52
	ldr	lr, [lr]
	ldr	ip, [ip]
	str	lr, [sp, #4]
	ldr	r3, [r7]
	ldr	lr, [r10]
	ldr	r2, [r6]
	str	ip, [sp]
	cmp	r0, #0
	addne	r1, r3, r3, lsr #31
	addne	r0, r2, r2, lsr #31
	ldr	ip, [r9]
	asrne	r1, r1, #1
	asrne	r0, r0, #1
	rsbne	r1, r1, #80
	ldreq	r1, [r5]
	rsbne	r0, r0, #120
	ldreq	r0, [r4]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	strne	r1, [r5]
	strne	r0, [r4]
	mov	lr, pc
	bx	r8
	ldr	fp, .L79+56
	ldr	r3, [r7]
	ldr	r2, [r6]
	ldr	ip, .L79+60
	cmp	r0, #0
	ldr	lr, [r10]
	addne	r1, r3, r3, lsr #31
	addne	r0, r2, r2, lsr #31
	ldr	r9, [r9]
	ldr	ip, [ip]
	ldr	r10, [fp]
	asrne	r1, r1, #1
	asrne	r0, r0, #1
	rsbne	r1, r1, #80
	rsbne	r0, r0, #120
	ldreq	r0, [r4]
	ldreq	r1, [r5]
	stm	sp, {r10, ip}
	str	lr, [sp, #12]
	str	r9, [sp, #8]
	strne	r1, [r5]
	strne	r0, [r4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L42
	ldr	r2, [r7]
	ldr	r3, [r6]
	add	r2, r2, r2, lsr #31
	add	r3, r3, r3, lsr #31
	asr	r2, r2, #1
	asr	r3, r3, #1
	rsb	r2, r2, #80
	rsb	r3, r3, #120
	str	r2, [r5]
	str	r3, [r4]
.L42:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L80:
	.align	2
.L79:
	.word	uCol
	.word	uOldCol
	.word	uWidth
	.word	uRow
	.word	uHeight
	.word	uOldRow
	.word	buttons
	.word	rHeight
	.word	redRow1
	.word	redCol1
	.word	rWidth
	.word	collision
	.word	redRow2
	.word	redCol2
	.word	redCol3
	.word	redRow3
	.size	update, .-update
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	str	r3, [sp]
	ldr	r6, .L83
	ldr	r5, .L83+4
	ldr	r9, .L83+8
	ldr	r8, .L83+12
	ldr	r4, .L83+16
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r9]
	ldr	r0, [r8]
	mov	lr, pc
	bx	r4
	mov	r1, #31744
	mov	r7, #31
	ldr	fp, .L83+20
	ldr	r10, .L83+24
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r0, [r10]
	str	r1, [sp]
	ldr	r1, [fp]
	mov	lr, pc
	bx	r4
	ldr	r6, .L83+28
	str	r7, [sp]
	ldr	r5, .L83+32
	ldr	r1, .L83+36
	ldr	r0, .L83+40
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r1, .L83+44
	ldr	r0, .L83+48
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r1, .L83+52
	ldr	r0, .L83+56
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	ldr	r2, [fp]
	ldr	r3, [r10]
	str	r2, [r9]
	str	r3, [r8]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	uHeight
	.word	uWidth
	.word	uOldRow
	.word	uOldCol
	.word	drawRect
	.word	uRow
	.word	uCol
	.word	rHeight
	.word	rWidth
	.word	redRow1
	.word	redCol1
	.word	redRow2
	.word	redCol2
	.word	redRow3
	.word	redCol3
	.size	draw, .-draw
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L88
	mov	lr, pc
	bx	r3
	ldr	fp, .L88+4
	ldr	r4, .L88+8
	ldr	r10, .L88+12
	ldr	r9, .L88+16
	ldr	r8, .L88+20
	ldr	r7, .L88+24
	ldr	r6, .L88+28
	ldr	r5, .L88+32
.L86:
	ldrh	r3, [r4]
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	b	.L86
.L89:
	.align	2
.L88:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	update
	.word	waitForVBlank
	.word	draw
	.word	movingRectangles
	.word	fallingRectangles
	.word	67109120
	.size	main, .-main
	.comm	uWidth,4,4
	.comm	uHeight,4,4
	.comm	uCDel,4,4
	.comm	uRDel,4,4
	.comm	uOldCol,4,4
	.comm	uOldRow,4,4
	.comm	uCol,4,4
	.comm	uRow,4,4
	.comm	rWidth,4,4
	.comm	rHeight,4,4
	.comm	redCol3,4,4
	.comm	redCol2,4,4
	.comm	redCol1,4,4
	.comm	redRow3,4,4
	.comm	redRow2,4,4
	.comm	redRow1,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.global	arrLength
	.global	oldrectangleCols2
	.global	rectangleCols2
	.global	oldrectangleRows2
	.global	rectangleRows2
	.global	oldrectangleCols1
	.global	rectangleCols1
	.global	oldrectangleRows1
	.global	rectangleRows1
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	arrLength, %object
	.size	arrLength, 4
arrLength:
	.word	4
	.type	rectangleRows1, %object
	.size	rectangleRows1, 16
rectangleRows1:
	.word	30
	.word	20
	.word	10
	.word	0
	.type	oldrectangleRows1, %object
	.size	oldrectangleRows1, 16
oldrectangleRows1:
	.word	30
	.word	20
	.word	10
	.word	0
	.type	rectangleRows2, %object
	.size	rectangleRows2, 16
rectangleRows2:
	.word	30
	.word	20
	.word	10
	.word	0
	.type	oldrectangleRows2, %object
	.size	oldrectangleRows2, 16
oldrectangleRows2:
	.word	30
	.word	20
	.word	10
	.word	0
	.type	rectangleCols1, %object
	.size	rectangleCols1, 16
rectangleCols1:
	.word	200
	.word	50
	.word	65
	.word	30
	.type	rectangleCols2, %object
	.size	rectangleCols2, 16
rectangleCols2:
	.word	150
	.word	100
	.word	250
	.word	150
	.type	oldrectangleCols1, %object
	.size	oldrectangleCols1, 16
oldrectangleCols1:
	.word	200
	.word	50
	.word	65
	.word	30
	.type	oldrectangleCols2, %object
	.size	oldrectangleCols2, 16
oldrectangleCols2:
	.word	150
	.word	100
	.word	250
	.word	150
	.ident	"GCC: (devkitARM release 53) 9.1.0"
