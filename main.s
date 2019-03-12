.syntax unified

.word 0x20000100
.word _start

.global _start
.type _start, %function
_start:
	mov	r0,	#100
	mov	r1,	#101
	mov	r2,	#102
	mov	r3,	#103  //assign value to r0~r3
	
	push	{r0}
	push	{r1}
	push	{r2}
	push	{r3}

	pop	{r7}
	pop	{r6}
	pop	{r5}
	pop	{r4}	//push value one by one and pop into r4~r5 to see the result

	mov	r4,	#0
	mov	r5,	#0
	mov	r6,	#0
	mov	r7,	#0  //clear the value in r4~r7

	push	{r0,r1,r2,r3}
	pop	{r7,r6,r5,r4}
	
	mov	r4,	#0
	mov	r5,	#0
	mov	r6,	#0
	mov	r7,	#0

	push	{r3,r2,r1,r0}
	pop	{r7,r6,r5,r4}

	nop
	b	.
