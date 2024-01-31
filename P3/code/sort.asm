
sort：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d1 3f 00 00 	mov    0x3fd1(%rip),%rax        # 4fe0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <free@plt-0x10>:
    1020:	ff 35 e2 3f 00 00    	push   0x3fe2(%rip)        # 5008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 3f 00 00    	jmp    *0x3fe4(%rip)        # 5010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 e2 3f 00 00    	jmp    *0x3fe2(%rip)        # 5018 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <clock_gettime@plt>:
    1040:	ff 25 da 3f 00 00    	jmp    *0x3fda(%rip)        # 5020 <clock_gettime@GLIBC_2.17>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <rand_r@plt>:
    1050:	ff 25 d2 3f 00 00    	jmp    *0x3fd2(%rip)        # 5028 <rand_r@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <printf@plt>:
    1060:	ff 25 ca 3f 00 00    	jmp    *0x3fca(%rip)        # 5030 <printf@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <memset@plt>:
    1070:	ff 25 c2 3f 00 00    	jmp    *0x3fc2(%rip)        # 5038 <memset@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <srand@plt>:
    1080:	ff 25 ba 3f 00 00    	jmp    *0x3fba(%rip)        # 5040 <srand@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <fprintf@plt>:
    1090:	ff 25 b2 3f 00 00    	jmp    *0x3fb2(%rip)        # 5048 <fprintf@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <malloc@plt>:
    10a0:	ff 25 aa 3f 00 00    	jmp    *0x3faa(%rip)        # 5050 <malloc@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <getopt@plt>:
    10b0:	ff 25 a2 3f 00 00    	jmp    *0x3fa2(%rip)        # 5058 <getopt@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <atoi@plt>:
    10c0:	ff 25 9a 3f 00 00    	jmp    *0x3f9a(%rip)        # 5060 <atoi@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <exit@plt>:
    10d0:	ff 25 92 3f 00 00    	jmp    *0x3f92(%rip)        # 5068 <exit@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

00000000000010e0 <__cxa_finalize@plt>:
    10e0:	ff 25 0a 3f 00 00    	jmp    *0x3f0a(%rip)        # 4ff0 <__cxa_finalize@GLIBC_2.2.5>
    10e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000010f0 <_start>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	31 ed                	xor    %ebp,%ebp
    10f6:	49 89 d1             	mov    %rdx,%r9
    10f9:	5e                   	pop    %rsi
    10fa:	48 89 e2             	mov    %rsp,%rdx
    10fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1101:	50                   	push   %rax
    1102:	54                   	push   %rsp
    1103:	45 31 c0             	xor    %r8d,%r8d
    1106:	31 c9                	xor    %ecx,%ecx
    1108:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 11e0 <main>
    110f:	ff 15 ab 3e 00 00    	call   *0x3eab(%rip)        # 4fc0 <__libc_start_main@GLIBC_2.34>
    1115:	f4                   	hlt    
    1116:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    111d:	00 00 00 

