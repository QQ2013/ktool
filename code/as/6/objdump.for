
for:     file format elf32-i386


Disassembly of section .interp:

08048134 <.interp>:
 8048134:	2f                   	das    
 8048135:	6c                   	insb   (%dx),%es:(%edi)
 8048136:	69 62 2f 6c 64 2d 6c 	imul   $0x6c2d646c,0x2f(%edx),%esp
 804813d:	69 6e 75 78 2e 73 6f 	imul   $0x6f732e78,0x75(%esi),%ebp
 8048144:	2e 32 00             	xor    %cs:(%eax),%al

Disassembly of section .note.ABI-tag:

08048148 <.note.ABI-tag>:
 8048148:	04 00                	add    $0x0,%al
 804814a:	00 00                	add    %al,(%eax)
 804814c:	10 00                	adc    %al,(%eax)
 804814e:	00 00                	add    %al,(%eax)
 8048150:	01 00                	add    %eax,(%eax)
 8048152:	00 00                	add    %al,(%eax)
 8048154:	47                   	inc    %edi
 8048155:	4e                   	dec    %esi
 8048156:	55                   	push   %ebp
 8048157:	00 00                	add    %al,(%eax)
 8048159:	00 00                	add    %al,(%eax)
 804815b:	00 02                	add    %al,(%edx)
 804815d:	00 00                	add    %al,(%eax)
 804815f:	00 06                	add    %al,(%esi)
 8048161:	00 00                	add    %al,(%eax)
 8048163:	00 12                	add    %dl,(%edx)
 8048165:	00 00                	add    %al,(%eax)
	...

Disassembly of section .note.gnu.build-id:

08048168 <.note.gnu.build-id>:
 8048168:	04 00                	add    $0x0,%al
 804816a:	00 00                	add    %al,(%eax)
 804816c:	14 00                	adc    $0x0,%al
 804816e:	00 00                	add    %al,(%eax)
 8048170:	03 00                	add    (%eax),%eax
 8048172:	00 00                	add    %al,(%eax)
 8048174:	47                   	inc    %edi
 8048175:	4e                   	dec    %esi
 8048176:	55                   	push   %ebp
 8048177:	00 34 df             	add    %dh,(%edi,%ebx,8)
 804817a:	c5 08                	lds    (%eax),%ecx
 804817c:	6a 35                	push   $0x35
 804817e:	33 c5                	xor    %ebp,%eax
 8048180:	03 c1                	add    %ecx,%eax
 8048182:	3a 1c 87             	cmp    (%edi,%eax,4),%bl
 8048185:	92                   	xchg   %eax,%edx
 8048186:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
 8048187:	06                   	push   %es
 8048188:	6f                   	outsl  %ds:(%esi),(%dx)
 8048189:	61                   	popa   
 804818a:	3c 0e                	cmp    $0xe,%al

Disassembly of section .gnu.hash:

0804818c <.gnu.hash>:
 804818c:	02 00                	add    (%eax),%al
 804818e:	00 00                	add    %al,(%eax)
 8048190:	04 00                	add    $0x0,%al
 8048192:	00 00                	add    %al,(%eax)
 8048194:	01 00                	add    %eax,(%eax)
 8048196:	00 00                	add    %al,(%eax)
 8048198:	05 00 00 00 00       	add    $0x0,%eax
 804819d:	20 00                	and    %al,(%eax)
 804819f:	20 00                	and    %al,(%eax)
 80481a1:	00 00                	add    %al,(%eax)
 80481a3:	00 04 00             	add    %al,(%eax,%eax,1)
 80481a6:	00 00                	add    %al,(%eax)
 80481a8:	ad                   	lods   %ds:(%esi),%eax
 80481a9:	4b                   	dec    %ebx
 80481aa:	e3 c0                	jecxz  804816c <_init-0x128>

Disassembly of section .dynsym:

