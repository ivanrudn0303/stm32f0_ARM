
temp.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         00001320  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000008  080013e0  080013e0  000113e0  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  080013e8  080013e8  000113e8  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  080013f0  080013f0  000113f0  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000458  20000000  080013f4  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss          00000030  20000458  0800184c  00020458  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000488  0800184c  00020488  2**0  ALLOC
  8 .ARM.attributes 00000028  00000000  00000000  00020458  2**0  CONTENTS, READONLY
  9 .comment      00000070  00000000  00000000  00020480  2**0  CONTENTS, READONLY
 10 .debug_info   00002ef5  00000000  00000000  000204f0  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_abbrev 00000c08  00000000  00000000  000233e5  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges 00000268  00000000  00000000  00023ff0  2**3  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges 000001b0  00000000  00000000  00024258  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line   00000d82  00000000  00000000  00024408  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str    00000fa3  00000000  00000000  0002518a  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_frame  0000059c  00000000  00000000  00026130  2**2  CONTENTS, READONLY, DEBUGGING
 17 .debug_loc    00000485  00000000  00000000  000266cc  2**0  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <deregister_tm_clones>:
 80000c0:	b508      	push	{r3, lr}
 80000c2:	4b05      	ldr	r3, [pc, #20]	; (80000d8 <deregister_tm_clones+0x18>)
 80000c4:	4805      	ldr	r0, [pc, #20]	; (80000dc <deregister_tm_clones+0x1c>)
 80000c6:	3303      	adds	r3, #3
 80000c8:	1a1b      	subs	r3, r3, r0
 80000ca:	2b06      	cmp	r3, #6
 80000cc:	d903      	bls.n	80000d6 <deregister_tm_clones+0x16>
 80000ce:	4b04      	ldr	r3, [pc, #16]	; (80000e0 <deregister_tm_clones+0x20>)
 80000d0:	2b00      	cmp	r3, #0
 80000d2:	d000      	beq.n	80000d6 <deregister_tm_clones+0x16>
 80000d4:	4798      	blx	r3
 80000d6:	bd08      	pop	{r3, pc}
 80000d8:	20000458 	.word	0x20000458
 80000dc:	20000458 	.word	0x20000458
 80000e0:	00000000 	.word	0x00000000

080000e4 <register_tm_clones>:
 80000e4:	4806      	ldr	r0, [pc, #24]	; (8000100 <register_tm_clones+0x1c>)
 80000e6:	4907      	ldr	r1, [pc, #28]	; (8000104 <register_tm_clones+0x20>)
 80000e8:	b508      	push	{r3, lr}
 80000ea:	1a09      	subs	r1, r1, r0
 80000ec:	1089      	asrs	r1, r1, #2
 80000ee:	0fcb      	lsrs	r3, r1, #31
 80000f0:	1859      	adds	r1, r3, r1
 80000f2:	1049      	asrs	r1, r1, #1
 80000f4:	d003      	beq.n	80000fe <register_tm_clones+0x1a>
 80000f6:	4b04      	ldr	r3, [pc, #16]	; (8000108 <register_tm_clones+0x24>)
 80000f8:	2b00      	cmp	r3, #0
 80000fa:	d000      	beq.n	80000fe <register_tm_clones+0x1a>
 80000fc:	4798      	blx	r3
 80000fe:	bd08      	pop	{r3, pc}
 8000100:	20000458 	.word	0x20000458
 8000104:	20000458 	.word	0x20000458
 8000108:	00000000 	.word	0x00000000

0800010c <__do_global_dtors_aux>:
 800010c:	b510      	push	{r4, lr}
 800010e:	4c07      	ldr	r4, [pc, #28]	; (800012c <__do_global_dtors_aux+0x20>)
 8000110:	7823      	ldrb	r3, [r4, #0]
 8000112:	2b00      	cmp	r3, #0
 8000114:	d109      	bne.n	800012a <__do_global_dtors_aux+0x1e>
 8000116:	f7ff ffd3 	bl	80000c0 <deregister_tm_clones>
 800011a:	4b05      	ldr	r3, [pc, #20]	; (8000130 <__do_global_dtors_aux+0x24>)
 800011c:	2b00      	cmp	r3, #0
 800011e:	d002      	beq.n	8000126 <__do_global_dtors_aux+0x1a>
 8000120:	4804      	ldr	r0, [pc, #16]	; (8000134 <__do_global_dtors_aux+0x28>)
 8000122:	e000      	b.n	8000126 <__do_global_dtors_aux+0x1a>
 8000124:	bf00      	nop
 8000126:	2301      	movs	r3, #1
 8000128:	7023      	strb	r3, [r4, #0]
 800012a:	bd10      	pop	{r4, pc}
 800012c:	20000458 	.word	0x20000458
 8000130:	00000000 	.word	0x00000000
 8000134:	080013c8 	.word	0x080013c8

08000138 <frame_dummy>:
 8000138:	b508      	push	{r3, lr}
 800013a:	4b09      	ldr	r3, [pc, #36]	; (8000160 <frame_dummy+0x28>)
 800013c:	2b00      	cmp	r3, #0
 800013e:	d003      	beq.n	8000148 <frame_dummy+0x10>
 8000140:	4808      	ldr	r0, [pc, #32]	; (8000164 <frame_dummy+0x2c>)
 8000142:	4909      	ldr	r1, [pc, #36]	; (8000168 <frame_dummy+0x30>)
 8000144:	e000      	b.n	8000148 <frame_dummy+0x10>
 8000146:	bf00      	nop
 8000148:	4808      	ldr	r0, [pc, #32]	; (800016c <frame_dummy+0x34>)
 800014a:	6803      	ldr	r3, [r0, #0]
 800014c:	2b00      	cmp	r3, #0
 800014e:	d102      	bne.n	8000156 <frame_dummy+0x1e>
 8000150:	f7ff ffc8 	bl	80000e4 <register_tm_clones>
 8000154:	bd08      	pop	{r3, pc}
 8000156:	4b06      	ldr	r3, [pc, #24]	; (8000170 <frame_dummy+0x38>)
 8000158:	2b00      	cmp	r3, #0
 800015a:	d0f9      	beq.n	8000150 <frame_dummy+0x18>
 800015c:	4798      	blx	r3
 800015e:	e7f7      	b.n	8000150 <frame_dummy+0x18>
 8000160:	00000000 	.word	0x00000000
 8000164:	080013c8 	.word	0x080013c8
 8000168:	2000045c 	.word	0x2000045c
 800016c:	20000458 	.word	0x20000458
 8000170:	00000000 	.word	0x00000000

08000174 <__aeabi_uidiv>:
 8000174:	2200      	movs	r2, #0
 8000176:	0843      	lsrs	r3, r0, #1
 8000178:	428b      	cmp	r3, r1
 800017a:	d374      	bcc.n	8000266 <__aeabi_uidiv+0xf2>
 800017c:	0903      	lsrs	r3, r0, #4
 800017e:	428b      	cmp	r3, r1
 8000180:	d35f      	bcc.n	8000242 <__aeabi_uidiv+0xce>
 8000182:	0a03      	lsrs	r3, r0, #8
 8000184:	428b      	cmp	r3, r1
 8000186:	d344      	bcc.n	8000212 <__aeabi_uidiv+0x9e>
 8000188:	0b03      	lsrs	r3, r0, #12
 800018a:	428b      	cmp	r3, r1
 800018c:	d328      	bcc.n	80001e0 <__aeabi_uidiv+0x6c>
 800018e:	0c03      	lsrs	r3, r0, #16
 8000190:	428b      	cmp	r3, r1
 8000192:	d30d      	bcc.n	80001b0 <__aeabi_uidiv+0x3c>
 8000194:	22ff      	movs	r2, #255	; 0xff
 8000196:	0209      	lsls	r1, r1, #8
 8000198:	ba12      	rev	r2, r2
 800019a:	0c03      	lsrs	r3, r0, #16
 800019c:	428b      	cmp	r3, r1
 800019e:	d302      	bcc.n	80001a6 <__aeabi_uidiv+0x32>
 80001a0:	1212      	asrs	r2, r2, #8
 80001a2:	0209      	lsls	r1, r1, #8
 80001a4:	d065      	beq.n	8000272 <__aeabi_uidiv+0xfe>
 80001a6:	0b03      	lsrs	r3, r0, #12
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d319      	bcc.n	80001e0 <__aeabi_uidiv+0x6c>
 80001ac:	e000      	b.n	80001b0 <__aeabi_uidiv+0x3c>
 80001ae:	0a09      	lsrs	r1, r1, #8
 80001b0:	0bc3      	lsrs	r3, r0, #15
 80001b2:	428b      	cmp	r3, r1
 80001b4:	d301      	bcc.n	80001ba <__aeabi_uidiv+0x46>
 80001b6:	03cb      	lsls	r3, r1, #15
 80001b8:	1ac0      	subs	r0, r0, r3
 80001ba:	4152      	adcs	r2, r2
 80001bc:	0b83      	lsrs	r3, r0, #14
 80001be:	428b      	cmp	r3, r1
 80001c0:	d301      	bcc.n	80001c6 <__aeabi_uidiv+0x52>
 80001c2:	038b      	lsls	r3, r1, #14
 80001c4:	1ac0      	subs	r0, r0, r3
 80001c6:	4152      	adcs	r2, r2
 80001c8:	0b43      	lsrs	r3, r0, #13
 80001ca:	428b      	cmp	r3, r1
 80001cc:	d301      	bcc.n	80001d2 <__aeabi_uidiv+0x5e>
 80001ce:	034b      	lsls	r3, r1, #13
 80001d0:	1ac0      	subs	r0, r0, r3
 80001d2:	4152      	adcs	r2, r2
 80001d4:	0b03      	lsrs	r3, r0, #12
 80001d6:	428b      	cmp	r3, r1
 80001d8:	d301      	bcc.n	80001de <__aeabi_uidiv+0x6a>
 80001da:	030b      	lsls	r3, r1, #12
 80001dc:	1ac0      	subs	r0, r0, r3
 80001de:	4152      	adcs	r2, r2
 80001e0:	0ac3      	lsrs	r3, r0, #11
 80001e2:	428b      	cmp	r3, r1
 80001e4:	d301      	bcc.n	80001ea <__aeabi_uidiv+0x76>
 80001e6:	02cb      	lsls	r3, r1, #11
 80001e8:	1ac0      	subs	r0, r0, r3
 80001ea:	4152      	adcs	r2, r2
 80001ec:	0a83      	lsrs	r3, r0, #10
 80001ee:	428b      	cmp	r3, r1
 80001f0:	d301      	bcc.n	80001f6 <__aeabi_uidiv+0x82>
 80001f2:	028b      	lsls	r3, r1, #10
 80001f4:	1ac0      	subs	r0, r0, r3
 80001f6:	4152      	adcs	r2, r2
 80001f8:	0a43      	lsrs	r3, r0, #9
 80001fa:	428b      	cmp	r3, r1
 80001fc:	d301      	bcc.n	8000202 <__aeabi_uidiv+0x8e>
 80001fe:	024b      	lsls	r3, r1, #9
 8000200:	1ac0      	subs	r0, r0, r3
 8000202:	4152      	adcs	r2, r2
 8000204:	0a03      	lsrs	r3, r0, #8
 8000206:	428b      	cmp	r3, r1
 8000208:	d301      	bcc.n	800020e <__aeabi_uidiv+0x9a>
 800020a:	020b      	lsls	r3, r1, #8
 800020c:	1ac0      	subs	r0, r0, r3
 800020e:	4152      	adcs	r2, r2
 8000210:	d2cd      	bcs.n	80001ae <__aeabi_uidiv+0x3a>
 8000212:	09c3      	lsrs	r3, r0, #7
 8000214:	428b      	cmp	r3, r1
 8000216:	d301      	bcc.n	800021c <__aeabi_uidiv+0xa8>
 8000218:	01cb      	lsls	r3, r1, #7
 800021a:	1ac0      	subs	r0, r0, r3
 800021c:	4152      	adcs	r2, r2
 800021e:	0983      	lsrs	r3, r0, #6
 8000220:	428b      	cmp	r3, r1
 8000222:	d301      	bcc.n	8000228 <__aeabi_uidiv+0xb4>
 8000224:	018b      	lsls	r3, r1, #6
 8000226:	1ac0      	subs	r0, r0, r3
 8000228:	4152      	adcs	r2, r2
 800022a:	0943      	lsrs	r3, r0, #5
 800022c:	428b      	cmp	r3, r1
 800022e:	d301      	bcc.n	8000234 <__aeabi_uidiv+0xc0>
 8000230:	014b      	lsls	r3, r1, #5
 8000232:	1ac0      	subs	r0, r0, r3
 8000234:	4152      	adcs	r2, r2
 8000236:	0903      	lsrs	r3, r0, #4
 8000238:	428b      	cmp	r3, r1
 800023a:	d301      	bcc.n	8000240 <__aeabi_uidiv+0xcc>
 800023c:	010b      	lsls	r3, r1, #4
 800023e:	1ac0      	subs	r0, r0, r3
 8000240:	4152      	adcs	r2, r2
 8000242:	08c3      	lsrs	r3, r0, #3
 8000244:	428b      	cmp	r3, r1
 8000246:	d301      	bcc.n	800024c <__aeabi_uidiv+0xd8>
 8000248:	00cb      	lsls	r3, r1, #3
 800024a:	1ac0      	subs	r0, r0, r3
 800024c:	4152      	adcs	r2, r2
 800024e:	0883      	lsrs	r3, r0, #2
 8000250:	428b      	cmp	r3, r1
 8000252:	d301      	bcc.n	8000258 <__aeabi_uidiv+0xe4>
 8000254:	008b      	lsls	r3, r1, #2
 8000256:	1ac0      	subs	r0, r0, r3
 8000258:	4152      	adcs	r2, r2
 800025a:	0843      	lsrs	r3, r0, #1
 800025c:	428b      	cmp	r3, r1
 800025e:	d301      	bcc.n	8000264 <__aeabi_uidiv+0xf0>
 8000260:	004b      	lsls	r3, r1, #1
 8000262:	1ac0      	subs	r0, r0, r3
 8000264:	4152      	adcs	r2, r2
 8000266:	1a41      	subs	r1, r0, r1
 8000268:	d200      	bcs.n	800026c <__aeabi_uidiv+0xf8>
 800026a:	4601      	mov	r1, r0
 800026c:	4152      	adcs	r2, r2
 800026e:	4610      	mov	r0, r2
 8000270:	4770      	bx	lr
 8000272:	e7ff      	b.n	8000274 <__aeabi_uidiv+0x100>
 8000274:	b501      	push	{r0, lr}
 8000276:	2000      	movs	r0, #0
 8000278:	f000 f8fc 	bl	8000474 <__aeabi_idiv0>
 800027c:	bd02      	pop	{r1, pc}
 800027e:	46c0      	nop			; (mov r8, r8)

08000280 <__aeabi_uidivmod>:
 8000280:	2900      	cmp	r1, #0
 8000282:	d0f7      	beq.n	8000274 <__aeabi_uidiv+0x100>
 8000284:	b503      	push	{r0, r1, lr}
 8000286:	f7ff ff75 	bl	8000174 <__aeabi_uidiv>
 800028a:	bc0e      	pop	{r1, r2, r3}
 800028c:	4342      	muls	r2, r0
 800028e:	1a89      	subs	r1, r1, r2
 8000290:	4718      	bx	r3
 8000292:	46c0      	nop			; (mov r8, r8)

08000294 <__aeabi_idiv>:
 8000294:	4603      	mov	r3, r0
 8000296:	430b      	orrs	r3, r1
 8000298:	d47f      	bmi.n	800039a <__aeabi_idiv+0x106>
 800029a:	2200      	movs	r2, #0
 800029c:	0843      	lsrs	r3, r0, #1
 800029e:	428b      	cmp	r3, r1
 80002a0:	d374      	bcc.n	800038c <__aeabi_idiv+0xf8>
 80002a2:	0903      	lsrs	r3, r0, #4
 80002a4:	428b      	cmp	r3, r1
 80002a6:	d35f      	bcc.n	8000368 <__aeabi_idiv+0xd4>
 80002a8:	0a03      	lsrs	r3, r0, #8
 80002aa:	428b      	cmp	r3, r1
 80002ac:	d344      	bcc.n	8000338 <__aeabi_idiv+0xa4>
 80002ae:	0b03      	lsrs	r3, r0, #12
 80002b0:	428b      	cmp	r3, r1
 80002b2:	d328      	bcc.n	8000306 <__aeabi_idiv+0x72>
 80002b4:	0c03      	lsrs	r3, r0, #16
 80002b6:	428b      	cmp	r3, r1
 80002b8:	d30d      	bcc.n	80002d6 <__aeabi_idiv+0x42>
 80002ba:	22ff      	movs	r2, #255	; 0xff
 80002bc:	0209      	lsls	r1, r1, #8
 80002be:	ba12      	rev	r2, r2
 80002c0:	0c03      	lsrs	r3, r0, #16
 80002c2:	428b      	cmp	r3, r1
 80002c4:	d302      	bcc.n	80002cc <__aeabi_idiv+0x38>
 80002c6:	1212      	asrs	r2, r2, #8
 80002c8:	0209      	lsls	r1, r1, #8
 80002ca:	d065      	beq.n	8000398 <__aeabi_idiv+0x104>
 80002cc:	0b03      	lsrs	r3, r0, #12
 80002ce:	428b      	cmp	r3, r1
 80002d0:	d319      	bcc.n	8000306 <__aeabi_idiv+0x72>
 80002d2:	e000      	b.n	80002d6 <__aeabi_idiv+0x42>
 80002d4:	0a09      	lsrs	r1, r1, #8
 80002d6:	0bc3      	lsrs	r3, r0, #15
 80002d8:	428b      	cmp	r3, r1
 80002da:	d301      	bcc.n	80002e0 <__aeabi_idiv+0x4c>
 80002dc:	03cb      	lsls	r3, r1, #15
 80002de:	1ac0      	subs	r0, r0, r3
 80002e0:	4152      	adcs	r2, r2
 80002e2:	0b83      	lsrs	r3, r0, #14
 80002e4:	428b      	cmp	r3, r1
 80002e6:	d301      	bcc.n	80002ec <__aeabi_idiv+0x58>
 80002e8:	038b      	lsls	r3, r1, #14
 80002ea:	1ac0      	subs	r0, r0, r3
 80002ec:	4152      	adcs	r2, r2
 80002ee:	0b43      	lsrs	r3, r0, #13
 80002f0:	428b      	cmp	r3, r1
 80002f2:	d301      	bcc.n	80002f8 <__aeabi_idiv+0x64>
 80002f4:	034b      	lsls	r3, r1, #13
 80002f6:	1ac0      	subs	r0, r0, r3
 80002f8:	4152      	adcs	r2, r2
 80002fa:	0b03      	lsrs	r3, r0, #12
 80002fc:	428b      	cmp	r3, r1
 80002fe:	d301      	bcc.n	8000304 <__aeabi_idiv+0x70>
 8000300:	030b      	lsls	r3, r1, #12
 8000302:	1ac0      	subs	r0, r0, r3
 8000304:	4152      	adcs	r2, r2
 8000306:	0ac3      	lsrs	r3, r0, #11
 8000308:	428b      	cmp	r3, r1
 800030a:	d301      	bcc.n	8000310 <__aeabi_idiv+0x7c>
 800030c:	02cb      	lsls	r3, r1, #11
 800030e:	1ac0      	subs	r0, r0, r3
 8000310:	4152      	adcs	r2, r2
 8000312:	0a83      	lsrs	r3, r0, #10
 8000314:	428b      	cmp	r3, r1
 8000316:	d301      	bcc.n	800031c <__aeabi_idiv+0x88>
 8000318:	028b      	lsls	r3, r1, #10
 800031a:	1ac0      	subs	r0, r0, r3
 800031c:	4152      	adcs	r2, r2
 800031e:	0a43      	lsrs	r3, r0, #9
 8000320:	428b      	cmp	r3, r1
 8000322:	d301      	bcc.n	8000328 <__aeabi_idiv+0x94>
 8000324:	024b      	lsls	r3, r1, #9
 8000326:	1ac0      	subs	r0, r0, r3
 8000328:	4152      	adcs	r2, r2
 800032a:	0a03      	lsrs	r3, r0, #8
 800032c:	428b      	cmp	r3, r1
 800032e:	d301      	bcc.n	8000334 <__aeabi_idiv+0xa0>
 8000330:	020b      	lsls	r3, r1, #8
 8000332:	1ac0      	subs	r0, r0, r3
 8000334:	4152      	adcs	r2, r2
 8000336:	d2cd      	bcs.n	80002d4 <__aeabi_idiv+0x40>
 8000338:	09c3      	lsrs	r3, r0, #7
 800033a:	428b      	cmp	r3, r1
 800033c:	d301      	bcc.n	8000342 <__aeabi_idiv+0xae>
 800033e:	01cb      	lsls	r3, r1, #7
 8000340:	1ac0      	subs	r0, r0, r3
 8000342:	4152      	adcs	r2, r2
 8000344:	0983      	lsrs	r3, r0, #6
 8000346:	428b      	cmp	r3, r1
 8000348:	d301      	bcc.n	800034e <__aeabi_idiv+0xba>
 800034a:	018b      	lsls	r3, r1, #6
 800034c:	1ac0      	subs	r0, r0, r3
 800034e:	4152      	adcs	r2, r2
 8000350:	0943      	lsrs	r3, r0, #5
 8000352:	428b      	cmp	r3, r1
 8000354:	d301      	bcc.n	800035a <__aeabi_idiv+0xc6>
 8000356:	014b      	lsls	r3, r1, #5
 8000358:	1ac0      	subs	r0, r0, r3
 800035a:	4152      	adcs	r2, r2
 800035c:	0903      	lsrs	r3, r0, #4
 800035e:	428b      	cmp	r3, r1
 8000360:	d301      	bcc.n	8000366 <__aeabi_idiv+0xd2>
 8000362:	010b      	lsls	r3, r1, #4
 8000364:	1ac0      	subs	r0, r0, r3
 8000366:	4152      	adcs	r2, r2
 8000368:	08c3      	lsrs	r3, r0, #3
 800036a:	428b      	cmp	r3, r1
 800036c:	d301      	bcc.n	8000372 <__aeabi_idiv+0xde>
 800036e:	00cb      	lsls	r3, r1, #3
 8000370:	1ac0      	subs	r0, r0, r3
 8000372:	4152      	adcs	r2, r2
 8000374:	0883      	lsrs	r3, r0, #2
 8000376:	428b      	cmp	r3, r1
 8000378:	d301      	bcc.n	800037e <__aeabi_idiv+0xea>
 800037a:	008b      	lsls	r3, r1, #2
 800037c:	1ac0      	subs	r0, r0, r3
 800037e:	4152      	adcs	r2, r2
 8000380:	0843      	lsrs	r3, r0, #1
 8000382:	428b      	cmp	r3, r1
 8000384:	d301      	bcc.n	800038a <__aeabi_idiv+0xf6>
 8000386:	004b      	lsls	r3, r1, #1
 8000388:	1ac0      	subs	r0, r0, r3
 800038a:	4152      	adcs	r2, r2
 800038c:	1a41      	subs	r1, r0, r1
 800038e:	d200      	bcs.n	8000392 <__aeabi_idiv+0xfe>
 8000390:	4601      	mov	r1, r0
 8000392:	4152      	adcs	r2, r2
 8000394:	4610      	mov	r0, r2
 8000396:	4770      	bx	lr
 8000398:	e05d      	b.n	8000456 <__aeabi_idiv+0x1c2>
 800039a:	0fca      	lsrs	r2, r1, #31
 800039c:	d000      	beq.n	80003a0 <__aeabi_idiv+0x10c>
 800039e:	4249      	negs	r1, r1
 80003a0:	1003      	asrs	r3, r0, #32
 80003a2:	d300      	bcc.n	80003a6 <__aeabi_idiv+0x112>
 80003a4:	4240      	negs	r0, r0
 80003a6:	4053      	eors	r3, r2
 80003a8:	2200      	movs	r2, #0
 80003aa:	469c      	mov	ip, r3
 80003ac:	0903      	lsrs	r3, r0, #4
 80003ae:	428b      	cmp	r3, r1
 80003b0:	d32d      	bcc.n	800040e <__aeabi_idiv+0x17a>
 80003b2:	0a03      	lsrs	r3, r0, #8
 80003b4:	428b      	cmp	r3, r1
 80003b6:	d312      	bcc.n	80003de <__aeabi_idiv+0x14a>
 80003b8:	22fc      	movs	r2, #252	; 0xfc
 80003ba:	0189      	lsls	r1, r1, #6
 80003bc:	ba12      	rev	r2, r2
 80003be:	0a03      	lsrs	r3, r0, #8
 80003c0:	428b      	cmp	r3, r1
 80003c2:	d30c      	bcc.n	80003de <__aeabi_idiv+0x14a>
 80003c4:	0189      	lsls	r1, r1, #6
 80003c6:	1192      	asrs	r2, r2, #6
 80003c8:	428b      	cmp	r3, r1
 80003ca:	d308      	bcc.n	80003de <__aeabi_idiv+0x14a>
 80003cc:	0189      	lsls	r1, r1, #6
 80003ce:	1192      	asrs	r2, r2, #6
 80003d0:	428b      	cmp	r3, r1
 80003d2:	d304      	bcc.n	80003de <__aeabi_idiv+0x14a>
 80003d4:	0189      	lsls	r1, r1, #6
 80003d6:	d03a      	beq.n	800044e <__aeabi_idiv+0x1ba>
 80003d8:	1192      	asrs	r2, r2, #6
 80003da:	e000      	b.n	80003de <__aeabi_idiv+0x14a>
 80003dc:	0989      	lsrs	r1, r1, #6
 80003de:	09c3      	lsrs	r3, r0, #7
 80003e0:	428b      	cmp	r3, r1
 80003e2:	d301      	bcc.n	80003e8 <__aeabi_idiv+0x154>
 80003e4:	01cb      	lsls	r3, r1, #7
 80003e6:	1ac0      	subs	r0, r0, r3
 80003e8:	4152      	adcs	r2, r2
 80003ea:	0983      	lsrs	r3, r0, #6
 80003ec:	428b      	cmp	r3, r1
 80003ee:	d301      	bcc.n	80003f4 <__aeabi_idiv+0x160>
 80003f0:	018b      	lsls	r3, r1, #6
 80003f2:	1ac0      	subs	r0, r0, r3
 80003f4:	4152      	adcs	r2, r2
 80003f6:	0943      	lsrs	r3, r0, #5
 80003f8:	428b      	cmp	r3, r1
 80003fa:	d301      	bcc.n	8000400 <__aeabi_idiv+0x16c>
 80003fc:	014b      	lsls	r3, r1, #5
 80003fe:	1ac0      	subs	r0, r0, r3
 8000400:	4152      	adcs	r2, r2
 8000402:	0903      	lsrs	r3, r0, #4
 8000404:	428b      	cmp	r3, r1
 8000406:	d301      	bcc.n	800040c <__aeabi_idiv+0x178>
 8000408:	010b      	lsls	r3, r1, #4
 800040a:	1ac0      	subs	r0, r0, r3
 800040c:	4152      	adcs	r2, r2
 800040e:	08c3      	lsrs	r3, r0, #3
 8000410:	428b      	cmp	r3, r1
 8000412:	d301      	bcc.n	8000418 <__aeabi_idiv+0x184>
 8000414:	00cb      	lsls	r3, r1, #3
 8000416:	1ac0      	subs	r0, r0, r3
 8000418:	4152      	adcs	r2, r2
 800041a:	0883      	lsrs	r3, r0, #2
 800041c:	428b      	cmp	r3, r1
 800041e:	d301      	bcc.n	8000424 <__aeabi_idiv+0x190>
 8000420:	008b      	lsls	r3, r1, #2
 8000422:	1ac0      	subs	r0, r0, r3
 8000424:	4152      	adcs	r2, r2
 8000426:	d2d9      	bcs.n	80003dc <__aeabi_idiv+0x148>
 8000428:	0843      	lsrs	r3, r0, #1
 800042a:	428b      	cmp	r3, r1
 800042c:	d301      	bcc.n	8000432 <__aeabi_idiv+0x19e>
 800042e:	004b      	lsls	r3, r1, #1
 8000430:	1ac0      	subs	r0, r0, r3
 8000432:	4152      	adcs	r2, r2
 8000434:	1a41      	subs	r1, r0, r1
 8000436:	d200      	bcs.n	800043a <__aeabi_idiv+0x1a6>
 8000438:	4601      	mov	r1, r0
 800043a:	4663      	mov	r3, ip
 800043c:	4152      	adcs	r2, r2
 800043e:	105b      	asrs	r3, r3, #1
 8000440:	4610      	mov	r0, r2
 8000442:	d301      	bcc.n	8000448 <__aeabi_idiv+0x1b4>
 8000444:	4240      	negs	r0, r0
 8000446:	2b00      	cmp	r3, #0
 8000448:	d500      	bpl.n	800044c <__aeabi_idiv+0x1b8>
 800044a:	4249      	negs	r1, r1
 800044c:	4770      	bx	lr
 800044e:	4663      	mov	r3, ip
 8000450:	105b      	asrs	r3, r3, #1
 8000452:	d300      	bcc.n	8000456 <__aeabi_idiv+0x1c2>
 8000454:	4240      	negs	r0, r0
 8000456:	b501      	push	{r0, lr}
 8000458:	2000      	movs	r0, #0
 800045a:	f000 f80b 	bl	8000474 <__aeabi_idiv0>
 800045e:	bd02      	pop	{r1, pc}

08000460 <__aeabi_idivmod>:
 8000460:	2900      	cmp	r1, #0
 8000462:	d0f8      	beq.n	8000456 <__aeabi_idiv+0x1c2>
 8000464:	b503      	push	{r0, r1, lr}
 8000466:	f7ff ff15 	bl	8000294 <__aeabi_idiv>
 800046a:	bc0e      	pop	{r1, r2, r3}
 800046c:	4342      	muls	r2, r0
 800046e:	1a89      	subs	r1, r1, r2
 8000470:	4718      	bx	r3
 8000472:	46c0      	nop			; (mov r8, r8)

08000474 <__aeabi_idiv0>:
 8000474:	4770      	bx	lr
 8000476:	46c0      	nop			; (mov r8, r8)

08000478 <Reset_Handler>:
 8000478:	480d      	ldr	r0, [pc, #52]	; (80004b0 <LoopForever+0x2>)
 800047a:	4685      	mov	sp, r0
 800047c:	480d      	ldr	r0, [pc, #52]	; (80004b4 <LoopForever+0x6>)
 800047e:	490e      	ldr	r1, [pc, #56]	; (80004b8 <LoopForever+0xa>)
 8000480:	4a0e      	ldr	r2, [pc, #56]	; (80004bc <LoopForever+0xe>)
 8000482:	2300      	movs	r3, #0
 8000484:	e002      	b.n	800048c <LoopCopyDataInit>

08000486 <CopyDataInit>:
 8000486:	58d4      	ldr	r4, [r2, r3]
 8000488:	50c4      	str	r4, [r0, r3]
 800048a:	3304      	adds	r3, #4

0800048c <LoopCopyDataInit>:
 800048c:	18c4      	adds	r4, r0, r3
 800048e:	428c      	cmp	r4, r1
 8000490:	d3f9      	bcc.n	8000486 <CopyDataInit>
 8000492:	4a0b      	ldr	r2, [pc, #44]	; (80004c0 <LoopForever+0x12>)
 8000494:	4c0b      	ldr	r4, [pc, #44]	; (80004c4 <LoopForever+0x16>)
 8000496:	2300      	movs	r3, #0
 8000498:	e001      	b.n	800049e <LoopFillZerobss>

0800049a <FillZerobss>:
 800049a:	6013      	str	r3, [r2, #0]
 800049c:	3204      	adds	r2, #4

0800049e <LoopFillZerobss>:
 800049e:	42a2      	cmp	r2, r4
 80004a0:	d3fb      	bcc.n	800049a <FillZerobss>
 80004a2:	f000 fe91 	bl	80011c8 <SystemInit>
 80004a6:	f000 fef5 	bl	8001294 <__libc_init_array>
 80004aa:	f000 fa1b 	bl	80008e4 <main>

080004ae <LoopForever>:
 80004ae:	e7fe      	b.n	80004ae <LoopForever>
 80004b0:	20002000 	.word	0x20002000
 80004b4:	20000000 	.word	0x20000000
 80004b8:	20000458 	.word	0x20000458
 80004bc:	080013f4 	.word	0x080013f4
 80004c0:	20000458 	.word	0x20000458
 80004c4:	20000488 	.word	0x20000488

080004c8 <ADC1_COMP_IRQHandler>:
 80004c8:	e7fe      	b.n	80004c8 <ADC1_COMP_IRQHandler>
	...

080004cc <NVIC_EnableIRQ>:
 80004cc:	b580      	push	{r7, lr}
 80004ce:	b082      	sub	sp, #8
 80004d0:	af00      	add	r7, sp, #0
 80004d2:	1c02      	adds	r2, r0, #0
 80004d4:	1dfb      	adds	r3, r7, #7
 80004d6:	701a      	strb	r2, [r3, #0]
 80004d8:	4b06      	ldr	r3, [pc, #24]	; (80004f4 <NVIC_EnableIRQ+0x28>)
 80004da:	1dfa      	adds	r2, r7, #7
 80004dc:	7812      	ldrb	r2, [r2, #0]
 80004de:	1c11      	adds	r1, r2, #0
 80004e0:	221f      	movs	r2, #31
 80004e2:	400a      	ands	r2, r1
 80004e4:	2101      	movs	r1, #1
 80004e6:	4091      	lsls	r1, r2
 80004e8:	1c0a      	adds	r2, r1, #0
 80004ea:	601a      	str	r2, [r3, #0]
 80004ec:	46bd      	mov	sp, r7
 80004ee:	b002      	add	sp, #8
 80004f0:	bd80      	pop	{r7, pc}
 80004f2:	46c0      	nop			; (mov r8, r8)
 80004f4:	e000e100 	.word	0xe000e100

080004f8 <NVIC_SetPriority>:
 80004f8:	b5b0      	push	{r4, r5, r7, lr}
 80004fa:	b082      	sub	sp, #8
 80004fc:	af00      	add	r7, sp, #0
 80004fe:	1c02      	adds	r2, r0, #0
 8000500:	6039      	str	r1, [r7, #0]
 8000502:	1dfb      	adds	r3, r7, #7
 8000504:	701a      	strb	r2, [r3, #0]
 8000506:	1dfb      	adds	r3, r7, #7
 8000508:	781b      	ldrb	r3, [r3, #0]
 800050a:	2b7f      	cmp	r3, #127	; 0x7f
 800050c:	d92f      	bls.n	800056e <NVIC_SetPriority+0x76>
 800050e:	4c2d      	ldr	r4, [pc, #180]	; (80005c4 <NVIC_SetPriority+0xcc>)
 8000510:	1dfb      	adds	r3, r7, #7
 8000512:	781b      	ldrb	r3, [r3, #0]
 8000514:	1c1a      	adds	r2, r3, #0
 8000516:	230f      	movs	r3, #15
 8000518:	4013      	ands	r3, r2
 800051a:	3b08      	subs	r3, #8
 800051c:	0899      	lsrs	r1, r3, #2
 800051e:	4a29      	ldr	r2, [pc, #164]	; (80005c4 <NVIC_SetPriority+0xcc>)
 8000520:	1dfb      	adds	r3, r7, #7
 8000522:	781b      	ldrb	r3, [r3, #0]
 8000524:	1c18      	adds	r0, r3, #0
 8000526:	230f      	movs	r3, #15
 8000528:	4003      	ands	r3, r0
 800052a:	3b08      	subs	r3, #8
 800052c:	089b      	lsrs	r3, r3, #2
 800052e:	3306      	adds	r3, #6
 8000530:	009b      	lsls	r3, r3, #2
 8000532:	18d3      	adds	r3, r2, r3
 8000534:	685b      	ldr	r3, [r3, #4]
 8000536:	1dfa      	adds	r2, r7, #7
 8000538:	7812      	ldrb	r2, [r2, #0]
 800053a:	1c10      	adds	r0, r2, #0
 800053c:	2203      	movs	r2, #3
 800053e:	4002      	ands	r2, r0
 8000540:	00d2      	lsls	r2, r2, #3
 8000542:	1c10      	adds	r0, r2, #0
 8000544:	22ff      	movs	r2, #255	; 0xff
 8000546:	4082      	lsls	r2, r0
 8000548:	43d2      	mvns	r2, r2
 800054a:	401a      	ands	r2, r3
 800054c:	683b      	ldr	r3, [r7, #0]
 800054e:	019b      	lsls	r3, r3, #6
 8000550:	20ff      	movs	r0, #255	; 0xff
 8000552:	4003      	ands	r3, r0
 8000554:	1df8      	adds	r0, r7, #7
 8000556:	7800      	ldrb	r0, [r0, #0]
 8000558:	1c05      	adds	r5, r0, #0
 800055a:	2003      	movs	r0, #3
 800055c:	4028      	ands	r0, r5
 800055e:	00c0      	lsls	r0, r0, #3
 8000560:	4083      	lsls	r3, r0
 8000562:	431a      	orrs	r2, r3
 8000564:	1d8b      	adds	r3, r1, #6
 8000566:	009b      	lsls	r3, r3, #2
 8000568:	18e3      	adds	r3, r4, r3
 800056a:	605a      	str	r2, [r3, #4]
 800056c:	e026      	b.n	80005bc <NVIC_SetPriority+0xc4>
 800056e:	4c16      	ldr	r4, [pc, #88]	; (80005c8 <NVIC_SetPriority+0xd0>)
 8000570:	1dfb      	adds	r3, r7, #7
 8000572:	781b      	ldrb	r3, [r3, #0]
 8000574:	b25b      	sxtb	r3, r3
 8000576:	089b      	lsrs	r3, r3, #2
 8000578:	4913      	ldr	r1, [pc, #76]	; (80005c8 <NVIC_SetPriority+0xd0>)
 800057a:	1dfa      	adds	r2, r7, #7
 800057c:	7812      	ldrb	r2, [r2, #0]
 800057e:	b252      	sxtb	r2, r2
 8000580:	0892      	lsrs	r2, r2, #2
 8000582:	32c0      	adds	r2, #192	; 0xc0
 8000584:	0092      	lsls	r2, r2, #2
 8000586:	5852      	ldr	r2, [r2, r1]
 8000588:	1df9      	adds	r1, r7, #7
 800058a:	7809      	ldrb	r1, [r1, #0]
 800058c:	1c08      	adds	r0, r1, #0
 800058e:	2103      	movs	r1, #3
 8000590:	4001      	ands	r1, r0
 8000592:	00c9      	lsls	r1, r1, #3
 8000594:	1c08      	adds	r0, r1, #0
 8000596:	21ff      	movs	r1, #255	; 0xff
 8000598:	4081      	lsls	r1, r0
 800059a:	43c9      	mvns	r1, r1
 800059c:	4011      	ands	r1, r2
 800059e:	683a      	ldr	r2, [r7, #0]
 80005a0:	0192      	lsls	r2, r2, #6
 80005a2:	20ff      	movs	r0, #255	; 0xff
 80005a4:	4002      	ands	r2, r0
 80005a6:	1df8      	adds	r0, r7, #7
 80005a8:	7800      	ldrb	r0, [r0, #0]
 80005aa:	1c05      	adds	r5, r0, #0
 80005ac:	2003      	movs	r0, #3
 80005ae:	4028      	ands	r0, r5
 80005b0:	00c0      	lsls	r0, r0, #3
 80005b2:	4082      	lsls	r2, r0
 80005b4:	430a      	orrs	r2, r1
 80005b6:	33c0      	adds	r3, #192	; 0xc0
 80005b8:	009b      	lsls	r3, r3, #2
 80005ba:	511a      	str	r2, [r3, r4]
 80005bc:	46bd      	mov	sp, r7
 80005be:	b002      	add	sp, #8
 80005c0:	bdb0      	pop	{r4, r5, r7, pc}
 80005c2:	46c0      	nop			; (mov r8, r8)
 80005c4:	e000ed00 	.word	0xe000ed00
 80005c8:	e000e100 	.word	0xe000e100

080005cc <SysTick_Config>:
 80005cc:	b580      	push	{r7, lr}
 80005ce:	b082      	sub	sp, #8
 80005d0:	af00      	add	r7, sp, #0
 80005d2:	6078      	str	r0, [r7, #4]
 80005d4:	687b      	ldr	r3, [r7, #4]
 80005d6:	3b01      	subs	r3, #1
 80005d8:	4a0c      	ldr	r2, [pc, #48]	; (800060c <SysTick_Config+0x40>)
 80005da:	4293      	cmp	r3, r2
 80005dc:	d901      	bls.n	80005e2 <SysTick_Config+0x16>
 80005de:	2301      	movs	r3, #1
 80005e0:	e010      	b.n	8000604 <SysTick_Config+0x38>
 80005e2:	4b0b      	ldr	r3, [pc, #44]	; (8000610 <SysTick_Config+0x44>)
 80005e4:	687a      	ldr	r2, [r7, #4]
 80005e6:	3a01      	subs	r2, #1
 80005e8:	605a      	str	r2, [r3, #4]
 80005ea:	2301      	movs	r3, #1
 80005ec:	425b      	negs	r3, r3
 80005ee:	1c18      	adds	r0, r3, #0
 80005f0:	2103      	movs	r1, #3
 80005f2:	f7ff ff81 	bl	80004f8 <NVIC_SetPriority>
 80005f6:	4b06      	ldr	r3, [pc, #24]	; (8000610 <SysTick_Config+0x44>)
 80005f8:	2200      	movs	r2, #0
 80005fa:	609a      	str	r2, [r3, #8]
 80005fc:	4b04      	ldr	r3, [pc, #16]	; (8000610 <SysTick_Config+0x44>)
 80005fe:	2207      	movs	r2, #7
 8000600:	601a      	str	r2, [r3, #0]
 8000602:	2300      	movs	r3, #0
 8000604:	1c18      	adds	r0, r3, #0
 8000606:	46bd      	mov	sp, r7
 8000608:	b002      	add	sp, #8
 800060a:	bd80      	pop	{r7, pc}
 800060c:	00ffffff 	.word	0x00ffffff
 8000610:	e000e010 	.word	0xe000e010

08000614 <LL_AHB1_GRP1_EnableClock>:
 8000614:	b580      	push	{r7, lr}
 8000616:	b084      	sub	sp, #16
 8000618:	af00      	add	r7, sp, #0
 800061a:	6078      	str	r0, [r7, #4]
 800061c:	4b07      	ldr	r3, [pc, #28]	; (800063c <LL_AHB1_GRP1_EnableClock+0x28>)
 800061e:	4a07      	ldr	r2, [pc, #28]	; (800063c <LL_AHB1_GRP1_EnableClock+0x28>)
 8000620:	6951      	ldr	r1, [r2, #20]
 8000622:	687a      	ldr	r2, [r7, #4]
 8000624:	430a      	orrs	r2, r1
 8000626:	615a      	str	r2, [r3, #20]
 8000628:	4b04      	ldr	r3, [pc, #16]	; (800063c <LL_AHB1_GRP1_EnableClock+0x28>)
 800062a:	695b      	ldr	r3, [r3, #20]
 800062c:	687a      	ldr	r2, [r7, #4]
 800062e:	4013      	ands	r3, r2
 8000630:	60fb      	str	r3, [r7, #12]
 8000632:	68fb      	ldr	r3, [r7, #12]
 8000634:	46bd      	mov	sp, r7
 8000636:	b004      	add	sp, #16
 8000638:	bd80      	pop	{r7, pc}
 800063a:	46c0      	nop			; (mov r8, r8)
 800063c:	40021000 	.word	0x40021000

08000640 <LL_APB1_GRP2_EnableClock>:
 8000640:	b580      	push	{r7, lr}
 8000642:	b084      	sub	sp, #16
 8000644:	af00      	add	r7, sp, #0
 8000646:	6078      	str	r0, [r7, #4]
 8000648:	4b07      	ldr	r3, [pc, #28]	; (8000668 <LL_APB1_GRP2_EnableClock+0x28>)
 800064a:	4a07      	ldr	r2, [pc, #28]	; (8000668 <LL_APB1_GRP2_EnableClock+0x28>)
 800064c:	6991      	ldr	r1, [r2, #24]
 800064e:	687a      	ldr	r2, [r7, #4]
 8000650:	430a      	orrs	r2, r1
 8000652:	619a      	str	r2, [r3, #24]
 8000654:	4b04      	ldr	r3, [pc, #16]	; (8000668 <LL_APB1_GRP2_EnableClock+0x28>)
 8000656:	699b      	ldr	r3, [r3, #24]
 8000658:	687a      	ldr	r2, [r7, #4]
 800065a:	4013      	ands	r3, r2
 800065c:	60fb      	str	r3, [r7, #12]
 800065e:	68fb      	ldr	r3, [r7, #12]
 8000660:	46bd      	mov	sp, r7
 8000662:	b004      	add	sp, #16
 8000664:	bd80      	pop	{r7, pc}
 8000666:	46c0      	nop			; (mov r8, r8)
 8000668:	40021000 	.word	0x40021000

0800066c <LL_GPIO_SetPinMode>:
 800066c:	b580      	push	{r7, lr}
 800066e:	b084      	sub	sp, #16
 8000670:	af00      	add	r7, sp, #0
 8000672:	60f8      	str	r0, [r7, #12]
 8000674:	60b9      	str	r1, [r7, #8]
 8000676:	607a      	str	r2, [r7, #4]
 8000678:	68fb      	ldr	r3, [r7, #12]
 800067a:	6819      	ldr	r1, [r3, #0]
 800067c:	68bb      	ldr	r3, [r7, #8]
 800067e:	68ba      	ldr	r2, [r7, #8]
 8000680:	435a      	muls	r2, r3
 8000682:	1c13      	adds	r3, r2, #0
 8000684:	005b      	lsls	r3, r3, #1
 8000686:	189b      	adds	r3, r3, r2
 8000688:	43db      	mvns	r3, r3
 800068a:	400b      	ands	r3, r1
 800068c:	1c1a      	adds	r2, r3, #0
 800068e:	68bb      	ldr	r3, [r7, #8]
 8000690:	68b9      	ldr	r1, [r7, #8]
 8000692:	434b      	muls	r3, r1
 8000694:	6879      	ldr	r1, [r7, #4]
 8000696:	434b      	muls	r3, r1
 8000698:	431a      	orrs	r2, r3
 800069a:	68fb      	ldr	r3, [r7, #12]
 800069c:	601a      	str	r2, [r3, #0]
 800069e:	46bd      	mov	sp, r7
 80006a0:	b004      	add	sp, #16
 80006a2:	bd80      	pop	{r7, pc}

080006a4 <LL_GPIO_SetPinPull>:
 80006a4:	b580      	push	{r7, lr}
 80006a6:	b084      	sub	sp, #16
 80006a8:	af00      	add	r7, sp, #0
 80006aa:	60f8      	str	r0, [r7, #12]
 80006ac:	60b9      	str	r1, [r7, #8]
 80006ae:	607a      	str	r2, [r7, #4]
 80006b0:	68fb      	ldr	r3, [r7, #12]
 80006b2:	68d9      	ldr	r1, [r3, #12]
 80006b4:	68bb      	ldr	r3, [r7, #8]
 80006b6:	68ba      	ldr	r2, [r7, #8]
 80006b8:	435a      	muls	r2, r3
 80006ba:	1c13      	adds	r3, r2, #0
 80006bc:	005b      	lsls	r3, r3, #1
 80006be:	189b      	adds	r3, r3, r2
 80006c0:	43db      	mvns	r3, r3
 80006c2:	400b      	ands	r3, r1
 80006c4:	1c1a      	adds	r2, r3, #0
 80006c6:	68bb      	ldr	r3, [r7, #8]
 80006c8:	68b9      	ldr	r1, [r7, #8]
 80006ca:	434b      	muls	r3, r1
 80006cc:	6879      	ldr	r1, [r7, #4]
 80006ce:	434b      	muls	r3, r1
 80006d0:	431a      	orrs	r2, r3
 80006d2:	68fb      	ldr	r3, [r7, #12]
 80006d4:	60da      	str	r2, [r3, #12]
 80006d6:	46bd      	mov	sp, r7
 80006d8:	b004      	add	sp, #16
 80006da:	bd80      	pop	{r7, pc}

080006dc <LL_RCC_HSI_Enable>:
 80006dc:	b580      	push	{r7, lr}
 80006de:	af00      	add	r7, sp, #0
 80006e0:	4b03      	ldr	r3, [pc, #12]	; (80006f0 <LL_RCC_HSI_Enable+0x14>)
 80006e2:	4a03      	ldr	r2, [pc, #12]	; (80006f0 <LL_RCC_HSI_Enable+0x14>)
 80006e4:	6812      	ldr	r2, [r2, #0]
 80006e6:	2101      	movs	r1, #1
 80006e8:	430a      	orrs	r2, r1
 80006ea:	601a      	str	r2, [r3, #0]
 80006ec:	46bd      	mov	sp, r7
 80006ee:	bd80      	pop	{r7, pc}
 80006f0:	40021000 	.word	0x40021000

080006f4 <LL_RCC_HSI_IsReady>:
 80006f4:	b580      	push	{r7, lr}
 80006f6:	af00      	add	r7, sp, #0
 80006f8:	4b04      	ldr	r3, [pc, #16]	; (800070c <LL_RCC_HSI_IsReady+0x18>)
 80006fa:	681b      	ldr	r3, [r3, #0]
 80006fc:	2202      	movs	r2, #2
 80006fe:	4013      	ands	r3, r2
 8000700:	1e5a      	subs	r2, r3, #1
 8000702:	4193      	sbcs	r3, r2
 8000704:	b2db      	uxtb	r3, r3
 8000706:	1c18      	adds	r0, r3, #0
 8000708:	46bd      	mov	sp, r7
 800070a:	bd80      	pop	{r7, pc}
 800070c:	40021000 	.word	0x40021000

08000710 <LL_RCC_SetSysClkSource>:
 8000710:	b580      	push	{r7, lr}
 8000712:	b082      	sub	sp, #8
 8000714:	af00      	add	r7, sp, #0
 8000716:	6078      	str	r0, [r7, #4]
 8000718:	4b05      	ldr	r3, [pc, #20]	; (8000730 <LL_RCC_SetSysClkSource+0x20>)
 800071a:	4a05      	ldr	r2, [pc, #20]	; (8000730 <LL_RCC_SetSysClkSource+0x20>)
 800071c:	6852      	ldr	r2, [r2, #4]
 800071e:	2103      	movs	r1, #3
 8000720:	438a      	bics	r2, r1
 8000722:	1c11      	adds	r1, r2, #0
 8000724:	687a      	ldr	r2, [r7, #4]
 8000726:	430a      	orrs	r2, r1
 8000728:	605a      	str	r2, [r3, #4]
 800072a:	46bd      	mov	sp, r7
 800072c:	b002      	add	sp, #8
 800072e:	bd80      	pop	{r7, pc}
 8000730:	40021000 	.word	0x40021000

08000734 <LL_RCC_GetSysClkSource>:
 8000734:	b580      	push	{r7, lr}
 8000736:	af00      	add	r7, sp, #0
 8000738:	4b03      	ldr	r3, [pc, #12]	; (8000748 <LL_RCC_GetSysClkSource+0x14>)
 800073a:	685b      	ldr	r3, [r3, #4]
 800073c:	220c      	movs	r2, #12
 800073e:	4013      	ands	r3, r2
 8000740:	1c18      	adds	r0, r3, #0
 8000742:	46bd      	mov	sp, r7
 8000744:	bd80      	pop	{r7, pc}
 8000746:	46c0      	nop			; (mov r8, r8)
 8000748:	40021000 	.word	0x40021000

0800074c <LL_RCC_SetAHBPrescaler>:
 800074c:	b580      	push	{r7, lr}
 800074e:	b082      	sub	sp, #8
 8000750:	af00      	add	r7, sp, #0
 8000752:	6078      	str	r0, [r7, #4]
 8000754:	4b05      	ldr	r3, [pc, #20]	; (800076c <LL_RCC_SetAHBPrescaler+0x20>)
 8000756:	4a05      	ldr	r2, [pc, #20]	; (800076c <LL_RCC_SetAHBPrescaler+0x20>)
 8000758:	6852      	ldr	r2, [r2, #4]
 800075a:	21f0      	movs	r1, #240	; 0xf0
 800075c:	438a      	bics	r2, r1
 800075e:	1c11      	adds	r1, r2, #0
 8000760:	687a      	ldr	r2, [r7, #4]
 8000762:	430a      	orrs	r2, r1
 8000764:	605a      	str	r2, [r3, #4]
 8000766:	46bd      	mov	sp, r7
 8000768:	b002      	add	sp, #8
 800076a:	bd80      	pop	{r7, pc}
 800076c:	40021000 	.word	0x40021000

08000770 <LL_RCC_SetAPB1Prescaler>:
 8000770:	b580      	push	{r7, lr}
 8000772:	b082      	sub	sp, #8
 8000774:	af00      	add	r7, sp, #0
 8000776:	6078      	str	r0, [r7, #4]
 8000778:	4b05      	ldr	r3, [pc, #20]	; (8000790 <LL_RCC_SetAPB1Prescaler+0x20>)
 800077a:	4a05      	ldr	r2, [pc, #20]	; (8000790 <LL_RCC_SetAPB1Prescaler+0x20>)
 800077c:	6852      	ldr	r2, [r2, #4]
 800077e:	4905      	ldr	r1, [pc, #20]	; (8000794 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000780:	4011      	ands	r1, r2
 8000782:	687a      	ldr	r2, [r7, #4]
 8000784:	430a      	orrs	r2, r1
 8000786:	605a      	str	r2, [r3, #4]
 8000788:	46bd      	mov	sp, r7
 800078a:	b002      	add	sp, #8
 800078c:	bd80      	pop	{r7, pc}
 800078e:	46c0      	nop			; (mov r8, r8)
 8000790:	40021000 	.word	0x40021000
 8000794:	fffff8ff 	.word	0xfffff8ff

08000798 <LL_RCC_PLL_Enable>:
 8000798:	b580      	push	{r7, lr}
 800079a:	af00      	add	r7, sp, #0
 800079c:	4b04      	ldr	r3, [pc, #16]	; (80007b0 <LL_RCC_PLL_Enable+0x18>)
 800079e:	4a04      	ldr	r2, [pc, #16]	; (80007b0 <LL_RCC_PLL_Enable+0x18>)
 80007a0:	6812      	ldr	r2, [r2, #0]
 80007a2:	2180      	movs	r1, #128	; 0x80
 80007a4:	0449      	lsls	r1, r1, #17
 80007a6:	430a      	orrs	r2, r1
 80007a8:	601a      	str	r2, [r3, #0]
 80007aa:	46bd      	mov	sp, r7
 80007ac:	bd80      	pop	{r7, pc}
 80007ae:	46c0      	nop			; (mov r8, r8)
 80007b0:	40021000 	.word	0x40021000

080007b4 <LL_RCC_PLL_IsReady>:
 80007b4:	b580      	push	{r7, lr}
 80007b6:	af00      	add	r7, sp, #0
 80007b8:	4b05      	ldr	r3, [pc, #20]	; (80007d0 <LL_RCC_PLL_IsReady+0x1c>)
 80007ba:	681a      	ldr	r2, [r3, #0]
 80007bc:	2380      	movs	r3, #128	; 0x80
 80007be:	049b      	lsls	r3, r3, #18
 80007c0:	4013      	ands	r3, r2
 80007c2:	1e5a      	subs	r2, r3, #1
 80007c4:	4193      	sbcs	r3, r2
 80007c6:	b2db      	uxtb	r3, r3
 80007c8:	1c18      	adds	r0, r3, #0
 80007ca:	46bd      	mov	sp, r7
 80007cc:	bd80      	pop	{r7, pc}
 80007ce:	46c0      	nop			; (mov r8, r8)
 80007d0:	40021000 	.word	0x40021000

080007d4 <LL_RCC_PLL_ConfigDomain_SYS>:
 80007d4:	b580      	push	{r7, lr}
 80007d6:	b082      	sub	sp, #8
 80007d8:	af00      	add	r7, sp, #0
 80007da:	6078      	str	r0, [r7, #4]
 80007dc:	6039      	str	r1, [r7, #0]
 80007de:	4b0d      	ldr	r3, [pc, #52]	; (8000814 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 80007e0:	4a0c      	ldr	r2, [pc, #48]	; (8000814 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 80007e2:	6852      	ldr	r2, [r2, #4]
 80007e4:	490c      	ldr	r1, [pc, #48]	; (8000818 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80007e6:	4011      	ands	r1, r2
 80007e8:	6878      	ldr	r0, [r7, #4]
 80007ea:	2280      	movs	r2, #128	; 0x80
 80007ec:	0252      	lsls	r2, r2, #9
 80007ee:	4010      	ands	r0, r2
 80007f0:	683a      	ldr	r2, [r7, #0]
 80007f2:	4302      	orrs	r2, r0
 80007f4:	430a      	orrs	r2, r1
 80007f6:	605a      	str	r2, [r3, #4]
 80007f8:	4b06      	ldr	r3, [pc, #24]	; (8000814 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 80007fa:	4a06      	ldr	r2, [pc, #24]	; (8000814 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 80007fc:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80007fe:	210f      	movs	r1, #15
 8000800:	438a      	bics	r2, r1
 8000802:	1c11      	adds	r1, r2, #0
 8000804:	687a      	ldr	r2, [r7, #4]
 8000806:	200f      	movs	r0, #15
 8000808:	4002      	ands	r2, r0
 800080a:	430a      	orrs	r2, r1
 800080c:	62da      	str	r2, [r3, #44]	; 0x2c
 800080e:	46bd      	mov	sp, r7
 8000810:	b002      	add	sp, #8
 8000812:	bd80      	pop	{r7, pc}
 8000814:	40021000 	.word	0x40021000
 8000818:	ffc2ffff 	.word	0xffc2ffff

0800081c <LL_EXTI_EnableIT_0_31>:
 800081c:	b580      	push	{r7, lr}
 800081e:	b082      	sub	sp, #8
 8000820:	af00      	add	r7, sp, #0
 8000822:	6078      	str	r0, [r7, #4]
 8000824:	4b04      	ldr	r3, [pc, #16]	; (8000838 <LL_EXTI_EnableIT_0_31+0x1c>)
 8000826:	4a04      	ldr	r2, [pc, #16]	; (8000838 <LL_EXTI_EnableIT_0_31+0x1c>)
 8000828:	6811      	ldr	r1, [r2, #0]
 800082a:	687a      	ldr	r2, [r7, #4]
 800082c:	430a      	orrs	r2, r1
 800082e:	601a      	str	r2, [r3, #0]
 8000830:	46bd      	mov	sp, r7
 8000832:	b002      	add	sp, #8
 8000834:	bd80      	pop	{r7, pc}
 8000836:	46c0      	nop			; (mov r8, r8)
 8000838:	40010400 	.word	0x40010400

0800083c <LL_EXTI_EnableRisingTrig_0_31>:
 800083c:	b580      	push	{r7, lr}
 800083e:	b082      	sub	sp, #8
 8000840:	af00      	add	r7, sp, #0
 8000842:	6078      	str	r0, [r7, #4]
 8000844:	4b04      	ldr	r3, [pc, #16]	; (8000858 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 8000846:	4a04      	ldr	r2, [pc, #16]	; (8000858 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 8000848:	6891      	ldr	r1, [r2, #8]
 800084a:	687a      	ldr	r2, [r7, #4]
 800084c:	430a      	orrs	r2, r1
 800084e:	609a      	str	r2, [r3, #8]
 8000850:	46bd      	mov	sp, r7
 8000852:	b002      	add	sp, #8
 8000854:	bd80      	pop	{r7, pc}
 8000856:	46c0      	nop			; (mov r8, r8)
 8000858:	40010400 	.word	0x40010400

0800085c <LL_EXTI_ClearFlag_0_31>:
 800085c:	b580      	push	{r7, lr}
 800085e:	b082      	sub	sp, #8
 8000860:	af00      	add	r7, sp, #0
 8000862:	6078      	str	r0, [r7, #4]
 8000864:	4b02      	ldr	r3, [pc, #8]	; (8000870 <LL_EXTI_ClearFlag_0_31+0x14>)
 8000866:	687a      	ldr	r2, [r7, #4]
 8000868:	615a      	str	r2, [r3, #20]
 800086a:	46bd      	mov	sp, r7
 800086c:	b002      	add	sp, #8
 800086e:	bd80      	pop	{r7, pc}
 8000870:	40010400 	.word	0x40010400

08000874 <LL_SYSCFG_SetEXTISource>:
 8000874:	b590      	push	{r4, r7, lr}
 8000876:	b083      	sub	sp, #12
 8000878:	af00      	add	r7, sp, #0
 800087a:	6078      	str	r0, [r7, #4]
 800087c:	6039      	str	r1, [r7, #0]
 800087e:	480f      	ldr	r0, [pc, #60]	; (80008bc <LL_SYSCFG_SetEXTISource+0x48>)
 8000880:	683b      	ldr	r3, [r7, #0]
 8000882:	22ff      	movs	r2, #255	; 0xff
 8000884:	4013      	ands	r3, r2
 8000886:	490d      	ldr	r1, [pc, #52]	; (80008bc <LL_SYSCFG_SetEXTISource+0x48>)
 8000888:	683a      	ldr	r2, [r7, #0]
 800088a:	24ff      	movs	r4, #255	; 0xff
 800088c:	4022      	ands	r2, r4
 800088e:	3202      	adds	r2, #2
 8000890:	0092      	lsls	r2, r2, #2
 8000892:	5852      	ldr	r2, [r2, r1]
 8000894:	6839      	ldr	r1, [r7, #0]
 8000896:	0c09      	lsrs	r1, r1, #16
 8000898:	1c0c      	adds	r4, r1, #0
 800089a:	210f      	movs	r1, #15
 800089c:	40a1      	lsls	r1, r4
 800089e:	43c9      	mvns	r1, r1
 80008a0:	4011      	ands	r1, r2
 80008a2:	683a      	ldr	r2, [r7, #0]
 80008a4:	0c12      	lsrs	r2, r2, #16
 80008a6:	1c14      	adds	r4, r2, #0
 80008a8:	687a      	ldr	r2, [r7, #4]
 80008aa:	40a2      	lsls	r2, r4
 80008ac:	430a      	orrs	r2, r1
 80008ae:	3302      	adds	r3, #2
 80008b0:	009b      	lsls	r3, r3, #2
 80008b2:	501a      	str	r2, [r3, r0]
 80008b4:	46bd      	mov	sp, r7
 80008b6:	b003      	add	sp, #12
 80008b8:	bd90      	pop	{r4, r7, pc}
 80008ba:	46c0      	nop			; (mov r8, r8)
 80008bc:	40010000 	.word	0x40010000

080008c0 <LL_FLASH_SetLatency>:
 80008c0:	b580      	push	{r7, lr}
 80008c2:	b082      	sub	sp, #8
 80008c4:	af00      	add	r7, sp, #0
 80008c6:	6078      	str	r0, [r7, #4]
 80008c8:	4b05      	ldr	r3, [pc, #20]	; (80008e0 <LL_FLASH_SetLatency+0x20>)
 80008ca:	4a05      	ldr	r2, [pc, #20]	; (80008e0 <LL_FLASH_SetLatency+0x20>)
 80008cc:	6812      	ldr	r2, [r2, #0]
 80008ce:	2101      	movs	r1, #1
 80008d0:	438a      	bics	r2, r1
 80008d2:	1c11      	adds	r1, r2, #0
 80008d4:	687a      	ldr	r2, [r7, #4]
 80008d6:	430a      	orrs	r2, r1
 80008d8:	601a      	str	r2, [r3, #0]
 80008da:	46bd      	mov	sp, r7
 80008dc:	b002      	add	sp, #8
 80008de:	bd80      	pop	{r7, pc}
 80008e0:	40022000 	.word	0x40022000

080008e4 <main>:
 80008e4:	b580      	push	{r7, lr}
 80008e6:	b084      	sub	sp, #16
 80008e8:	af00      	add	r7, sp, #0
 80008ea:	2300      	movs	r3, #0
 80008ec:	60bb      	str	r3, [r7, #8]
 80008ee:	2300      	movs	r3, #0
 80008f0:	607b      	str	r3, [r7, #4]
 80008f2:	4bb3      	ldr	r3, [pc, #716]	; (8000bc0 <main+0x2dc>)
 80008f4:	603b      	str	r3, [r7, #0]
 80008f6:	f000 f97f 	bl	8000bf8 <SystemClock_Config>
 80008fa:	2301      	movs	r3, #1
 80008fc:	425b      	negs	r3, r3
 80008fe:	1c18      	adds	r0, r3, #0
 8000900:	2101      	movs	r1, #1
 8000902:	f7ff fdf9 	bl	80004f8 <NVIC_SetPriority>
 8000906:	2380      	movs	r3, #128	; 0x80
 8000908:	031b      	lsls	r3, r3, #12
 800090a:	1c18      	adds	r0, r3, #0
 800090c:	f7ff fe82 	bl	8000614 <LL_AHB1_GRP1_EnableClock>
 8000910:	f000 fbf4 	bl	80010fc <buttoninit>
 8000914:	4bab      	ldr	r3, [pc, #684]	; (8000bc4 <main+0x2e0>)
 8000916:	1c18      	adds	r0, r3, #0
 8000918:	2101      	movs	r1, #1
 800091a:	2201      	movs	r2, #1
 800091c:	f7ff fea6 	bl	800066c <LL_GPIO_SetPinMode>
 8000920:	4ba8      	ldr	r3, [pc, #672]	; (8000bc4 <main+0x2e0>)
 8000922:	1c18      	adds	r0, r3, #0
 8000924:	2102      	movs	r1, #2
 8000926:	2201      	movs	r2, #1
 8000928:	f7ff fea0 	bl	800066c <LL_GPIO_SetPinMode>
 800092c:	4ba5      	ldr	r3, [pc, #660]	; (8000bc4 <main+0x2e0>)
 800092e:	1c18      	adds	r0, r3, #0
 8000930:	2104      	movs	r1, #4
 8000932:	2201      	movs	r2, #1
 8000934:	f7ff fe9a 	bl	800066c <LL_GPIO_SetPinMode>
 8000938:	4ba2      	ldr	r3, [pc, #648]	; (8000bc4 <main+0x2e0>)
 800093a:	1c18      	adds	r0, r3, #0
 800093c:	2108      	movs	r1, #8
 800093e:	2201      	movs	r2, #1
 8000940:	f7ff fe94 	bl	800066c <LL_GPIO_SetPinMode>
 8000944:	4b9f      	ldr	r3, [pc, #636]	; (8000bc4 <main+0x2e0>)
 8000946:	1c18      	adds	r0, r3, #0
 8000948:	2110      	movs	r1, #16
 800094a:	2201      	movs	r2, #1
 800094c:	f7ff fe8e 	bl	800066c <LL_GPIO_SetPinMode>
 8000950:	4b9c      	ldr	r3, [pc, #624]	; (8000bc4 <main+0x2e0>)
 8000952:	1c18      	adds	r0, r3, #0
 8000954:	2120      	movs	r1, #32
 8000956:	2201      	movs	r2, #1
 8000958:	f7ff fe88 	bl	800066c <LL_GPIO_SetPinMode>
 800095c:	4b99      	ldr	r3, [pc, #612]	; (8000bc4 <main+0x2e0>)
 800095e:	1c18      	adds	r0, r3, #0
 8000960:	2140      	movs	r1, #64	; 0x40
 8000962:	2201      	movs	r2, #1
 8000964:	f7ff fe82 	bl	800066c <LL_GPIO_SetPinMode>
 8000968:	4b96      	ldr	r3, [pc, #600]	; (8000bc4 <main+0x2e0>)
 800096a:	1c18      	adds	r0, r3, #0
 800096c:	2180      	movs	r1, #128	; 0x80
 800096e:	2201      	movs	r2, #1
 8000970:	f7ff fe7c 	bl	800066c <LL_GPIO_SetPinMode>
 8000974:	4a93      	ldr	r2, [pc, #588]	; (8000bc4 <main+0x2e0>)
 8000976:	2380      	movs	r3, #128	; 0x80
 8000978:	005b      	lsls	r3, r3, #1
 800097a:	1c10      	adds	r0, r2, #0
 800097c:	1c19      	adds	r1, r3, #0
 800097e:	2201      	movs	r2, #1
 8000980:	f7ff fe74 	bl	800066c <LL_GPIO_SetPinMode>
 8000984:	4a8f      	ldr	r2, [pc, #572]	; (8000bc4 <main+0x2e0>)
 8000986:	2380      	movs	r3, #128	; 0x80
 8000988:	009b      	lsls	r3, r3, #2
 800098a:	1c10      	adds	r0, r2, #0
 800098c:	1c19      	adds	r1, r3, #0
 800098e:	2201      	movs	r2, #1
 8000990:	f7ff fe6c 	bl	800066c <LL_GPIO_SetPinMode>
 8000994:	4a8b      	ldr	r2, [pc, #556]	; (8000bc4 <main+0x2e0>)
 8000996:	2380      	movs	r3, #128	; 0x80
 8000998:	00db      	lsls	r3, r3, #3
 800099a:	1c10      	adds	r0, r2, #0
 800099c:	1c19      	adds	r1, r3, #0
 800099e:	2201      	movs	r2, #1
 80009a0:	f7ff fe64 	bl	800066c <LL_GPIO_SetPinMode>
 80009a4:	4a87      	ldr	r2, [pc, #540]	; (8000bc4 <main+0x2e0>)
 80009a6:	2380      	movs	r3, #128	; 0x80
 80009a8:	011b      	lsls	r3, r3, #4
 80009aa:	1c10      	adds	r0, r2, #0
 80009ac:	1c19      	adds	r1, r3, #0
 80009ae:	2201      	movs	r2, #1
 80009b0:	f7ff fe5c 	bl	800066c <LL_GPIO_SetPinMode>
 80009b4:	4b84      	ldr	r3, [pc, #528]	; (8000bc8 <main+0x2e4>)
 80009b6:	781b      	ldrb	r3, [r3, #0]
 80009b8:	2b00      	cmp	r3, #0
 80009ba:	d100      	bne.n	80009be <main+0xda>
 80009bc:	e0fe      	b.n	8000bbc <main+0x2d8>
 80009be:	4b83      	ldr	r3, [pc, #524]	; (8000bcc <main+0x2e8>)
 80009c0:	681b      	ldr	r3, [r3, #0]
 80009c2:	4a83      	ldr	r2, [pc, #524]	; (8000bd0 <main+0x2ec>)
 80009c4:	4293      	cmp	r3, r2
 80009c6:	dd51      	ble.n	8000a6c <main+0x188>
 80009c8:	4b82      	ldr	r3, [pc, #520]	; (8000bd4 <main+0x2f0>)
 80009ca:	681b      	ldr	r3, [r3, #0]
 80009cc:	1c5a      	adds	r2, r3, #1
 80009ce:	4b81      	ldr	r3, [pc, #516]	; (8000bd4 <main+0x2f0>)
 80009d0:	601a      	str	r2, [r3, #0]
 80009d2:	4b7e      	ldr	r3, [pc, #504]	; (8000bcc <main+0x2e8>)
 80009d4:	2200      	movs	r2, #0
 80009d6:	601a      	str	r2, [r3, #0]
 80009d8:	4b7e      	ldr	r3, [pc, #504]	; (8000bd4 <main+0x2f0>)
 80009da:	681b      	ldr	r3, [r3, #0]
 80009dc:	1c18      	adds	r0, r3, #0
 80009de:	497e      	ldr	r1, [pc, #504]	; (8000bd8 <main+0x2f4>)
 80009e0:	f7ff fc58 	bl	8000294 <__aeabi_idiv>
 80009e4:	1c03      	adds	r3, r0, #0
 80009e6:	b2da      	uxtb	r2, r3
 80009e8:	4b7c      	ldr	r3, [pc, #496]	; (8000bdc <main+0x2f8>)
 80009ea:	701a      	strb	r2, [r3, #0]
 80009ec:	4b79      	ldr	r3, [pc, #484]	; (8000bd4 <main+0x2f0>)
 80009ee:	681b      	ldr	r3, [r3, #0]
 80009f0:	1c18      	adds	r0, r3, #0
 80009f2:	23e1      	movs	r3, #225	; 0xe1
 80009f4:	0119      	lsls	r1, r3, #4
 80009f6:	f7ff fc4d 	bl	8000294 <__aeabi_idiv>
 80009fa:	1c03      	adds	r3, r0, #0
 80009fc:	1c18      	adds	r0, r3, #0
 80009fe:	210a      	movs	r1, #10
 8000a00:	f7ff fd2e 	bl	8000460 <__aeabi_idivmod>
 8000a04:	1c0b      	adds	r3, r1, #0
 8000a06:	b2da      	uxtb	r2, r3
 8000a08:	4b74      	ldr	r3, [pc, #464]	; (8000bdc <main+0x2f8>)
 8000a0a:	705a      	strb	r2, [r3, #1]
 8000a0c:	4b71      	ldr	r3, [pc, #452]	; (8000bd4 <main+0x2f0>)
 8000a0e:	681b      	ldr	r3, [r3, #0]
 8000a10:	1c18      	adds	r0, r3, #0
 8000a12:	23e1      	movs	r3, #225	; 0xe1
 8000a14:	0119      	lsls	r1, r3, #4
 8000a16:	f7ff fd23 	bl	8000460 <__aeabi_idivmod>
 8000a1a:	1c0b      	adds	r3, r1, #0
 8000a1c:	1c18      	adds	r0, r3, #0
 8000a1e:	2396      	movs	r3, #150	; 0x96
 8000a20:	0099      	lsls	r1, r3, #2
 8000a22:	f7ff fc37 	bl	8000294 <__aeabi_idiv>
 8000a26:	1c03      	adds	r3, r0, #0
 8000a28:	b2da      	uxtb	r2, r3
 8000a2a:	4b6c      	ldr	r3, [pc, #432]	; (8000bdc <main+0x2f8>)
 8000a2c:	709a      	strb	r2, [r3, #2]
 8000a2e:	4b69      	ldr	r3, [pc, #420]	; (8000bd4 <main+0x2f0>)
 8000a30:	681b      	ldr	r3, [r3, #0]
 8000a32:	1c18      	adds	r0, r3, #0
 8000a34:	23e1      	movs	r3, #225	; 0xe1
 8000a36:	0119      	lsls	r1, r3, #4
 8000a38:	f7ff fd12 	bl	8000460 <__aeabi_idivmod>
 8000a3c:	1c0b      	adds	r3, r1, #0
 8000a3e:	1c18      	adds	r0, r3, #0
 8000a40:	213c      	movs	r1, #60	; 0x3c
 8000a42:	f7ff fc27 	bl	8000294 <__aeabi_idiv>
 8000a46:	1c03      	adds	r3, r0, #0
 8000a48:	1c18      	adds	r0, r3, #0
 8000a4a:	210a      	movs	r1, #10
 8000a4c:	f7ff fd08 	bl	8000460 <__aeabi_idivmod>
 8000a50:	1c0b      	adds	r3, r1, #0
 8000a52:	b2da      	uxtb	r2, r3
 8000a54:	4b61      	ldr	r3, [pc, #388]	; (8000bdc <main+0x2f8>)
 8000a56:	70da      	strb	r2, [r3, #3]
 8000a58:	4b5e      	ldr	r3, [pc, #376]	; (8000bd4 <main+0x2f0>)
 8000a5a:	681a      	ldr	r2, [r3, #0]
 8000a5c:	683b      	ldr	r3, [r7, #0]
 8000a5e:	429a      	cmp	r2, r3
 8000a60:	d104      	bne.n	8000a6c <main+0x188>
 8000a62:	4b5f      	ldr	r3, [pc, #380]	; (8000be0 <main+0x2fc>)
 8000a64:	603b      	str	r3, [r7, #0]
 8000a66:	2005      	movs	r0, #5
 8000a68:	f000 fb12 	bl	8001090 <budit>
 8000a6c:	4b5d      	ldr	r3, [pc, #372]	; (8000be4 <main+0x300>)
 8000a6e:	681b      	ldr	r3, [r3, #0]
 8000a70:	3396      	adds	r3, #150	; 0x96
 8000a72:	1c18      	adds	r0, r3, #0
 8000a74:	23fa      	movs	r3, #250	; 0xfa
 8000a76:	0099      	lsls	r1, r3, #2
 8000a78:	f7ff fcf2 	bl	8000460 <__aeabi_idivmod>
 8000a7c:	1c0b      	adds	r3, r1, #0
 8000a7e:	1e1a      	subs	r2, r3, #0
 8000a80:	4b52      	ldr	r3, [pc, #328]	; (8000bcc <main+0x2e8>)
 8000a82:	681b      	ldr	r3, [r3, #0]
 8000a84:	429a      	cmp	r2, r3
 8000a86:	d10f      	bne.n	8000aa8 <main+0x1c4>
 8000a88:	4b57      	ldr	r3, [pc, #348]	; (8000be8 <main+0x304>)
 8000a8a:	781b      	ldrb	r3, [r3, #0]
 8000a8c:	2b00      	cmp	r3, #0
 8000a8e:	d00b      	beq.n	8000aa8 <main+0x1c4>
 8000a90:	68bb      	ldr	r3, [r7, #8]
 8000a92:	2b00      	cmp	r3, #0
 8000a94:	d102      	bne.n	8000a9c <main+0x1b8>
 8000a96:	4b4f      	ldr	r3, [pc, #316]	; (8000bd4 <main+0x2f0>)
 8000a98:	681b      	ldr	r3, [r3, #0]
 8000a9a:	60bb      	str	r3, [r7, #8]
 8000a9c:	687b      	ldr	r3, [r7, #4]
 8000a9e:	3301      	adds	r3, #1
 8000aa0:	607b      	str	r3, [r7, #4]
 8000aa2:	4b51      	ldr	r3, [pc, #324]	; (8000be8 <main+0x304>)
 8000aa4:	2200      	movs	r2, #0
 8000aa6:	701a      	strb	r2, [r3, #0]
 8000aa8:	4b4a      	ldr	r3, [pc, #296]	; (8000bd4 <main+0x2f0>)
 8000aaa:	681a      	ldr	r2, [r3, #0]
 8000aac:	68bb      	ldr	r3, [r7, #8]
 8000aae:	1ad3      	subs	r3, r2, r3
 8000ab0:	2b01      	cmp	r3, #1
 8000ab2:	dd12      	ble.n	8000ada <main+0x1f6>
 8000ab4:	68bb      	ldr	r3, [r7, #8]
 8000ab6:	2b00      	cmp	r3, #0
 8000ab8:	d00f      	beq.n	8000ada <main+0x1f6>
 8000aba:	687b      	ldr	r3, [r7, #4]
 8000abc:	2b02      	cmp	r3, #2
 8000abe:	d101      	bne.n	8000ac4 <main+0x1e0>
 8000ac0:	f000 f8d4 	bl	8000c6c <change_time>
 8000ac4:	687b      	ldr	r3, [r7, #4]
 8000ac6:	2b03      	cmp	r3, #3
 8000ac8:	d103      	bne.n	8000ad2 <main+0x1ee>
 8000aca:	1c3b      	adds	r3, r7, #0
 8000acc:	1c18      	adds	r0, r3, #0
 8000ace:	f000 f9b5 	bl	8000e3c <set_alarm>
 8000ad2:	2300      	movs	r3, #0
 8000ad4:	607b      	str	r3, [r7, #4]
 8000ad6:	2300      	movs	r3, #0
 8000ad8:	60bb      	str	r3, [r7, #8]
 8000ada:	4b3e      	ldr	r3, [pc, #248]	; (8000bd4 <main+0x2f0>)
 8000adc:	681b      	ldr	r3, [r3, #0]
 8000ade:	4a43      	ldr	r2, [pc, #268]	; (8000bec <main+0x308>)
 8000ae0:	4293      	cmp	r3, r2
 8000ae2:	dd02      	ble.n	8000aea <main+0x206>
 8000ae4:	4b3b      	ldr	r3, [pc, #236]	; (8000bd4 <main+0x2f0>)
 8000ae6:	2200      	movs	r2, #0
 8000ae8:	601a      	str	r2, [r3, #0]
 8000aea:	4b41      	ldr	r3, [pc, #260]	; (8000bf0 <main+0x30c>)
 8000aec:	681b      	ldr	r3, [r3, #0]
 8000aee:	2b00      	cmp	r3, #0
 8000af0:	d113      	bne.n	8000b1a <main+0x236>
 8000af2:	4b3a      	ldr	r3, [pc, #232]	; (8000bdc <main+0x2f8>)
 8000af4:	781b      	ldrb	r3, [r3, #0]
 8000af6:	1c1a      	adds	r2, r3, #0
 8000af8:	4b3e      	ldr	r3, [pc, #248]	; (8000bf4 <main+0x310>)
 8000afa:	0092      	lsls	r2, r2, #2
 8000afc:	58d3      	ldr	r3, [r2, r3]
 8000afe:	60fb      	str	r3, [r7, #12]
 8000b00:	68fb      	ldr	r3, [r7, #12]
 8000b02:	2208      	movs	r2, #8
 8000b04:	4053      	eors	r3, r2
 8000b06:	60fb      	str	r3, [r7, #12]
 8000b08:	4b2e      	ldr	r3, [pc, #184]	; (8000bc4 <main+0x2e0>)
 8000b0a:	68fa      	ldr	r2, [r7, #12]
 8000b0c:	615a      	str	r2, [r3, #20]
 8000b0e:	4b38      	ldr	r3, [pc, #224]	; (8000bf0 <main+0x30c>)
 8000b10:	681b      	ldr	r3, [r3, #0]
 8000b12:	1c5a      	adds	r2, r3, #1
 8000b14:	4b36      	ldr	r3, [pc, #216]	; (8000bf0 <main+0x30c>)
 8000b16:	601a      	str	r2, [r3, #0]
 8000b18:	e04d      	b.n	8000bb6 <main+0x2d2>
 8000b1a:	4b35      	ldr	r3, [pc, #212]	; (8000bf0 <main+0x30c>)
 8000b1c:	681b      	ldr	r3, [r3, #0]
 8000b1e:	2b01      	cmp	r3, #1
 8000b20:	d11f      	bne.n	8000b62 <main+0x27e>
 8000b22:	4b2e      	ldr	r3, [pc, #184]	; (8000bdc <main+0x2f8>)
 8000b24:	785b      	ldrb	r3, [r3, #1]
 8000b26:	1c1a      	adds	r2, r3, #0
 8000b28:	4b32      	ldr	r3, [pc, #200]	; (8000bf4 <main+0x310>)
 8000b2a:	0092      	lsls	r2, r2, #2
 8000b2c:	58d3      	ldr	r3, [r2, r3]
 8000b2e:	60fb      	str	r3, [r7, #12]
 8000b30:	4b26      	ldr	r3, [pc, #152]	; (8000bcc <main+0x2e8>)
 8000b32:	681a      	ldr	r2, [r3, #0]
 8000b34:	23f4      	movs	r3, #244	; 0xf4
 8000b36:	33ff      	adds	r3, #255	; 0xff
 8000b38:	429a      	cmp	r2, r3
 8000b3a:	dc05      	bgt.n	8000b48 <main+0x264>
 8000b3c:	68fb      	ldr	r3, [r7, #12]
 8000b3e:	2280      	movs	r2, #128	; 0x80
 8000b40:	0112      	lsls	r2, r2, #4
 8000b42:	4694      	mov	ip, r2
 8000b44:	4463      	add	r3, ip
 8000b46:	60fb      	str	r3, [r7, #12]
 8000b48:	68fb      	ldr	r3, [r7, #12]
 8000b4a:	2204      	movs	r2, #4
 8000b4c:	4053      	eors	r3, r2
 8000b4e:	60fb      	str	r3, [r7, #12]
 8000b50:	4b1c      	ldr	r3, [pc, #112]	; (8000bc4 <main+0x2e0>)
 8000b52:	68fa      	ldr	r2, [r7, #12]
 8000b54:	615a      	str	r2, [r3, #20]
 8000b56:	4b26      	ldr	r3, [pc, #152]	; (8000bf0 <main+0x30c>)
 8000b58:	681b      	ldr	r3, [r3, #0]
 8000b5a:	1c5a      	adds	r2, r3, #1
 8000b5c:	4b24      	ldr	r3, [pc, #144]	; (8000bf0 <main+0x30c>)
 8000b5e:	601a      	str	r2, [r3, #0]
 8000b60:	e029      	b.n	8000bb6 <main+0x2d2>
 8000b62:	4b23      	ldr	r3, [pc, #140]	; (8000bf0 <main+0x30c>)
 8000b64:	681b      	ldr	r3, [r3, #0]
 8000b66:	2b02      	cmp	r3, #2
 8000b68:	d113      	bne.n	8000b92 <main+0x2ae>
 8000b6a:	4b1c      	ldr	r3, [pc, #112]	; (8000bdc <main+0x2f8>)
 8000b6c:	789b      	ldrb	r3, [r3, #2]
 8000b6e:	1c1a      	adds	r2, r3, #0
 8000b70:	4b20      	ldr	r3, [pc, #128]	; (8000bf4 <main+0x310>)
 8000b72:	0092      	lsls	r2, r2, #2
 8000b74:	58d3      	ldr	r3, [r2, r3]
 8000b76:	60fb      	str	r3, [r7, #12]
 8000b78:	68fb      	ldr	r3, [r7, #12]
 8000b7a:	2202      	movs	r2, #2
 8000b7c:	4053      	eors	r3, r2
 8000b7e:	60fb      	str	r3, [r7, #12]
 8000b80:	4b10      	ldr	r3, [pc, #64]	; (8000bc4 <main+0x2e0>)
 8000b82:	68fa      	ldr	r2, [r7, #12]
 8000b84:	615a      	str	r2, [r3, #20]
 8000b86:	4b1a      	ldr	r3, [pc, #104]	; (8000bf0 <main+0x30c>)
 8000b88:	681b      	ldr	r3, [r3, #0]
 8000b8a:	1c5a      	adds	r2, r3, #1
 8000b8c:	4b18      	ldr	r3, [pc, #96]	; (8000bf0 <main+0x30c>)
 8000b8e:	601a      	str	r2, [r3, #0]
 8000b90:	e011      	b.n	8000bb6 <main+0x2d2>
 8000b92:	4b12      	ldr	r3, [pc, #72]	; (8000bdc <main+0x2f8>)
 8000b94:	78db      	ldrb	r3, [r3, #3]
 8000b96:	1c1a      	adds	r2, r3, #0
 8000b98:	4b16      	ldr	r3, [pc, #88]	; (8000bf4 <main+0x310>)
 8000b9a:	0092      	lsls	r2, r2, #2
 8000b9c:	58d3      	ldr	r3, [r2, r3]
 8000b9e:	60fb      	str	r3, [r7, #12]
 8000ba0:	68fb      	ldr	r3, [r7, #12]
 8000ba2:	2280      	movs	r2, #128	; 0x80
 8000ba4:	0052      	lsls	r2, r2, #1
 8000ba6:	4053      	eors	r3, r2
 8000ba8:	60fb      	str	r3, [r7, #12]
 8000baa:	4b06      	ldr	r3, [pc, #24]	; (8000bc4 <main+0x2e0>)
 8000bac:	68fa      	ldr	r2, [r7, #12]
 8000bae:	615a      	str	r2, [r3, #20]
 8000bb0:	4b0f      	ldr	r3, [pc, #60]	; (8000bf0 <main+0x30c>)
 8000bb2:	2200      	movs	r2, #0
 8000bb4:	601a      	str	r2, [r3, #0]
 8000bb6:	4b04      	ldr	r3, [pc, #16]	; (8000bc8 <main+0x2e4>)
 8000bb8:	2200      	movs	r2, #0
 8000bba:	701a      	strb	r2, [r3, #0]
 8000bbc:	e6fa      	b.n	80009b4 <main+0xd0>
 8000bbe:	46c0      	nop			; (mov r8, r8)
 8000bc0:	00011094 	.word	0x00011094
 8000bc4:	48000800 	.word	0x48000800
 8000bc8:	20000480 	.word	0x20000480
 8000bcc:	20000474 	.word	0x20000474
 8000bd0:	000003e7 	.word	0x000003e7
 8000bd4:	20000000 	.word	0x20000000
 8000bd8:	00008ca0 	.word	0x00008ca0
 8000bdc:	20000484 	.word	0x20000484
 8000be0:	00015f90 	.word	0x00015f90
 8000be4:	2000047c 	.word	0x2000047c
 8000be8:	20000481 	.word	0x20000481
 8000bec:	0001517f 	.word	0x0001517f
 8000bf0:	20000478 	.word	0x20000478
 8000bf4:	20000004 	.word	0x20000004

08000bf8 <SystemClock_Config>:
 8000bf8:	b580      	push	{r7, lr}
 8000bfa:	af00      	add	r7, sp, #0
 8000bfc:	2001      	movs	r0, #1
 8000bfe:	f7ff fe5f 	bl	80008c0 <LL_FLASH_SetLatency>
 8000c02:	f7ff fd6b 	bl	80006dc <LL_RCC_HSI_Enable>
 8000c06:	46c0      	nop			; (mov r8, r8)
 8000c08:	f7ff fd74 	bl	80006f4 <LL_RCC_HSI_IsReady>
 8000c0c:	1e03      	subs	r3, r0, #0
 8000c0e:	2b01      	cmp	r3, #1
 8000c10:	d1fa      	bne.n	8000c08 <SystemClock_Config+0x10>
 8000c12:	23a0      	movs	r3, #160	; 0xa0
 8000c14:	039b      	lsls	r3, r3, #14
 8000c16:	2000      	movs	r0, #0
 8000c18:	1c19      	adds	r1, r3, #0
 8000c1a:	f7ff fddb 	bl	80007d4 <LL_RCC_PLL_ConfigDomain_SYS>
 8000c1e:	f7ff fdbb 	bl	8000798 <LL_RCC_PLL_Enable>
 8000c22:	46c0      	nop			; (mov r8, r8)
 8000c24:	f7ff fdc6 	bl	80007b4 <LL_RCC_PLL_IsReady>
 8000c28:	1e03      	subs	r3, r0, #0
 8000c2a:	2b01      	cmp	r3, #1
 8000c2c:	d1fa      	bne.n	8000c24 <SystemClock_Config+0x2c>
 8000c2e:	2000      	movs	r0, #0
 8000c30:	f7ff fd8c 	bl	800074c <LL_RCC_SetAHBPrescaler>
 8000c34:	2002      	movs	r0, #2
 8000c36:	f7ff fd6b 	bl	8000710 <LL_RCC_SetSysClkSource>
 8000c3a:	46c0      	nop			; (mov r8, r8)
 8000c3c:	f7ff fd7a 	bl	8000734 <LL_RCC_GetSysClkSource>
 8000c40:	1e03      	subs	r3, r0, #0
 8000c42:	2b08      	cmp	r3, #8
 8000c44:	d1fa      	bne.n	8000c3c <SystemClock_Config+0x44>
 8000c46:	2000      	movs	r0, #0
 8000c48:	f7ff fd92 	bl	8000770 <LL_RCC_SetAPB1Prescaler>
 8000c4c:	4b04      	ldr	r3, [pc, #16]	; (8000c60 <SystemClock_Config+0x68>)
 8000c4e:	1c18      	adds	r0, r3, #0
 8000c50:	f7ff fcbc 	bl	80005cc <SysTick_Config>
 8000c54:	4b03      	ldr	r3, [pc, #12]	; (8000c64 <SystemClock_Config+0x6c>)
 8000c56:	4a04      	ldr	r2, [pc, #16]	; (8000c68 <SystemClock_Config+0x70>)
 8000c58:	601a      	str	r2, [r3, #0]
 8000c5a:	46bd      	mov	sp, r7
 8000c5c:	bd80      	pop	{r7, pc}
 8000c5e:	46c0      	nop			; (mov r8, r8)
 8000c60:	0000bb80 	.word	0x0000bb80
 8000c64:	2000002c 	.word	0x2000002c
 8000c68:	02dc6c00 	.word	0x02dc6c00

08000c6c <change_time>:
 8000c6c:	b590      	push	{r4, r7, lr}
 8000c6e:	b085      	sub	sp, #20
 8000c70:	af00      	add	r7, sp, #0
 8000c72:	2300      	movs	r3, #0
 8000c74:	60fb      	str	r3, [r7, #12]
 8000c76:	2300      	movs	r3, #0
 8000c78:	60bb      	str	r3, [r7, #8]
 8000c7a:	2300      	movs	r3, #0
 8000c7c:	607b      	str	r3, [r7, #4]
 8000c7e:	2300      	movs	r3, #0
 8000c80:	603b      	str	r3, [r7, #0]
 8000c82:	e087      	b.n	8000d94 <change_time+0x128>
 8000c84:	4b64      	ldr	r3, [pc, #400]	; (8000e18 <change_time+0x1ac>)
 8000c86:	781b      	ldrb	r3, [r3, #0]
 8000c88:	2b00      	cmp	r3, #0
 8000c8a:	d100      	bne.n	8000c8e <change_time+0x22>
 8000c8c:	e082      	b.n	8000d94 <change_time+0x128>
 8000c8e:	4b63      	ldr	r3, [pc, #396]	; (8000e1c <change_time+0x1b0>)
 8000c90:	681b      	ldr	r3, [r3, #0]
 8000c92:	4a63      	ldr	r2, [pc, #396]	; (8000e20 <change_time+0x1b4>)
 8000c94:	4293      	cmp	r3, r2
 8000c96:	dd07      	ble.n	8000ca8 <change_time+0x3c>
 8000c98:	4b60      	ldr	r3, [pc, #384]	; (8000e1c <change_time+0x1b0>)
 8000c9a:	2200      	movs	r2, #0
 8000c9c:	601a      	str	r2, [r3, #0]
 8000c9e:	4b61      	ldr	r3, [pc, #388]	; (8000e24 <change_time+0x1b8>)
 8000ca0:	681b      	ldr	r3, [r3, #0]
 8000ca2:	1c5a      	adds	r2, r3, #1
 8000ca4:	4b5f      	ldr	r3, [pc, #380]	; (8000e24 <change_time+0x1b8>)
 8000ca6:	601a      	str	r2, [r3, #0]
 8000ca8:	4b5f      	ldr	r3, [pc, #380]	; (8000e28 <change_time+0x1bc>)
 8000caa:	681b      	ldr	r3, [r3, #0]
 8000cac:	3396      	adds	r3, #150	; 0x96
 8000cae:	1c18      	adds	r0, r3, #0
 8000cb0:	23fa      	movs	r3, #250	; 0xfa
 8000cb2:	0099      	lsls	r1, r3, #2
 8000cb4:	f7ff fbd4 	bl	8000460 <__aeabi_idivmod>
 8000cb8:	1c0b      	adds	r3, r1, #0
 8000cba:	1e1a      	subs	r2, r3, #0
 8000cbc:	4b57      	ldr	r3, [pc, #348]	; (8000e1c <change_time+0x1b0>)
 8000cbe:	681b      	ldr	r3, [r3, #0]
 8000cc0:	429a      	cmp	r2, r3
 8000cc2:	d10f      	bne.n	8000ce4 <change_time+0x78>
 8000cc4:	4b59      	ldr	r3, [pc, #356]	; (8000e2c <change_time+0x1c0>)
 8000cc6:	781b      	ldrb	r3, [r3, #0]
 8000cc8:	2b00      	cmp	r3, #0
 8000cca:	d00b      	beq.n	8000ce4 <change_time+0x78>
 8000ccc:	68bb      	ldr	r3, [r7, #8]
 8000cce:	2b00      	cmp	r3, #0
 8000cd0:	d102      	bne.n	8000cd8 <change_time+0x6c>
 8000cd2:	4b54      	ldr	r3, [pc, #336]	; (8000e24 <change_time+0x1b8>)
 8000cd4:	681b      	ldr	r3, [r3, #0]
 8000cd6:	60bb      	str	r3, [r7, #8]
 8000cd8:	68fb      	ldr	r3, [r7, #12]
 8000cda:	3301      	adds	r3, #1
 8000cdc:	60fb      	str	r3, [r7, #12]
 8000cde:	4b53      	ldr	r3, [pc, #332]	; (8000e2c <change_time+0x1c0>)
 8000ce0:	2200      	movs	r2, #0
 8000ce2:	701a      	strb	r2, [r3, #0]
 8000ce4:	4b4f      	ldr	r3, [pc, #316]	; (8000e24 <change_time+0x1b8>)
 8000ce6:	681a      	ldr	r2, [r3, #0]
 8000ce8:	68bb      	ldr	r3, [r7, #8]
 8000cea:	1ad3      	subs	r3, r2, r3
 8000cec:	2b01      	cmp	r3, #1
 8000cee:	dd1f      	ble.n	8000d30 <change_time+0xc4>
 8000cf0:	68bb      	ldr	r3, [r7, #8]
 8000cf2:	2b00      	cmp	r3, #0
 8000cf4:	d01c      	beq.n	8000d30 <change_time+0xc4>
 8000cf6:	68fb      	ldr	r3, [r7, #12]
 8000cf8:	2b01      	cmp	r3, #1
 8000cfa:	d10a      	bne.n	8000d12 <change_time+0xa6>
 8000cfc:	4a4c      	ldr	r2, [pc, #304]	; (8000e30 <change_time+0x1c4>)
 8000cfe:	687b      	ldr	r3, [r7, #4]
 8000d00:	18d3      	adds	r3, r2, r3
 8000d02:	781b      	ldrb	r3, [r3, #0]
 8000d04:	3301      	adds	r3, #1
 8000d06:	b2d9      	uxtb	r1, r3
 8000d08:	4a49      	ldr	r2, [pc, #292]	; (8000e30 <change_time+0x1c4>)
 8000d0a:	687b      	ldr	r3, [r7, #4]
 8000d0c:	18d3      	adds	r3, r2, r3
 8000d0e:	1c0a      	adds	r2, r1, #0
 8000d10:	701a      	strb	r2, [r3, #0]
 8000d12:	68fb      	ldr	r3, [r7, #12]
 8000d14:	2b02      	cmp	r3, #2
 8000d16:	d102      	bne.n	8000d1e <change_time+0xb2>
 8000d18:	687b      	ldr	r3, [r7, #4]
 8000d1a:	3301      	adds	r3, #1
 8000d1c:	607b      	str	r3, [r7, #4]
 8000d1e:	687b      	ldr	r3, [r7, #4]
 8000d20:	2b04      	cmp	r3, #4
 8000d22:	d101      	bne.n	8000d28 <change_time+0xbc>
 8000d24:	2300      	movs	r3, #0
 8000d26:	607b      	str	r3, [r7, #4]
 8000d28:	2300      	movs	r3, #0
 8000d2a:	60fb      	str	r3, [r7, #12]
 8000d2c:	2300      	movs	r3, #0
 8000d2e:	60bb      	str	r3, [r7, #8]
 8000d30:	4a3f      	ldr	r2, [pc, #252]	; (8000e30 <change_time+0x1c4>)
 8000d32:	687b      	ldr	r3, [r7, #4]
 8000d34:	18d3      	adds	r3, r2, r3
 8000d36:	781b      	ldrb	r3, [r3, #0]
 8000d38:	1c18      	adds	r0, r3, #0
 8000d3a:	210a      	movs	r1, #10
 8000d3c:	f7ff faa0 	bl	8000280 <__aeabi_uidivmod>
 8000d40:	1c0b      	adds	r3, r1, #0
 8000d42:	b2db      	uxtb	r3, r3
 8000d44:	1c1a      	adds	r2, r3, #0
 8000d46:	4b3b      	ldr	r3, [pc, #236]	; (8000e34 <change_time+0x1c8>)
 8000d48:	0092      	lsls	r2, r2, #2
 8000d4a:	58d3      	ldr	r3, [r2, r3]
 8000d4c:	603b      	str	r3, [r7, #0]
 8000d4e:	687b      	ldr	r3, [r7, #4]
 8000d50:	2b00      	cmp	r3, #0
 8000d52:	d104      	bne.n	8000d5e <change_time+0xf2>
 8000d54:	683b      	ldr	r3, [r7, #0]
 8000d56:	2208      	movs	r2, #8
 8000d58:	4053      	eors	r3, r2
 8000d5a:	603b      	str	r3, [r7, #0]
 8000d5c:	e014      	b.n	8000d88 <change_time+0x11c>
 8000d5e:	687b      	ldr	r3, [r7, #4]
 8000d60:	2b01      	cmp	r3, #1
 8000d62:	d104      	bne.n	8000d6e <change_time+0x102>
 8000d64:	683b      	ldr	r3, [r7, #0]
 8000d66:	2204      	movs	r2, #4
 8000d68:	4053      	eors	r3, r2
 8000d6a:	603b      	str	r3, [r7, #0]
 8000d6c:	e00c      	b.n	8000d88 <change_time+0x11c>
 8000d6e:	687b      	ldr	r3, [r7, #4]
 8000d70:	2b02      	cmp	r3, #2
 8000d72:	d104      	bne.n	8000d7e <change_time+0x112>
 8000d74:	683b      	ldr	r3, [r7, #0]
 8000d76:	2202      	movs	r2, #2
 8000d78:	4053      	eors	r3, r2
 8000d7a:	603b      	str	r3, [r7, #0]
 8000d7c:	e004      	b.n	8000d88 <change_time+0x11c>
 8000d7e:	683b      	ldr	r3, [r7, #0]
 8000d80:	2280      	movs	r2, #128	; 0x80
 8000d82:	0052      	lsls	r2, r2, #1
 8000d84:	4053      	eors	r3, r2
 8000d86:	603b      	str	r3, [r7, #0]
 8000d88:	4b2b      	ldr	r3, [pc, #172]	; (8000e38 <change_time+0x1cc>)
 8000d8a:	683a      	ldr	r2, [r7, #0]
 8000d8c:	615a      	str	r2, [r3, #20]
 8000d8e:	4b22      	ldr	r3, [pc, #136]	; (8000e18 <change_time+0x1ac>)
 8000d90:	2200      	movs	r2, #0
 8000d92:	701a      	strb	r2, [r3, #0]
 8000d94:	68fb      	ldr	r3, [r7, #12]
 8000d96:	2b03      	cmp	r3, #3
 8000d98:	d000      	beq.n	8000d9c <change_time+0x130>
 8000d9a:	e773      	b.n	8000c84 <change_time+0x18>
 8000d9c:	4b24      	ldr	r3, [pc, #144]	; (8000e30 <change_time+0x1c4>)
 8000d9e:	781b      	ldrb	r3, [r3, #0]
 8000da0:	1c18      	adds	r0, r3, #0
 8000da2:	210a      	movs	r1, #10
 8000da4:	f7ff fa6c 	bl	8000280 <__aeabi_uidivmod>
 8000da8:	1c0b      	adds	r3, r1, #0
 8000daa:	b2db      	uxtb	r3, r3
 8000dac:	1c1a      	adds	r2, r3, #0
 8000dae:	1c13      	adds	r3, r2, #0
 8000db0:	009b      	lsls	r3, r3, #2
 8000db2:	189b      	adds	r3, r3, r2
 8000db4:	005b      	lsls	r3, r3, #1
 8000db6:	1c1c      	adds	r4, r3, #0
 8000db8:	4b1d      	ldr	r3, [pc, #116]	; (8000e30 <change_time+0x1c4>)
 8000dba:	785b      	ldrb	r3, [r3, #1]
 8000dbc:	1c18      	adds	r0, r3, #0
 8000dbe:	210a      	movs	r1, #10
 8000dc0:	f7ff fa5e 	bl	8000280 <__aeabi_uidivmod>
 8000dc4:	1c0b      	adds	r3, r1, #0
 8000dc6:	b2db      	uxtb	r3, r3
 8000dc8:	18e2      	adds	r2, r4, r3
 8000dca:	1c13      	adds	r3, r2, #0
 8000dcc:	011b      	lsls	r3, r3, #4
 8000dce:	1a9b      	subs	r3, r3, r2
 8000dd0:	009b      	lsls	r3, r3, #2
 8000dd2:	1c1c      	adds	r4, r3, #0
 8000dd4:	4b16      	ldr	r3, [pc, #88]	; (8000e30 <change_time+0x1c4>)
 8000dd6:	789b      	ldrb	r3, [r3, #2]
 8000dd8:	1c18      	adds	r0, r3, #0
 8000dda:	210a      	movs	r1, #10
 8000ddc:	f7ff fa50 	bl	8000280 <__aeabi_uidivmod>
 8000de0:	1c0b      	adds	r3, r1, #0
 8000de2:	b2db      	uxtb	r3, r3
 8000de4:	1c1a      	adds	r2, r3, #0
 8000de6:	1c13      	adds	r3, r2, #0
 8000de8:	009b      	lsls	r3, r3, #2
 8000dea:	189b      	adds	r3, r3, r2
 8000dec:	005b      	lsls	r3, r3, #1
 8000dee:	18e4      	adds	r4, r4, r3
 8000df0:	4b0f      	ldr	r3, [pc, #60]	; (8000e30 <change_time+0x1c4>)
 8000df2:	78db      	ldrb	r3, [r3, #3]
 8000df4:	1c18      	adds	r0, r3, #0
 8000df6:	210a      	movs	r1, #10
 8000df8:	f7ff fa42 	bl	8000280 <__aeabi_uidivmod>
 8000dfc:	1c0b      	adds	r3, r1, #0
 8000dfe:	b2db      	uxtb	r3, r3
 8000e00:	18e2      	adds	r2, r4, r3
 8000e02:	1c13      	adds	r3, r2, #0
 8000e04:	011b      	lsls	r3, r3, #4
 8000e06:	1a9b      	subs	r3, r3, r2
 8000e08:	009b      	lsls	r3, r3, #2
 8000e0a:	1c1a      	adds	r2, r3, #0
 8000e0c:	4b05      	ldr	r3, [pc, #20]	; (8000e24 <change_time+0x1b8>)
 8000e0e:	601a      	str	r2, [r3, #0]
 8000e10:	46bd      	mov	sp, r7
 8000e12:	b005      	add	sp, #20
 8000e14:	bd90      	pop	{r4, r7, pc}
 8000e16:	46c0      	nop			; (mov r8, r8)
 8000e18:	20000480 	.word	0x20000480
 8000e1c:	20000474 	.word	0x20000474
 8000e20:	000003e7 	.word	0x000003e7
 8000e24:	20000000 	.word	0x20000000
 8000e28:	2000047c 	.word	0x2000047c
 8000e2c:	20000481 	.word	0x20000481
 8000e30:	20000484 	.word	0x20000484
 8000e34:	20000004 	.word	0x20000004
 8000e38:	48000800 	.word	0x48000800

08000e3c <set_alarm>:
 8000e3c:	b590      	push	{r4, r7, lr}
 8000e3e:	b087      	sub	sp, #28
 8000e40:	af00      	add	r7, sp, #0
 8000e42:	6078      	str	r0, [r7, #4]
 8000e44:	2300      	movs	r3, #0
 8000e46:	617b      	str	r3, [r7, #20]
 8000e48:	2300      	movs	r3, #0
 8000e4a:	613b      	str	r3, [r7, #16]
 8000e4c:	2300      	movs	r3, #0
 8000e4e:	60fb      	str	r3, [r7, #12]
 8000e50:	2300      	movs	r3, #0
 8000e52:	60bb      	str	r3, [r7, #8]
 8000e54:	687b      	ldr	r3, [r7, #4]
 8000e56:	681b      	ldr	r3, [r3, #0]
 8000e58:	1c18      	adds	r0, r3, #0
 8000e5a:	4983      	ldr	r1, [pc, #524]	; (8001068 <set_alarm+0x22c>)
 8000e5c:	f7ff fa1a 	bl	8000294 <__aeabi_idiv>
 8000e60:	1c03      	adds	r3, r0, #0
 8000e62:	b2da      	uxtb	r2, r3
 8000e64:	4b81      	ldr	r3, [pc, #516]	; (800106c <set_alarm+0x230>)
 8000e66:	701a      	strb	r2, [r3, #0]
 8000e68:	687b      	ldr	r3, [r7, #4]
 8000e6a:	681b      	ldr	r3, [r3, #0]
 8000e6c:	1c18      	adds	r0, r3, #0
 8000e6e:	23e1      	movs	r3, #225	; 0xe1
 8000e70:	0119      	lsls	r1, r3, #4
 8000e72:	f7ff fa0f 	bl	8000294 <__aeabi_idiv>
 8000e76:	1c03      	adds	r3, r0, #0
 8000e78:	1c18      	adds	r0, r3, #0
 8000e7a:	210a      	movs	r1, #10
 8000e7c:	f7ff faf0 	bl	8000460 <__aeabi_idivmod>
 8000e80:	1c0b      	adds	r3, r1, #0
 8000e82:	b2da      	uxtb	r2, r3
 8000e84:	4b79      	ldr	r3, [pc, #484]	; (800106c <set_alarm+0x230>)
 8000e86:	705a      	strb	r2, [r3, #1]
 8000e88:	687b      	ldr	r3, [r7, #4]
 8000e8a:	681b      	ldr	r3, [r3, #0]
 8000e8c:	1c18      	adds	r0, r3, #0
 8000e8e:	23e1      	movs	r3, #225	; 0xe1
 8000e90:	0119      	lsls	r1, r3, #4
 8000e92:	f7ff fae5 	bl	8000460 <__aeabi_idivmod>
 8000e96:	1c0b      	adds	r3, r1, #0
 8000e98:	1c18      	adds	r0, r3, #0
 8000e9a:	2396      	movs	r3, #150	; 0x96
 8000e9c:	0099      	lsls	r1, r3, #2
 8000e9e:	f7ff f9f9 	bl	8000294 <__aeabi_idiv>
 8000ea2:	1c03      	adds	r3, r0, #0
 8000ea4:	b2da      	uxtb	r2, r3
 8000ea6:	4b71      	ldr	r3, [pc, #452]	; (800106c <set_alarm+0x230>)
 8000ea8:	709a      	strb	r2, [r3, #2]
 8000eaa:	687b      	ldr	r3, [r7, #4]
 8000eac:	681b      	ldr	r3, [r3, #0]
 8000eae:	1c18      	adds	r0, r3, #0
 8000eb0:	23e1      	movs	r3, #225	; 0xe1
 8000eb2:	0119      	lsls	r1, r3, #4
 8000eb4:	f7ff fad4 	bl	8000460 <__aeabi_idivmod>
 8000eb8:	1c0b      	adds	r3, r1, #0
 8000eba:	1c18      	adds	r0, r3, #0
 8000ebc:	213c      	movs	r1, #60	; 0x3c
 8000ebe:	f7ff f9e9 	bl	8000294 <__aeabi_idiv>
 8000ec2:	1c03      	adds	r3, r0, #0
 8000ec4:	1c18      	adds	r0, r3, #0
 8000ec6:	210a      	movs	r1, #10
 8000ec8:	f7ff faca 	bl	8000460 <__aeabi_idivmod>
 8000ecc:	1c0b      	adds	r3, r1, #0
 8000ece:	b2da      	uxtb	r2, r3
 8000ed0:	4b66      	ldr	r3, [pc, #408]	; (800106c <set_alarm+0x230>)
 8000ed2:	70da      	strb	r2, [r3, #3]
 8000ed4:	e087      	b.n	8000fe6 <set_alarm+0x1aa>
 8000ed6:	4b66      	ldr	r3, [pc, #408]	; (8001070 <set_alarm+0x234>)
 8000ed8:	781b      	ldrb	r3, [r3, #0]
 8000eda:	2b00      	cmp	r3, #0
 8000edc:	d100      	bne.n	8000ee0 <set_alarm+0xa4>
 8000ede:	e082      	b.n	8000fe6 <set_alarm+0x1aa>
 8000ee0:	4b64      	ldr	r3, [pc, #400]	; (8001074 <set_alarm+0x238>)
 8000ee2:	681b      	ldr	r3, [r3, #0]
 8000ee4:	4a64      	ldr	r2, [pc, #400]	; (8001078 <set_alarm+0x23c>)
 8000ee6:	4293      	cmp	r3, r2
 8000ee8:	dd07      	ble.n	8000efa <set_alarm+0xbe>
 8000eea:	4b62      	ldr	r3, [pc, #392]	; (8001074 <set_alarm+0x238>)
 8000eec:	2200      	movs	r2, #0
 8000eee:	601a      	str	r2, [r3, #0]
 8000ef0:	4b62      	ldr	r3, [pc, #392]	; (800107c <set_alarm+0x240>)
 8000ef2:	681b      	ldr	r3, [r3, #0]
 8000ef4:	1c5a      	adds	r2, r3, #1
 8000ef6:	4b61      	ldr	r3, [pc, #388]	; (800107c <set_alarm+0x240>)
 8000ef8:	601a      	str	r2, [r3, #0]
 8000efa:	4b61      	ldr	r3, [pc, #388]	; (8001080 <set_alarm+0x244>)
 8000efc:	681b      	ldr	r3, [r3, #0]
 8000efe:	3396      	adds	r3, #150	; 0x96
 8000f00:	1c18      	adds	r0, r3, #0
 8000f02:	23fa      	movs	r3, #250	; 0xfa
 8000f04:	0099      	lsls	r1, r3, #2
 8000f06:	f7ff faab 	bl	8000460 <__aeabi_idivmod>
 8000f0a:	1c0b      	adds	r3, r1, #0
 8000f0c:	1e1a      	subs	r2, r3, #0
 8000f0e:	4b59      	ldr	r3, [pc, #356]	; (8001074 <set_alarm+0x238>)
 8000f10:	681b      	ldr	r3, [r3, #0]
 8000f12:	429a      	cmp	r2, r3
 8000f14:	d10f      	bne.n	8000f36 <set_alarm+0xfa>
 8000f16:	4b5b      	ldr	r3, [pc, #364]	; (8001084 <set_alarm+0x248>)
 8000f18:	781b      	ldrb	r3, [r3, #0]
 8000f1a:	2b00      	cmp	r3, #0
 8000f1c:	d00b      	beq.n	8000f36 <set_alarm+0xfa>
 8000f1e:	693b      	ldr	r3, [r7, #16]
 8000f20:	2b00      	cmp	r3, #0
 8000f22:	d102      	bne.n	8000f2a <set_alarm+0xee>
 8000f24:	4b55      	ldr	r3, [pc, #340]	; (800107c <set_alarm+0x240>)
 8000f26:	681b      	ldr	r3, [r3, #0]
 8000f28:	613b      	str	r3, [r7, #16]
 8000f2a:	697b      	ldr	r3, [r7, #20]
 8000f2c:	3301      	adds	r3, #1
 8000f2e:	617b      	str	r3, [r7, #20]
 8000f30:	4b54      	ldr	r3, [pc, #336]	; (8001084 <set_alarm+0x248>)
 8000f32:	2200      	movs	r2, #0
 8000f34:	701a      	strb	r2, [r3, #0]
 8000f36:	4b51      	ldr	r3, [pc, #324]	; (800107c <set_alarm+0x240>)
 8000f38:	681a      	ldr	r2, [r3, #0]
 8000f3a:	693b      	ldr	r3, [r7, #16]
 8000f3c:	1ad3      	subs	r3, r2, r3
 8000f3e:	2b01      	cmp	r3, #1
 8000f40:	dd1f      	ble.n	8000f82 <set_alarm+0x146>
 8000f42:	693b      	ldr	r3, [r7, #16]
 8000f44:	2b00      	cmp	r3, #0
 8000f46:	d01c      	beq.n	8000f82 <set_alarm+0x146>
 8000f48:	697b      	ldr	r3, [r7, #20]
 8000f4a:	2b01      	cmp	r3, #1
 8000f4c:	d10a      	bne.n	8000f64 <set_alarm+0x128>
 8000f4e:	4a47      	ldr	r2, [pc, #284]	; (800106c <set_alarm+0x230>)
 8000f50:	68fb      	ldr	r3, [r7, #12]
 8000f52:	18d3      	adds	r3, r2, r3
 8000f54:	781b      	ldrb	r3, [r3, #0]
 8000f56:	3301      	adds	r3, #1
 8000f58:	b2d9      	uxtb	r1, r3
 8000f5a:	4a44      	ldr	r2, [pc, #272]	; (800106c <set_alarm+0x230>)
 8000f5c:	68fb      	ldr	r3, [r7, #12]
 8000f5e:	18d3      	adds	r3, r2, r3
 8000f60:	1c0a      	adds	r2, r1, #0
 8000f62:	701a      	strb	r2, [r3, #0]
 8000f64:	697b      	ldr	r3, [r7, #20]
 8000f66:	2b02      	cmp	r3, #2
 8000f68:	d102      	bne.n	8000f70 <set_alarm+0x134>
 8000f6a:	68fb      	ldr	r3, [r7, #12]
 8000f6c:	3301      	adds	r3, #1
 8000f6e:	60fb      	str	r3, [r7, #12]
 8000f70:	68fb      	ldr	r3, [r7, #12]
 8000f72:	2b04      	cmp	r3, #4
 8000f74:	d101      	bne.n	8000f7a <set_alarm+0x13e>
 8000f76:	2300      	movs	r3, #0
 8000f78:	60fb      	str	r3, [r7, #12]
 8000f7a:	2300      	movs	r3, #0
 8000f7c:	617b      	str	r3, [r7, #20]
 8000f7e:	2300      	movs	r3, #0
 8000f80:	613b      	str	r3, [r7, #16]
 8000f82:	4a3a      	ldr	r2, [pc, #232]	; (800106c <set_alarm+0x230>)
 8000f84:	68fb      	ldr	r3, [r7, #12]
 8000f86:	18d3      	adds	r3, r2, r3
 8000f88:	781b      	ldrb	r3, [r3, #0]
 8000f8a:	1c18      	adds	r0, r3, #0
 8000f8c:	210a      	movs	r1, #10
 8000f8e:	f7ff f977 	bl	8000280 <__aeabi_uidivmod>
 8000f92:	1c0b      	adds	r3, r1, #0
 8000f94:	b2db      	uxtb	r3, r3
 8000f96:	1c1a      	adds	r2, r3, #0
 8000f98:	4b3b      	ldr	r3, [pc, #236]	; (8001088 <set_alarm+0x24c>)
 8000f9a:	0092      	lsls	r2, r2, #2
 8000f9c:	58d3      	ldr	r3, [r2, r3]
 8000f9e:	60bb      	str	r3, [r7, #8]
 8000fa0:	68fb      	ldr	r3, [r7, #12]
 8000fa2:	2b00      	cmp	r3, #0
 8000fa4:	d104      	bne.n	8000fb0 <set_alarm+0x174>
 8000fa6:	68bb      	ldr	r3, [r7, #8]
 8000fa8:	2208      	movs	r2, #8
 8000faa:	4053      	eors	r3, r2
 8000fac:	60bb      	str	r3, [r7, #8]
 8000fae:	e014      	b.n	8000fda <set_alarm+0x19e>
 8000fb0:	68fb      	ldr	r3, [r7, #12]
 8000fb2:	2b01      	cmp	r3, #1
 8000fb4:	d104      	bne.n	8000fc0 <set_alarm+0x184>
 8000fb6:	68bb      	ldr	r3, [r7, #8]
 8000fb8:	2204      	movs	r2, #4
 8000fba:	4053      	eors	r3, r2
 8000fbc:	60bb      	str	r3, [r7, #8]
 8000fbe:	e00c      	b.n	8000fda <set_alarm+0x19e>
 8000fc0:	68fb      	ldr	r3, [r7, #12]
 8000fc2:	2b02      	cmp	r3, #2
 8000fc4:	d104      	bne.n	8000fd0 <set_alarm+0x194>
 8000fc6:	68bb      	ldr	r3, [r7, #8]
 8000fc8:	2202      	movs	r2, #2
 8000fca:	4053      	eors	r3, r2
 8000fcc:	60bb      	str	r3, [r7, #8]
 8000fce:	e004      	b.n	8000fda <set_alarm+0x19e>
 8000fd0:	68bb      	ldr	r3, [r7, #8]
 8000fd2:	2280      	movs	r2, #128	; 0x80
 8000fd4:	0052      	lsls	r2, r2, #1
 8000fd6:	4053      	eors	r3, r2
 8000fd8:	60bb      	str	r3, [r7, #8]
 8000fda:	4b2c      	ldr	r3, [pc, #176]	; (800108c <set_alarm+0x250>)
 8000fdc:	68ba      	ldr	r2, [r7, #8]
 8000fde:	615a      	str	r2, [r3, #20]
 8000fe0:	4b23      	ldr	r3, [pc, #140]	; (8001070 <set_alarm+0x234>)
 8000fe2:	2200      	movs	r2, #0
 8000fe4:	701a      	strb	r2, [r3, #0]
 8000fe6:	697b      	ldr	r3, [r7, #20]
 8000fe8:	2b03      	cmp	r3, #3
 8000fea:	d000      	beq.n	8000fee <set_alarm+0x1b2>
 8000fec:	e773      	b.n	8000ed6 <set_alarm+0x9a>
 8000fee:	4b1f      	ldr	r3, [pc, #124]	; (800106c <set_alarm+0x230>)
 8000ff0:	781b      	ldrb	r3, [r3, #0]
 8000ff2:	1c18      	adds	r0, r3, #0
 8000ff4:	210a      	movs	r1, #10
 8000ff6:	f7ff f943 	bl	8000280 <__aeabi_uidivmod>
 8000ffa:	1c0b      	adds	r3, r1, #0
 8000ffc:	b2db      	uxtb	r3, r3
 8000ffe:	1c1a      	adds	r2, r3, #0
 8001000:	1c13      	adds	r3, r2, #0
 8001002:	009b      	lsls	r3, r3, #2
 8001004:	189b      	adds	r3, r3, r2
 8001006:	005b      	lsls	r3, r3, #1
 8001008:	1c1c      	adds	r4, r3, #0
 800100a:	4b18      	ldr	r3, [pc, #96]	; (800106c <set_alarm+0x230>)
 800100c:	785b      	ldrb	r3, [r3, #1]
 800100e:	1c18      	adds	r0, r3, #0
 8001010:	210a      	movs	r1, #10
 8001012:	f7ff f935 	bl	8000280 <__aeabi_uidivmod>
 8001016:	1c0b      	adds	r3, r1, #0
 8001018:	b2db      	uxtb	r3, r3
 800101a:	18e2      	adds	r2, r4, r3
 800101c:	1c13      	adds	r3, r2, #0
 800101e:	011b      	lsls	r3, r3, #4
 8001020:	1a9b      	subs	r3, r3, r2
 8001022:	009b      	lsls	r3, r3, #2
 8001024:	1c1c      	adds	r4, r3, #0
 8001026:	4b11      	ldr	r3, [pc, #68]	; (800106c <set_alarm+0x230>)
 8001028:	789b      	ldrb	r3, [r3, #2]
 800102a:	1c18      	adds	r0, r3, #0
 800102c:	210a      	movs	r1, #10
 800102e:	f7ff f927 	bl	8000280 <__aeabi_uidivmod>
 8001032:	1c0b      	adds	r3, r1, #0
 8001034:	b2db      	uxtb	r3, r3
 8001036:	1c1a      	adds	r2, r3, #0
 8001038:	1c13      	adds	r3, r2, #0
 800103a:	009b      	lsls	r3, r3, #2
 800103c:	189b      	adds	r3, r3, r2
 800103e:	005b      	lsls	r3, r3, #1
 8001040:	18e4      	adds	r4, r4, r3
 8001042:	4b0a      	ldr	r3, [pc, #40]	; (800106c <set_alarm+0x230>)
 8001044:	78db      	ldrb	r3, [r3, #3]
 8001046:	1c18      	adds	r0, r3, #0
 8001048:	210a      	movs	r1, #10
 800104a:	f7ff f919 	bl	8000280 <__aeabi_uidivmod>
 800104e:	1c0b      	adds	r3, r1, #0
 8001050:	b2db      	uxtb	r3, r3
 8001052:	18e2      	adds	r2, r4, r3
 8001054:	1c13      	adds	r3, r2, #0
 8001056:	011b      	lsls	r3, r3, #4
 8001058:	1a9b      	subs	r3, r3, r2
 800105a:	009b      	lsls	r3, r3, #2
 800105c:	1c1a      	adds	r2, r3, #0
 800105e:	687b      	ldr	r3, [r7, #4]
 8001060:	601a      	str	r2, [r3, #0]
 8001062:	46bd      	mov	sp, r7
 8001064:	b007      	add	sp, #28
 8001066:	bd90      	pop	{r4, r7, pc}
 8001068:	00008ca0 	.word	0x00008ca0
 800106c:	20000484 	.word	0x20000484
 8001070:	20000480 	.word	0x20000480
 8001074:	20000474 	.word	0x20000474
 8001078:	000003e7 	.word	0x000003e7
 800107c:	20000000 	.word	0x20000000
 8001080:	2000047c 	.word	0x2000047c
 8001084:	20000481 	.word	0x20000481
 8001088:	20000004 	.word	0x20000004
 800108c:	48000800 	.word	0x48000800

08001090 <budit>:
 8001090:	b580      	push	{r7, lr}
 8001092:	b082      	sub	sp, #8
 8001094:	af00      	add	r7, sp, #0
 8001096:	6078      	str	r0, [r7, #4]
 8001098:	e01f      	b.n	80010da <budit+0x4a>
 800109a:	4b13      	ldr	r3, [pc, #76]	; (80010e8 <budit+0x58>)
 800109c:	681b      	ldr	r3, [r3, #0]
 800109e:	4a13      	ldr	r2, [pc, #76]	; (80010ec <budit+0x5c>)
 80010a0:	4293      	cmp	r3, r2
 80010a2:	dd0a      	ble.n	80010ba <budit+0x2a>
 80010a4:	4b12      	ldr	r3, [pc, #72]	; (80010f0 <budit+0x60>)
 80010a6:	681b      	ldr	r3, [r3, #0]
 80010a8:	1c5a      	adds	r2, r3, #1
 80010aa:	4b11      	ldr	r3, [pc, #68]	; (80010f0 <budit+0x60>)
 80010ac:	601a      	str	r2, [r3, #0]
 80010ae:	4b0e      	ldr	r3, [pc, #56]	; (80010e8 <budit+0x58>)
 80010b0:	2200      	movs	r2, #0
 80010b2:	601a      	str	r2, [r3, #0]
 80010b4:	687b      	ldr	r3, [r7, #4]
 80010b6:	3b01      	subs	r3, #1
 80010b8:	607b      	str	r3, [r7, #4]
 80010ba:	4b0b      	ldr	r3, [pc, #44]	; (80010e8 <budit+0x58>)
 80010bc:	681b      	ldr	r3, [r3, #0]
 80010be:	2b05      	cmp	r3, #5
 80010c0:	d102      	bne.n	80010c8 <budit+0x38>
 80010c2:	4b0c      	ldr	r3, [pc, #48]	; (80010f4 <budit+0x64>)
 80010c4:	4a0c      	ldr	r2, [pc, #48]	; (80010f8 <budit+0x68>)
 80010c6:	615a      	str	r2, [r3, #20]
 80010c8:	4b07      	ldr	r3, [pc, #28]	; (80010e8 <budit+0x58>)
 80010ca:	681a      	ldr	r2, [r3, #0]
 80010cc:	23fa      	movs	r3, #250	; 0xfa
 80010ce:	005b      	lsls	r3, r3, #1
 80010d0:	429a      	cmp	r2, r3
 80010d2:	d102      	bne.n	80010da <budit+0x4a>
 80010d4:	4b07      	ldr	r3, [pc, #28]	; (80010f4 <budit+0x64>)
 80010d6:	2200      	movs	r2, #0
 80010d8:	615a      	str	r2, [r3, #20]
 80010da:	687b      	ldr	r3, [r7, #4]
 80010dc:	2b00      	cmp	r3, #0
 80010de:	d1dc      	bne.n	800109a <budit+0xa>
 80010e0:	46bd      	mov	sp, r7
 80010e2:	b002      	add	sp, #8
 80010e4:	bd80      	pop	{r7, pc}
 80010e6:	46c0      	nop			; (mov r8, r8)
 80010e8:	20000474 	.word	0x20000474
 80010ec:	000003e7 	.word	0x000003e7
 80010f0:	20000000 	.word	0x20000000
 80010f4:	48000800 	.word	0x48000800
 80010f8:	00000ef1 	.word	0x00000ef1

080010fc <buttoninit>:
 80010fc:	b580      	push	{r7, lr}
 80010fe:	af00      	add	r7, sp, #0
 8001100:	2380      	movs	r3, #128	; 0x80
 8001102:	029b      	lsls	r3, r3, #10
 8001104:	1c18      	adds	r0, r3, #0
 8001106:	f7ff fa85 	bl	8000614 <LL_AHB1_GRP1_EnableClock>
 800110a:	2390      	movs	r3, #144	; 0x90
 800110c:	05db      	lsls	r3, r3, #23
 800110e:	1c18      	adds	r0, r3, #0
 8001110:	2101      	movs	r1, #1
 8001112:	2200      	movs	r2, #0
 8001114:	f7ff faaa 	bl	800066c <LL_GPIO_SetPinMode>
 8001118:	2390      	movs	r3, #144	; 0x90
 800111a:	05db      	lsls	r3, r3, #23
 800111c:	1c18      	adds	r0, r3, #0
 800111e:	2101      	movs	r1, #1
 8001120:	2200      	movs	r2, #0
 8001122:	f7ff fabf 	bl	80006a4 <LL_GPIO_SetPinPull>
 8001126:	2001      	movs	r0, #1
 8001128:	f7ff fa8a 	bl	8000640 <LL_APB1_GRP2_EnableClock>
 800112c:	2000      	movs	r0, #0
 800112e:	2100      	movs	r1, #0
 8001130:	f7ff fba0 	bl	8000874 <LL_SYSCFG_SetEXTISource>
 8001134:	2001      	movs	r0, #1
 8001136:	f7ff fb71 	bl	800081c <LL_EXTI_EnableIT_0_31>
 800113a:	2001      	movs	r0, #1
 800113c:	f7ff fb7e 	bl	800083c <LL_EXTI_EnableRisingTrig_0_31>
 8001140:	2005      	movs	r0, #5
 8001142:	f7ff f9c3 	bl	80004cc <NVIC_EnableIRQ>
 8001146:	2005      	movs	r0, #5
 8001148:	2110      	movs	r1, #16
 800114a:	f7ff f9d5 	bl	80004f8 <NVIC_SetPriority>
 800114e:	46bd      	mov	sp, r7
 8001150:	bd80      	pop	{r7, pc}
 8001152:	46c0      	nop			; (mov r8, r8)

08001154 <NMI_Handler>:
 8001154:	b580      	push	{r7, lr}
 8001156:	af00      	add	r7, sp, #0
 8001158:	46bd      	mov	sp, r7
 800115a:	bd80      	pop	{r7, pc}

0800115c <HardFault_Handler>:
 800115c:	b580      	push	{r7, lr}
 800115e:	af00      	add	r7, sp, #0
 8001160:	e7fe      	b.n	8001160 <HardFault_Handler+0x4>
 8001162:	46c0      	nop			; (mov r8, r8)

08001164 <SVC_Handler>:
 8001164:	b580      	push	{r7, lr}
 8001166:	af00      	add	r7, sp, #0
 8001168:	46bd      	mov	sp, r7
 800116a:	bd80      	pop	{r7, pc}

0800116c <PendSV_Handler>:
 800116c:	b580      	push	{r7, lr}
 800116e:	af00      	add	r7, sp, #0
 8001170:	46bd      	mov	sp, r7
 8001172:	bd80      	pop	{r7, pc}

08001174 <SysTick_Handler>:
 8001174:	b580      	push	{r7, lr}
 8001176:	af00      	add	r7, sp, #0
 8001178:	4b04      	ldr	r3, [pc, #16]	; (800118c <SysTick_Handler+0x18>)
 800117a:	681b      	ldr	r3, [r3, #0]
 800117c:	1c5a      	adds	r2, r3, #1
 800117e:	4b03      	ldr	r3, [pc, #12]	; (800118c <SysTick_Handler+0x18>)
 8001180:	601a      	str	r2, [r3, #0]
 8001182:	4b03      	ldr	r3, [pc, #12]	; (8001190 <SysTick_Handler+0x1c>)
 8001184:	2201      	movs	r2, #1
 8001186:	701a      	strb	r2, [r3, #0]
 8001188:	46bd      	mov	sp, r7
 800118a:	bd80      	pop	{r7, pc}
 800118c:	20000474 	.word	0x20000474
 8001190:	20000480 	.word	0x20000480

08001194 <EXTI0_1_IRQHandler>:
 8001194:	b580      	push	{r7, lr}
 8001196:	af00      	add	r7, sp, #0
 8001198:	4b08      	ldr	r3, [pc, #32]	; (80011bc <EXTI0_1_IRQHandler+0x28>)
 800119a:	781b      	ldrb	r3, [r3, #0]
 800119c:	2b00      	cmp	r3, #0
 800119e:	d107      	bne.n	80011b0 <EXTI0_1_IRQHandler+0x1c>
 80011a0:	4b06      	ldr	r3, [pc, #24]	; (80011bc <EXTI0_1_IRQHandler+0x28>)
 80011a2:	2201      	movs	r2, #1
 80011a4:	701a      	strb	r2, [r3, #0]
 80011a6:	4b06      	ldr	r3, [pc, #24]	; (80011c0 <EXTI0_1_IRQHandler+0x2c>)
 80011a8:	681b      	ldr	r3, [r3, #0]
 80011aa:	1e5a      	subs	r2, r3, #1
 80011ac:	4b05      	ldr	r3, [pc, #20]	; (80011c4 <EXTI0_1_IRQHandler+0x30>)
 80011ae:	601a      	str	r2, [r3, #0]
 80011b0:	2001      	movs	r0, #1
 80011b2:	f7ff fb53 	bl	800085c <LL_EXTI_ClearFlag_0_31>
 80011b6:	46bd      	mov	sp, r7
 80011b8:	bd80      	pop	{r7, pc}
 80011ba:	46c0      	nop			; (mov r8, r8)
 80011bc:	20000481 	.word	0x20000481
 80011c0:	20000474 	.word	0x20000474
 80011c4:	2000047c 	.word	0x2000047c

080011c8 <SystemInit>:
 80011c8:	b580      	push	{r7, lr}
 80011ca:	af00      	add	r7, sp, #0
 80011cc:	4b1a      	ldr	r3, [pc, #104]	; (8001238 <SystemInit+0x70>)
 80011ce:	4a1a      	ldr	r2, [pc, #104]	; (8001238 <SystemInit+0x70>)
 80011d0:	6812      	ldr	r2, [r2, #0]
 80011d2:	2101      	movs	r1, #1
 80011d4:	430a      	orrs	r2, r1
 80011d6:	601a      	str	r2, [r3, #0]
 80011d8:	4b17      	ldr	r3, [pc, #92]	; (8001238 <SystemInit+0x70>)
 80011da:	4a17      	ldr	r2, [pc, #92]	; (8001238 <SystemInit+0x70>)
 80011dc:	6852      	ldr	r2, [r2, #4]
 80011de:	4917      	ldr	r1, [pc, #92]	; (800123c <SystemInit+0x74>)
 80011e0:	400a      	ands	r2, r1
 80011e2:	605a      	str	r2, [r3, #4]
 80011e4:	4b14      	ldr	r3, [pc, #80]	; (8001238 <SystemInit+0x70>)
 80011e6:	4a14      	ldr	r2, [pc, #80]	; (8001238 <SystemInit+0x70>)
 80011e8:	6812      	ldr	r2, [r2, #0]
 80011ea:	4915      	ldr	r1, [pc, #84]	; (8001240 <SystemInit+0x78>)
 80011ec:	400a      	ands	r2, r1
 80011ee:	601a      	str	r2, [r3, #0]
 80011f0:	4b11      	ldr	r3, [pc, #68]	; (8001238 <SystemInit+0x70>)
 80011f2:	4a11      	ldr	r2, [pc, #68]	; (8001238 <SystemInit+0x70>)
 80011f4:	6812      	ldr	r2, [r2, #0]
 80011f6:	4913      	ldr	r1, [pc, #76]	; (8001244 <SystemInit+0x7c>)
 80011f8:	400a      	ands	r2, r1
 80011fa:	601a      	str	r2, [r3, #0]
 80011fc:	4b0e      	ldr	r3, [pc, #56]	; (8001238 <SystemInit+0x70>)
 80011fe:	4a0e      	ldr	r2, [pc, #56]	; (8001238 <SystemInit+0x70>)
 8001200:	6852      	ldr	r2, [r2, #4]
 8001202:	4911      	ldr	r1, [pc, #68]	; (8001248 <SystemInit+0x80>)
 8001204:	400a      	ands	r2, r1
 8001206:	605a      	str	r2, [r3, #4]
 8001208:	4b0b      	ldr	r3, [pc, #44]	; (8001238 <SystemInit+0x70>)
 800120a:	4a0b      	ldr	r2, [pc, #44]	; (8001238 <SystemInit+0x70>)
 800120c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800120e:	210f      	movs	r1, #15
 8001210:	438a      	bics	r2, r1
 8001212:	62da      	str	r2, [r3, #44]	; 0x2c
 8001214:	4b08      	ldr	r3, [pc, #32]	; (8001238 <SystemInit+0x70>)
 8001216:	4a08      	ldr	r2, [pc, #32]	; (8001238 <SystemInit+0x70>)
 8001218:	6b12      	ldr	r2, [r2, #48]	; 0x30
 800121a:	490c      	ldr	r1, [pc, #48]	; (800124c <SystemInit+0x84>)
 800121c:	400a      	ands	r2, r1
 800121e:	631a      	str	r2, [r3, #48]	; 0x30
 8001220:	4b05      	ldr	r3, [pc, #20]	; (8001238 <SystemInit+0x70>)
 8001222:	4a05      	ldr	r2, [pc, #20]	; (8001238 <SystemInit+0x70>)
 8001224:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8001226:	2101      	movs	r1, #1
 8001228:	438a      	bics	r2, r1
 800122a:	635a      	str	r2, [r3, #52]	; 0x34
 800122c:	4b02      	ldr	r3, [pc, #8]	; (8001238 <SystemInit+0x70>)
 800122e:	2200      	movs	r2, #0
 8001230:	609a      	str	r2, [r3, #8]
 8001232:	46bd      	mov	sp, r7
 8001234:	bd80      	pop	{r7, pc}
 8001236:	46c0      	nop			; (mov r8, r8)
 8001238:	40021000 	.word	0x40021000
 800123c:	f8ffb80c 	.word	0xf8ffb80c
 8001240:	fef6ffff 	.word	0xfef6ffff
 8001244:	fffbffff 	.word	0xfffbffff
 8001248:	ffc0ffff 	.word	0xffc0ffff
 800124c:	fffffeac 	.word	0xfffffeac

08001250 <atexit>:
 8001250:	b508      	push	{r3, lr}
 8001252:	1c01      	adds	r1, r0, #0
 8001254:	2200      	movs	r2, #0
 8001256:	2000      	movs	r0, #0
 8001258:	2300      	movs	r3, #0
 800125a:	f000 f83f 	bl	80012dc <__register_exitproc>
 800125e:	bd08      	pop	{r3, pc}

08001260 <__libc_fini_array>:
 8001260:	b538      	push	{r3, r4, r5, lr}
 8001262:	4b09      	ldr	r3, [pc, #36]	; (8001288 <__libc_fini_array+0x28>)
 8001264:	4c09      	ldr	r4, [pc, #36]	; (800128c <__libc_fini_array+0x2c>)
 8001266:	1ae4      	subs	r4, r4, r3
 8001268:	10a4      	asrs	r4, r4, #2
 800126a:	d009      	beq.n	8001280 <__libc_fini_array+0x20>
 800126c:	4a08      	ldr	r2, [pc, #32]	; (8001290 <__libc_fini_array+0x30>)
 800126e:	18a5      	adds	r5, r4, r2
 8001270:	00ad      	lsls	r5, r5, #2
 8001272:	18ed      	adds	r5, r5, r3
 8001274:	682b      	ldr	r3, [r5, #0]
 8001276:	3c01      	subs	r4, #1
 8001278:	4798      	blx	r3
 800127a:	3d04      	subs	r5, #4
 800127c:	2c00      	cmp	r4, #0
 800127e:	d1f9      	bne.n	8001274 <__libc_fini_array+0x14>
 8001280:	f000 f8a8 	bl	80013d4 <_fini>
 8001284:	bd38      	pop	{r3, r4, r5, pc}
 8001286:	46c0      	nop			; (mov r8, r8)
 8001288:	080013f0 	.word	0x080013f0
 800128c:	080013f4 	.word	0x080013f4
 8001290:	3fffffff 	.word	0x3fffffff

08001294 <__libc_init_array>:
 8001294:	b570      	push	{r4, r5, r6, lr}
 8001296:	4e0d      	ldr	r6, [pc, #52]	; (80012cc <__libc_init_array+0x38>)
 8001298:	4d0d      	ldr	r5, [pc, #52]	; (80012d0 <__libc_init_array+0x3c>)
 800129a:	2400      	movs	r4, #0
 800129c:	1bad      	subs	r5, r5, r6
 800129e:	10ad      	asrs	r5, r5, #2
 80012a0:	d005      	beq.n	80012ae <__libc_init_array+0x1a>
 80012a2:	00a3      	lsls	r3, r4, #2
 80012a4:	58f3      	ldr	r3, [r6, r3]
 80012a6:	3401      	adds	r4, #1
 80012a8:	4798      	blx	r3
 80012aa:	42a5      	cmp	r5, r4
 80012ac:	d1f9      	bne.n	80012a2 <__libc_init_array+0xe>
 80012ae:	f000 f88b 	bl	80013c8 <_init>
 80012b2:	4e08      	ldr	r6, [pc, #32]	; (80012d4 <__libc_init_array+0x40>)
 80012b4:	4d08      	ldr	r5, [pc, #32]	; (80012d8 <__libc_init_array+0x44>)
 80012b6:	2400      	movs	r4, #0
 80012b8:	1bad      	subs	r5, r5, r6
 80012ba:	10ad      	asrs	r5, r5, #2
 80012bc:	d005      	beq.n	80012ca <__libc_init_array+0x36>
 80012be:	00a3      	lsls	r3, r4, #2
 80012c0:	58f3      	ldr	r3, [r6, r3]
 80012c2:	3401      	adds	r4, #1
 80012c4:	4798      	blx	r3
 80012c6:	42a5      	cmp	r5, r4
 80012c8:	d1f9      	bne.n	80012be <__libc_init_array+0x2a>
 80012ca:	bd70      	pop	{r4, r5, r6, pc}
 80012cc:	080013e8 	.word	0x080013e8
 80012d0:	080013e8 	.word	0x080013e8
 80012d4:	080013e8 	.word	0x080013e8
 80012d8:	080013f0 	.word	0x080013f0

080012dc <__register_exitproc>:
 80012dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80012de:	4644      	mov	r4, r8
 80012e0:	465f      	mov	r7, fp
 80012e2:	4656      	mov	r6, sl
 80012e4:	464d      	mov	r5, r9
 80012e6:	469b      	mov	fp, r3
 80012e8:	4b2f      	ldr	r3, [pc, #188]	; (80013a8 <__register_exitproc+0xcc>)
 80012ea:	b4f0      	push	{r4, r5, r6, r7}
 80012ec:	681c      	ldr	r4, [r3, #0]
 80012ee:	23a4      	movs	r3, #164	; 0xa4
 80012f0:	005b      	lsls	r3, r3, #1
 80012f2:	1c05      	adds	r5, r0, #0
 80012f4:	58e0      	ldr	r0, [r4, r3]
 80012f6:	1c0e      	adds	r6, r1, #0
 80012f8:	4690      	mov	r8, r2
 80012fa:	2800      	cmp	r0, #0
 80012fc:	d04b      	beq.n	8001396 <__register_exitproc+0xba>
 80012fe:	6843      	ldr	r3, [r0, #4]
 8001300:	2b1f      	cmp	r3, #31
 8001302:	dc0d      	bgt.n	8001320 <__register_exitproc+0x44>
 8001304:	1c5c      	adds	r4, r3, #1
 8001306:	2d00      	cmp	r5, #0
 8001308:	d121      	bne.n	800134e <__register_exitproc+0x72>
 800130a:	3302      	adds	r3, #2
 800130c:	009b      	lsls	r3, r3, #2
 800130e:	6044      	str	r4, [r0, #4]
 8001310:	501e      	str	r6, [r3, r0]
 8001312:	2000      	movs	r0, #0
 8001314:	bc3c      	pop	{r2, r3, r4, r5}
 8001316:	4690      	mov	r8, r2
 8001318:	4699      	mov	r9, r3
 800131a:	46a2      	mov	sl, r4
 800131c:	46ab      	mov	fp, r5
 800131e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001320:	4b22      	ldr	r3, [pc, #136]	; (80013ac <__register_exitproc+0xd0>)
 8001322:	2b00      	cmp	r3, #0
 8001324:	d03c      	beq.n	80013a0 <__register_exitproc+0xc4>
 8001326:	20c8      	movs	r0, #200	; 0xc8
 8001328:	0040      	lsls	r0, r0, #1
 800132a:	e000      	b.n	800132e <__register_exitproc+0x52>
 800132c:	bf00      	nop
 800132e:	2800      	cmp	r0, #0
 8001330:	d036      	beq.n	80013a0 <__register_exitproc+0xc4>
 8001332:	22a4      	movs	r2, #164	; 0xa4
 8001334:	2300      	movs	r3, #0
 8001336:	0052      	lsls	r2, r2, #1
 8001338:	58a1      	ldr	r1, [r4, r2]
 800133a:	6043      	str	r3, [r0, #4]
 800133c:	6001      	str	r1, [r0, #0]
 800133e:	50a0      	str	r0, [r4, r2]
 8001340:	3240      	adds	r2, #64	; 0x40
 8001342:	5083      	str	r3, [r0, r2]
 8001344:	3204      	adds	r2, #4
 8001346:	5083      	str	r3, [r0, r2]
 8001348:	2401      	movs	r4, #1
 800134a:	2d00      	cmp	r5, #0
 800134c:	d0dd      	beq.n	800130a <__register_exitproc+0x2e>
 800134e:	009a      	lsls	r2, r3, #2
 8001350:	4691      	mov	r9, r2
 8001352:	4481      	add	r9, r0
 8001354:	4642      	mov	r2, r8
 8001356:	2188      	movs	r1, #136	; 0x88
 8001358:	464f      	mov	r7, r9
 800135a:	507a      	str	r2, [r7, r1]
 800135c:	22c4      	movs	r2, #196	; 0xc4
 800135e:	0052      	lsls	r2, r2, #1
 8001360:	4690      	mov	r8, r2
 8001362:	4480      	add	r8, r0
 8001364:	4642      	mov	r2, r8
 8001366:	3987      	subs	r1, #135	; 0x87
 8001368:	4099      	lsls	r1, r3
 800136a:	6812      	ldr	r2, [r2, #0]
 800136c:	468a      	mov	sl, r1
 800136e:	430a      	orrs	r2, r1
 8001370:	4694      	mov	ip, r2
 8001372:	4642      	mov	r2, r8
 8001374:	4661      	mov	r1, ip
 8001376:	6011      	str	r1, [r2, #0]
 8001378:	2284      	movs	r2, #132	; 0x84
 800137a:	4649      	mov	r1, r9
 800137c:	465f      	mov	r7, fp
 800137e:	0052      	lsls	r2, r2, #1
 8001380:	508f      	str	r7, [r1, r2]
 8001382:	2d02      	cmp	r5, #2
 8001384:	d1c1      	bne.n	800130a <__register_exitproc+0x2e>
 8001386:	1c02      	adds	r2, r0, #0
 8001388:	4655      	mov	r5, sl
 800138a:	328d      	adds	r2, #141	; 0x8d
 800138c:	32ff      	adds	r2, #255	; 0xff
 800138e:	6811      	ldr	r1, [r2, #0]
 8001390:	430d      	orrs	r5, r1
 8001392:	6015      	str	r5, [r2, #0]
 8001394:	e7b9      	b.n	800130a <__register_exitproc+0x2e>
 8001396:	1c20      	adds	r0, r4, #0
 8001398:	304d      	adds	r0, #77	; 0x4d
 800139a:	30ff      	adds	r0, #255	; 0xff
 800139c:	50e0      	str	r0, [r4, r3]
 800139e:	e7ae      	b.n	80012fe <__register_exitproc+0x22>
 80013a0:	2001      	movs	r0, #1
 80013a2:	4240      	negs	r0, r0
 80013a4:	e7b6      	b.n	8001314 <__register_exitproc+0x38>
 80013a6:	46c0      	nop			; (mov r8, r8)
 80013a8:	080013e4 	.word	0x080013e4
 80013ac:	00000000 	.word	0x00000000

080013b0 <register_fini>:
 80013b0:	b508      	push	{r3, lr}
 80013b2:	4b03      	ldr	r3, [pc, #12]	; (80013c0 <register_fini+0x10>)
 80013b4:	2b00      	cmp	r3, #0
 80013b6:	d002      	beq.n	80013be <register_fini+0xe>
 80013b8:	4802      	ldr	r0, [pc, #8]	; (80013c4 <register_fini+0x14>)
 80013ba:	f7ff ff49 	bl	8001250 <atexit>
 80013be:	bd08      	pop	{r3, pc}
 80013c0:	00000000 	.word	0x00000000
 80013c4:	08001261 	.word	0x08001261

080013c8 <_init>:
 80013c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80013ca:	46c0      	nop			; (mov r8, r8)
 80013cc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80013ce:	bc08      	pop	{r3}
 80013d0:	469e      	mov	lr, r3
 80013d2:	4770      	bx	lr

080013d4 <_fini>:
 80013d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80013d6:	46c0      	nop			; (mov r8, r8)
 80013d8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80013da:	bc08      	pop	{r3}
 80013dc:	469e      	mov	lr, r3
 80013de:	4770      	bx	lr