0000000000001120 <deregister_tm_clones>:
    1120:	48 8d 3d a9 3f 00 00 	lea    0x3fa9(%rip),%rdi        # 50d0 <__TMC_END__>
    1127:	48 8d 05 a2 3f 00 00 	lea    0x3fa2(%rip),%rax        # 50d0 <__TMC_END__>
    112e:	48 39 f8             	cmp    %rdi,%rax
    1131:	74 15                	je     1148 <deregister_tm_clones+0x28>
    1133:	48 8b 05 8e 3e 00 00 	mov    0x3e8e(%rip),%rax        # 4fc8 <_ITM_deregisterTMCloneTable@Base>
    113a:	48 85 c0             	test   %rax,%rax
    113d:	74 09                	je     1148 <deregister_tm_clones+0x28>
    113f:	ff e0                	jmp    *%rax
    1141:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1148:	c3                   	ret    
    1149:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001150 <register_tm_clones>:
    1150:	48 8d 3d 79 3f 00 00 	lea    0x3f79(%rip),%rdi        # 50d0 <__TMC_END__>
    1157:	48 8d 35 72 3f 00 00 	lea    0x3f72(%rip),%rsi        # 50d0 <__TMC_END__>
    115e:	48 29 fe             	sub    %rdi,%rsi
    1161:	48 89 f0             	mov    %rsi,%rax
    1164:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1168:	48 c1 f8 03          	sar    $0x3,%rax
    116c:	48 01 c6             	add    %rax,%rsi
    116f:	48 d1 fe             	sar    %rsi
    1172:	74 14                	je     1188 <register_tm_clones+0x38>
    1174:	48 8b 05 6d 3e 00 00 	mov    0x3e6d(%rip),%rax        # 4fe8 <_ITM_registerTMCloneTable@Base>
    117b:	48 85 c0             	test   %rax,%rax
    117e:	74 08                	je     1188 <register_tm_clones+0x38>
    1180:	ff e0                	jmp    *%rax
    1182:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1188:	c3                   	ret    
    1189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001190 <__do_global_dtors_aux>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	80 3d 35 3f 00 00 00 	cmpb   $0x0,0x3f35(%rip)        # 50d0 <__TMC_END__>
    119b:	75 2b                	jne    11c8 <__do_global_dtors_aux+0x38>
    119d:	55                   	push   %rbp
    119e:	48 83 3d 4a 3e 00 00 	cmpq   $0x0,0x3e4a(%rip)        # 4ff0 <__cxa_finalize@GLIBC_2.2.5>
    11a5:	00 
    11a6:	48 89 e5             	mov    %rsp,%rbp
    11a9:	74 0c                	je     11b7 <__do_global_dtors_aux+0x27>
    11ab:	48 8b 3d c6 3e 00 00 	mov    0x3ec6(%rip),%rdi        # 5078 <__dso_handle>
    11b2:	e8 29 ff ff ff       	call   10e0 <__cxa_finalize@plt>
    11b7:	e8 64 ff ff ff       	call   1120 <deregister_tm_clones>
    11bc:	c6 05 0d 3f 00 00 01 	movb   $0x1,0x3f0d(%rip)        # 50d0 <__TMC_END__>
    11c3:	5d                   	pop    %rbp
    11c4:	c3                   	ret    
    11c5:	0f 1f 00             	nopl   (%rax)
    11c8:	c3                   	ret    
    11c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011d0 <frame_dummy>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	e9 77 ff ff ff       	jmp    1150 <register_tm_clones>
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <main>:
    11e0:	55                   	push   %rbp
    11e1:	48 89 e5             	mov    %rsp,%rbp
    11e4:	48 83 ec 60          	sub    $0x60,%rsp
    11e8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    11ef:	89 7d f8             	mov    %edi,-0x8(%rbp)
    11f2:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    11f6:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    11fd:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    1204:	48 8b 05 a5 3b 00 00 	mov    0x3ba5(%rip),%rax        # 4db0 <__do_global_dtors_aux_fini_array_entry+0x8>
    120b:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    120f:	48 8b 05 a2 3b 00 00 	mov    0x3ba2(%rip),%rax        # 4db8 <__do_global_dtors_aux_fini_array_entry+0x10>
    1216:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    121a:	48 8b 05 9f 3b 00 00 	mov    0x3b9f(%rip),%rax        # 4dc0 <__do_global_dtors_aux_fini_array_entry+0x18>
    1221:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1225:	48 8b 05 9c 3b 00 00 	mov    0x3b9c(%rip),%rax        # 4dc8 <__do_global_dtors_aux_fini_array_entry+0x20>
    122c:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1230:	c7 45 ac 02 00 00 00 	movl   $0x2,-0x54(%rbp)
    1237:	8b 7d f8             	mov    -0x8(%rbp),%edi
    123a:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    123e:	48 8d 15 d1 1d 00 00 	lea    0x1dd1(%rip),%rdx        # 3016 <_IO_stdin_used+0x16>
    1245:	e8 66 fe ff ff       	call   10b0 <getopt@plt>
    124a:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    124d:	83 f8 ff             	cmp    $0xffffffff,%eax
    1250:	0f 84 7c 00 00 00    	je     12d2 <main+0xf2>
    1256:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1259:	89 45 a0             	mov    %eax,-0x60(%rbp)
    125c:	83 e8 70             	sub    $0x70,%eax
    125f:	0f 84 46 00 00 00    	je     12ab <main+0xcb>
    1265:	e9 00 00 00 00       	jmp    126a <main+0x8a>
    126a:	8b 45 a0             	mov    -0x60(%rbp),%eax
    126d:	83 e8 73             	sub    $0x73,%eax
    1270:	0f 85 41 00 00 00    	jne    12b7 <main+0xd7>
    1276:	e9 00 00 00 00       	jmp    127b <main+0x9b>
    127b:	48 8b 05 56 3d 00 00 	mov    0x3d56(%rip),%rax        # 4fd8 <optarg@GLIBC_2.2.5>
    1282:	48 8b 38             	mov    (%rax),%rdi
    1285:	e8 36 fe ff ff       	call   10c0 <atoi@plt>
    128a:	89 45 dc             	mov    %eax,-0x24(%rbp)
    128d:	8b 75 dc             	mov    -0x24(%rbp),%esi
    1290:	48 8d 3d 83 1d 00 00 	lea    0x1d83(%rip),%rdi        # 301a <_IO_stdin_used+0x1a>
    1297:	b0 00                	mov    $0x0,%al
    1299:	e8 c2 fd ff ff       	call   1060 <printf@plt>
    129e:	8b 7d dc             	mov    -0x24(%rbp),%edi
    12a1:	e8 da fd ff ff       	call   1080 <srand@plt>
    12a6:	e9 22 00 00 00       	jmp    12cd <main+0xed>
    12ab:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%rbp)
    12b2:	e9 16 00 00 00       	jmp    12cd <main+0xed>
    12b7:	8b 75 e4             	mov    -0x1c(%rbp),%esi
    12ba:	48 8d 3d 77 1d 00 00 	lea    0x1d77(%rip),%rdi        # 3038 <_IO_stdin_used+0x38>
    12c1:	b0 00                	mov    $0x0,%al
    12c3:	e8 98 fd ff ff       	call   1060 <printf@plt>
    12c8:	e9 6a ff ff ff       	jmp    1237 <main+0x57>
    12cd:	e9 65 ff ff ff       	jmp    1237 <main+0x57>
    12d2:	8b 45 f8             	mov    -0x8(%rbp),%eax
    12d5:	48 8b 0d f4 3c 00 00 	mov    0x3cf4(%rip),%rcx        # 4fd0 <optind@GLIBC_2.2.5>
    12dc:	2b 01                	sub    (%rcx),%eax
    12de:	89 45 a8             	mov    %eax,-0x58(%rbp)
    12e1:	c7 45 a4 01 00 00 00 	movl   $0x1,-0x5c(%rbp)
    12e8:	8b 45 a4             	mov    -0x5c(%rbp),%eax
    12eb:	3b 45 a8             	cmp    -0x58(%rbp),%eax
    12ee:	0f 8f 34 00 00 00    	jg     1328 <main+0x148>
    12f4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    12f8:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
    12fb:	48 8b 15 ce 3c 00 00 	mov    0x3cce(%rip),%rdx        # 4fd0 <optind@GLIBC_2.2.5>
    1302:	03 0a                	add    (%rdx),%ecx
    1304:	83 e9 01             	sub    $0x1,%ecx
    1307:	48 63 c9             	movslq %ecx,%rcx
    130a:	48 8b 14 c8          	mov    (%rax,%rcx,8),%rdx
    130e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1312:	48 63 4d a4          	movslq -0x5c(%rbp),%rcx
    1316:	48 89 14 c8          	mov    %rdx,(%rax,%rcx,8)
    131a:	8b 45 a4             	mov    -0x5c(%rbp),%eax
    131d:	83 c0 01             	add    $0x1,%eax
    1320:	89 45 a4             	mov    %eax,-0x5c(%rbp)
    1323:	e9 c0 ff ff ff       	jmp    12e8 <main+0x108>
    1328:	83 7d a8 02          	cmpl   $0x2,-0x58(%rbp)
    132c:	0f 84 2d 00 00 00    	je     135f <main+0x17f>
    1332:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1336:	48 8b 30             	mov    (%rax),%rsi
    1339:	48 8d 3d 1a 1d 00 00 	lea    0x1d1a(%rip),%rdi        # 305a <_IO_stdin_used+0x5a>
    1340:	b0 00                	mov    $0x0,%al
    1342:	e8 19 fd ff ff       	call   1060 <printf@plt>
    1347:	48 8d 3d 39 1d 00 00 	lea    0x1d39(%rip),%rdi        # 3087 <_IO_stdin_used+0x87>
    134e:	b0 00                	mov    $0x0,%al
    1350:	e8 0b fd ff ff       	call   1060 <printf@plt>
    1355:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    135a:	e8 71 fd ff ff       	call   10d0 <exit@plt>
    135f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1363:	48 8b 78 08          	mov    0x8(%rax),%rdi
    1367:	e8 54 fd ff ff       	call   10c0 <atoi@plt>
    136c:	89 45 ec             	mov    %eax,-0x14(%rbp)
    136f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1373:	48 8b 78 10          	mov    0x10(%rax),%rdi
    1377:	e8 44 fd ff ff       	call   10c0 <atoi@plt>
    137c:	89 45 e8             	mov    %eax,-0x18(%rbp)
    137f:	8b 75 e0             	mov    -0x20(%rbp),%esi
    1382:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1385:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    1388:	4c 8d 45 b0          	lea    -0x50(%rbp),%r8
    138c:	31 ff                	xor    %edi,%edi
    138e:	41 b9 02 00 00 00    	mov    $0x2,%r9d
    1394:	e8 17 00 00 00       	call   13b0 <run_test_suite>
    1399:	31 c0                	xor    %eax,%eax
    139b:	48 83 c4 60          	add    $0x60,%rsp
    139f:	5d                   	pop    %rbp
    13a0:	c3                   	ret    
    13a1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13a8:	00 00 00 
    13ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013b0 <run_test_suite>:
    13b0:	55                   	push   %rbp
    13b1:	48 89 e5             	mov    %rsp,%rbp
    13b4:	48 83 ec 20          	sub    $0x20,%rsp
    13b8:	89 7d fc             	mov    %edi,-0x4(%rbp)
    13bb:	89 75 f8             	mov    %esi,-0x8(%rbp)
    13be:	89 55 f4             	mov    %edx,-0xc(%rbp)
    13c1:	89 4d f0             	mov    %ecx,-0x10(%rbp)
    13c4:	4c 89 45 e8          	mov    %r8,-0x18(%rbp)
    13c8:	44 89 4d e4          	mov    %r9d,-0x1c(%rbp)
    13cc:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    13d3:	48 63 4d e0          	movslq -0x20(%rbp),%rcx
    13d7:	48 8d 05 d2 3c 00 00 	lea    0x3cd2(%rip),%rax        # 50b0 <test_cases>
    13de:	48 83 3c c8 00       	cmpq   $0x0,(%rax,%rcx,8)
    13e3:	0f 84 5c 00 00 00    	je     1445 <run_test_suite+0x95>
    13e9:	8b 45 e0             	mov    -0x20(%rbp),%eax
    13ec:	3b 45 fc             	cmp    -0x4(%rbp),%eax
    13ef:	0f 8d 05 00 00 00    	jge    13fa <run_test_suite+0x4a>
    13f5:	e9 3d 00 00 00       	jmp    1437 <run_test_suite+0x87>
    13fa:	48 8b 05 f7 3b 00 00 	mov    0x3bf7(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    1401:	48 8b 38             	mov    (%rax),%rdi
    1404:	8b 55 e0             	mov    -0x20(%rbp),%edx
    1407:	48 8d 35 99 1c 00 00 	lea    0x1c99(%rip),%rsi        # 30a7 <_IO_stdin_used+0xa7>
    140e:	b0 00                	mov    $0x0,%al
    1410:	e8 7b fc ff ff       	call   1090 <fprintf@plt>
    1415:	48 63 4d e0          	movslq -0x20(%rbp),%rcx
    1419:	48 8d 05 90 3c 00 00 	lea    0x3c90(%rip),%rax        # 50b0 <test_cases>
    1420:	48 8b 04 c8          	mov    (%rax,%rcx,8),%rax
    1424:	8b 7d f8             	mov    -0x8(%rbp),%edi
    1427:	8b 75 f4             	mov    -0xc(%rbp),%esi
    142a:	8b 55 f0             	mov    -0x10(%rbp),%edx
    142d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    1431:	44 8b 45 e4          	mov    -0x1c(%rbp),%r8d
    1435:	ff d0                	call   *%rax
    1437:	8b 45 e0             	mov    -0x20(%rbp),%eax
    143a:	83 c0 01             	add    $0x1,%eax
    143d:	89 45 e0             	mov    %eax,-0x20(%rbp)
    1440:	e9 8e ff ff ff       	jmp    13d3 <run_test_suite+0x23>
    1445:	48 8b 05 ac 3b 00 00 	mov    0x3bac(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    144c:	48 8b 38             	mov    (%rax),%rdi
    144f:	48 8d 35 67 1c 00 00 	lea    0x1c67(%rip),%rsi        # 30bd <_IO_stdin_used+0xbd>
    1456:	b0 00                	mov    $0x0,%al
    1458:	e8 33 fc ff ff       	call   1090 <fprintf@plt>
    145d:	48 83 c4 20          	add    $0x20,%rsp
    1461:	5d                   	pop    %rbp
    1462:	c3                   	ret    
    1463:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    146a:	00 00 00 
    146d:	0f 1f 00             	nopl   (%rax)

0000000000001470 <all_random>:
    1470:	55                   	push   %rbp
    1471:	48 89 e5             	mov    %rsp,%rbp
    1474:	48 83 ec 10          	sub    $0x10,%rsp
    1478:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    147c:	89 75 f4             	mov    %esi,-0xc(%rbp)
    147f:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    1483:	8b 75 f4             	mov    -0xc(%rbp),%esi
    1486:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1489:	31 c9                	xor    %ecx,%ecx
    148b:	e8 10 00 00 00       	call   14a0 <init_data>
    1490:	48 83 c4 10          	add    $0x10,%rsp
    1494:	5d                   	pop    %rbp
    1495:	c3                   	ret    
    1496:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    149d:	00 00 00 

00000000000014a0 <init_data>:
    14a0:	55                   	push   %rbp
    14a1:	48 89 e5             	mov    %rsp,%rbp
    14a4:	48 83 ec 20          	sub    $0x20,%rsp
    14a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    14ac:	89 75 f4             	mov    %esi,-0xc(%rbp)
    14af:	89 55 f0             	mov    %edx,-0x10(%rbp)
    14b2:	89 4d ec             	mov    %ecx,-0x14(%rbp)
    14b5:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    14bc:	8b 45 e8             	mov    -0x18(%rbp),%eax
    14bf:	3b 45 f0             	cmp    -0x10(%rbp),%eax
    14c2:	0f 8d 2e 00 00 00    	jge    14f6 <init_data+0x56>
    14c8:	48 8d 3d d1 3b 00 00 	lea    0x3bd1(%rip),%rdi        # 50a0 <randomSeed>
    14cf:	e8 7c fb ff ff       	call   1050 <rand_r@plt>
    14d4:	b9 00 00 00 80       	mov    $0x80000000,%ecx
    14d9:	31 d2                	xor    %edx,%edx
    14db:	f7 f1                	div    %ecx
    14dd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14e1:	48 63 4d e8          	movslq -0x18(%rbp),%rcx
    14e5:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    14e8:	8b 45 e8             	mov    -0x18(%rbp),%eax
    14eb:	83 c0 01             	add    $0x1,%eax
    14ee:	89 45 e8             	mov    %eax,-0x18(%rbp)
    14f1:	e9 c6 ff ff ff       	jmp    14bc <init_data+0x1c>
    14f6:	8b 45 f0             	mov    -0x10(%rbp),%eax
    14f9:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    14fc:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    14ff:	3b 45 f4             	cmp    -0xc(%rbp),%eax
    1502:	0f 8d 53 00 00 00    	jge    155b <init_data+0xbb>
    1508:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    150c:	0f 84 1f 00 00 00    	je     1531 <init_data+0x91>
    1512:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1515:	2b 45 e4             	sub    -0x1c(%rbp),%eax
    1518:	b9 00 00 00 80       	mov    $0x80000000,%ecx
    151d:	31 d2                	xor    %edx,%edx
    151f:	f7 f1                	div    %ecx
    1521:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1525:	48 63 4d e4          	movslq -0x1c(%rbp),%rcx
    1529:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    152c:	e9 17 00 00 00       	jmp    1548 <init_data+0xa8>
    1531:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1534:	b9 00 00 00 80       	mov    $0x80000000,%ecx
    1539:	31 d2                	xor    %edx,%edx
    153b:	f7 f1                	div    %ecx
    153d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1541:	48 63 4d e4          	movslq -0x1c(%rbp),%rcx
    1545:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    1548:	e9 00 00 00 00       	jmp    154d <init_data+0xad>
    154d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1550:	83 c0 01             	add    $0x1,%eax
    1553:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    1556:	e9 a1 ff ff ff       	jmp    14fc <init_data+0x5c>
    155b:	48 83 c4 20          	add    $0x20,%rsp
    155f:	5d                   	pop    %rbp
    1560:	c3                   	ret    
    1561:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1568:	00 00 00 
    156b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001570 <all_inverted>:
    1570:	55                   	push   %rbp
    1571:	48 89 e5             	mov    %rsp,%rbp
    1574:	48 83 ec 10          	sub    $0x10,%rsp
    1578:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    157c:	89 75 f4             	mov    %esi,-0xc(%rbp)
    157f:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    1583:	8b 75 f4             	mov    -0xc(%rbp),%esi
    1586:	31 d2                	xor    %edx,%edx
    1588:	b9 01 00 00 00       	mov    $0x1,%ecx
    158d:	e8 0e ff ff ff       	call   14a0 <init_data>
    1592:	48 83 c4 10          	add    $0x10,%rsp
    1596:	5d                   	pop    %rbp
    1597:	c3                   	ret    
    1598:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    159f:	00 

00000000000015a0 <test_subarray>:
    15a0:	55                   	push   %rbp
    15a1:	48 89 e5             	mov    %rsp,%rbp
    15a4:	48 83 ec 50          	sub    $0x50,%rsp
    15a8:	89 7d fc             	mov    %edi,-0x4(%rbp)
    15ab:	89 75 f8             	mov    %esi,-0x8(%rbp)
    15ae:	89 55 f4             	mov    %edx,-0xc(%rbp)
    15b1:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    15b5:	44 89 45 e4          	mov    %r8d,-0x1c(%rbp)
    15b9:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%rbp)
    15c0:	48 63 7d f8          	movslq -0x8(%rbp),%rdi
    15c4:	48 c1 e7 02          	shl    $0x2,%rdi
    15c8:	e8 d3 fa ff ff       	call   10a0 <malloc@plt>
    15cd:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    15d1:	48 63 7d f8          	movslq -0x8(%rbp),%rdi
    15d5:	48 c1 e7 02          	shl    $0x2,%rdi
    15d9:	e8 c2 fa ff ff       	call   10a0 <malloc@plt>
    15de:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    15e2:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    15e7:	0f 84 0b 00 00 00    	je     15f8 <test_subarray+0x58>
    15ed:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    15f2:	0f 85 2a 00 00 00    	jne    1622 <test_subarray+0x82>
    15f8:	48 8d 3d e9 1a 00 00 	lea    0x1ae9(%rip),%rdi        # 30e8 <_IO_stdin_used+0xe8>
    15ff:	b0 00                	mov    $0x0,%al
    1601:	e8 5a fa ff ff       	call   1060 <printf@plt>
    1606:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    160a:	e8 21 fa ff ff       	call   1030 <free@plt>
    160f:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    1613:	e8 18 fa ff ff       	call   1030 <free@plt>
    1618:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    161d:	e8 ae fa ff ff       	call   10d0 <exit@plt>
    1622:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
    1629:	8b 45 c8             	mov    -0x38(%rbp),%eax
    162c:	3b 45 f8             	cmp    -0x8(%rbp),%eax
    162f:	0f 8d 3d 00 00 00    	jge    1672 <test_subarray+0xd2>
    1635:	48 8d 3d 64 3a 00 00 	lea    0x3a64(%rip),%rdi        # 50a0 <randomSeed>
    163c:	e8 0f fa ff ff       	call   1050 <rand_r@plt>
    1641:	89 c2                	mov    %eax,%edx
    1643:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1647:	48 63 4d c8          	movslq -0x38(%rbp),%rcx
    164b:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    164e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1652:	48 63 4d c8          	movslq -0x38(%rbp),%rcx
    1656:	8b 14 88             	mov    (%rax,%rcx,4),%edx
    1659:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    165d:	48 63 4d c8          	movslq -0x38(%rbp),%rcx
    1661:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    1664:	8b 45 c8             	mov    -0x38(%rbp),%eax
    1667:	83 c0 01             	add    $0x1,%eax
    166a:	89 45 c8             	mov    %eax,-0x38(%rbp)
    166d:	e9 b7 ff ff ff       	jmp    1629 <test_subarray+0x89>
    1672:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1676:	0f 84 1a 00 00 00    	je     1696 <test_subarray+0xf6>
    167c:	48 8d 3d 7f 1a 00 00 	lea    0x1a7f(%rip),%rdi        # 3102 <_IO_stdin_used+0x102>
    1683:	b0 00                	mov    $0x0,%al
    1685:	e8 d6 f9 ff ff       	call   1060 <printf@plt>
    168a:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    168e:	8b 75 f8             	mov    -0x8(%rbp),%esi
    1691:	e8 8a 01 00 00       	call   1820 <display_array>
    1696:	48 8d 3d 03 3a 00 00 	lea    0x3a03(%rip),%rdi        # 50a0 <randomSeed>
    169d:	e8 ae f9 ff ff       	call   1050 <rand_r@plt>
    16a2:	99                   	cltd   
    16a3:	f7 7d f8             	idivl  -0x8(%rbp)
    16a6:	89 55 c4             	mov    %edx,-0x3c(%rbp)
    16a9:	8b 45 f8             	mov    -0x8(%rbp),%eax
    16ac:	83 e8 01             	sub    $0x1,%eax
    16af:	2b 45 c4             	sub    -0x3c(%rbp),%eax
    16b2:	89 45 c0             	mov    %eax,-0x40(%rbp)
    16b5:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    16b8:	3b 45 c0             	cmp    -0x40(%rbp),%eax
    16bb:	0f 8e 12 00 00 00    	jle    16d3 <test_subarray+0x133>
    16c1:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    16c4:	89 45 bc             	mov    %eax,-0x44(%rbp)
    16c7:	8b 45 c0             	mov    -0x40(%rbp),%eax
    16ca:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    16cd:	8b 45 bc             	mov    -0x44(%rbp),%eax
    16d0:	89 45 c0             	mov    %eax,-0x40(%rbp)
    16d3:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    16d6:	8b 55 c0             	mov    -0x40(%rbp),%edx
    16d9:	48 8d 3d 34 1a 00 00 	lea    0x1a34(%rip),%rdi        # 3114 <_IO_stdin_used+0x114>
    16e0:	b0 00                	mov    $0x0,%al
    16e2:	e8 79 f9 ff ff       	call   1060 <printf@plt>
    16e7:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%rbp)
    16ee:	8b 45 b8             	mov    -0x48(%rbp),%eax
    16f1:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    16f4:	0f 8d 62 00 00 00    	jge    175c <test_subarray+0x1bc>
    16fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    16fe:	48 63 4d b8          	movslq -0x48(%rbp),%rcx
    1702:	48 c1 e1 04          	shl    $0x4,%rcx
    1706:	48 01 c8             	add    %rcx,%rax
    1709:	48 8b 00             	mov    (%rax),%rax
    170c:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    1710:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    1713:	8b 55 c0             	mov    -0x40(%rbp),%edx
    1716:	ff d0                	call   *%rax
    1718:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    171c:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    1720:	8b 55 f8             	mov    -0x8(%rbp),%edx
    1723:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    1726:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    172a:	4c 63 45 b8          	movslq -0x48(%rbp),%r8
    172e:	49 c1 e0 04          	shl    $0x4,%r8
    1732:	4c 01 c0             	add    %r8,%rax
    1735:	4c 8b 40 08          	mov    0x8(%rax),%r8
    1739:	44 8b 4d c4          	mov    -0x3c(%rbp),%r9d
    173d:	8b 45 c0             	mov    -0x40(%rbp),%eax
    1740:	89 04 24             	mov    %eax,(%rsp)
    1743:	e8 38 01 00 00       	call   1880 <post_process>
    1748:	23 45 cc             	and    -0x34(%rbp),%eax
    174b:	89 45 cc             	mov    %eax,-0x34(%rbp)
    174e:	8b 45 b8             	mov    -0x48(%rbp),%eax
    1751:	83 c0 01             	add    $0x1,%eax
    1754:	89 45 b8             	mov    %eax,-0x48(%rbp)
    1757:	e9 92 ff ff ff       	jmp    16ee <test_subarray+0x14e>
    175c:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    1760:	0f 84 37 00 00 00    	je     179d <test_subarray+0x1fd>
    1766:	48 8d 3d c3 19 00 00 	lea    0x19c3(%rip),%rdi        # 3130 <_IO_stdin_used+0x130>
    176d:	b0 00                	mov    $0x0,%al
    176f:	e8 ec f8 ff ff       	call   1060 <printf@plt>
    1774:	48 8b 05 7d 38 00 00 	mov    0x387d(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    177b:	48 8b 38             	mov    (%rax),%rdi
    177e:	48 8d 35 c3 19 00 00 	lea    0x19c3(%rip),%rsi        # 3148 <_IO_stdin_used+0x148>
    1785:	48 8d 15 d6 19 00 00 	lea    0x19d6(%rip),%rdx        # 3162 <_IO_stdin_used+0x162>
    178c:	b9 39 01 00 00       	mov    $0x139,%ecx
    1791:	b0 00                	mov    $0x0,%al
    1793:	e8 f8 f8 ff ff       	call   1090 <fprintf@plt>
    1798:	e9 5e 00 00 00       	jmp    17fb <test_subarray+0x25b>
    179d:	e9 00 00 00 00       	jmp    17a2 <test_subarray+0x202>
    17a2:	48 8b 05 4f 38 00 00 	mov    0x384f(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    17a9:	48 8b 38             	mov    (%rax),%rdi
    17ac:	48 8d 35 bd 19 00 00 	lea    0x19bd(%rip),%rsi        # 3170 <_IO_stdin_used+0x170>
    17b3:	48 8d 15 a8 19 00 00 	lea    0x19a8(%rip),%rdx        # 3162 <_IO_stdin_used+0x162>
    17ba:	b9 3b 01 00 00       	mov    $0x13b,%ecx
    17bf:	b0 00                	mov    $0x0,%al
    17c1:	e8 ca f8 ff ff       	call   1090 <fprintf@plt>
    17c6:	48 8b 05 2b 38 00 00 	mov    0x382b(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    17cd:	48 8b 38             	mov    (%rax),%rdi
    17d0:	48 8d 35 be 19 00 00 	lea    0x19be(%rip),%rsi        # 3195 <_IO_stdin_used+0x195>
    17d7:	b0 00                	mov    $0x0,%al
    17d9:	e8 b2 f8 ff ff       	call   1090 <fprintf@plt>
    17de:	48 8b 05 13 38 00 00 	mov    0x3813(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    17e5:	48 8b 38             	mov    (%rax),%rdi
    17e8:	48 8d 35 21 1a 00 00 	lea    0x1a21(%rip),%rsi        # 3210 <_IO_stdin_used+0x210>
    17ef:	b0 00                	mov    $0x0,%al
    17f1:	e8 9a f8 ff ff       	call   1090 <fprintf@plt>
    17f6:	e9 00 00 00 00       	jmp    17fb <test_subarray+0x25b>
    17fb:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    17ff:	e8 2c f8 ff ff       	call   1030 <free@plt>
    1804:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    1808:	e8 23 f8 ff ff       	call   1030 <free@plt>
    180d:	48 83 c4 50          	add    $0x50,%rsp
    1811:	5d                   	pop    %rbp
    1812:	c3                   	ret    
    1813:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    181a:	00 00 00 
    181d:	0f 1f 00             	nopl   (%rax)

0000000000001820 <display_array>:
    1820:	55                   	push   %rbp
    1821:	48 89 e5             	mov    %rsp,%rbp
    1824:	48 83 ec 10          	sub    $0x10,%rsp
    1828:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    182c:	89 75 f4             	mov    %esi,-0xc(%rbp)
    182f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    1836:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1839:	3b 45 f4             	cmp    -0xc(%rbp),%eax
    183c:	0f 8d 27 00 00 00    	jge    1869 <display_array+0x49>
    1842:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1846:	48 63 4d f0          	movslq -0x10(%rbp),%rcx
    184a:	8b 34 88             	mov    (%rax,%rcx,4),%esi
    184d:	48 8d 3d 59 19 00 00 	lea    0x1959(%rip),%rdi        # 31ad <_IO_stdin_used+0x1ad>
    1854:	b0 00                	mov    $0x0,%al
    1856:	e8 05 f8 ff ff       	call   1060 <printf@plt>
    185b:	8b 45 f0             	mov    -0x10(%rbp),%eax
    185e:	83 c0 01             	add    $0x1,%eax
    1861:	89 45 f0             	mov    %eax,-0x10(%rbp)
    1864:	e9 cd ff ff ff       	jmp    1836 <display_array+0x16>
    1869:	48 8d 3d a0 19 00 00 	lea    0x19a0(%rip),%rdi        # 3210 <_IO_stdin_used+0x210>
    1870:	b0 00                	mov    $0x0,%al
    1872:	e8 e9 f7 ff ff       	call   1060 <printf@plt>
    1877:	48 83 c4 10          	add    $0x10,%rsp
    187b:	5d                   	pop    %rbp
    187c:	c3                   	ret    
    187d:	0f 1f 00             	nopl   (%rax)

0000000000001880 <post_process>:
    1880:	55                   	push   %rbp
    1881:	48 89 e5             	mov    %rsp,%rbp
    1884:	48 83 ec 40          	sub    $0x40,%rsp
    1888:	8b 45 10             	mov    0x10(%rbp),%eax
    188b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    188f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1893:	89 55 ec             	mov    %edx,-0x14(%rbp)
    1896:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    1899:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
    189d:	44 89 4d dc          	mov    %r9d,-0x24(%rbp)
    18a1:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%rbp)
    18a8:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
    18ac:	0f 84 2c 00 00 00    	je     18de <post_process+0x5e>
    18b2:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    18b6:	48 8d 3d f4 18 00 00 	lea    0x18f4(%rip),%rdi        # 31b1 <_IO_stdin_used+0x1b1>
    18bd:	b0 00                	mov    $0x0,%al
    18bf:	e8 9c f7 ff ff       	call   1060 <printf@plt>
    18c4:	48 8d 3d eb 18 00 00 	lea    0x18eb(%rip),%rdi        # 31b6 <_IO_stdin_used+0x1b6>
    18cb:	b0 00                	mov    $0x0,%al
    18cd:	e8 8e f7 ff ff       	call   1060 <printf@plt>
    18d2:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    18d6:	8b 75 ec             	mov    -0x14(%rbp),%esi
    18d9:	e8 42 ff ff ff       	call   1820 <display_array>
    18de:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
    18e5:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    18e8:	3b 45 dc             	cmp    -0x24(%rbp),%eax
    18eb:	0f 8d a1 00 00 00    	jge    1992 <post_process+0x112>
    18f1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    18f5:	48 63 4d d4          	movslq -0x2c(%rbp),%rcx
    18f9:	8b 04 88             	mov    (%rax,%rcx,4),%eax
    18fc:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    1900:	48 63 55 d4          	movslq -0x2c(%rbp),%rdx
    1904:	3b 04 91             	cmp    (%rcx,%rdx,4),%eax
    1907:	0f 84 72 00 00 00    	je     197f <post_process+0xff>
    190d:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    1911:	48 8d 3d 99 18 00 00 	lea    0x1899(%rip),%rdi        # 31b1 <_IO_stdin_used+0x1b1>
    1918:	b0 00                	mov    $0x0,%al
    191a:	e8 41 f7 ff ff       	call   1060 <printf@plt>
    191f:	48 8b 05 d2 36 00 00 	mov    0x36d2(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    1926:	48 8b 38             	mov    (%rax),%rdi
    1929:	48 8d 35 40 18 00 00 	lea    0x1840(%rip),%rsi        # 3170 <_IO_stdin_used+0x170>
    1930:	48 8d 15 90 18 00 00 	lea    0x1890(%rip),%rdx        # 31c7 <_IO_stdin_used+0x1c7>
    1937:	b9 58 00 00 00       	mov    $0x58,%ecx
    193c:	b0 00                	mov    $0x0,%al
    193e:	e8 4d f7 ff ff       	call   1090 <fprintf@plt>
    1943:	48 8b 05 ae 36 00 00 	mov    0x36ae(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    194a:	48 8b 38             	mov    (%rax),%rdi
    194d:	48 8d 35 80 18 00 00 	lea    0x1880(%rip),%rsi        # 31d4 <_IO_stdin_used+0x1d4>
    1954:	b0 00                	mov    $0x0,%al
    1956:	e8 35 f7 ff ff       	call   1090 <fprintf@plt>
    195b:	48 8b 05 96 36 00 00 	mov    0x3696(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    1962:	48 8b 38             	mov    (%rax),%rdi
    1965:	48 8d 35 a4 18 00 00 	lea    0x18a4(%rip),%rsi        # 3210 <_IO_stdin_used+0x210>
    196c:	b0 00                	mov    $0x0,%al
    196e:	e8 1d f7 ff ff       	call   1090 <fprintf@plt>
    1973:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
    197a:	e9 13 00 00 00       	jmp    1992 <post_process+0x112>
    197f:	e9 00 00 00 00       	jmp    1984 <post_process+0x104>
    1984:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    1987:	83 c0 01             	add    $0x1,%eax
    198a:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    198d:	e9 53 ff ff ff       	jmp    18e5 <post_process+0x65>
    1992:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1995:	83 c0 01             	add    $0x1,%eax
    1998:	89 45 d0             	mov    %eax,-0x30(%rbp)
    199b:	8b 45 d0             	mov    -0x30(%rbp),%eax
    199e:	8b 4d 10             	mov    0x10(%rbp),%ecx
    19a1:	83 c1 01             	add    $0x1,%ecx
    19a4:	39 c8                	cmp    %ecx,%eax
    19a6:	0f 8d a6 00 00 00    	jge    1a52 <post_process+0x1d2>
    19ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19b0:	8b 4d d0             	mov    -0x30(%rbp),%ecx
    19b3:	83 e9 01             	sub    $0x1,%ecx
    19b6:	48 63 c9             	movslq %ecx,%rcx
    19b9:	8b 04 88             	mov    (%rax,%rcx,4),%eax
    19bc:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    19c0:	48 63 55 d0          	movslq -0x30(%rbp),%rdx
    19c4:	3b 04 91             	cmp    (%rcx,%rdx,4),%eax
    19c7:	0f 86 72 00 00 00    	jbe    1a3f <post_process+0x1bf>
    19cd:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    19d1:	48 8d 3d d9 17 00 00 	lea    0x17d9(%rip),%rdi        # 31b1 <_IO_stdin_used+0x1b1>
    19d8:	b0 00                	mov    $0x0,%al
    19da:	e8 81 f6 ff ff       	call   1060 <printf@plt>
    19df:	48 8b 05 12 36 00 00 	mov    0x3612(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    19e6:	48 8b 38             	mov    (%rax),%rdi
    19e9:	48 8d 35 80 17 00 00 	lea    0x1780(%rip),%rsi        # 3170 <_IO_stdin_used+0x170>
    19f0:	48 8d 15 d0 17 00 00 	lea    0x17d0(%rip),%rdx        # 31c7 <_IO_stdin_used+0x1c7>
    19f7:	b9 62 00 00 00       	mov    $0x62,%ecx
    19fc:	b0 00                	mov    $0x0,%al
    19fe:	e8 8d f6 ff ff       	call   1090 <fprintf@plt>
    1a03:	48 8b 05 ee 35 00 00 	mov    0x35ee(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    1a0a:	48 8b 38             	mov    (%rax),%rdi
    1a0d:	48 8d 35 e6 17 00 00 	lea    0x17e6(%rip),%rsi        # 31fa <_IO_stdin_used+0x1fa>
    1a14:	b0 00                	mov    $0x0,%al
    1a16:	e8 75 f6 ff ff       	call   1090 <fprintf@plt>
    1a1b:	48 8b 05 d6 35 00 00 	mov    0x35d6(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    1a22:	48 8b 38             	mov    (%rax),%rdi
    1a25:	48 8d 35 e4 17 00 00 	lea    0x17e4(%rip),%rsi        # 3210 <_IO_stdin_used+0x210>
    1a2c:	b0 00                	mov    $0x0,%al
    1a2e:	e8 5d f6 ff ff       	call   1090 <fprintf@plt>
    1a33:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
    1a3a:	e9 13 00 00 00       	jmp    1a52 <post_process+0x1d2>
    1a3f:	e9 00 00 00 00       	jmp    1a44 <post_process+0x1c4>
    1a44:	8b 45 d0             	mov    -0x30(%rbp),%eax
    1a47:	83 c0 01             	add    $0x1,%eax
    1a4a:	89 45 d0             	mov    %eax,-0x30(%rbp)
    1a4d:	e9 49 ff ff ff       	jmp    199b <post_process+0x11b>
    1a52:	8b 45 10             	mov    0x10(%rbp),%eax
    1a55:	83 c0 01             	add    $0x1,%eax
    1a58:	89 45 cc             	mov    %eax,-0x34(%rbp)
    1a5b:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1a5e:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1a61:	0f 8d a1 00 00 00    	jge    1b08 <post_process+0x288>
    1a67:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a6b:	48 63 4d cc          	movslq -0x34(%rbp),%rcx
    1a6f:	8b 04 88             	mov    (%rax,%rcx,4),%eax
    1a72:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    1a76:	48 63 55 cc          	movslq -0x34(%rbp),%rdx
    1a7a:	3b 04 91             	cmp    (%rcx,%rdx,4),%eax
    1a7d:	0f 84 72 00 00 00    	je     1af5 <post_process+0x275>
    1a83:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    1a87:	48 8d 3d 23 17 00 00 	lea    0x1723(%rip),%rdi        # 31b1 <_IO_stdin_used+0x1b1>
    1a8e:	b0 00                	mov    $0x0,%al
    1a90:	e8 cb f5 ff ff       	call   1060 <printf@plt>
    1a95:	48 8b 05 5c 35 00 00 	mov    0x355c(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    1a9c:	48 8b 38             	mov    (%rax),%rdi
    1a9f:	48 8d 35 ca 16 00 00 	lea    0x16ca(%rip),%rsi        # 3170 <_IO_stdin_used+0x170>
    1aa6:	48 8d 15 1a 17 00 00 	lea    0x171a(%rip),%rdx        # 31c7 <_IO_stdin_used+0x1c7>
    1aad:	b9 6c 00 00 00       	mov    $0x6c,%ecx
    1ab2:	b0 00                	mov    $0x0,%al
    1ab4:	e8 d7 f5 ff ff       	call   1090 <fprintf@plt>
    1ab9:	48 8b 05 38 35 00 00 	mov    0x3538(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    1ac0:	48 8b 38             	mov    (%rax),%rdi
    1ac3:	48 8d 35 0a 17 00 00 	lea    0x170a(%rip),%rsi        # 31d4 <_IO_stdin_used+0x1d4>
    1aca:	b0 00                	mov    $0x0,%al
    1acc:	e8 bf f5 ff ff       	call   1090 <fprintf@plt>
    1ad1:	48 8b 05 20 35 00 00 	mov    0x3520(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    1ad8:	48 8b 38             	mov    (%rax),%rdi
    1adb:	48 8d 35 2e 17 00 00 	lea    0x172e(%rip),%rsi        # 3210 <_IO_stdin_used+0x210>
    1ae2:	b0 00                	mov    $0x0,%al
    1ae4:	e8 a7 f5 ff ff       	call   1090 <fprintf@plt>
    1ae9:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
    1af0:	e9 13 00 00 00       	jmp    1b08 <post_process+0x288>
    1af5:	e9 00 00 00 00       	jmp    1afa <post_process+0x27a>
    1afa:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1afd:	83 c0 01             	add    $0x1,%eax
    1b00:	89 45 cc             	mov    %eax,-0x34(%rbp)
    1b03:	e9 53 ff ff ff       	jmp    1a5b <post_process+0x1db>
    1b08:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    1b0c:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    1b10:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1b13:	e8 d8 06 00 00       	call   21f0 <copy_data>
    1b18:	8b 45 d8             	mov    -0x28(%rbp),%eax
    1b1b:	48 83 c4 40          	add    $0x40,%rsp
    1b1f:	5d                   	pop    %rbp
    1b20:	c3                   	ret    
    1b21:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b28:	00 00 00 
    1b2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001b30 <test_correctness>:
    1b30:	55                   	push   %rbp
    1b31:	48 89 e5             	mov    %rsp,%rbp
    1b34:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
    1b3b:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1b3e:	89 75 f8             	mov    %esi,-0x8(%rbp)
    1b41:	89 55 f4             	mov    %edx,-0xc(%rbp)
    1b44:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    1b48:	44 89 45 e4          	mov    %r8d,-0x1c(%rbp)
    1b4c:	c7 45 ac 01 00 00 00 	movl   $0x1,-0x54(%rbp)
    1b53:	48 63 45 e4          	movslq -0x1c(%rbp),%rax
    1b57:	48 8d 0c 85 0f 00 00 	lea    0xf(,%rax,4),%rcx
    1b5e:	00 
    1b5f:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
    1b63:	48 89 e0             	mov    %rsp,%rax
    1b66:	48 29 c8             	sub    %rcx,%rax
    1b69:	48 89 c4             	mov    %rax,%rsp
    1b6c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    1b70:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
    1b77:	8b 45 9c             	mov    -0x64(%rbp),%eax
    1b7a:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    1b7d:	0f 8d 1e 00 00 00    	jge    1ba1 <test_correctness+0x71>
    1b83:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1b87:	48 63 4d 9c          	movslq -0x64(%rbp),%rcx
    1b8b:	0f 57 c0             	xorps  %xmm0,%xmm0
    1b8e:	f3 0f 11 04 88       	movss  %xmm0,(%rax,%rcx,4)
    1b93:	8b 45 9c             	mov    -0x64(%rbp),%eax
    1b96:	83 c0 01             	add    $0x1,%eax
    1b99:	89 45 9c             	mov    %eax,-0x64(%rbp)
    1b9c:	e9 d6 ff ff ff       	jmp    1b77 <test_correctness+0x47>
    1ba1:	48 63 7d f8          	movslq -0x8(%rbp),%rdi
    1ba5:	48 c1 e7 02          	shl    $0x2,%rdi
    1ba9:	e8 f2 f4 ff ff       	call   10a0 <malloc@plt>
    1bae:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    1bb2:	48 63 7d f8          	movslq -0x8(%rbp),%rdi
    1bb6:	48 c1 e7 02          	shl    $0x2,%rdi
    1bba:	e8 e1 f4 ff ff       	call   10a0 <malloc@plt>
    1bbf:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1bc3:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
    1bc8:	0f 84 0b 00 00 00    	je     1bd9 <test_correctness+0xa9>
    1bce:	48 83 7d b0 00       	cmpq   $0x0,-0x50(%rbp)
    1bd3:	0f 85 2a 00 00 00    	jne    1c03 <test_correctness+0xd3>
    1bd9:	48 8d 3d 08 15 00 00 	lea    0x1508(%rip),%rdi        # 30e8 <_IO_stdin_used+0xe8>
    1be0:	b0 00                	mov    $0x0,%al
    1be2:	e8 79 f4 ff ff       	call   1060 <printf@plt>
    1be7:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
    1beb:	e8 40 f4 ff ff       	call   1030 <free@plt>
    1bf0:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
    1bf4:	e8 37 f4 ff ff       	call   1030 <free@plt>
    1bf9:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    1bfe:	e8 cd f4 ff ff       	call   10d0 <exit@plt>
    1c03:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
    1c0a:	8b 45 98             	mov    -0x68(%rbp),%eax
    1c0d:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    1c10:	0f 8d 1e 00 00 00    	jge    1c34 <test_correctness+0x104>
    1c16:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1c1a:	48 63 4d 98          	movslq -0x68(%rbp),%rcx
    1c1e:	0f 57 c0             	xorps  %xmm0,%xmm0
    1c21:	f3 0f 11 04 88       	movss  %xmm0,(%rax,%rcx,4)
    1c26:	8b 45 98             	mov    -0x68(%rbp),%eax
    1c29:	83 c0 01             	add    $0x1,%eax
    1c2c:	89 45 98             	mov    %eax,-0x68(%rbp)
    1c2f:	e9 d6 ff ff ff       	jmp    1c0a <test_correctness+0xda>
    1c34:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%rbp)
    1c3b:	48 63 45 94          	movslq -0x6c(%rbp),%rax
    1c3f:	48 83 f8 02          	cmp    $0x2,%rax
    1c43:	0f 83 de 02 00 00    	jae    1f27 <test_correctness+0x3f7>
    1c49:	48 63 4d 94          	movslq -0x6c(%rbp),%rcx
    1c4d:	48 8d 05 2c 34 00 00 	lea    0x342c(%rip),%rax        # 5080 <dataGen>
    1c54:	48 c1 e1 04          	shl    $0x4,%rcx
    1c58:	48 01 c8             	add    %rcx,%rax
    1c5b:	48 8b 70 08          	mov    0x8(%rax),%rsi
    1c5f:	8b 55 f8             	mov    -0x8(%rbp),%edx
    1c62:	48 8d 3d a9 15 00 00 	lea    0x15a9(%rip),%rdi        # 3212 <_IO_stdin_used+0x212>
    1c69:	b0 00                	mov    $0x0,%al
    1c6b:	e8 f0 f3 ff ff       	call   1060 <printf@plt>
    1c70:	c7 45 90 00 00 00 00 	movl   $0x0,-0x70(%rbp)
    1c77:	8b 45 90             	mov    -0x70(%rbp),%eax
    1c7a:	3b 45 f4             	cmp    -0xc(%rbp),%eax
    1c7d:	0f 8d a3 01 00 00    	jge    1e26 <test_correctness+0x2f6>
    1c83:	48 63 4d 94          	movslq -0x6c(%rbp),%rcx
    1c87:	48 8d 05 f2 33 00 00 	lea    0x33f2(%rip),%rax        # 5080 <dataGen>
    1c8e:	48 c1 e1 04          	shl    $0x4,%rcx
    1c92:	48 01 c8             	add    %rcx,%rax
    1c95:	48 8b 00             	mov    (%rax),%rax
    1c98:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
    1c9c:	8b 75 f8             	mov    -0x8(%rbp),%esi
    1c9f:	ff d0                	call   *%rax
    1ca1:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1ca5:	0f 84 1a 00 00 00    	je     1cc5 <test_correctness+0x195>
    1cab:	48 8d 3d 50 14 00 00 	lea    0x1450(%rip),%rdi        # 3102 <_IO_stdin_used+0x102>
    1cb2:	b0 00                	mov    $0x0,%al
    1cb4:	e8 a7 f3 ff ff       	call   1060 <printf@plt>
    1cb9:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
    1cbd:	8b 75 f8             	mov    -0x8(%rbp),%esi
    1cc0:	e8 5b fb ff ff       	call   1820 <display_array>
    1cc5:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%rbp)
    1ccc:	8b 45 8c             	mov    -0x74(%rbp),%eax
    1ccf:	3b 45 f8             	cmp    -0x8(%rbp),%eax
    1cd2:	0f 8d 24 00 00 00    	jge    1cfc <test_correctness+0x1cc>
    1cd8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1cdc:	48 63 4d 8c          	movslq -0x74(%rbp),%rcx
    1ce0:	8b 14 88             	mov    (%rax,%rcx,4),%edx
    1ce3:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1ce7:	48 63 4d 8c          	movslq -0x74(%rbp),%rcx
    1ceb:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    1cee:	8b 45 8c             	mov    -0x74(%rbp),%eax
    1cf1:	83 c0 01             	add    $0x1,%eax
    1cf4:	89 45 8c             	mov    %eax,-0x74(%rbp)
    1cf7:	e9 d0 ff ff ff       	jmp    1ccc <test_correctness+0x19c>
    1cfc:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
    1d03:	8b 45 88             	mov    -0x78(%rbp),%eax
    1d06:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    1d09:	0f 8d 04 01 00 00    	jge    1e13 <test_correctness+0x2e3>
    1d0f:	e8 3c 05 00 00       	call   2250 <gettime>
    1d14:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    1d1b:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
    1d1f:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1d26:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1d2a:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1d2e:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1d32:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d36:	48 63 4d 88          	movslq -0x78(%rbp),%rcx
    1d3a:	48 c1 e1 04          	shl    $0x4,%rcx
    1d3e:	48 01 c8             	add    %rcx,%rax
    1d41:	48 8b 00             	mov    (%rax),%rax
    1d44:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
    1d48:	8b 55 f8             	mov    -0x8(%rbp),%edx
    1d4b:	83 ea 01             	sub    $0x1,%edx
    1d4e:	31 f6                	xor    %esi,%esi
    1d50:	ff d0                	call   *%rax
    1d52:	e8 f9 04 00 00       	call   2250 <gettime>
    1d57:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    1d5e:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
    1d65:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    1d6c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1d70:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    1d77:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1d7b:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    1d7f:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
    1d83:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    1d87:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    1d8b:	e8 f0 04 00 00       	call   2280 <tdiff>
    1d90:	0f 28 c8             	movaps %xmm0,%xmm1
    1d93:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1d97:	48 63 4d 88          	movslq -0x78(%rbp),%rcx
    1d9b:	f3 0f 10 04 88       	movss  (%rax,%rcx,4),%xmm0
    1da0:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1da4:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1da8:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
    1dac:	f3 0f 11 04 88       	movss  %xmm0,(%rax,%rcx,4)
    1db1:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
    1db5:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
    1db9:	8b 55 f8             	mov    -0x8(%rbp),%edx
    1dbc:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    1dbf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1dc3:	4c 63 45 88          	movslq -0x78(%rbp),%r8
    1dc7:	49 c1 e0 04          	shl    $0x4,%r8
    1dcb:	4c 01 c0             	add    %r8,%rax
    1dce:	4c 8b 40 08          	mov    0x8(%rax),%r8
    1dd2:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1dd5:	83 e8 01             	sub    $0x1,%eax
    1dd8:	45 31 c9             	xor    %r9d,%r9d
    1ddb:	48 83 ec 10          	sub    $0x10,%rsp
    1ddf:	89 04 24             	mov    %eax,(%rsp)
    1de2:	e8 99 fa ff ff       	call   1880 <post_process>
    1de7:	48 83 c4 10          	add    $0x10,%rsp
    1deb:	23 45 ac             	and    -0x54(%rbp),%eax
    1dee:	89 45 ac             	mov    %eax,-0x54(%rbp)
    1df1:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
    1df5:	0f 85 05 00 00 00    	jne    1e00 <test_correctness+0x2d0>
    1dfb:	e9 13 00 00 00       	jmp    1e13 <test_correctness+0x2e3>
    1e00:	e9 00 00 00 00       	jmp    1e05 <test_correctness+0x2d5>
    1e05:	8b 45 88             	mov    -0x78(%rbp),%eax
    1e08:	83 c0 01             	add    $0x1,%eax
    1e0b:	89 45 88             	mov    %eax,-0x78(%rbp)
    1e0e:	e9 f0 fe ff ff       	jmp    1d03 <test_correctness+0x1d3>
    1e13:	e9 00 00 00 00       	jmp    1e18 <test_correctness+0x2e8>
    1e18:	8b 45 90             	mov    -0x70(%rbp),%eax
    1e1b:	83 c0 01             	add    $0x1,%eax
    1e1e:	89 45 90             	mov    %eax,-0x70(%rbp)
    1e21:	e9 51 fe ff ff       	jmp    1c77 <test_correctness+0x147>
    1e26:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
    1e2a:	0f 84 e4 00 00 00    	je     1f14 <test_correctness+0x3e4>
    1e30:	48 8d 3d f9 12 00 00 	lea    0x12f9(%rip),%rdi        # 3130 <_IO_stdin_used+0x130>
    1e37:	b0 00                	mov    $0x0,%al
    1e39:	e8 22 f2 ff ff       	call   1060 <printf@plt>
    1e3e:	48 8b 05 b3 31 00 00 	mov    0x31b3(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    1e45:	48 8b 38             	mov    (%rax),%rdi
    1e48:	48 8d 35 f9 12 00 00 	lea    0x12f9(%rip),%rsi        # 3148 <_IO_stdin_used+0x148>
    1e4f:	48 8d 15 e0 13 00 00 	lea    0x13e0(%rip),%rdx        # 3236 <_IO_stdin_used+0x236>
    1e56:	b9 d9 00 00 00       	mov    $0xd9,%ecx
    1e5b:	b0 00                	mov    $0x0,%al
    1e5d:	e8 2e f2 ff ff       	call   1090 <fprintf@plt>
    1e62:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%rbp)
    1e69:	00 00 00 
    1e6c:	8b 85 64 ff ff ff    	mov    -0x9c(%rbp),%eax
    1e72:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    1e75:	0f 8d 94 00 00 00    	jge    1f0f <test_correctness+0x3df>
    1e7b:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    1e7f:	0f 8e 26 00 00 00    	jle    1eab <test_correctness+0x37b>
    1e85:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1e89:	48 63 8d 64 ff ff ff 	movslq -0x9c(%rbp),%rcx
    1e90:	f3 0f 10 04 88       	movss  (%rax,%rcx,4),%xmm0
    1e95:	f3 0f 2a 4d f4       	cvtsi2ssl -0xc(%rbp),%xmm1
    1e9a:	f3 0f 5e c1          	divss  %xmm1,%xmm0
    1e9e:	f3 0f 11 85 5c ff ff 	movss  %xmm0,-0xa4(%rbp)
    1ea5:	ff 
    1ea6:	e9 10 00 00 00       	jmp    1ebb <test_correctness+0x38b>
    1eab:	0f 57 c0             	xorps  %xmm0,%xmm0
    1eae:	f3 0f 11 85 5c ff ff 	movss  %xmm0,-0xa4(%rbp)
    1eb5:	ff 
    1eb6:	e9 00 00 00 00       	jmp    1ebb <test_correctness+0x38b>
    1ebb:	f3 0f 10 85 5c ff ff 	movss  -0xa4(%rbp),%xmm0
    1ec2:	ff 
    1ec3:	f3 0f 11 85 60 ff ff 	movss  %xmm0,-0xa0(%rbp)
    1eca:	ff 
    1ecb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ecf:	48 63 8d 64 ff ff ff 	movslq -0x9c(%rbp),%rcx
    1ed6:	48 c1 e1 04          	shl    $0x4,%rcx
    1eda:	48 01 c8             	add    %rcx,%rax
    1edd:	48 8b 70 08          	mov    0x8(%rax),%rsi
    1ee1:	f3 0f 10 85 60 ff ff 	movss  -0xa0(%rbp),%xmm0
    1ee8:	ff 
    1ee9:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1eed:	48 8d 3d 53 13 00 00 	lea    0x1353(%rip),%rdi        # 3247 <_IO_stdin_used+0x247>
    1ef4:	b0 01                	mov    $0x1,%al
    1ef6:	e8 65 f1 ff ff       	call   1060 <printf@plt>
    1efb:	8b 85 64 ff ff ff    	mov    -0x9c(%rbp),%eax
    1f01:	83 c0 01             	add    $0x1,%eax
    1f04:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
    1f0a:	e9 5d ff ff ff       	jmp    1e6c <test_correctness+0x33c>
    1f0f:	e9 00 00 00 00       	jmp    1f14 <test_correctness+0x3e4>
    1f14:	e9 00 00 00 00       	jmp    1f19 <test_correctness+0x3e9>
    1f19:	8b 45 94             	mov    -0x6c(%rbp),%eax
    1f1c:	83 c0 01             	add    $0x1,%eax
    1f1f:	89 45 94             	mov    %eax,-0x6c(%rbp)
    1f22:	e9 14 fd ff ff       	jmp    1c3b <test_correctness+0x10b>
    1f27:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
    1f2b:	e8 00 f1 ff ff       	call   1030 <free@plt>
    1f30:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
    1f34:	e8 f7 f0 ff ff       	call   1030 <free@plt>
    1f39:	48 89 ec             	mov    %rbp,%rsp
    1f3c:	5d                   	pop    %rbp
    1f3d:	c3                   	ret    
    1f3e:	66 90                	xchg   %ax,%ax

0000000000001f40 <test_zero_element>:
    1f40:	55                   	push   %rbp
    1f41:	48 89 e5             	mov    %rsp,%rbp
    1f44:	48 83 ec 30          	sub    $0x30,%rsp
    1f48:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1f4b:	89 75 f8             	mov    %esi,-0x8(%rbp)
    1f4e:	89 55 f4             	mov    %edx,-0xc(%rbp)
    1f51:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    1f55:	44 89 45 e4          	mov    %r8d,-0x1c(%rbp)
    1f59:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%rbp)
    1f60:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    1f67:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1f6a:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    1f6d:	0f 8d 89 00 00 00    	jge    1ffc <test_zero_element+0xbc>
    1f73:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    1f77:	31 f6                	xor    %esi,%esi
    1f79:	ba 0c 00 00 00       	mov    $0xc,%edx
    1f7e:	e8 ed f0 ff ff       	call   1070 <memset@plt>
    1f83:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1f87:	48 63 4d dc          	movslq -0x24(%rbp),%rcx
    1f8b:	48 c1 e1 04          	shl    $0x4,%rcx
    1f8f:	48 01 c8             	add    %rcx,%rax
    1f92:	48 8b 00             	mov    (%rax),%rax
    1f95:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    1f99:	48 83 c7 04          	add    $0x4,%rdi
    1f9d:	31 d2                	xor    %edx,%edx
    1f9f:	89 d6                	mov    %edx,%esi
    1fa1:	ff d0                	call   *%rax
    1fa3:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
    1fa7:	0f 84 3c 00 00 00    	je     1fe9 <test_zero_element+0xa9>
    1fad:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    1fb1:	0f 84 32 00 00 00    	je     1fe9 <test_zero_element+0xa9>
    1fb7:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
    1fbb:	0f 84 28 00 00 00    	je     1fe9 <test_zero_element+0xa9>
    1fc1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1fc5:	48 63 4d dc          	movslq -0x24(%rbp),%rcx
    1fc9:	48 c1 e1 04          	shl    $0x4,%rcx
    1fcd:	48 01 c8             	add    %rcx,%rax
    1fd0:	48 8b 70 08          	mov    0x8(%rax),%rsi
    1fd4:	48 8d 3d 90 12 00 00 	lea    0x1290(%rip),%rdi        # 326b <_IO_stdin_used+0x26b>
    1fdb:	b0 00                	mov    $0x0,%al
    1fdd:	e8 7e f0 ff ff       	call   1060 <printf@plt>
    1fe2:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    1fe9:	e9 00 00 00 00       	jmp    1fee <test_zero_element+0xae>
    1fee:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1ff1:	83 c0 01             	add    $0x1,%eax
    1ff4:	89 45 dc             	mov    %eax,-0x24(%rbp)
    1ff7:	e9 6b ff ff ff       	jmp    1f67 <test_zero_element+0x27>
    1ffc:	83 7d e0 00          	cmpl   $0x0,-0x20(%rbp)
    2000:	0f 84 29 00 00 00    	je     202f <test_zero_element+0xef>
    2006:	48 8b 05 eb 2f 00 00 	mov    0x2feb(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    200d:	48 8b 38             	mov    (%rax),%rdi
    2010:	48 8d 35 31 11 00 00 	lea    0x1131(%rip),%rsi        # 3148 <_IO_stdin_used+0x148>
    2017:	48 8d 15 7f 12 00 00 	lea    0x127f(%rip),%rdx        # 329d <_IO_stdin_used+0x29d>
    201e:	b9 f5 00 00 00       	mov    $0xf5,%ecx
    2023:	b0 00                	mov    $0x0,%al
    2025:	e8 66 f0 ff ff       	call   1090 <fprintf@plt>
    202a:	e9 5e 00 00 00       	jmp    208d <test_zero_element+0x14d>
    202f:	e9 00 00 00 00       	jmp    2034 <test_zero_element+0xf4>
    2034:	48 8b 05 bd 2f 00 00 	mov    0x2fbd(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    203b:	48 8b 38             	mov    (%rax),%rdi
    203e:	48 8d 35 2b 11 00 00 	lea    0x112b(%rip),%rsi        # 3170 <_IO_stdin_used+0x170>
    2045:	48 8d 15 51 12 00 00 	lea    0x1251(%rip),%rdx        # 329d <_IO_stdin_used+0x29d>
    204c:	b9 f7 00 00 00       	mov    $0xf7,%ecx
    2051:	b0 00                	mov    $0x0,%al
    2053:	e8 38 f0 ff ff       	call   1090 <fprintf@plt>
    2058:	48 8b 05 99 2f 00 00 	mov    0x2f99(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    205f:	48 8b 38             	mov    (%rax),%rdi
    2062:	48 8d 35 46 12 00 00 	lea    0x1246(%rip),%rsi        # 32af <_IO_stdin_used+0x2af>
    2069:	b0 00                	mov    $0x0,%al
    206b:	e8 20 f0 ff ff       	call   1090 <fprintf@plt>
    2070:	48 8b 05 81 2f 00 00 	mov    0x2f81(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    2077:	48 8b 38             	mov    (%rax),%rdi
    207a:	48 8d 35 8f 11 00 00 	lea    0x118f(%rip),%rsi        # 3210 <_IO_stdin_used+0x210>
    2081:	b0 00                	mov    $0x0,%al
    2083:	e8 08 f0 ff ff       	call   1090 <fprintf@plt>
    2088:	e9 00 00 00 00       	jmp    208d <test_zero_element+0x14d>
    208d:	48 83 c4 30          	add    $0x30,%rsp
    2091:	5d                   	pop    %rbp
    2092:	c3                   	ret    
    2093:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    209a:	00 00 00 
    209d:	0f 1f 00             	nopl   (%rax)

00000000000020a0 <test_one_element>:
    20a0:	55                   	push   %rbp
    20a1:	48 89 e5             	mov    %rsp,%rbp
    20a4:	48 83 ec 30          	sub    $0x30,%rsp
    20a8:	89 7d fc             	mov    %edi,-0x4(%rbp)
    20ab:	89 75 f8             	mov    %esi,-0x8(%rbp)
    20ae:	89 55 f4             	mov    %edx,-0xc(%rbp)
    20b1:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    20b5:	44 89 45 e4          	mov    %r8d,-0x1c(%rbp)
    20b9:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%rbp)
    20c0:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    20c7:	8b 45 dc             	mov    -0x24(%rbp),%eax
    20ca:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    20cd:	0f 8d 83 00 00 00    	jge    2156 <test_one_element+0xb6>
    20d3:	48 8b 05 66 12 00 00 	mov    0x1266(%rip),%rax        # 3340 <_IO_stdin_used+0x340>
    20da:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    20de:	8b 05 64 12 00 00    	mov    0x1264(%rip),%eax        # 3348 <_IO_stdin_used+0x348>
    20e4:	89 45 d8             	mov    %eax,-0x28(%rbp)
    20e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    20eb:	48 63 4d dc          	movslq -0x24(%rbp),%rcx
    20ef:	48 c1 e1 04          	shl    $0x4,%rcx
    20f3:	48 01 c8             	add    %rcx,%rax
    20f6:	48 8b 00             	mov    (%rax),%rax
    20f9:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    20fd:	48 83 c7 04          	add    $0x4,%rdi
    2101:	31 d2                	xor    %edx,%edx
    2103:	89 d6                	mov    %edx,%esi
    2105:	ff d0                	call   *%rax
    2107:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
    210b:	0f 84 32 00 00 00    	je     2143 <test_one_element+0xa3>
    2111:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
    2115:	0f 84 28 00 00 00    	je     2143 <test_one_element+0xa3>
    211b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    211f:	48 63 4d dc          	movslq -0x24(%rbp),%rcx
    2123:	48 c1 e1 04          	shl    $0x4,%rcx
    2127:	48 01 c8             	add    %rcx,%rax
    212a:	48 8b 70 08          	mov    0x8(%rax),%rsi
    212e:	48 8d 3d a1 11 00 00 	lea    0x11a1(%rip),%rdi        # 32d6 <_IO_stdin_used+0x2d6>
    2135:	b0 00                	mov    $0x0,%al
    2137:	e8 24 ef ff ff       	call   1060 <printf@plt>
    213c:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    2143:	e9 00 00 00 00       	jmp    2148 <test_one_element+0xa8>
    2148:	8b 45 dc             	mov    -0x24(%rbp),%eax
    214b:	83 c0 01             	add    $0x1,%eax
    214e:	89 45 dc             	mov    %eax,-0x24(%rbp)
    2151:	e9 71 ff ff ff       	jmp    20c7 <test_one_element+0x27>
    2156:	83 7d e0 00          	cmpl   $0x0,-0x20(%rbp)
    215a:	0f 84 29 00 00 00    	je     2189 <test_one_element+0xe9>
    2160:	48 8b 05 91 2e 00 00 	mov    0x2e91(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    2167:	48 8b 38             	mov    (%rax),%rdi
    216a:	48 8d 35 d7 0f 00 00 	lea    0xfd7(%rip),%rsi        # 3148 <_IO_stdin_used+0x148>
    2171:	48 8d 15 8f 11 00 00 	lea    0x118f(%rip),%rdx        # 3307 <_IO_stdin_used+0x307>
    2178:	b9 0a 01 00 00       	mov    $0x10a,%ecx
    217d:	b0 00                	mov    $0x0,%al
    217f:	e8 0c ef ff ff       	call   1090 <fprintf@plt>
    2184:	e9 5e 00 00 00       	jmp    21e7 <test_one_element+0x147>
    2189:	e9 00 00 00 00       	jmp    218e <test_one_element+0xee>
    218e:	48 8b 05 63 2e 00 00 	mov    0x2e63(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    2195:	48 8b 38             	mov    (%rax),%rdi
    2198:	48 8d 35 d1 0f 00 00 	lea    0xfd1(%rip),%rsi        # 3170 <_IO_stdin_used+0x170>
    219f:	48 8d 15 61 11 00 00 	lea    0x1161(%rip),%rdx        # 3307 <_IO_stdin_used+0x307>
    21a6:	b9 0c 01 00 00       	mov    $0x10c,%ecx
    21ab:	b0 00                	mov    $0x0,%al
    21ad:	e8 de ee ff ff       	call   1090 <fprintf@plt>
    21b2:	48 8b 05 3f 2e 00 00 	mov    0x2e3f(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    21b9:	48 8b 38             	mov    (%rax),%rdi
    21bc:	48 8d 35 55 11 00 00 	lea    0x1155(%rip),%rsi        # 3318 <_IO_stdin_used+0x318>
    21c3:	b0 00                	mov    $0x0,%al
    21c5:	e8 c6 ee ff ff       	call   1090 <fprintf@plt>
    21ca:	48 8b 05 27 2e 00 00 	mov    0x2e27(%rip),%rax        # 4ff8 <stderr@GLIBC_2.2.5>
    21d1:	48 8b 38             	mov    (%rax),%rdi
    21d4:	48 8d 35 35 10 00 00 	lea    0x1035(%rip),%rsi        # 3210 <_IO_stdin_used+0x210>
    21db:	b0 00                	mov    $0x0,%al
    21dd:	e8 ae ee ff ff       	call   1090 <fprintf@plt>
    21e2:	e9 00 00 00 00       	jmp    21e7 <test_one_element+0x147>
    21e7:	48 83 c4 30          	add    $0x30,%rsp
    21eb:	5d                   	pop    %rbp
    21ec:	c3                   	ret    
    21ed:	0f 1f 00             	nopl   (%rax)

00000000000021f0 <copy_data>:
    21f0:	55                   	push   %rbp
    21f1:	48 89 e5             	mov    %rsp,%rbp
    21f4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    21f8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    21fc:	89 55 ec             	mov    %edx,-0x14(%rbp)
    21ff:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    2206:	8b 45 e8             	mov    -0x18(%rbp),%eax
    2209:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    220c:	0f 8d 30 00 00 00    	jge    2242 <copy_data+0x52>
    2212:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2216:	48 89 c1             	mov    %rax,%rcx
    2219:	48 83 c1 04          	add    $0x4,%rcx
    221d:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
    2221:	8b 08                	mov    (%rax),%ecx
    2223:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2227:	48 89 c2             	mov    %rax,%rdx
    222a:	48 83 c2 04          	add    $0x4,%rdx
    222e:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
    2232:	89 08                	mov    %ecx,(%rax)
    2234:	8b 45 e8             	mov    -0x18(%rbp),%eax
    2237:	83 c0 01             	add    $0x1,%eax
    223a:	89 45 e8             	mov    %eax,-0x18(%rbp)
    223d:	e9 c4 ff ff ff       	jmp    2206 <copy_data+0x16>
    2242:	5d                   	pop    %rbp
    2243:	c3                   	ret    
    2244:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    224b:	00 00 00 
    224e:	66 90                	xchg   %ax,%ax

0000000000002250 <gettime>:
    2250:	55                   	push   %rbp
    2251:	48 89 e5             	mov    %rsp,%rbp
    2254:	48 83 ec 10          	sub    $0x10,%rsp
    2258:	bf 01 00 00 00       	mov    $0x1,%edi
    225d:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
    2261:	e8 da ed ff ff       	call   1040 <clock_gettime@plt>
    2266:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    226a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    226e:	48 83 c4 10          	add    $0x10,%rsp
    2272:	5d                   	pop    %rbp
    2273:	c3                   	ret    
    2274:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    227b:	00 00 00 
    227e:	66 90                	xchg   %ax,%ax

0000000000002280 <tdiff>:
    2280:	55                   	push   %rbp
    2281:	48 89 e5             	mov    %rsp,%rbp
    2284:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    2288:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
    228c:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    2290:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    2294:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2298:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
    229c:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
    22a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    22a5:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
    22a9:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    22ae:	f2 0f 10 15 1a 0e 00 	movsd  0xe1a(%rip),%xmm2        # 30d0 <_IO_stdin_used+0xd0>
    22b5:	00 
    22b6:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    22ba:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    22be:	5d                   	pop    %rbp
    22bf:	c3                   	ret    

00000000000022c0 <mem_alloc>:
    22c0:	55                   	push   %rbp
    22c1:	48 89 e5             	mov    %rsp,%rbp
    22c4:	48 83 ec 10          	sub    $0x10,%rsp
    22c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    22cc:	89 75 f4             	mov    %esi,-0xc(%rbp)
    22cf:	48 63 7d f4          	movslq -0xc(%rbp),%rdi
    22d3:	48 c1 e7 02          	shl    $0x2,%rdi
    22d7:	e8 c4 ed ff ff       	call   10a0 <malloc@plt>
    22dc:	48 89 c1             	mov    %rax,%rcx
    22df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    22e3:	48 89 08             	mov    %rcx,(%rax)
    22e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    22ea:	48 83 38 00          	cmpq   $0x0,(%rax)
    22ee:	0f 85 0e 00 00 00    	jne    2302 <mem_alloc+0x42>
    22f4:	48 8d 3d 51 10 00 00 	lea    0x1051(%rip),%rdi        # 334c <_IO_stdin_used+0x34c>
    22fb:	b0 00                	mov    $0x0,%al
    22fd:	e8 5e ed ff ff       	call   1060 <printf@plt>
    2302:	48 83 c4 10          	add    $0x10,%rsp
    2306:	5d                   	pop    %rbp
    2307:	c3                   	ret    
    2308:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    230f:	00 

0000000000002310 <mem_free>:
    2310:	55                   	push   %rbp
    2311:	48 89 e5             	mov    %rsp,%rbp
    2314:	48 83 ec 10          	sub    $0x10,%rsp
    2318:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    231c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2320:	48 8b 38             	mov    (%rax),%rdi
    2323:	e8 08 ed ff ff       	call   1030 <free@plt>
    2328:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    232c:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    2333:	48 83 c4 10          	add    $0x10,%rsp
    2337:	5d                   	pop    %rbp
    2338:	c3                   	ret    
    2339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002340 <isort>:
    2340:	55                   	push   %rbp
    2341:	48 89 e5             	mov    %rsp,%rbp
    2344:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2348:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    234c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2350:	48 83 c0 04          	add    $0x4,%rax
    2354:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2358:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    235c:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    2360:	0f 87 80 00 00 00    	ja     23e6 <isort+0xa6>
    2366:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    236a:	8b 00                	mov    (%rax),%eax
    236c:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    236f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2373:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    2377:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    237b:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    237f:	31 c0                	xor    %eax,%eax
    2381:	48 3b 4d f8          	cmp    -0x8(%rbp),%rcx
    2385:	88 45 d7             	mov    %al,-0x29(%rbp)
    2388:	0f 82 0f 00 00 00    	jb     239d <isort+0x5d>
    238e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2392:	8b 00                	mov    (%rax),%eax
    2394:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    2397:	0f 97 c0             	seta   %al
    239a:	88 45 d7             	mov    %al,-0x29(%rbp)
    239d:	8a 45 d7             	mov    -0x29(%rbp),%al
    23a0:	a8 01                	test   $0x1,%al
    23a2:	0f 85 05 00 00 00    	jne    23ad <isort+0x6d>
    23a8:	e9 1e 00 00 00       	jmp    23cb <isort+0x8b>
    23ad:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    23b1:	8b 08                	mov    (%rax),%ecx
    23b3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    23b7:	89 48 04             	mov    %ecx,0x4(%rax)
    23ba:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    23be:	48 83 c0 fc          	add    $0xfffffffffffffffc,%rax
    23c2:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    23c6:	e9 b0 ff ff ff       	jmp    237b <isort+0x3b>
    23cb:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
    23ce:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    23d2:	89 48 04             	mov    %ecx,0x4(%rax)
    23d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    23d9:	48 83 c0 04          	add    $0x4,%rax
    23dd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    23e1:	e9 72 ff ff ff       	jmp    2358 <isort+0x18>
    23e6:	5d                   	pop    %rbp
    23e7:	c3                   	ret    
    23e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    23ef:	00 

00000000000023f0 <sort_a>:
    23f0:	55                   	push   %rbp
    23f1:	48 89 e5             	mov    %rsp,%rbp
    23f4:	48 83 ec 20          	sub    $0x20,%rsp
    23f8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    23fc:	89 75 f4             	mov    %esi,-0xc(%rbp)
    23ff:	89 55 f0             	mov    %edx,-0x10(%rbp)
    2402:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2405:	3b 45 f0             	cmp    -0x10(%rbp),%eax
    2408:	0f 8d 44 00 00 00    	jge    2452 <sort_a+0x62>
    240e:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2411:	03 45 f0             	add    -0x10(%rbp),%eax
    2414:	b9 02 00 00 00       	mov    $0x2,%ecx
    2419:	99                   	cltd   
    241a:	f7 f9                	idiv   %ecx
    241c:	89 45 ec             	mov    %eax,-0x14(%rbp)
    241f:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2423:	8b 75 f4             	mov    -0xc(%rbp),%esi
    2426:	8b 55 ec             	mov    -0x14(%rbp),%edx
    2429:	e8 c2 ff ff ff       	call   23f0 <sort_a>
    242e:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2432:	8b 75 ec             	mov    -0x14(%rbp),%esi
    2435:	83 c6 01             	add    $0x1,%esi
    2438:	8b 55 f0             	mov    -0x10(%rbp),%edx
    243b:	e8 b0 ff ff ff       	call   23f0 <sort_a>
    2440:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2444:	8b 75 f4             	mov    -0xc(%rbp),%esi
    2447:	8b 55 ec             	mov    -0x14(%rbp),%edx
    244a:	8b 4d f0             	mov    -0x10(%rbp),%ecx
    244d:	e8 0e 00 00 00       	call   2460 <merge_a>
    2452:	48 83 c4 20          	add    $0x20,%rsp
    2456:	5d                   	pop    %rbp
    2457:	c3                   	ret    
    2458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    245f:	00 

0000000000002460 <merge_a>:
    2460:	55                   	push   %rbp
    2461:	48 89 e5             	mov    %rsp,%rbp
    2464:	48 83 ec 40          	sub    $0x40,%rsp
    2468:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    246c:	89 75 f4             	mov    %esi,-0xc(%rbp)
    246f:	89 55 f0             	mov    %edx,-0x10(%rbp)
    2472:	89 4d ec             	mov    %ecx,-0x14(%rbp)
    2475:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2478:	2b 45 f4             	sub    -0xc(%rbp),%eax
    247b:	83 c0 01             	add    $0x1,%eax
    247e:	89 45 e8             	mov    %eax,-0x18(%rbp)
    2481:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2484:	2b 45 f0             	sub    -0x10(%rbp),%eax
    2487:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    248a:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    2491:	00 
    2492:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    2499:	00 
    249a:	8b 75 e8             	mov    -0x18(%rbp),%esi
    249d:	83 c6 01             	add    $0x1,%esi
    24a0:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
    24a4:	e8 17 fe ff ff       	call   22c0 <mem_alloc>
    24a9:	8b 75 e4             	mov    -0x1c(%rbp),%esi
    24ac:	83 c6 01             	add    $0x1,%esi
    24af:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    24b3:	e8 08 fe ff ff       	call   22c0 <mem_alloc>
    24b8:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    24bd:	0f 84 0b 00 00 00    	je     24ce <merge_a+0x6e>
    24c3:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    24c8:	0f 85 17 00 00 00    	jne    24e5 <merge_a+0x85>
    24ce:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
    24d2:	e8 39 fe ff ff       	call   2310 <mem_free>
    24d7:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    24db:	e8 30 fe ff ff       	call   2310 <mem_free>
    24e0:	e9 fc 00 00 00       	jmp    25e1 <merge_a+0x181>
    24e5:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    24e9:	48 63 45 f4          	movslq -0xc(%rbp),%rax
    24ed:	48 c1 e0 02          	shl    $0x2,%rax
    24f1:	48 01 c7             	add    %rax,%rdi
    24f4:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
    24f8:	8b 55 e8             	mov    -0x18(%rbp),%edx
    24fb:	e8 f0 00 00 00       	call   25f0 <copy_a>
    2500:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2504:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2507:	83 c0 01             	add    $0x1,%eax
    250a:	48 98                	cltq   
    250c:	48 c1 e0 02          	shl    $0x2,%rax
    2510:	48 01 c7             	add    %rax,%rdi
    2513:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    2517:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    251a:	e8 d1 00 00 00       	call   25f0 <copy_a>
    251f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2523:	48 63 4d e8          	movslq -0x18(%rbp),%rcx
    2527:	c7 04 88 ff ff ff ff 	movl   $0xffffffff,(%rax,%rcx,4)
    252e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2532:	48 63 4d e4          	movslq -0x1c(%rbp),%rcx
    2536:	c7 04 88 ff ff ff ff 	movl   $0xffffffff,(%rax,%rcx,4)
    253d:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    2544:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
    254b:	8b 45 f4             	mov    -0xc(%rbp),%eax
    254e:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    2551:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    2554:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    2557:	0f 8f 72 00 00 00    	jg     25cf <merge_a+0x16f>
    255d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2561:	48 63 4d cc          	movslq -0x34(%rbp),%rcx
    2565:	8b 04 88             	mov    (%rax,%rcx,4),%eax
    2568:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    256c:	48 63 55 c8          	movslq -0x38(%rbp),%rdx
    2570:	3b 04 91             	cmp    (%rcx,%rdx,4),%eax
    2573:	0f 87 24 00 00 00    	ja     259d <merge_a+0x13d>
    2579:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    257d:	48 63 4d cc          	movslq -0x34(%rbp),%rcx
    2581:	8b 14 88             	mov    (%rax,%rcx,4),%edx
    2584:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2588:	48 63 4d c4          	movslq -0x3c(%rbp),%rcx
    258c:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    258f:	8b 45 cc             	mov    -0x34(%rbp),%eax
    2592:	83 c0 01             	add    $0x1,%eax
    2595:	89 45 cc             	mov    %eax,-0x34(%rbp)
    2598:	e9 1f 00 00 00       	jmp    25bc <merge_a+0x15c>
    259d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    25a1:	48 63 4d c8          	movslq -0x38(%rbp),%rcx
    25a5:	8b 14 88             	mov    (%rax,%rcx,4),%edx
    25a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    25ac:	48 63 4d c4          	movslq -0x3c(%rbp),%rcx
    25b0:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    25b3:	8b 45 c8             	mov    -0x38(%rbp),%eax
    25b6:	83 c0 01             	add    $0x1,%eax
    25b9:	89 45 c8             	mov    %eax,-0x38(%rbp)
    25bc:	e9 00 00 00 00       	jmp    25c1 <merge_a+0x161>
    25c1:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    25c4:	83 c0 01             	add    $0x1,%eax
    25c7:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    25ca:	e9 82 ff ff ff       	jmp    2551 <merge_a+0xf1>
    25cf:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
    25d3:	e8 38 fd ff ff       	call   2310 <mem_free>
    25d8:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    25dc:	e8 2f fd ff ff       	call   2310 <mem_free>
    25e1:	48 83 c4 40          	add    $0x40,%rsp
    25e5:	5d                   	pop    %rbp
    25e6:	c3                   	ret    
    25e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    25ee:	00 00 

00000000000025f0 <copy_a>:
    25f0:	55                   	push   %rbp
    25f1:	48 89 e5             	mov    %rsp,%rbp
    25f4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    25f8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    25fc:	89 55 ec             	mov    %edx,-0x14(%rbp)
    25ff:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    2606:	8b 45 e8             	mov    -0x18(%rbp),%eax
    2609:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    260c:	0f 8d 24 00 00 00    	jge    2636 <copy_a+0x46>
    2612:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2616:	48 63 4d e8          	movslq -0x18(%rbp),%rcx
    261a:	8b 14 88             	mov    (%rax,%rcx,4),%edx
    261d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2621:	48 63 4d e8          	movslq -0x18(%rbp),%rcx
    2625:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    2628:	8b 45 e8             	mov    -0x18(%rbp),%eax
    262b:	83 c0 01             	add    $0x1,%eax
    262e:	89 45 e8             	mov    %eax,-0x18(%rbp)
    2631:	e9 d0 ff ff ff       	jmp    2606 <copy_a+0x16>
    2636:	5d                   	pop    %rbp
    2637:	c3                   	ret    
    2638:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    263f:	00 

0000000000002640 <sort_c>:
    2640:	55                   	push   %rbp
    2641:	48 89 e5             	mov    %rsp,%rbp
    2644:	48 83 ec 10          	sub    $0x10,%rsp
    2648:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    264c:	89 75 f4             	mov    %esi,-0xc(%rbp)
    264f:	89 55 f0             	mov    %edx,-0x10(%rbp)
    2652:	48 8d 3d 05 0d 00 00 	lea    0xd05(%rip),%rdi        # 335e <_IO_stdin_used+0x35e>
    2659:	b0 00                	mov    $0x0,%al
    265b:	e8 00 ea ff ff       	call   1060 <printf@plt>
    2660:	48 83 c4 10          	add    $0x10,%rsp
    2664:	5d                   	pop    %rbp
    2665:	c3                   	ret    
    2666:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    266d:	00 00 00 

0000000000002670 <sort_i>:
    2670:	55                   	push   %rbp
    2671:	48 89 e5             	mov    %rsp,%rbp
    2674:	48 83 ec 20          	sub    $0x20,%rsp
    2678:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    267c:	89 75 f4             	mov    %esi,-0xc(%rbp)
    267f:	89 55 f0             	mov    %edx,-0x10(%rbp)
    2682:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2685:	3b 45 f0             	cmp    -0x10(%rbp),%eax
    2688:	0f 8d 44 00 00 00    	jge    26d2 <sort_i+0x62>
    268e:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2691:	03 45 f0             	add    -0x10(%rbp),%eax
    2694:	b9 02 00 00 00       	mov    $0x2,%ecx
    2699:	99                   	cltd   
    269a:	f7 f9                	idiv   %ecx
    269c:	89 45 ec             	mov    %eax,-0x14(%rbp)
    269f:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    26a3:	8b 75 f4             	mov    -0xc(%rbp),%esi
    26a6:	8b 55 ec             	mov    -0x14(%rbp),%edx
    26a9:	e8 c2 ff ff ff       	call   2670 <sort_i>
    26ae:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    26b2:	8b 75 ec             	mov    -0x14(%rbp),%esi
    26b5:	83 c6 01             	add    $0x1,%esi
    26b8:	8b 55 f0             	mov    -0x10(%rbp),%edx
    26bb:	e8 b0 ff ff ff       	call   2670 <sort_i>
    26c0:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    26c4:	8b 75 f4             	mov    -0xc(%rbp),%esi
    26c7:	8b 55 ec             	mov    -0x14(%rbp),%edx
    26ca:	8b 4d f0             	mov    -0x10(%rbp),%ecx
    26cd:	e8 0e 00 00 00       	call   26e0 <merge_i>
    26d2:	48 83 c4 20          	add    $0x20,%rsp
    26d6:	5d                   	pop    %rbp
    26d7:	c3                   	ret    
    26d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    26df:	00 

00000000000026e0 <merge_i>:
    26e0:	55                   	push   %rbp
    26e1:	48 89 e5             	mov    %rsp,%rbp
    26e4:	48 83 ec 40          	sub    $0x40,%rsp
    26e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    26ec:	89 75 f4             	mov    %esi,-0xc(%rbp)
    26ef:	89 55 f0             	mov    %edx,-0x10(%rbp)
    26f2:	89 4d ec             	mov    %ecx,-0x14(%rbp)
    26f5:	8b 45 f0             	mov    -0x10(%rbp),%eax
    26f8:	2b 45 f4             	sub    -0xc(%rbp),%eax
    26fb:	83 c0 01             	add    $0x1,%eax
    26fe:	89 45 e8             	mov    %eax,-0x18(%rbp)
    2701:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2704:	2b 45 f0             	sub    -0x10(%rbp),%eax
    2707:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    270a:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    2711:	00 
    2712:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    2719:	00 
    271a:	8b 75 e8             	mov    -0x18(%rbp),%esi
    271d:	83 c6 01             	add    $0x1,%esi
    2720:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
    2724:	e8 97 fb ff ff       	call   22c0 <mem_alloc>
    2729:	8b 75 e4             	mov    -0x1c(%rbp),%esi
    272c:	83 c6 01             	add    $0x1,%esi
    272f:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    2733:	e8 88 fb ff ff       	call   22c0 <mem_alloc>
    2738:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    273d:	0f 84 0b 00 00 00    	je     274e <merge_i+0x6e>
    2743:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    2748:	0f 85 17 00 00 00    	jne    2765 <merge_i+0x85>
    274e:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
    2752:	e8 b9 fb ff ff       	call   2310 <mem_free>
    2757:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    275b:	e8 b0 fb ff ff       	call   2310 <mem_free>
    2760:	e9 fc 00 00 00       	jmp    2861 <merge_i+0x181>
    2765:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2769:	48 63 45 f4          	movslq -0xc(%rbp),%rax
    276d:	48 c1 e0 02          	shl    $0x2,%rax
    2771:	48 01 c7             	add    %rax,%rdi
    2774:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
    2778:	8b 55 e8             	mov    -0x18(%rbp),%edx
    277b:	e8 f0 00 00 00       	call   2870 <copy_i>
    2780:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2784:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2787:	83 c0 01             	add    $0x1,%eax
    278a:	48 98                	cltq   
    278c:	48 c1 e0 02          	shl    $0x2,%rax
    2790:	48 01 c7             	add    %rax,%rdi
    2793:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    2797:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    279a:	e8 d1 00 00 00       	call   2870 <copy_i>
    279f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    27a3:	48 63 4d e8          	movslq -0x18(%rbp),%rcx
    27a7:	c7 04 88 ff ff ff ff 	movl   $0xffffffff,(%rax,%rcx,4)
    27ae:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    27b2:	48 63 4d e4          	movslq -0x1c(%rbp),%rcx
    27b6:	c7 04 88 ff ff ff ff 	movl   $0xffffffff,(%rax,%rcx,4)
    27bd:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    27c4:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
    27cb:	8b 45 f4             	mov    -0xc(%rbp),%eax
    27ce:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    27d1:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    27d4:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    27d7:	0f 8f 72 00 00 00    	jg     284f <merge_i+0x16f>
    27dd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    27e1:	48 63 4d cc          	movslq -0x34(%rbp),%rcx
    27e5:	8b 04 88             	mov    (%rax,%rcx,4),%eax
    27e8:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    27ec:	48 63 55 c8          	movslq -0x38(%rbp),%rdx
    27f0:	3b 04 91             	cmp    (%rcx,%rdx,4),%eax
    27f3:	0f 87 24 00 00 00    	ja     281d <merge_i+0x13d>
    27f9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    27fd:	48 63 4d cc          	movslq -0x34(%rbp),%rcx
    2801:	8b 14 88             	mov    (%rax,%rcx,4),%edx
    2804:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2808:	48 63 4d c4          	movslq -0x3c(%rbp),%rcx
    280c:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    280f:	8b 45 cc             	mov    -0x34(%rbp),%eax
    2812:	83 c0 01             	add    $0x1,%eax
    2815:	89 45 cc             	mov    %eax,-0x34(%rbp)
    2818:	e9 1f 00 00 00       	jmp    283c <merge_i+0x15c>
    281d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2821:	48 63 4d c8          	movslq -0x38(%rbp),%rcx
    2825:	8b 14 88             	mov    (%rax,%rcx,4),%edx
    2828:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    282c:	48 63 4d c4          	movslq -0x3c(%rbp),%rcx
    2830:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    2833:	8b 45 c8             	mov    -0x38(%rbp),%eax
    2836:	83 c0 01             	add    $0x1,%eax
    2839:	89 45 c8             	mov    %eax,-0x38(%rbp)
    283c:	e9 00 00 00 00       	jmp    2841 <merge_i+0x161>
    2841:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    2844:	83 c0 01             	add    $0x1,%eax
    2847:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    284a:	e9 82 ff ff ff       	jmp    27d1 <merge_i+0xf1>
    284f:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
    2853:	e8 b8 fa ff ff       	call   2310 <mem_free>
    2858:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    285c:	e8 af fa ff ff       	call   2310 <mem_free>
    2861:	48 83 c4 40          	add    $0x40,%rsp
    2865:	5d                   	pop    %rbp
    2866:	c3                   	ret    
    2867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    286e:	00 00 

0000000000002870 <copy_i>:
    2870:	55                   	push   %rbp
    2871:	48 89 e5             	mov    %rsp,%rbp
    2874:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2878:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    287c:	89 55 ec             	mov    %edx,-0x14(%rbp)
    287f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    2886:	8b 45 e8             	mov    -0x18(%rbp),%eax
    2889:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    288c:	0f 8d 24 00 00 00    	jge    28b6 <copy_i+0x46>
    2892:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2896:	48 63 4d e8          	movslq -0x18(%rbp),%rcx
    289a:	8b 14 88             	mov    (%rax,%rcx,4),%edx
    289d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    28a1:	48 63 4d e8          	movslq -0x18(%rbp),%rcx
    28a5:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    28a8:	8b 45 e8             	mov    -0x18(%rbp),%eax
    28ab:	83 c0 01             	add    $0x1,%eax
    28ae:	89 45 e8             	mov    %eax,-0x18(%rbp)
    28b1:	e9 d0 ff ff ff       	jmp    2886 <copy_i+0x16>
    28b6:	5d                   	pop    %rbp
    28b7:	c3                   	ret    
    28b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    28bf:	00 

00000000000028c0 <sort_p>:
    28c0:	55                   	push   %rbp
    28c1:	48 89 e5             	mov    %rsp,%rbp
    28c4:	48 83 ec 20          	sub    $0x20,%rsp
    28c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    28cc:	89 75 f4             	mov    %esi,-0xc(%rbp)
    28cf:	89 55 f0             	mov    %edx,-0x10(%rbp)
    28d2:	8b 45 f4             	mov    -0xc(%rbp),%eax
    28d5:	3b 45 f0             	cmp    -0x10(%rbp),%eax
    28d8:	0f 8d 44 00 00 00    	jge    2922 <sort_p+0x62>
    28de:	8b 45 f4             	mov    -0xc(%rbp),%eax
    28e1:	03 45 f0             	add    -0x10(%rbp),%eax
    28e4:	b9 02 00 00 00       	mov    $0x2,%ecx
    28e9:	99                   	cltd   
    28ea:	f7 f9                	idiv   %ecx
    28ec:	89 45 ec             	mov    %eax,-0x14(%rbp)
    28ef:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    28f3:	8b 75 f4             	mov    -0xc(%rbp),%esi
    28f6:	8b 55 ec             	mov    -0x14(%rbp),%edx
    28f9:	e8 c2 ff ff ff       	call   28c0 <sort_p>
    28fe:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2902:	8b 75 ec             	mov    -0x14(%rbp),%esi
    2905:	83 c6 01             	add    $0x1,%esi
    2908:	8b 55 f0             	mov    -0x10(%rbp),%edx
    290b:	e8 b0 ff ff ff       	call   28c0 <sort_p>
    2910:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    2914:	8b 75 f4             	mov    -0xc(%rbp),%esi
    2917:	8b 55 ec             	mov    -0x14(%rbp),%edx
    291a:	8b 4d f0             	mov    -0x10(%rbp),%ecx
    291d:	e8 0e 00 00 00       	call   2930 <merge_p>
    2922:	48 83 c4 20          	add    $0x20,%rsp
    2926:	5d                   	pop    %rbp
    2927:	c3                   	ret    
    2928:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    292f:	00 

0000000000002930 <merge_p>:
    2930:	55                   	push   %rbp
    2931:	48 89 e5             	mov    %rsp,%rbp
    2934:	48 83 ec 50          	sub    $0x50,%rsp
    2938:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    293c:	89 75 f4             	mov    %esi,-0xc(%rbp)
    293f:	89 55 f0             	mov    %edx,-0x10(%rbp)
    2942:	89 4d ec             	mov    %ecx,-0x14(%rbp)
    2945:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2948:	2b 45 f4             	sub    -0xc(%rbp),%eax
    294b:	83 c0 01             	add    $0x1,%eax
    294e:	89 45 e8             	mov    %eax,-0x18(%rbp)
    2951:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2954:	2b 45 f0             	sub    -0x10(%rbp),%eax
    2957:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    295a:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    2961:	00 
    2962:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    2969:	00 
    296a:	8b 75 e8             	mov    -0x18(%rbp),%esi
    296d:	83 c6 01             	add    $0x1,%esi
    2970:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
    2974:	e8 47 f9 ff ff       	call   22c0 <mem_alloc>
    2979:	8b 75 e4             	mov    -0x1c(%rbp),%esi
    297c:	83 c6 01             	add    $0x1,%esi
    297f:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    2983:	e8 38 f9 ff ff       	call   22c0 <mem_alloc>
    2988:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    298d:	0f 84 0b 00 00 00    	je     299e <merge_p+0x6e>
    2993:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    2998:	0f 85 17 00 00 00    	jne    29b5 <merge_p+0x85>
    299e:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
    29a2:	e8 69 f9 ff ff       	call   2310 <mem_free>
    29a7:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    29ab:	e8 60 f9 ff ff       	call   2310 <mem_free>
    29b0:	e9 f0 00 00 00       	jmp    2aa5 <merge_p+0x175>
    29b5:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    29b9:	48 63 45 f4          	movslq -0xc(%rbp),%rax
    29bd:	48 c1 e0 02          	shl    $0x2,%rax
    29c1:	48 01 c7             	add    %rax,%rdi
    29c4:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
    29c8:	8b 55 e8             	mov    -0x18(%rbp),%edx
    29cb:	e8 e0 00 00 00       	call   2ab0 <copy_p>
    29d0:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    29d4:	48 63 45 f0          	movslq -0x10(%rbp),%rax
    29d8:	48 c1 e0 02          	shl    $0x2,%rax
    29dc:	48 01 c7             	add    %rax,%rdi
    29df:	48 83 c7 04          	add    $0x4,%rdi
    29e3:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    29e7:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    29ea:	e8 c1 00 00 00       	call   2ab0 <copy_p>
    29ef:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    29f3:	48 63 4d e8          	movslq -0x18(%rbp),%rcx
    29f7:	c7 04 88 ff ff ff ff 	movl   $0xffffffff,(%rax,%rcx,4)
    29fe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2a02:	48 63 4d e4          	movslq -0x1c(%rbp),%rcx
    2a06:	c7 04 88 ff ff ff ff 	movl   $0xffffffff,(%rax,%rcx,4)
    2a0d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2a11:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    2a15:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2a19:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    2a1d:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2a20:	89 45 bc             	mov    %eax,-0x44(%rbp)
    2a23:	8b 45 bc             	mov    -0x44(%rbp),%eax
    2a26:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    2a29:	0f 8f 64 00 00 00    	jg     2a93 <merge_p+0x163>
    2a2f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2a33:	8b 00                	mov    (%rax),%eax
    2a35:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    2a39:	3b 01                	cmp    (%rcx),%eax
    2a3b:	0f 87 22 00 00 00    	ja     2a63 <merge_p+0x133>
    2a41:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2a45:	8b 10                	mov    (%rax),%edx
    2a47:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2a4b:	48 63 4d bc          	movslq -0x44(%rbp),%rcx
    2a4f:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    2a52:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2a56:	48 83 c0 04          	add    $0x4,%rax
    2a5a:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    2a5e:	e9 1d 00 00 00       	jmp    2a80 <merge_p+0x150>
    2a63:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2a67:	8b 10                	mov    (%rax),%edx
    2a69:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2a6d:	48 63 4d bc          	movslq -0x44(%rbp),%rcx
    2a71:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    2a74:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2a78:	48 83 c0 04          	add    $0x4,%rax
    2a7c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    2a80:	e9 00 00 00 00       	jmp    2a85 <merge_p+0x155>
    2a85:	8b 45 bc             	mov    -0x44(%rbp),%eax
    2a88:	83 c0 01             	add    $0x1,%eax
    2a8b:	89 45 bc             	mov    %eax,-0x44(%rbp)
    2a8e:	e9 90 ff ff ff       	jmp    2a23 <merge_p+0xf3>
    2a93:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
    2a97:	e8 74 f8 ff ff       	call   2310 <mem_free>
    2a9c:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
    2aa0:	e8 6b f8 ff ff       	call   2310 <mem_free>
    2aa5:	48 83 c4 50          	add    $0x50,%rsp
    2aa9:	5d                   	pop    %rbp
    2aaa:	c3                   	ret    
    2aab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002ab0 <copy_p>:
    2ab0:	55                   	push   %rbp
    2ab1:	48 89 e5             	mov    %rsp,%rbp
    2ab4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2ab8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    2abc:	89 55 ec             	mov    %edx,-0x14(%rbp)
    2abf:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    2ac6:	8b 45 e8             	mov    -0x18(%rbp),%eax
    2ac9:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    2acc:	0f 8d 24 00 00 00    	jge    2af6 <copy_p+0x46>
    2ad2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2ad6:	48 63 4d e8          	movslq -0x18(%rbp),%rcx
    2ada:	8b 14 88             	mov    (%rax,%rcx,4),%edx
    2add:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2ae1:	48 63 4d e8          	movslq -0x18(%rbp),%rcx
    2ae5:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    2ae8:	8b 45 e8             	mov    -0x18(%rbp),%eax
    2aeb:	83 c0 01             	add    $0x1,%eax
    2aee:	89 45 e8             	mov    %eax,-0x18(%rbp)
    2af1:	e9 d0 ff ff ff       	jmp    2ac6 <copy_p+0x16>
    2af6:	5d                   	pop    %rbp
    2af7:	c3                   	ret    
    2af8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2aff:	00 

0000000000002b00 <sort_m>:
    2b00:	55                   	push   %rbp
    2b01:	48 89 e5             	mov    %rsp,%rbp
    2b04:	48 83 ec 10          	sub    $0x10,%rsp
    2b08:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2b0c:	89 75 f4             	mov    %esi,-0xc(%rbp)
    2b0f:	89 55 f0             	mov    %edx,-0x10(%rbp)
    2b12:	48 8d 3d 45 08 00 00 	lea    0x845(%rip),%rdi        # 335e <_IO_stdin_used+0x35e>
    2b19:	b0 00                	mov    $0x0,%al
    2b1b:	e8 40 e5 ff ff       	call   1060 <printf@plt>
    2b20:	48 83 c4 10          	add    $0x10,%rsp
    2b24:	5d                   	pop    %rbp
    2b25:	c3                   	ret    
    2b26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2b2d:	00 00 00 

0000000000002b30 <sort_f>:
    2b30:	55                   	push   %rbp
    2b31:	48 89 e5             	mov    %rsp,%rbp
    2b34:	48 83 ec 10          	sub    $0x10,%rsp
    2b38:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2b3c:	89 75 f4             	mov    %esi,-0xc(%rbp)
    2b3f:	89 55 f0             	mov    %edx,-0x10(%rbp)
    2b42:	48 8d 3d 15 08 00 00 	lea    0x815(%rip),%rdi        # 335e <_IO_stdin_used+0x35e>
    2b49:	b0 00                	mov    $0x0,%al
    2b4b:	e8 10 e5 ff ff       	call   1060 <printf@plt>
    2b50:	48 83 c4 10          	add    $0x10,%rsp
    2b54:	5d                   	pop    %rbp
    2b55:	c3                   	ret    

Disassembly of section .fini:

0000000000002b58 <_fini>:
    2b58:	f3 0f 1e fa          	endbr64 
    2b5c:	48 83 ec 08          	sub    $0x8,%rsp
    2b60:	48 83 c4 08          	add    $0x8,%rsp
    2b64:	c3                   	ret    