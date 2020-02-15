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
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L15
	push	{r4, r7, fp, lr}
	ldr	r0, .L15+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L15+8
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, r3
	ldr	r6, .L15+12
	ldr	r7, .L15+16
	str	r3, [r6]
	ldr	r5, .L15+20
	ldr	fp, .L15+24
	ldr	r10, .L15+28
	ldr	r9, .L15+32
	ldr	r8, .L15+36
	ldr	r4, .L15+40
.L2:
	ldrh	r3, [r7]
.L3:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L3
.L5:
	.word	.L10
	.word	.L9
	.word	.L8
	.word	.L7
	.word	.L6
	.word	.L4
.L4:
	ldr	r3, .L15+44
	mov	lr, pc
	bx	r3
.L11:
	ldr	r2, [r6]
	b	.L2
.L6:
	ldr	r3, .L15+48
	mov	lr, pc
	bx	r3
	b	.L11
.L7:
	mov	lr, pc
	bx	r8
	b	.L11
.L8:
	mov	lr, pc
	bx	r9
	b	.L11
.L9:
	mov	lr, pc
	bx	r10
	b	.L11
.L10:
	mov	lr, pc
	bx	fp
	b	.L11
.L16:
	.align	2
.L15:
	.word	1027
	.word	16383
	.word	fillScreen
	.word	state
	.word	buttons
	.word	oldButtons
	.word	Start
	.word	Game
	.word	Pause
	.word	Win
	.word	67109120
	.word	Quit
	.word	Lose
	.size	main, .-main
	.text
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
	ldr	r2, .L19
	push	{r4, lr}
	ldr	r0, .L19+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L19+8
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L19+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L20:
	.align	2
.L19:
	.word	1027
	.word	16383
	.word	fillScreen
	.word	state
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L23
	ldr	r0, .L23+4
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L23+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L24:
	.align	2
.L23:
	.word	fillScreen
	.word	16383
	.word	state
	.size	goToStart, .-goToStart
	.comm	state,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