080481ac <.dynsym>:
	...
 80481bc:	01 00                	add    %eax,(%eax)
	...
 80481c6:	00 00                	add    %al,(%eax)
 80481c8:	20 00                	and    %al,(%eax)
 80481ca:	00 00                	add    %al,(%eax)
 80481cc:	30 00                	xor    %al,(%eax)
	...
 80481d6:	00 00                	add    %al,(%eax)
 80481d8:	12 00                	adc    (%eax),%al
 80481da:	00 00                	add    %al,(%eax)
 80481dc:	29 00                	sub    %eax,(%eax)
	...
 80481e6:	00 00                	add    %al,(%eax)
 80481e8:	12 00                	adc    (%eax),%al
 80481ea:	00 00                	add    %al,(%eax)
 80481ec:	1a 00                	sbb    (%eax),%al
 80481ee:	00 00                	add    %al,(%eax)
 80481f0:	dc 84 04 08 04 00 00 	faddl  0x408(%esp,%eax,1)
 80481f7:	00 11                	add    %dl,(%ecx)
 80481f9:	00 0f                	add    %cl,(%edi)
	...

Disassembly of section .dynstr:

080481fc <.dynstr>:
 80481fc:	00 5f 5f             	add    %bl,0x5f(%edi)
 80481ff:	67 6d                	addr16 insl (%dx),%es:(%di)
 8048201:	6f                   	outsl  %ds:(%esi),(%dx)
 8048202:	6e                   	outsb  %ds:(%esi),(%dx)
 8048203:	5f                   	pop    %edi
 8048204:	73 74                	jae    804827a <_init-0x1a>
 8048206:	61                   	popa   
 8048207:	72 74                	jb     804827d <_init-0x17>
 8048209:	5f                   	pop    %edi
 804820a:	5f                   	pop    %edi
 804820b:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 804820f:	63 2e                	arpl   %bp,(%esi)
 8048211:	73 6f                	jae    8048282 <_init-0x12>
 8048213:	2e 36 00 5f 49       	add    %bl,%cs:%ss:0x49(%edi)
 8048218:	4f                   	dec    %edi
 8048219:	5f                   	pop    %edi
 804821a:	73 74                	jae    8048290 <_init-0x4>
 804821c:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 8048223:	64 
 8048224:	00 70 72             	add    %dh,0x72(%eax)
 8048227:	69 6e 74 66 00 5f 5f 	imul   $0x5f5f0066,0x74(%esi),%ebp
 804822e:	6c                   	insb   (%dx),%es:(%edi)
 804822f:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 8048236:	72 74                	jb     80482ac <_init+0x18>
 8048238:	5f                   	pop    %edi
 8048239:	6d                   	insl   (%dx),%es:(%edi)
 804823a:	61                   	popa   
 804823b:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%esi),%ebp
 8048242:	43                   	inc    %ebx
 8048243:	5f                   	pop    %edi
 8048244:	32 2e                	xor    (%esi),%ch
 8048246:	30 00                	xor    %al,(%eax)

Disassembly of section .gnu.version:

08048248 <.gnu.version>:
 8048248:	00 00                	add    %al,(%eax)
 804824a:	00 00                	add    %al,(%eax)
 804824c:	02 00                	add    (%eax),%al
 804824e:	02 00                	add    (%eax),%al
 8048250:	01 00                	add    %eax,(%eax)

Disassembly of section .gnu.version_r:

08048254 <.gnu.version_r>:
 8048254:	01 00                	add    %eax,(%eax)
 8048256:	01 00                	add    %eax,(%eax)
 8048258:	10 00                	adc    %al,(%eax)
 804825a:	00 00                	add    %al,(%eax)
 804825c:	10 00                	adc    %al,(%eax)
 804825e:	00 00                	add    %al,(%eax)
 8048260:	00 00                	add    %al,(%eax)
 8048262:	00 00                	add    %al,(%eax)
 8048264:	10 69 69             	adc    %ch,0x69(%ecx)
 8048267:	0d 00 00 02 00       	or     $0x20000,%eax
 804826c:	42                   	inc    %edx
 804826d:	00 00                	add    %al,(%eax)
 804826f:	00 00                	add    %al,(%eax)
 8048271:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

08048274 <.rel.dyn>:
 8048274:	74 96                	je     804820c <_init-0x88>
 8048276:	04 08                	add    $0x8,%al
 8048278:	06                   	push   %es
 8048279:	01 00                	add    %eax,(%eax)
	...

Disassembly of section .rel.plt:

0804827c <.rel.plt>:
 804827c:	84 96 04 08 07 01    	test   %dl,0x1070804(%esi)
 8048282:	00 00                	add    %al,(%eax)
 8048284:	88 96 04 08 07 02    	mov    %dl,0x2070804(%esi)
 804828a:	00 00                	add    %al,(%eax)
 804828c:	8c 96 04 08 07 03    	mov    %ss,0x3070804(%esi)
	...

