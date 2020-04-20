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
	.file	"sound.c"
	.text
	.align	2
	.global	setupSounds
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L3
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_idiv
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, #0
	mov	r5, r2
	mov	r9, r3
	ldr	r3, .L7+8
	ldr	r3, [r3]
	ldr	r10, .L7+12
	mov	r6, r1
	ldr	r2, .L7+16
	mov	r7, r0
	mov	r1, r0
	str	r8, [r3, #20]
	mov	r0, #1
	mov	r3, #910163968
	ldr	r4, .L7+20
	mov	lr, pc
	bx	r4
	mov	r1, r5
	strh	r8, [r10, #2]	@ movhi
	ldr	r3, .L7+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r3, #128
	rsb	ip, r0, #0
	ldr	r4, .L7+28
	lsl	ip, ip, #16
	lsr	ip, ip, #16
	strh	ip, [r10]	@ movhi
	mov	r0, r6
	strh	r3, [r10, #2]	@ movhi
	ldr	r10, .L7+32
	str	r7, [r4]
	str	r6, [r4, #4]
	str	r5, [r4, #8]
	mov	lr, pc
	bx	r10
	ldr	r6, .L7+36
	adr	r3, .L7
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r6
	mov	r6, r0
	mov	r0, r5
	mov	r7, r1
	mov	lr, pc
	bx	r10
	ldr	r5, .L7+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	mov	lr, pc
	bx	r5
	ldr	r3, .L7+44
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r9, [r4, #16]
	str	r8, [r4, #28]
	str	r0, [r4, #20]
	str	r3, [r4, #12]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L8:
	.align	3
.L7:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109024
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundA
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	interruptHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L32
	ldrh	r1, [r3, #2]
	tst	r1, #1
	strh	r2, [r3, #8]	@ movhi
	beq	.L27
	push	{r4, lr}
	ldr	r4, .L32+4
	ldr	r3, [r4, #12]
	cmp	r3, r2
	beq	.L11
	ldr	r2, [r4, #28]
	ldr	r3, [r4, #20]
	cmp	r2, r3
	ble	.L12
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L30
	ldr	r0, .L32+8
	ldr	r1, .L32+12
	ldr	r0, [r0]
	str	r3, [r4, #12]
	str	r3, [r0, #20]
	strh	r3, [r1, #2]	@ movhi
.L12:
	add	r2, r2, #1
	str	r2, [r4, #28]
.L11:
	ldr	r4, .L32+16
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #20]
	cmp	r3, r2
	ble	.L15
	ldr	r2, [r4, #16]
	cmp	r2, #0
	bne	.L31
	ldr	r0, .L32+8
	ldr	r1, .L32+12
	ldr	r0, [r0]
	str	r2, [r4, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #6]	@ movhi
.L15:
	add	r3, r3, #1
	str	r3, [r4, #28]
.L14:
	mov	r2, #1
	ldr	r3, .L32
	strh	r2, [r3, #2]	@ movhi
	mov	r2, #1
	ldr	r3, .L32
	pop	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L27:
	mov	r2, #1
	ldr	r3, .L32
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L30:
	ldm	r4, {r0, r1, r2}
	bl	playSoundA
	ldr	r2, [r4, #28]
	b	.L12
.L31:
	ldmib	r4, {r1, r3}
	ldr	r0, [r4]
	mov	r2, r3
	bl	playSoundA
	ldr	r3, [r4, #28]
	b	.L15
.L33:
	.align	2
.L32:
	.word	67109376
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	playSoundB
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, #0
	mov	r5, r2
	mov	r9, r3
	ldr	r3, .L36+8
	ldr	r3, [r3]
	ldr	r10, .L36+12
	mov	r6, r1
	ldr	r2, .L36+16
	mov	r7, r0
	mov	r1, r0
	str	r8, [r3, #32]
	mov	r0, #2
	mov	r3, #910163968
	ldr	r4, .L36+20
	mov	lr, pc
	bx	r4
	mov	r1, r5
	strh	r8, [r10, #6]	@ movhi
	ldr	r3, .L36+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r3, #128
	rsb	ip, r0, #0
	ldr	r4, .L36+28
	lsl	ip, ip, #16
	lsr	ip, ip, #16
	strh	ip, [r10, #4]	@ movhi
	mov	r0, r6
	strh	r3, [r10, #6]	@ movhi
	ldr	r10, .L36+32
	str	r7, [r4]
	str	r6, [r4, #4]
	str	r5, [r4, #8]
	mov	lr, pc
	bx	r10
	ldr	r6, .L36+36
	adr	r3, .L36
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r6
	mov	r6, r0
	mov	r0, r5
	mov	r7, r1
	mov	lr, pc
	bx	r10
	ldr	r5, .L36+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	mov	lr, pc
	bx	r5
	ldr	r3, .L36+44
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r9, [r4, #16]
	str	r8, [r4, #28]
	str	r0, [r4, #20]
	str	r3, [r4, #12]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L37:
	.align	3
.L36:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109028
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundB
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldrh	r1, [r0, #4]
	ldr	r3, .L40
	orr	r1, r1, #8
	ldrh	r2, [r3]
	ldr	ip, .L40+4
	strh	r1, [r0, #4]	@ movhi
	ldr	r1, .L40+8
	orr	r2, r2, lr
	strh	lr, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [ip, #4092]
	bx	lr
.L41:
	.align	2
.L40:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	pauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L51
	ldr	r2, [r3, #12]
	cmp	r2, #0
	movne	r2, #0
	ldrne	r1, .L51+4
	strne	r2, [r3, #12]
	ldr	r3, .L51+8
	strhne	r2, [r1, #2]	@ movhi
	ldr	r2, [r3, #12]
	cmp	r2, #0
	movne	r2, #0
	ldrne	r1, .L51+4
	strne	r2, [r3, #12]
	strhne	r2, [r1, #6]	@ movhi
	bx	lr
.L52:
	.align	2
.L51:
	.word	soundA
	.word	67109120
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L56
	ldr	r2, [r3, #12]
	cmp	r2, #0
	moveq	r0, #1
	moveq	r1, #128
	streq	r0, [r3, #12]
	ldreq	r2, .L56+4
	ldr	r3, .L56+8
	strheq	r1, [r2, #2]	@ movhi
	ldr	r2, [r3, #12]
	cmp	r2, #0
	moveq	r1, #128
	moveq	r0, #1
	ldreq	r2, .L56+4
	streq	r0, [r3, #12]
	strheq	r1, [r2, #6]	@ movhi
	bx	lr
.L57:
	.align	2
.L56:
	.word	soundA
	.word	67109120
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L59
	ldr	ip, .L59+4
	strh	r3, [r2, #2]	@ movhi
	ldr	r0, .L59+8
	strh	r3, [r2, #6]	@ movhi
	ldr	r1, .L59+12
	ldr	r2, [ip]
	str	r3, [r0, #12]
	str	r3, [r2, #20]
	str	r3, [r1, #12]
	str	r3, [r2, #32]
	bx	lr
.L60:
	.align	2
.L59:
	.word	67109120
	.word	dma
	.word	soundA
	.word	soundB
	.size	stopSound, .-stopSound
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
