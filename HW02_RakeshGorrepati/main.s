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
	.global	initialize
	.arch armv4t
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
	ldr	r2, .L4
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	lr, .L4+4
	ldrh	ip, [r2, #48]
	ldr	r1, .L4+8
	ldr	r2, .L4+12
	strh	lr, [r3]	@ movhi
	ldr	r3, .L4+16
	strh	ip, [r1]	@ movhi
	strh	r0, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #5
	mov	r9, #8
	mov	r1, #135
	mov	r4, #20
	mov	r3, #120
	mov	r8, #110
	mov	r7, #220
	ldr	r10, .L4+20
	mov	lr, #60
	str	r2, [r10]
	ldr	r10, .L4+24
	str	r2, [r10]
	ldr	r10, .L4+28
	mov	r6, #170
	str	r2, [r10]
	mov	r5, #80
	ldr	r10, .L4+32
	mov	ip, #10
	mov	r0, #160
	str	r2, [r10]
	ldr	r2, .L4+36
	str	r9, [r2]
	ldr	r2, .L4+40
	str	r1, [r2]
	ldr	r2, .L4+44
	str	r1, [r2]
	ldr	r2, .L4+48
	str	r1, [r2]
	ldr	r2, .L4+52
	str	r4, [r2]
	ldr	r2, .L4+56
	str	r4, [r2]
	ldr	r2, .L4+60
	str	r3, [r2]
	ldr	r2, .L4+64
	str	r3, [r2]
	ldr	r2, .L4+68
	str	r3, [r2]
	ldr	r2, .L4+72
	str	r3, [r2]
	ldr	r3, .L4+76
	str	r8, [r3]
	ldr	r3, .L4+80
	str	r7, [r3]
	ldr	r3, .L4+84
	str	lr, [r3]
	ldr	r3, .L4+88
	ldr	r2, .L4+92
	str	lr, [r3]
	ldr	r3, .L4+96
	str	r6, [r2]
	str	r5, [r3]
	ldr	lr, .L4+100
	ldr	r1, .L4+104
	ldr	r2, .L4+108
	ldr	r3, .L4+112
	str	ip, [lr]
	str	ip, [r1]
	str	r0, [r2]
	str	r0, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	67109120
	.word	1027
	.word	buttons
	.word	oldButtons
	.word	fillScreen
	.word	redHeight
	.word	targetRow
	.word	targetHeight
	.word	userHeight
	.word	redWidth
	.word	redRow1
	.word	redRow2
	.word	redCol6
	.word	redCol1
	.word	redCol4
	.word	redCol2
	.word	targetCol
	.word	userCol
	.word	userOldCol
	.word	redRow3
	.word	redCol3
	.word	redRow4
	.word	redRow5
	.word	redCol5
	.word	redRow6
	.word	targetWidth
	.word	userWidth
	.word	userRow
	.word	userOldRow
	.size	initialize, .-initialize
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
	mov	r7, #31
	sub	sp, sp, #12
	str	r3, [sp]
	ldr	r6, .L8
	ldr	r5, .L8+4
	ldr	r9, .L8+8
	ldr	r8, .L8+12
	ldr	r4, .L8+16
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r9]
	ldr	r0, [r8]
	mov	lr, pc
	bx	r4
	ldr	fp, .L8+20
	ldr	ip, .L8+24
	ldr	r10, .L8+28
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [fp]
	str	ip, [sp]
	ldr	r0, [r10]
	mov	lr, pc
	bx	r4
	ldr	r6, .L8+32
	ldr	r5, .L8+36
	str	r7, [sp]
	ldr	r1, .L8+40
	ldr	r0, .L8+44
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r1, .L8+48
	ldr	r0, .L8+52
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r1, .L8+56
	ldr	r0, .L8+60
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r1, .L8+64
	ldr	r0, .L8+68
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r1, .L8+72
	ldr	r0, .L8+76
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	str	r7, [sp]
	ldr	r1, .L8+80
	ldr	r0, .L8+84
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	ldr	ip, .L8+88
	ldr	r3, .L8+92
	ldr	r2, .L8+96
	ldr	r1, .L8+100
	ldr	r0, .L8+104
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	str	ip, [sp]
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
.L9:
	.align	2
.L8:
	.word	userHeight
	.word	userWidth
	.word	userOldRow
	.word	userOldCol
	.word	drawRect
	.word	userRow
	.word	32767
	.word	userCol
	.word	redHeight
	.word	redWidth
	.word	redRow1
	.word	redCol1
	.word	redRow2
	.word	redCol2
	.word	redRow3
	.word	redCol3
	.word	redRow4
	.word	redCol4
	.word	redRow5
	.word	redCol5
	.word	redRow6
	.word	redCol6
	.word	1023
	.word	targetHeight
	.word	targetWidth
	.word	targetRow
	.word	targetCol
	.size	draw, .-draw
	.align	2
	.global	movingRectangles
	.syntax unified
	.arm
	.fpu softvfp
	.type	movingRectangles, %function