Disassembly of section .init:

08048294 <_init>:
 8048294:	55                   	push   %ebp
 8048295:	89 e5                	mov    %esp,%ebp
 8048297:	53                   	push   %ebx
 8048298:	83 ec 04             	sub    $0x4,%esp
 804829b:	e8 00 00 00 00       	call   80482a0 <_init+0xc>
 80482a0:	5b                   	pop    %ebx
 80482a1:	81 c3 d8 13 00 00    	add    $0x13d8,%ebx
 80482a7:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 80482ad:	85 d2                	test   %edx,%edx
 80482af:	74 05                	je     80482b6 <_init+0x22>
 80482b1:	e8 1e 00 00 00       	call   80482d4 <__gmon_start__@plt>
 80482b6:	e8 e5 00 00 00       	call   80483a0 <frame_dummy>
 80482bb:	e8 d0 01 00 00       	call   8048490 <__do_global_ctors_aux>
 80482c0:	58                   	pop    %eax
 80482c1:	5b                   	pop    %ebx
 80482c2:	c9                   	leave  
 80482c3:	c3                   	ret    

Disassembly of section .plt:

080482c4 <__gmon_start__@plt-0x10>:
 80482c4:	ff 35 7c 96 04 08    	pushl  0x804967c
 80482ca:	ff 25 80 96 04 08    	jmp    *0x8049680
 80482d0:	00 00                	add    %al,(%eax)
	...

080482d4 <__gmon_start__@plt>:
 80482d4:	ff 25 84 96 04 08    	jmp    *0x8049684
 80482da:	68 00 00 00 00       	push   $0x0
 80482df:	e9 e0 ff ff ff       	jmp    80482c4 <_init+0x30>

080482e4 <__libc_start_main@plt>:
 80482e4:	ff 25 88 96 04 08    	jmp    *0x8049688
 80482ea:	68 08 00 00 00       	push   $0x8
 80482ef:	e9 d0 ff ff ff       	jmp    80482c4 <_init+0x30>

080482f4 <printf@plt>:
 80482f4:	ff 25 8c 96 04 08    	jmp    *0x804968c
 80482fa:	68 10 00 00 00       	push   $0x10
 80482ff:	e9 c0 ff ff ff       	jmp    80482c4 <_init+0x30>

Disassembly of section .text:

08048310 <_start>:
 8048310:	31 ed                	xor    %ebp,%ebp
 8048312:	5e                   	pop    %esi
 8048313:	89 e1                	mov    %esp,%ecx
 8048315:	83 e4 f0             	and    $0xfffffff0,%esp
 8048318:	50                   	push   %eax
 8048319:	54                   	push   %esp
 804831a:	52                   	push   %edx
 804831b:	68 20 84 04 08       	push   $0x8048420
 8048320:	68 30 84 04 08       	push   $0x8048430
 8048325:	51                   	push   %ecx
 8048326:	56                   	push   %esi
 8048327:	68 c4 83 04 08       	push   $0x80483c4
 804832c:	e8 b3 ff ff ff       	call   80482e4 <__libc_start_main@plt>
 8048331:	f4                   	hlt    
 8048332:	90                   	nop
 8048333:	90                   	nop
 8048334:	90                   	nop
 8048335:	90                   	nop
 8048336:	90                   	nop
 8048337:	90                   	nop
 8048338:	90                   	nop
 8048339:	90                   	nop
 804833a:	90                   	nop
 804833b:	90                   	nop
 804833c:	90                   	nop
 804833d:	90                   	nop
 804833e:	90                   	nop
 804833f:	90                   	nop

