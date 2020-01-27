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
	.file	"HW01.c"
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
	push	{r4, r5, r6, r7, r8, lr}
	add	r5, r1, #10
	ldr	lr, [r3]
	rsb	r5, r5, r5, lsl #4
	add	r6, r0, #10
	add	ip, r6, r5, lsl #4
	add	ip, lr, ip, lsl #1
	mov	r3, ip
	rsb	r7, r1, r1, lsl #4
	add	r4, lr, #24064
	add	r7, r0, r7, lsl #4
	add	r4, r4, #36
	lsl	r5, r5, #4
	lsl	r8, r7, #1
	add	r4, r4, r7, lsl #1
.L6:
	strh	r2, [r3]	@ movhi
	add	r3, r3, #480
	add	r3, r3, #2
	cmp	r3, r4
	bne	.L6
	add	r1, lr, #23808
	add	r1, r1, #212
	add	r1, r1, r8
.L7:
	strh	r2, [ip]	@ movhi
	add	ip, ip, #480
	cmp	ip, r1
	bne	.L7
	add	r1, r5, #9600
	add	r3, r1, r6
	add	r5, r1, r0
	add	r1, lr, #100
	add	r3, lr, r3, lsl #1
	add	r1, r1, r5, lsl #1
.L8:
	strh	r2, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L8
	pop	{r4, r5, r6, r7, r8, lr}
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r5, #0
	str	lr, [sp, #-4]!
	ldr	r2, .L27
	ldr	r4, .L27+4
	strh	r2, [r3]	@ movhi
	ldr	r6, .L27+8
	sub	sp, sp, #20
.L22:
	mov	r2, #0
	mov	r1, r2
	mov	r0, r2
	mov	lr, pc
	bx	r4
	mov	r1, #50
	mov	r2, #31
	mov	r0, r1
	mov	lr, pc
	bx	r4
	str	r5, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, r6
	bge	.L16
.L17:
	ldr	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, r6
	blt	.L17
.L16:
	mov	r1, #50
	mov	r2, #0
	mov	r0, r1
	mov	lr, pc
	bx	r4
	mov	r1, #100
	ldr	r2, .L27+12
	mov	r0, r1
	mov	lr, pc
	bx	r4
	str	r5, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, r6
	bge	.L18
.L19:
	ldr	r3, [sp, #8]
	add	r3, r3, #1
	str	r3, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, r6
	blt	.L19
.L18:
	mov	r1, #100
	mov	r2, #0
	mov	r0, r1
	mov	lr, pc
	bx	r4
	mov	r1, #0
	mov	r2, #31744
	mov	r0, r1
	mov	lr, pc
	bx	r4
	str	r5, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, r6
	bge	.L22
.L21:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, r6
	blt	.L21
	b	.L22
.L28:
	.align	2
.L27:
	.word	1027
	.word	drawTriangle
	.word	500000
	.word	32767
	.size	main, .-main
	.text
	.align	2
	.global	setDelay
	.syntax unified
	.arm
	.fpu softvfp
	.type	setDelay, %function
setDelay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	sub	sp, sp, #8
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	rsb	r2, r0, r0, lsl #5
	add	r0, r0, r2, lsl #2
	cmp	r3, r0, lsl #3
	bge	.L29
	lsl	r0, r0, #3
.L31:
	ldr	r3, [sp, #4]
	add	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, r0
	blt	.L31
.L29:
	add	sp, sp, #8
	@ sp needed
	bx	lr
	.size	setDelay, .-setDelay
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
