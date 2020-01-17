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
	.file	"lab01.c"
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
	.global	drawTriangle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTriangle, %function
drawTriangle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L13
	push	{r4, r5, r6, r7, lr}
	add	r6, r1, #10
	ldr	ip, [r3]
	rsb	r6, r6, r6, lsl #4
	add	r5, r0, #10
	add	r2, r5, r6, lsl #4
	add	r2, ip, r2, lsl #1
	mov	r3, r2
	mvn	r4, #32768
	rsb	r1, r1, r1, lsl #4
	add	lr, ip, #24064
	add	r1, r0, r1, lsl #4
	add	lr, lr, #36
	lsl	r6, r6, #4
	lsl	r7, r1, #1
	add	lr, lr, r1, lsl #1
.L6:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	add	r3, r3, #2
	cmp	r3, lr
	bne	.L6
	mvn	lr, #32768
	add	r1, ip, #23808
	add	r1, r1, #212
	add	r1, r1, r7
.L7:
	strh	lr, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L7
	mvn	r1, #32768
	add	r2, r6, #9600
	add	r3, r2, r5
	add	r0, r2, r0
	add	r2, ip, #100
	add	r3, ip, r3, lsl #1
	add	r2, r2, r0, lsl #1
.L8:
	strh	r1, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L8
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.size	drawTriangle, .-drawTriangle
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
	mov	r2, #67108864
	ldr	r1, .L22
	push	{r4, lr}
	strh	r1, [r2]	@ movhi
	mov	r4, #50
	mvn	r1, #32768
	ldr	r3, .L22+4
	ldr	r2, [r3]
	add	r2, r2, #52736
	add	r2, r2, #164
.L16:
	sub	r3, r2, #4800
.L17:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L17
	add	r4, r4, #1
	cmp	r4, #100
	add	r2, r3, #2
	bne	.L16
	mov	r1, #0
	ldr	r5, .L22+8
	mov	r0, r1
	mov	lr, pc
	bx	r5
	mov	r1, r4
	mov	r0, r4
	mov	lr, pc
	bx	r5
.L19:
	b	.L19
.L23:
	.align	2
.L22:
	.word	1027
	.word	.LANCHOR0
	.word	drawTriangle
	.size	main, .-main
	.text
	.align	2
	.global	drawRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L29
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #4
	add	r1, r0, r1, lsl #4
	add	r0, r3, #28928
	add	r0, r0, #72
	add	r2, r3, r1, lsl #1
	add	r0, r0, r1, lsl #1
	mvn	r1, #32768
	add	r2, r2, #28672
	add	r2, r2, #228
.L25:
	sub	r3, r2, #4800
.L26:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L26
	add	r2, r3, #2
	cmp	r2, r0
	bne	.L25
	bx	lr
.L30:
	.align	2
.L29:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