08048340 <__do_global_dtors_aux>:
 8048340:	55                   	push   %ebp
 8048341:	89 e5                	mov    %esp,%ebp
 8048343:	53                   	push   %ebx
 8048344:	8d 64 24 fc          	lea    -0x4(%esp),%esp
 8048348:	80 3d 94 96 04 08 00 	cmpb   $0x0,0x8049694
 804834f:	75 3e                	jne    804838f <__do_global_dtors_aux+0x4f>
 8048351:	bb a4 95 04 08       	mov    $0x80495a4,%ebx
 8048356:	a1 98 96 04 08       	mov    0x8049698,%eax
 804835b:	81 eb a0 95 04 08    	sub    $0x80495a0,%ebx
 8048361:	c1 fb 02             	sar    $0x2,%ebx
 8048364:	83 eb 01             	sub    $0x1,%ebx
 8048367:	39 d8                	cmp    %ebx,%eax
 8048369:	73 1d                	jae    8048388 <__do_global_dtors_aux+0x48>
 804836b:	90                   	nop
 804836c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048370:	83 c0 01             	add    $0x1,%eax
 8048373:	a3 98 96 04 08       	mov    %eax,0x8049698
 8048378:	ff 14 85 a0 95 04 08 	call   *0x80495a0(,%eax,4)
 804837f:	a1 98 96 04 08       	mov    0x8049698,%eax
 8048384:	39 d8                	cmp    %ebx,%eax
 8048386:	72 e8                	jb     8048370 <__do_global_dtors_aux+0x30>
 8048388:	c6 05 94 96 04 08 01 	movb   $0x1,0x8049694
 804838f:	8d 64 24 04          	lea    0x4(%esp),%esp
 8048393:	5b                   	pop    %ebx
 8048394:	5d                   	pop    %ebp
 8048395:	c3                   	ret    
 8048396:	8d 76 00             	lea    0x0(%esi),%esi
 8048399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080483a0 <frame_dummy>:
 80483a0:	55                   	push   %ebp
 80483a1:	89 e5                	mov    %esp,%ebp
 80483a3:	8d 64 24 e8          	lea    -0x18(%esp),%esp
 80483a7:	a1 a8 95 04 08       	mov    0x80495a8,%eax
 80483ac:	85 c0                	test   %eax,%eax
 80483ae:	74 12                	je     80483c2 <frame_dummy+0x22>
 80483b0:	b8 00 00 00 00       	mov    $0x0,%eax
 80483b5:	85 c0                	test   %eax,%eax
 80483b7:	74 09                	je     80483c2 <frame_dummy+0x22>
 80483b9:	c7 04 24 a8 95 04 08 	movl   $0x80495a8,(%esp)
 80483c0:	ff d0                	call   *%eax
 80483c2:	c9                   	leave  
 80483c3:	c3                   	ret    

080483c4 <main>:
 80483c4:	55                   	push   %ebp
 80483c5:	89 e5                	mov    %esp,%ebp
 80483c7:	83 e4 f0             	and    $0xfffffff0,%esp
 80483ca:	83 ec 20             	sub    $0x20,%esp
 80483cd:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 80483d4:	00 
 80483d5:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
 80483dc:	00 
 80483dd:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 80483e4:	00 
 80483e5:	eb 29                	jmp    8048410 <main+0x4c>
 80483e7:	8b 54 24 18          	mov    0x18(%esp),%edx
 80483eb:	89 d0                	mov    %edx,%eax
 80483ed:	c1 e0 02             	shl    $0x2,%eax
 80483f0:	01 d0                	add    %edx,%eax
 80483f2:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80483f6:	b8 e4 84 04 08       	mov    $0x80484e4,%eax
 80483fb:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 80483ff:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048403:	89 04 24             	mov    %eax,(%esp)
 8048406:	e8 e9 fe ff ff       	call   80482f4 <printf@plt>
 804840b:	83 44 24 18 01       	addl   $0x1,0x18(%esp)
 8048410:	83 7c 24 18 63       	cmpl   $0x63,0x18(%esp)
 8048415:	7e d0                	jle    80483e7 <main+0x23>
 8048417:	b8 00 00 00 00       	mov    $0x0,%eax
 804841c:	c9                   	leave  
 804841d:	c3                   	ret    
 804841e:	90                   	nop
 804841f:	90                   	nop

08048420 <__libc_csu_fini>:
 8048420:	55                   	push   %ebp
 8048421:	89 e5                	mov    %esp,%ebp
 8048423:	5d                   	pop    %ebp
 8048424:	c3                   	ret    
 8048425:	66 66 2e 0f 1f 84 00 	nopw   %cs:0x0(%eax,%eax,1)
 804842c:	00 00 00 00 