movingRectangles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	fp, .L21
	ldr	r3, [fp]
	cmp	r3, #0
	sub	sp, sp, #28
	ble	.L10
	add	r3, fp, #88
	mov	r6, #0
	mov	r10, #5
	str	r3, [sp, #20]
	add	r5, fp, #4
	add	r9, fp, #20
	add	r4, fp, #40
	add	r8, fp, #56
	add	r7, fp, #72
	b	.L15
.L12:
	mov	r1, #8
	ldr	r3, [sp, #20]
	ldr	r2, [r3], #4
	str	r3, [sp, #20]
	ldr	r3, [r4, #-4]
	stm	sp, {r2, r3}
	str	r1, [sp, #8]
	str	r10, [sp, #12]
	ldr	r3, .L21+4
	ldr	r2, .L21+8
	ldr	r1, .L21+12
	ldr	r0, .L21+16
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	ip, .L21+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L13
	ldr	r2, [r5, #-4]
	ldr	r3, [r4, #-4]
	add	r2, r2, #1
	add	r3, r3, #1
	cmp	r2, #160
	cmple	r3, #160
	str	r3, [r4, #-4]
	ldr	r3, [fp]
	add	r6, r6, #1
	str	r2, [r5, #-4]
	strgt	r0, [r4, #-4]
	strgt	r0, [r5, #-4]
	cmp	r3, r6
	ble	.L10
.L15:
	mov	r2, #8
	ldr	r0, [r5], #4
	ldr	r3, [r7], #4
	ldr	ip, [r4], #4
	stmib	sp, {r0, r2}
	str	r3, [sp]
	str	r10, [sp, #12]
	ldr	r3, .L21+4
	str	r0, [r9], #4
	ldr	r2, .L21+8
	ldr	r1, .L21+12
	ldr	r0, .L21+16
	str	ip, [r8], #4
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	ldr	ip, .L21+20
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L12
.L13:
	mov	r0, #0
	ldr	r3, .L21+24
	mov	lr, pc
	bx	r3
.L10:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.word	userHeight
	.word	userWidth
	.word	userRow
	.word	userCol
	.word	collision
	.word	exit
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
	ldr	r4, .L36
	ldr	r3, [r4]
	cmp	r3, #0
	sub	sp, sp, #12
	ble	.L23
	mov	r6, #0
	mov	r9, r6
	ldr	r5, .L36+4
	add	r8, r4, #20
	add	r7, r4, #104
.L25:
	str	r9, [sp]
	mov	r3, #5
	mov	r2, #8
	ldr	r1, [r8], #4
	ldr	r0, [r7], #4
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	add	r6, r6, #1
	cmp	r3, r6
	bgt	.L25
	cmp	r3, #0
	ble	.L23
	mov	r6, #0
	mov	r9, #31
	ldr	r7, .L36+8
	add	r8, r7, #68
.L26:
	str	r9, [sp]
	mov	r3, #5
	mov	r2, #8
	ldr	r1, [r7], #4
	ldr	r0, [r8], #4
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	add	r6, r6, #1
	cmp	r3, r6
	bgt	.L26
	cmp	r3, #0
	ble	.L23
	mov	r6, #0
	mov	r9, r6
	ldr	r7, .L36+12
	add	r8, r7, #64
.L28:
	str	r9, [sp]
	mov	r3, #5
	mov	r2, #8
	ldr	r1, [r7], #4
	ldr	r0, [r8], #4
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	add	r6, r6, #1
	cmp	r3, r6
	bgt	.L28
	cmp	r3, #0
	ble	.L23
	mov	r6, #0
	mov	r9, #31
	ldr	r7, .L36+16
	add	r8, r7, #48
.L30:
	str	r9, [sp]
	mov	r3, #5
	mov	r2, #8
	ldr	r1, [r7], #4
	ldr	r0, [r8], #4
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	add	r6, r6, #1
	cmp	r3, r6
	bgt	.L30
.L23:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.word	drawRect
	.word	.LANCHOR0+4
	.word	.LANCHOR0+56
	.word	.LANCHOR0+40
	.size	fallingRectangles, .-fallingRectangles
	.align	2
	.global	inBoundry
	.syntax unified
	.arm
	.fpu softvfp
	.type	inBoundry, %function
inBoundry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L42
	ldr	r3, [r1]
	cmp	r3, #0
	movlt	r2, #0
	ldrlt	r0, .L42+4
	strlt	r3, [r0]
	movlt	r3, r2
	strlt	r2, [r1]
	ldr	r2, .L42+8
	ldr	r2, [r2]
	add	r0, r2, r3
	cmp	r0, #240
	ldrgt	r0, .L42+4
	rsbgt	r2, r2, #240
	strgt	r2, [r1]
	strgt	r3, [r0]
	ldr	r1, .L42+12
	ldr	r3, .L42+16
	ldr	r2, [r1]
	ldr	r3, [r3]
	add	r0, r2, r3
	cmp	r0, #160
	ldrgt	r0, .L42+20
	rsbgt	r3, r3, #160
	strgt	r3, [r1]
	strgt	r2, [r0]
	bx	lr
.L43:
	.align	2
.L42:
	.word	userCol
	.word	userOldCol
	.word	userWidth
	.word	userRow
	.word	userHeight
	.word	userOldRow
	.size	inBoundry, .-inBoundry
	.align	2
	.global	isButton
	.syntax unified
	.arm
	.fpu softvfp
	.type	isButton, %function
isButton:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L49
	ldrh	r3, [r3]
	tst	r3, #32
	ldreq	r1, .L49+4
	ldreq	r2, [r1]
	subeq	r2, r2, #1
	streq	r2, [r1]
	tst	r3, #64
	ldreq	r1, .L49+8
	ldreq	r2, [r1]
	subeq	r2, r2, #1
	streq	r2, [r1]
	tst	r3, #16
	ldreq	r1, .L49+4
	ldreq	r2, [r1]
	addeq	r2, r2, #1
	streq	r2, [r1]
	tst	r3, #128
	ldreq	r2, .L49+8
	ldreq	r3, [r2]
	addeq	r3, r3, #1
	streq	r3, [r2]
	bx	lr
.L50:
	.align	2
.L49:
	.word	buttons
	.word	userCol
	.word	userRow
	.size	isButton, .-isButton
	.align	2
	.global	isCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	isCollision, %function
isCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r2, .L56
	ldr	r10, .L56+4
	ldr	r9, .L56+8
	ldr	r3, .L56+12
	ldr	r2, [r2]
	ldr	r3, [r3]
	ldr	r0, [r10]
	ldr	r1, [r9]
	ldr	r8, .L56+16
	ldr	r7, .L56+20
	ldr	r6, .L56+24
	ldr	r5, .L56+28
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r7]
	ldr	r3, [r8]
	ldr	r1, [r6]
	ldr	r0, [r5]
	ldr	r4, .L56+32
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L53
	ldr	r2, .L56+36
	ldr	r3, .L56+40
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r10]
	ldr	r3, [r9]
	str	r0, [sp, #4]
	str	r1, [sp]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	ldr	r2, [r7]
	ldr	r3, [r8]
	ldr	r1, [r6]
	ldr	r0, [r5]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L55
.L53:
	mov	r0, #0
	ldr	r3, .L56+44
	mov	lr, pc
	bx	r3
.L55:
	ldr	r2, .L56+48
	ldr	r3, .L56+52
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r10]
	ldr	r3, [r9]
	str	r0, [sp, #4]
	str	r1, [sp]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	ldr	r2, [r7]
	ldr	r3, [r8]
	ldr	r1, [r6]
	ldr	r0, [r5]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L53
	ldr	r2, .L56+56
	ldr	r3, .L56+60
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r10]
	ldr	r3, [r9]
	str	r0, [sp, #4]
	str	r1, [sp]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	ldr	r2, [r7]
	ldr	r3, [r8]
	ldr	r1, [r6]
	ldr	r0, [r5]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L53
	ldr	r2, .L56+64
	ldr	r3, .L56+68
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r10]
	ldr	r3, [r9]
	str	r0, [sp, #4]
	str	r1, [sp]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	ldr	r2, [r7]
	ldr	r3, [r8]
	ldr	r1, [r6]
	ldr	r0, [r5]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L53
	ldr	r0, .L56+72
	ldr	r1, .L56+76
	ldr	r2, .L56+80
	ldr	r3, .L56+84
	ldr	r0, [r0]
	ldr	r1, [r1]
	ldr	r2, [r2]
	ldr	r3, [r3]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r7]
	ldr	r3, [r8]
	ldr	r1, [r6]
	ldr	r0, [r5]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L53
	ldr	r0, .L56+88
	ldr	r1, .L56+92
	ldr	lr, [r0]
	ldr	ip, [r1]
	ldr	r2, [r10]
	ldr	r3, [r9]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	stm	sp, {ip, lr}
	ldr	r3, [r8]
	ldr	r2, [r7]
	ldr	r1, [r6]
	ldr	r0, [r5]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L53
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	redRow1
	.word	redHeight
	.word	redWidth
	.word	redCol1
	.word	userHeight
	.word	userWidth
	.word	userRow
	.word	userCol
	.word	collision
	.word	redRow2
	.word	redCol2
	.word	exit
	.word	redRow3
	.word	redCol3
	.word	redRow4
	.word	redCol4
	.word	redRow5
	.word	redCol5
	.word	targetHeight
	.word	targetWidth
	.word	targetRow
	.word	targetCol
	.word	redRow6
	.word	redCol6
	.size	isCollision, .-isCollision
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
	push	{r4, lr}
	bl	inBoundry
	bl	isButton
	pop	{r4, lr}
	b	isCollision
	.size	update, .-update
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
	ldr	r3, .L63
	mov	lr, pc
	bx	r3
	ldr	fp, .L63+4
	ldr	r4, .L63+8
	ldr	r10, .L63+12
	ldr	r9, .L63+16
	ldr	r8, .L63+20
	ldr	r7, .L63+24
	ldr	r6, .L63+28
	ldr	r5, .L63+32
.L61:
	ldrh	r2, [r4]
	ldr	r3, .L63+36
	strh	r2, [fp]	@ movhi
	ldrh	r2, [r3, #48]
	strh	r2, [r4]	@ movhi
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
	mov	lr, pc
	bx	r5
	ldr	r3, .L63+40
	mov	lr, pc
	bx	r3
	b	.L61
.L64:
	.align	2
.L63:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	inBoundry
	.word	isButton
	.word	isCollision
	.word	waitForVBlank
	.word	draw
	.word	movingRectangles
	.word	67109120
	.word	fallingRectangles
	.size	main, .-main
	.text
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
	ldr	r4, .L67
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L68:
	.align	2
.L67:
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
	mov	r2, r1
	mov	r3, #0
	push	{r4, lr}
	sub	sp, sp, #8
	mov	r1, r0
	str	r3, [sp]
	mov	r0, r2
	mov	r3, #5
	mov	r2, #8
	ldr	r4, .L71
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	drawRect
	.size	clearFallingRectangle, .-clearFallingRectangle
	.comm	userWidth,4,4
	.comm	userHeight,4,4
	.comm	userOldCol,4,4
	.comm	userOldRow,4,4
	.comm	userCol,4,4
	.comm	userRow,4,4
	.comm	targetWidth,4,4
	.comm	targetHeight,4,4
	.comm	targetCol,4,4
	.comm	targetRow,4,4
	.comm	redWidth,4,4
	.comm	redHeight,4,4
	.comm	redCol6,4,4
	.comm	redCol5,4,4
	.comm	redCol4,4,4
	.comm	redCol3,4,4
	.comm	redCol2,4,4
	.comm	redCol1,4,4
	.comm	redRow6,4,4
	.comm	redRow5,4,4
	.comm	redRow4,4,4
	.comm	redRow3,4,4
	.comm	redRow2,4,4
	.comm	redRow1,4,4
	.global	arrLength
	.global	oldrectangleCols2
	.global	rectangleCols2
	.global	oldrectangleRows2
	.global	rectangleRows2
	.global	oldrectangleCols1
	.global	rectangleCols1
	.global	oldrectangleRows1
	.global	rectangleRows1
	.comm	oldButtons,2,2
	.comm	buttons,2,2
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
	.word	60
	.type	oldrectangleRows1, %object
	.size	oldrectangleRows1, 20
oldrectangleRows1:
	.word	30
	.word	20
	.word	10
	.word	0
	.word	60
	.type	rectangleRows2, %object
	.size	rectangleRows2, 16
rectangleRows2:
	.word	30
	.word	100
	.word	150
	.word	40
	.type	oldrectangleRows2, %object
	.size	oldrectangleRows2, 16
oldrectangleRows2:
	.word	30
	.word	100
	.word	150
	.word	40
	.type	rectangleCols1, %object
	.size	rectangleCols1, 16
rectangleCols1:
	.word	200
	.word	50
	.word	65
	.word	75
	.type	rectangleCols2, %object
	.size	rectangleCols2, 16
rectangleCols2:
	.word	150
	.word	100
	.word	250
	.word	300
	.type	oldrectangleCols1, %object
	.size	oldrectangleCols1, 16
oldrectangleCols1:
	.word	200
	.word	50
	.word	65
	.word	75
	.type	oldrectangleCols2, %object
	.size	oldrectangleCols2, 16
oldrectangleCols2:
	.word	150
	.word	100
	.word	250
	.word	300
	.ident	"GCC: (devkitARM release 53) 9.1.0"