08048430 <__libc_csu_init>:
 8048430:	55                   	push   %ebp
 8048431:	89 e5                	mov    %esp,%ebp
 8048433:	57                   	push   %edi
 8048434:	56                   	push   %esi
 8048435:	53                   	push   %ebx
 8048436:	e8 4f 00 00 00       	call   804848a <__i686.get_pc_thunk.bx>
 804843b:	81 c3 3d 12 00 00    	add    $0x123d,%ebx
 8048441:	83 ec 1c             	sub    $0x1c,%esp
 8048444:	e8 4b fe ff ff       	call   8048294 <_init>
 8048449:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 804844f:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 8048455:	29 c7                	sub    %eax,%edi
 8048457:	c1 ff 02             	sar    $0x2,%edi
 804845a:	85 ff                	test   %edi,%edi
 804845c:	74 24                	je     8048482 <__libc_csu_init+0x52>
 804845e:	31 f6                	xor    %esi,%esi
 8048460:	8b 45 10             	mov    0x10(%ebp),%eax
 8048463:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048467:	8b 45 0c             	mov    0xc(%ebp),%eax
 804846a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804846e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048471:	89 04 24             	mov    %eax,(%esp)
 8048474:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 804847b:	83 c6 01             	add    $0x1,%esi
 804847e:	39 fe                	cmp    %edi,%esi
 8048480:	72 de                	jb     8048460 <__libc_csu_init+0x30>
 8048482:	83 c4 1c             	add    $0x1c,%esp
 8048485:	5b                   	pop    %ebx
 8048486:	5e                   	pop    %esi
 8048487:	5f                   	pop    %edi
 8048488:	5d                   	pop    %ebp
 8048489:	c3                   	ret    

0804848a <__i686.get_pc_thunk.bx>:
 804848a:	8b 1c 24             	mov    (%esp),%ebx
 804848d:	c3                   	ret    
 804848e:	90                   	nop
 804848f:	90                   	nop

08048490 <__do_global_ctors_aux>:
 8048490:	55                   	push   %ebp
 8048491:	89 e5                	mov    %esp,%ebp
 8048493:	53                   	push   %ebx
 8048494:	8d 64 24 fc          	lea    -0x4(%esp),%esp
 8048498:	a1 98 95 04 08       	mov    0x8049598,%eax
 804849d:	83 f8 ff             	cmp    $0xffffffff,%eax
 80484a0:	74 12                	je     80484b4 <__do_global_ctors_aux+0x24>
 80484a2:	bb 98 95 04 08       	mov    $0x8049598,%ebx
 80484a7:	90                   	nop
 80484a8:	8d 5b fc             	lea    -0x4(%ebx),%ebx
 80484ab:	ff d0                	call   *%eax
 80484ad:	8b 03                	mov    (%ebx),%eax
 80484af:	83 f8 ff             	cmp    $0xffffffff,%eax
 80484b2:	75 f4                	jne    80484a8 <__do_global_ctors_aux+0x18>
 80484b4:	8d 64 24 04          	lea    0x4(%esp),%esp
 80484b8:	5b                   	pop    %ebx
 80484b9:	5d                   	pop    %ebp
 80484ba:	c3                   	ret    
 80484bb:	90                   	nop

Disassembly of section .fini:

080484bc <_fini>:
 80484bc:	55                   	push   %ebp
 80484bd:	89 e5                	mov    %esp,%ebp
 80484bf:	53                   	push   %ebx
 80484c0:	83 ec 04             	sub    $0x4,%esp
 80484c3:	e8 00 00 00 00       	call   80484c8 <_fini+0xc>
 80484c8:	5b                   	pop    %ebx
 80484c9:	81 c3 b0 11 00 00    	add    $0x11b0,%ebx
 80484cf:	e8 6c fe ff ff       	call   8048340 <__do_global_dtors_aux>
 80484d4:	59                   	pop    %ecx
 80484d5:	5b                   	pop    %ebx
 80484d6:	c9                   	leave  
 80484d7:	c3                   	ret    

Disassembly of section .rodata:

080484d8 <_fp_hw>:
 80484d8:	03 00                	add    (%eax),%eax
	...

080484dc <_IO_stdin_used>:
 80484dc:	01 00                	add    %eax,(%eax)
 80484de:	02 00                	add    (%eax),%al

080484e0 <__dso_handle>:
 80484e0:	00 00                	add    %al,(%eax)
 80484e2:	00 00                	add    %al,(%eax)
 80484e4:	54                   	push   %esp
 80484e5:	68 65 20 61 6e       	push   $0x6e612065
 80484ea:	73 77                	jae    8048563 <__dso_handle+0x83>
 80484ec:	65                   	gs
 80484ed:	72 20                	jb     804850f <__dso_handle+0x2f>
 80484ef:	69 73 20 25 64 0a 00 	imul   $0xa6425,0x20(%ebx),%esi

Disassembly of section .eh_frame_hdr:

080484f8 <.eh_frame_hdr>:
 80484f8:	01 1b                	add    %ebx,(%ebx)
 80484fa:	03 3b                	add    (%ebx),%edi
 80484fc:	20 00                	and    %al,(%eax)
 80484fe:	00 00                	add    %al,(%eax)
 8048500:	03 00                	add    (%eax),%eax
 8048502:	00 00                	add    %al,(%eax)
 8048504:	28 ff                	sub    %bh,%bh
 8048506:	ff                   	(bad)  
 8048507:	ff                   	(bad)  
 8048508:	3c 00                	cmp    $0x0,%al
 804850a:	00 00                	add    %al,(%eax)
 804850c:	38 ff                	cmp    %bh,%bh
 804850e:	ff                   	(bad)  
 804850f:	ff 5c 00 00          	lcall  *0x0(%eax,%eax,1)
 8048513:	00 92 ff ff ff 88    	add    %dl,-0x77000001(%edx)
 8048519:	00 00                	add    %al,(%eax)
	...

Disassembly of section .eh_frame:

0804851c <__FRAME_END__-0x78>:
 804851c:	14 00                	adc    $0x0,%al
 804851e:	00 00                	add    %al,(%eax)
 8048520:	00 00                	add    %al,(%eax)
 8048522:	00 00                	add    %al,(%eax)
 8048524:	01 7a 52             	add    %edi,0x52(%edx)
 8048527:	00 01                	add    %al,(%ecx)
 8048529:	7c 08                	jl     8048533 <__dso_handle+0x53>
 804852b:	01 1b                	add    %ebx,(%ebx)
 804852d:	0c 04                	or     $0x4,%al
 804852f:	04 88                	add    $0x88,%al
 8048531:	01 00                	add    %eax,(%eax)
 8048533:	00 1c 00             	add    %bl,(%eax,%eax,1)
 8048536:	00 00                	add    %al,(%eax)
 8048538:	1c 00                	sbb    $0x0,%al
 804853a:	00 00                	add    %al,(%eax)
 804853c:	e4 fe                	in     $0xfe,%al
 804853e:	ff                   	(bad)  
 804853f:	ff 05 00 00 00 00    	incl   0x0
 8048545:	41                   	inc    %ecx
 8048546:	0e                   	push   %cs
 8048547:	08 42 85             	or     %al,-0x7b(%edx)
 804854a:	02 0d 05 41 c5 0c    	add    0xcc54105,%cl
 8048550:	04 04                	add    $0x4,%al
 8048552:	00 00                	add    %al,(%eax)
 8048554:	28 00                	sub    %al,(%eax)
 8048556:	00 00                	add    %al,(%eax)
 8048558:	3c 00                	cmp    $0x0,%al
 804855a:	00 00                	add    %al,(%eax)
 804855c:	d4 fe                	aam    $0xfffffffe
 804855e:	ff                   	(bad)  
 804855f:	ff 5a 00             	lcall  *0x0(%edx)
 8048562:	00 00                	add    %al,(%eax)
 8048564:	00 41 0e             	add    %al,0xe(%ecx)
 8048567:	08 42 85             	or     %al,-0x7b(%edx)
 804856a:	02 0d 05 43 83 05    	add    0x5834305,%cl
 8048570:	86 04 87             	xchg   %al,(%edi,%eax,4)
 8048573:	03 02                	add    (%edx),%eax
 8048575:	50                   	push   %eax
 8048576:	c3                   	ret    
 8048577:	41                   	inc    %ecx
 8048578:	c6 41 c7 41          	movb   $0x41,-0x39(%ecx)
 804857c:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
 804857f:	04 10                	add    $0x10,%al
 8048581:	00 00                	add    %al,(%eax)
 8048583:	00 68 00             	add    %ch,0x0(%eax)
 8048586:	00 00                	add    %al,(%eax)
 8048588:	02 ff                	add    %bh,%bh
 804858a:	ff                   	(bad)  
 804858b:	ff 04 00             	incl   (%eax,%eax,1)
 804858e:	00 00                	add    %al,(%eax)
 8048590:	00 00                	add    %al,(%eax)
	...

08048594 <__FRAME_END__>:
 8048594:	00 00                	add    %al,(%eax)
	...

Disassembly of section .ctors:

08049598 <__CTOR_LIST__>:
 8049598:	ff                   	(bad)  
 8049599:	ff                   	(bad)  
 804959a:	ff                   	(bad)  
 804959b:	ff 00                	incl   (%eax)

0804959c <__CTOR_END__>:
 804959c:	00 00                	add    %al,(%eax)
	...

Disassembly of section .dtors:

080495a0 <__DTOR_LIST__>:
 80495a0:	ff                   	(bad)  
 80495a1:	ff                   	(bad)  
 80495a2:	ff                   	(bad)  
 80495a3:	ff 00                	incl   (%eax)

080495a4 <__DTOR_END__>:
 80495a4:	00 00                	add    %al,(%eax)
	...

Disassembly of section .jcr:

080495a8 <__JCR_END__>:
 80495a8:	00 00                	add    %al,(%eax)
	...

Disassembly of section .dynamic:

080495ac <_DYNAMIC>:
 80495ac:	01 00                	add    %eax,(%eax)
 80495ae:	00 00                	add    %al,(%eax)
 80495b0:	10 00                	adc    %al,(%eax)
 80495b2:	00 00                	add    %al,(%eax)
 80495b4:	0c 00                	or     $0x0,%al
 80495b6:	00 00                	add    %al,(%eax)
 80495b8:	94                   	xchg   %eax,%esp
 80495b9:	82                   	(bad)  
 80495ba:	04 08                	add    $0x8,%al
 80495bc:	0d 00 00 00 bc       	or     $0xbc000000,%eax
 80495c1:	84 04 08             	test   %al,(%eax,%ecx,1)
 80495c4:	f5                   	cmc    
 80495c5:	fe                   	(bad)  
 80495c6:	ff 6f 8c             	ljmp   *-0x74(%edi)
 80495c9:	81 04 08 05 00 00 00 	addl   $0x5,(%eax,%ecx,1)
 80495d0:	fc                   	cld    
 80495d1:	81 04 08 06 00 00 00 	addl   $0x6,(%eax,%ecx,1)
 80495d8:	ac                   	lods   %ds:(%esi),%al
 80495d9:	81 04 08 0a 00 00 00 	addl   $0xa,(%eax,%ecx,1)
 80495e0:	4c                   	dec    %esp
 80495e1:	00 00                	add    %al,(%eax)
 80495e3:	00 0b                	add    %cl,(%ebx)
 80495e5:	00 00                	add    %al,(%eax)
 80495e7:	00 10                	add    %dl,(%eax)
 80495e9:	00 00                	add    %al,(%eax)
 80495eb:	00 15 00 00 00 00    	add    %dl,0x0
 80495f1:	00 00                	add    %al,(%eax)
 80495f3:	00 03                	add    %al,(%ebx)
 80495f5:	00 00                	add    %al,(%eax)
 80495f7:	00 78 96             	add    %bh,-0x6a(%eax)
 80495fa:	04 08                	add    $0x8,%al
 80495fc:	02 00                	add    (%eax),%al
 80495fe:	00 00                	add    %al,(%eax)
 8049600:	18 00                	sbb    %al,(%eax)
 8049602:	00 00                	add    %al,(%eax)
 8049604:	14 00                	adc    $0x0,%al
 8049606:	00 00                	add    %al,(%eax)
 8049608:	11 00                	adc    %eax,(%eax)
 804960a:	00 00                	add    %al,(%eax)
 804960c:	17                   	pop    %ss
 804960d:	00 00                	add    %al,(%eax)
 804960f:	00 7c 82 04          	add    %bh,0x4(%edx,%eax,4)
 8049613:	08 11                	or     %dl,(%ecx)
 8049615:	00 00                	add    %al,(%eax)
 8049617:	00 74 82 04          	add    %dh,0x4(%edx,%eax,4)
 804961b:	08 12                	or     %dl,(%edx)
 804961d:	00 00                	add    %al,(%eax)
 804961f:	00 08                	add    %cl,(%eax)
 8049621:	00 00                	add    %al,(%eax)
 8049623:	00 13                	add    %dl,(%ebx)
 8049625:	00 00                	add    %al,(%eax)
 8049627:	00 08                	add    %cl,(%eax)
 8049629:	00 00                	add    %al,(%eax)
 804962b:	00 fe                	add    %bh,%dh
 804962d:	ff                   	(bad)  
 804962e:	ff 6f 54             	ljmp   *0x54(%edi)
 8049631:	82                   	(bad)  
 8049632:	04 08                	add    $0x8,%al
 8049634:	ff                   	(bad)  
 8049635:	ff                   	(bad)  
 8049636:	ff 6f 01             	ljmp   *0x1(%edi)
 8049639:	00 00                	add    %al,(%eax)
 804963b:	00 f0                	add    %dh,%al
 804963d:	ff                   	(bad)  
 804963e:	ff 6f 48             	ljmp   *0x48(%edi)
 8049641:	82                   	(bad)  
 8049642:	04 08                	add    $0x8,%al
	...

Disassembly of section .got:

08049674 <.got>:
 8049674:	00 00                	add    %al,(%eax)
	...

Disassembly of section .got.plt:

08049678 <_GLOBAL_OFFSET_TABLE_>:
 8049678:	ac                   	lods   %ds:(%esi),%al
 8049679:	95                   	xchg   %eax,%ebp
 804967a:	04 08                	add    $0x8,%al
	...
 8049684:	da 82 04 08 ea 82    	fiaddl -0x7d15f7fc(%edx)
 804968a:	04 08                	add    $0x8,%al
 804968c:	fa                   	cli    
 804968d:	82                   	(bad)  
 804968e:	04 08                	add    $0x8,%al

Disassembly of section .data:

08049690 <__data_start>:
 8049690:	00 00                	add    %al,(%eax)
	...

Disassembly of section .bss:

08049694 <completed.5963>:
 8049694:	00 00                	add    %al,(%eax)
	...

08049698 <dtor_idx.5965>:
 8049698:	00 00                	add    %al,(%eax)
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 47 4e             	sub    %al,0x4e(%edi)
   8:	55                   	push   %ebp
   9:	29 20                	sub    %esp,(%eax)
   b:	34 2e                	xor    $0x2e,%al
   d:	34 2e                	xor    $0x2e,%al
   f:	34 20                	xor    $0x20,%al
  11:	32 30                	xor    (%eax),%dh
  13:	31 30                	xor    %esi,(%eax)
  15:	30 35 32 35 20 28    	xor    %dh,0x28203532
  1b:	52                   	push   %edx
  1c:	65 64 20 48 61       	and    %cl,%fs:%gs:0x61(%eax)
  21:	74 20                	je     43 <_init-0x8048251>
  23:	34 2e                	xor    $0x2e,%al
  25:	34 2e                	xor    $0x2e,%al
  27:	34 2d                	xor    $0x2d,%al
  29:	35 29 00 47 43       	xor    $0x43470029,%eax
  2e:	43                   	inc    %ebx
  2f:	3a 20                	cmp    (%eax),%ah
  31:	28 47 4e             	sub    %al,0x4e(%edi)
  34:	55                   	push   %ebp
  35:	29 20                	sub    %esp,(%eax)
  37:	34 2e                	xor    $0x2e,%al
  39:	34 2e                	xor    $0x2e,%al
  3b:	34 20                	xor    $0x20,%al
  3d:	32 30                	xor    (%eax),%dh
  3f:	31 30                	xor    %esi,(%eax)
  41:	30 37                	xor    %dh,(%edi)
  43:	32 36                	xor    (%esi),%dh
  45:	20 28                	and    %ch,(%eax)
  47:	52                   	push   %edx
  48:	65 64 20 48 61       	and    %cl,%fs:%gs:0x61(%eax)
  4d:	74 20                	je     6f <_init-0x8048225>
  4f:	34 2e                	xor    $0x2e,%al
  51:	34 2e                	xor    $0x2e,%al
  53:	34 2d                	xor    $0x2d,%al
  55:	31 33                	xor    %esi,(%ebx)
  57:	29 00                	sub    %eax,(%eax)
