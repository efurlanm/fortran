
binarytrees:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	endbr64 
    1004:	sub    $0x8,%rsp
    1008:	mov    0x3fc9(%rip),%rax        # 4fd8 <__gmon_start__@Base>
    100f:	test   %rax,%rax
    1012:	je     1016 <_init+0x16>
    1014:	call   *%rax
    1016:	add    $0x8,%rsp
    101a:	ret    

Disassembly of section .plt:

0000000000001020 <memset@plt-0x10>:
    1020:	push   0x3ef2(%rip)        # 4f18 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	jmp    *0x3ef4(%rip)        # 4f20 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	nopl   0x0(%rax)

0000000000001030 <memset@plt>:
    1030:	jmp    *0x3ef2(%rip)        # 4f28 <memset@GLIBC_2.2.5>
    1036:	push   $0x0
    103b:	jmp    1020 <_init+0x20>

0000000000001040 <_gfortran_runtime_error_at@plt>:
    1040:	jmp    *0x3eea(%rip)        # 4f30 <_gfortran_runtime_error_at@GFORTRAN_8>
    1046:	push   $0x1
    104b:	jmp    1020 <_init+0x20>

0000000000001050 <_gfortran_st_read_done@plt>:
    1050:	jmp    *0x3ee2(%rip)        # 4f38 <_gfortran_st_read_done@GFORTRAN_8>
    1056:	push   $0x2
    105b:	jmp    1020 <_init+0x20>

0000000000001060 <malloc@plt>:
    1060:	jmp    *0x3eda(%rip)        # 4f40 <malloc@GLIBC_2.2.5>
    1066:	push   $0x3
    106b:	jmp    1020 <_init+0x20>

0000000000001070 <GOMP_loop_nonmonotonic_dynamic_start@plt>:
    1070:	jmp    *0x3ed2(%rip)        # 4f48 <GOMP_loop_nonmonotonic_dynamic_start@GOMP_4.5>
    1076:	push   $0x4
    107b:	jmp    1020 <_init+0x20>

0000000000001080 <GOMP_loop_end@plt>:
    1080:	jmp    *0x3eca(%rip)        # 4f50 <GOMP_loop_end@GOMP_1.0>
    1086:	push   $0x5
    108b:	jmp    1020 <_init+0x20>

0000000000001090 <_gfortran_transfer_integer_write@plt>:
    1090:	jmp    *0x3ec2(%rip)        # 4f58 <_gfortran_transfer_integer_write@GFORTRAN_8>
    1096:	push   $0x6
    109b:	jmp    1020 <_init+0x20>

00000000000010a0 <free@plt>:
    10a0:	jmp    *0x3eba(%rip)        # 4f60 <free@GLIBC_2.2.5>
    10a6:	push   $0x7
    10ab:	jmp    1020 <_init+0x20>

00000000000010b0 <_gfortran_transfer_integer@plt>:
    10b0:	jmp    *0x3eb2(%rip)        # 4f68 <_gfortran_transfer_integer@GFORTRAN_8>
    10b6:	push   $0x8
    10bb:	jmp    1020 <_init+0x20>

00000000000010c0 <_gfortran_transfer_character_write@plt>:
    10c0:	jmp    *0x3eaa(%rip)        # 4f70 <_gfortran_transfer_character_write@GFORTRAN_8>
    10c6:	push   $0x9
    10cb:	jmp    1020 <_init+0x20>

00000000000010d0 <_gfortran_os_error_at@plt>:
    10d0:	jmp    *0x3ea2(%rip)        # 4f78 <_gfortran_os_error_at@GFORTRAN_10>
    10d6:	push   $0xa
    10db:	jmp    1020 <_init+0x20>

00000000000010e0 <_gfortran_st_read@plt>:
    10e0:	jmp    *0x3e9a(%rip)        # 4f80 <_gfortran_st_read@GFORTRAN_8>
    10e6:	push   $0xb
    10eb:	jmp    1020 <_init+0x20>

00000000000010f0 <GOMP_parallel@plt>:
    10f0:	jmp    *0x3e92(%rip)        # 4f88 <GOMP_parallel@GOMP_4.0>
    10f6:	push   $0xc
    10fb:	jmp    1020 <_init+0x20>

0000000000001100 <_gfortran_st_write_done@plt>:
    1100:	jmp    *0x3e8a(%rip)        # 4f90 <_gfortran_st_write_done@GFORTRAN_8>
    1106:	push   $0xd
    110b:	jmp    1020 <_init+0x20>

0000000000001110 <omp_get_max_threads_@plt>:
    1110:	jmp    *0x3e82(%rip)        # 4f98 <omp_get_max_threads_@OMP_1.0>
    1116:	push   $0xe
    111b:	jmp    1020 <_init+0x20>

0000000000001120 <omp_get_thread_num_@plt>:
    1120:	jmp    *0x3e7a(%rip)        # 4fa0 <omp_get_thread_num_@OMP_1.0>
    1126:	push   $0xf
    112b:	jmp    1020 <_init+0x20>

0000000000001130 <GOMP_loop_nonmonotonic_dynamic_next@plt>:
    1130:	jmp    *0x3e72(%rip)        # 4fa8 <GOMP_loop_nonmonotonic_dynamic_next@GOMP_4.5>
    1136:	push   $0x10
    113b:	jmp    1020 <_init+0x20>

0000000000001140 <_gfortran_set_options@plt>:
    1140:	jmp    *0x3e6a(%rip)        # 4fb0 <_gfortran_set_options@GFORTRAN_8>
    1146:	push   $0x11
    114b:	jmp    1020 <_init+0x20>

0000000000001150 <_gfortran_iargc@plt>:
    1150:	jmp    *0x3e62(%rip)        # 4fb8 <_gfortran_iargc@GFORTRAN_8>
    1156:	push   $0x12
    115b:	jmp    1020 <_init+0x20>

0000000000001160 <_gfortran_get_command_argument_i4@plt>:
    1160:	jmp    *0x3e5a(%rip)        # 4fc0 <_gfortran_get_command_argument_i4@GFORTRAN_8>
    1166:	push   $0x13
    116b:	jmp    1020 <_init+0x20>

0000000000001170 <_gfortran_set_args@plt>:
    1170:	jmp    *0x3e52(%rip)        # 4fc8 <_gfortran_set_args@GFORTRAN_8>
    1176:	push   $0x14
    117b:	jmp    1020 <_init+0x20>

0000000000001180 <_gfortran_st_write@plt>:
    1180:	jmp    *0x3e4a(%rip)        # 4fd0 <_gfortran_st_write@GFORTRAN_8>
    1186:	push   $0x15
    118b:	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001190 <__cxa_finalize@plt>:
    1190:	jmp    *0x3e5a(%rip)        # 4ff0 <__cxa_finalize@GLIBC_2.2.5>
    1196:	xchg   %ax,%ax

Disassembly of section .text:

00000000000011a0 <MAIN__.cold>:
    11a0:	vmovdqa 0x30(%rsp),%xmm0
    11a6:	lea    0x1f0f(%rip),%r9        # 30bc <options.33.2+0x1c>
    11ad:	movl   $0xa,0x60(%rsp)
    11b5:	mov    $0xc,%ecx
    11ba:	movl   $0xb,0x58(%rsp)
    11c2:	mov    $0xb,%r12d
    11c8:	mov    %r9,0x48(%rsp)
    11cd:	lea    0x110(%rsp),%rbx
    11d5:	vmovdqa %xmm0,0x110(%rsp)
    11de:	jmp    243b <MAIN__+0x1bb>
    11e3:	xor    %eax,%eax
    11e5:	jmp    2839 <MAIN__+0x5b9>
    11ea:	lea    0x1f1d(%rip),%rsi        # 310e <options.33.2+0x6e>
    11f1:	mov    %r14,%rdx
    11f4:	xor    %eax,%eax
    11f6:	lea    0x2083(%rip),%rdi        # 3280 <options.33.2+0x1e0>
    11fd:	call   10d0 <_gfortran_os_error_at@plt>
    1202:	lea    0x1f20(%rip),%rdx        # 3129 <options.33.2+0x89>
    1209:	xor    %eax,%eax
    120b:	lea    0x1fb6(%rip),%rsi        # 31c8 <options.33.2+0x128>
    1212:	lea    0x203f(%rip),%rdi        # 3258 <options.33.2+0x1b8>
    1219:	call   1040 <_gfortran_runtime_error_at@plt>
    121e:	xor    %r14d,%r14d
    1221:	jmp    26d9 <MAIN__+0x459>
    1226:	lea    0x1ee1(%rip),%rsi        # 310e <options.33.2+0x6e>
    122d:	mov    %r14,%rdx
    1230:	xor    %eax,%eax
    1232:	lea    0x1fef(%rip),%rdi        # 3228 <options.33.2+0x188>
    1239:	call   10d0 <_gfortran_os_error_at@plt>
    123e:	lea    0x1ec1(%rip),%rdx        # 3106 <options.33.2+0x66>
    1245:	xor    %eax,%eax
    1247:	lea    0x1f7a(%rip),%rsi        # 31c8 <options.33.2+0x128>
    124e:	lea    0x1fab(%rip),%rdi        # 3200 <options.33.2+0x160>
    1255:	call   1040 <_gfortran_runtime_error_at@plt>
    125a:	xor    %r14d,%r14d
    125d:	jmp    25fb <MAIN__+0x37b>
    1262:	xor    %r10d,%r10d
    1265:	jmp    257d <MAIN__+0x2fd>
    126a:	lea    0x1e88(%rip),%rdx        # 30f9 <options.33.2+0x59>
    1271:	xor    %eax,%eax
    1273:	lea    0x1efe(%rip),%rsi        # 3178 <options.33.2+0xd8>
    127a:	lea    0x1f1f(%rip),%rdi        # 31a0 <options.33.2+0x100>
    1281:	call   1040 <_gfortran_runtime_error_at@plt>
    1286:	xor    %eax,%eax
    1288:	jmp    2442 <MAIN__+0x1c2>

000000000000128d <__memory_pool_MOD_init.cold>:
    128d:	call   10a0 <free@plt>
    1292:	mov    (%rbx),%r12
    1295:	xor    %esi,%esi
    1297:	mov    %rsi,(%r12)
    129b:	jmp    1701 <__memory_pool_MOD_init+0x21>
    12a0:	lea    0x1e67(%rip),%rsi        # 310e <options.33.2+0x6e>
    12a7:	mov    %rbx,%rdx
    12aa:	xor    %eax,%eax
    12ac:	lea    0x2025(%rip),%rdi        # 32d8 <options.33.2+0x238>
    12b3:	call   10d0 <_gfortran_os_error_at@plt>
    12b8:	lea    0x1eb2(%rip),%rdx        # 3171 <options.33.2+0xd1>
    12bf:	xor    %eax,%eax
    12c1:	lea    0x1f00(%rip),%rsi        # 31c8 <options.33.2+0x128>
    12c8:	lea    0x1fe1(%rip),%rdi        # 32b0 <options.33.2+0x210>
    12cf:	call   1040 <_gfortran_runtime_error_at@plt>
    12d4:	xor    %ebx,%ebx
    12d6:	jmp    1743 <__memory_pool_MOD_init+0x63>

00000000000012db <__tree_maker_MOD_make_tree.isra.0.cold>:
    12db:	lea    0xf(%rcx),%r8d
    12df:	mov    0x8(%rsi),%rdi
    12e3:	mov    %rbx,%rax
    12e6:	mov    %r8d,0x58(%rsi)
    12ea:	mov    (%rsi),%rdx
    12ed:	lea    0x9(%rcx),%r11d
    12f1:	mov    0x40(%rsi),%rsi
    12f5:	lea    0x2(%rcx),%r10d
    12f9:	lea    0x3(%rcx),%r14d
    12fd:	lea    0x6(%rcx),%r12d
    1301:	imul   %rsi,%rax
    1305:	lea    (%rdi,%rax,1),%r9
    1309:	add    %rsi,%rax
    130c:	lea    (%rdi,%rax,1),%r13
    1310:	add    %rsi,%rax
    1313:	mov    %r11d,0x8(%rdx,%r9,4)
    1318:	lea    (%rdi,%rax,1),%rbx
    131c:	add    %rsi,%rax
    131f:	mov    %r10d,0x4(%rdx,%r9,4)
    1324:	lea    0x1(%rdi,%rax,1),%r11
    1329:	add    %rsi,%rax
    132c:	mov    %r14d,0x4(%rdx,%r13,4)
    1331:	lea    0x4(%rcx),%r9d
    1335:	mov    %r12d,0x8(%rdx,%r13,4)
    133a:	xor    %r13d,%r13d
    133d:	xor    %r12d,%r12d
    1340:	lea    0x1(%rdi,%rax,1),%r14
    1345:	add    %rsi,%rax
    1348:	mov    %r9d,0x4(%rdx,%rbx,4)
    134d:	lea    0x5(%rcx),%r10d
    1351:	mov    %r10d,0x8(%rdx,%rbx,4)
    1356:	lea    (%rdi,%rax,1),%rbx
    135a:	add    %rsi,%rax
    135d:	mov    %r13,(%rdx,%r11,4)
    1361:	lea    0x1(%rdi,%rax,1),%r11
    1366:	add    %rsi,%rax
    1369:	xor    %r13d,%r13d
    136c:	mov    %r12,(%rdx,%r14,4)
    1370:	lea    0x7(%rcx),%r9d
    1374:	xor    %r12d,%r12d
    1377:	lea    0x1(%rdi,%rax,1),%r14
    137c:	add    %rsi,%rax
    137f:	mov    %r9d,0x4(%rdx,%rbx,4)
    1384:	lea    0x8(%rcx),%r10d
    1388:	mov    %r10d,0x8(%rdx,%rbx,4)
    138d:	lea    (%rdi,%rax,1),%rbx
    1391:	add    %rsi,%rax
    1394:	mov    %r13,(%rdx,%r11,4)
    1398:	lea    (%rdi,%rax,1),%r11
    139c:	add    %rsi,%rax
    139f:	mov    %r12,(%rdx,%r14,4)
    13a3:	lea    0xa(%rcx),%r9d
    13a7:	lea    0x1(%rdi,%rax,1),%r12
    13ac:	add    %rsi,%rax
    13af:	mov    %r9d,0x4(%rdx,%rbx,4)
    13b4:	lea    0xd(%rcx),%r10d
    13b8:	lea    0x1(%rdi,%rax,1),%r9
    13bd:	add    %rsi,%rax
    13c0:	mov    %r10d,0x8(%rdx,%rbx,4)
    13c5:	xor    %ebx,%ebx
    13c7:	lea    0xb(%rcx),%r13d
    13cb:	xor    %r10d,%r10d
    13ce:	lea    0xc(%rcx),%r14d
    13d2:	mov    %r13d,0x4(%rdx,%r11,4)
    13d7:	add    $0xe,%ecx
    13da:	mov    %r14d,0x8(%rdx,%r11,4)
    13df:	lea    (%rdi,%rax,1),%r11
    13e3:	add    %rsi,%rax
    13e6:	add    %rax,%rsi
    13e9:	mov    %rbx,(%rdx,%r12,4)
    13ed:	mov    %r10,(%rdx,%r9,4)
    13f1:	mov    %ecx,0x4(%rdx,%r11,4)
    13f6:	lea    0x1(%rdi,%rax,1),%rcx
    13fb:	mov    %r8d,0x8(%rdx,%r11,4)
    1400:	lea    0x1(%rdi,%rsi,1),%rdi
    1405:	xor    %r8d,%r8d
    1408:	xor    %esi,%esi
    140a:	mov    %r8,(%rdx,%rcx,4)
    140e:	mov    %rsi,(%rdx,%rdi,4)
    1412:	jmp    1ae1 <__tree_maker_MOD_make_tree.isra.0+0x2b1>
    1417:	mov    0x40(%rsi),%r12
    141b:	lea    0x7(%rcx),%r13d
    141f:	mov    %rbx,%rax
    1422:	mov    0x8(%rsi),%r14
    1426:	mov    %r13d,0x58(%rsi)
    142a:	lea    0x2(%rcx),%r9d
    142e:	mov    (%rsi),%rdx
    1431:	lea    0x5(%rcx),%r10d
    1435:	lea    0x3(%rcx),%r8d
    1439:	imul   %r12,%rax
    143d:	lea    0x4(%rcx),%edi
    1440:	add    $0x6,%ecx
    1443:	lea    (%r14,%rax,1),%rbx
    1447:	add    %r12,%rax
    144a:	lea    (%r14,%rax,1),%r11
    144e:	add    %r12,%rax
    1451:	mov    %r9d,0x4(%rdx,%rbx,4)
    1456:	lea    0x1(%r14,%rax,1),%rsi
    145b:	add    %r12,%rax
    145e:	mov    %r10d,0x8(%rdx,%rbx,4)
    1463:	xor    %ebx,%ebx
    1465:	lea    0x1(%r14,%rax,1),%r9
    146a:	add    %r12,%rax
    146d:	mov    %r8d,0x4(%rdx,%r11,4)
    1472:	xor    %r10d,%r10d
    1475:	mov    %edi,0x8(%rdx,%r11,4)
    147a:	lea    (%r14,%rax,1),%r11
    147e:	add    %r12,%rax
    1481:	add    %rax,%r12
    1484:	mov    %rbx,(%rdx,%rsi,4)
    1488:	mov    %r10,(%rdx,%r9,4)
    148c:	mov    %ecx,0x4(%rdx,%r11,4)
    1491:	lea    0x1(%r14,%rax,1),%rcx
    1496:	mov    %r13d,0x8(%rdx,%r11,4)
    149b:	lea    0x1(%r14,%r12,1),%r14
    14a0:	xor    %r13d,%r13d
    14a3:	xor    %r12d,%r12d
    14a6:	mov    %r13,(%rdx,%rcx,4)
    14aa:	mov    %r12,(%rdx,%r14,4)
    14ae:	jmp    1ae1 <__tree_maker_MOD_make_tree.isra.0+0x2b1>
    14b3:	mov    0x40(%r12),%rax
    14b8:	lea    0x3(%rcx),%edi
    14bb:	xor    %r9d,%r9d
    14be:	xor    %r10d,%r10d
    14c1:	mov    (%rsi),%rdx
    14c4:	mov    %edi,0x58(%rsi)
    14c7:	mov    0x8(%rsi),%rsi
    14cb:	imul   %rax,%rbx
    14cf:	lea    (%rsi,%rbx,1),%rcx
    14d3:	add    %rax,%rbx
    14d6:	lea    0x1(%rsi,%rbx,1),%r8
    14db:	add    %rbx,%rax
    14de:	mov    %edi,(%rdx,%rcx,4)
    14e1:	lea    0x1(%rsi,%rax,1),%rbx
    14e6:	mov    %r9,(%rdx,%r8,4)
    14ea:	mov    %r10,(%rdx,%rbx,4)
    14ee:	jmp    1ae1 <__tree_maker_MOD_make_tree.isra.0+0x2b1>
    14f3:	mov    0x40(%rsi),%r13
    14f7:	xor    %r14d,%r14d
    14fa:	mov    (%rsi),%r11
    14fd:	imul   %rbx,%r13
    1501:	add    0x8(%rsi),%r13
    1505:	mov    %r14d,(%r11,%r13,4)
    1509:	jmp    1ae1 <__tree_maker_MOD_make_tree.isra.0+0x2b1>

000000000000150e <__tree_maker_MOD_check_tree.isra.0.cold>:
    150e:	mov    $0x1,%eax
    1513:	jmp    1b62 <__tree_maker_MOD_check_tree.isra.0+0x22>

0000000000001518 <MAIN__._omp_fn.0.cold>:
    1518:	xor    %r12d,%r12d
    151b:	mov    %r12d,0xc(%rsp)
    1520:	jmp    1fce <MAIN__._omp_fn.0+0xce>

0000000000001525 <__memory_pool_MOD_reset>:
    1525:	mov    (%rdi),%rax
    1528:	xor    %edx,%edx
    152a:	mov    %edx,0x58(%rax)
    152d:	ret    

000000000000152e <__memory_pool_MOD___final_memory_pool_Arena_t>:
    152e:	push   %r15
    1530:	xor    %eax,%eax
    1532:	mov    $0x1,%edx
    1537:	push   %r14
    1539:	mov    %rdi,%r14
    153c:	push   %r13
    153e:	push   %r12
    1540:	push   %rbp
    1541:	lea    0x28(%r14),%rbp
    1545:	push   %rbx
    1546:	sub    $0x18,%rsp
    154a:	movsbq 0x1c(%rdi),%r12
    154f:	mov    %rsi,0x8(%rsp)
    1554:	lea    0x1(%r12),%rdi
    1559:	mov    %r12,%r13
    155c:	test   %rdi,%rdi
    155f:	cmovs  %rax,%rdi
    1563:	shl    $0x3,%rdi
    1567:	cmove  %rdx,%rdi
    156b:	call   1060 <malloc@plt>
    1570:	xor    %edi,%edi
    1572:	test   %r12,%r12
    1575:	mov    $0x1,%ecx
    157a:	cmovns %r12,%rdi
    157e:	mov    %rax,%rbx
    1581:	shl    $0x3,%rdi
    1585:	cmove  %rcx,%rdi
    1589:	dec    %r13d
    158c:	call   1060 <malloc@plt>
    1591:	movq   $0x1,(%rbx)
    1598:	mov    $0x1,%r8d
    159e:	mov    %rax,%r15
    15a1:	cmp    %r12,%r8
    15a4:	jg     15ed <__memory_pool_MOD___final_memory_pool_Arena_t+0xbf>
    15a6:	mov    0x0(%rbp),%rsi
    15aa:	lea    -0x1(%r8),%r10d
    15ae:	mov    -0x8(%rbx,%r8,8),%rdi
    15b3:	mov    0x10(%rbp),%r9
    15b7:	mov    %rsi,-0x8(%r15,%r8,8)
    15bc:	cmp    %r10b,%r13b
    15bf:	jne    15cb <__memory_pool_MOD___final_memory_pool_Arena_t+0x9d>
    15c1:	or     $0xffffffffffffffff,%r11
    15c5:	cmp    $0xffffffffffffffff,%r9
    15c9:	je     15dc <__memory_pool_MOD___final_memory_pool_Arena_t+0xae>
    15cb:	sub    0x8(%rbp),%r9
    15cf:	mov    $0x0,%r11d
    15d5:	inc    %r9
    15d8:	cmovns %r9,%r11
    15dc:	add    $0x18,%rbp
    15e0:	imul   %r11,%rdi
    15e4:	mov    %rdi,(%rbx,%r8,8)
    15e8:	inc    %r8
    15eb:	jmp    15a1 <__memory_pool_MOD___final_memory_pool_Arena_t+0x73>
    15ed:	mov    (%rbx,%r12,8),%r13
    15f1:	xor    %ebp,%ebp
    15f3:	cmp    %rbp,%r13
    15f6:	jle    1655 <__memory_pool_MOD___final_memory_pool_Arena_t+0x127>
    15f8:	movsbq 0x1c(%r14),%r12
    15fd:	xor    %ecx,%ecx
    15ff:	mov    $0x1,%r8d
    1605:	cmp    %r12,%r8
    1608:	jg     162b <__memory_pool_MOD___final_memory_pool_Arena_t+0xfd>
    160a:	mov    %rbp,%rax
    160d:	cqto   
    160f:	idivq  (%rbx,%r8,8)
    1613:	mov    %rdx,%rax
    1616:	cqto   
    1618:	idivq  -0x8(%rbx,%r8,8)
    161d:	imul   -0x8(%r15,%r8,8),%rax
    1623:	inc    %r8
    1626:	add    %rax,%rcx
    1629:	jmp    1605 <__memory_pool_MOD___final_memory_pool_Arena_t+0xd7>
    162b:	mov    0x8(%rsp),%rsi
    1630:	imul   %rsi,%rcx
    1634:	add    (%r14),%rcx
    1637:	mov    %rcx,%r12
    163a:	je     1650 <__memory_pool_MOD___final_memory_pool_Arena_t+0x122>
    163c:	mov    (%rcx),%rdi
    163f:	test   %rdi,%rdi
    1642:	je     1650 <__memory_pool_MOD___final_memory_pool_Arena_t+0x122>
    1644:	call   10a0 <free@plt>
    1649:	xor    %r9d,%r9d
    164c:	mov    %r9,(%r12)
    1650:	inc    %rbp
    1653:	jmp    15f3 <__memory_pool_MOD___final_memory_pool_Arena_t+0xc5>
    1655:	mov    %r15,%rdi
    1658:	call   10a0 <free@plt>
    165d:	mov    %rbx,%rdi
    1660:	call   10a0 <free@plt>
    1665:	add    $0x18,%rsp
    1669:	xor    %eax,%eax
    166b:	pop    %rbx
    166c:	pop    %rbp
    166d:	pop    %r12
    166f:	pop    %r13
    1671:	pop    %r14
    1673:	pop    %r15
    1675:	ret    

0000000000001676 <__memory_pool_MOD___copy_memory_pool_Arena_t>:
    1676:	push   %r12
    1678:	mov    %rdi,%rax
    167b:	mov    $0x18,%ecx
    1680:	mov    %rsi,%rdi
    1683:	push   %rbp
    1684:	mov    %rsi,%rbp
    1687:	mov    %rax,%rsi
    168a:	push   %rbx
    168b:	rep movsl %ds:(%rsi),%es:(%rdi)
    168d:	cmp    %rax,%rbp
    1690:	je     16d3 <__memory_pool_MOD___copy_memory_pool_Arena_t+0x5d>
    1692:	mov    (%rax),%r12
    1695:	test   %r12,%r12
    1698:	je     16cd <__memory_pool_MOD___copy_memory_pool_Arena_t+0x57>
    169a:	mov    0x50(%rax),%rbx
    169e:	mov    $0x1,%edi
    16a3:	sub    0x48(%rax),%rbx
    16a7:	inc    %rbx
    16aa:	imul   0x40(%rax),%rbx
    16af:	shl    $0x2,%rbx
    16b3:	cmovne %rbx,%rdi
    16b7:	call   1060 <malloc@plt>
    16bc:	mov    %r12,%rsi
    16bf:	mov    %rbx,%rcx
    16c2:	mov    %rax,%rdi
    16c5:	mov    %rax,0x0(%rbp)
    16c9:	rep movsb %ds:(%rsi),%es:(%rdi)
    16cb:	jmp    16d3 <__memory_pool_MOD___copy_memory_pool_Arena_t+0x5d>
    16cd:	xor    %edx,%edx
    16cf:	mov    %rdx,0x0(%rbp)
    16d3:	pop    %rbx
    16d4:	pop    %rbp
    16d5:	pop    %r12
    16d7:	ret    
    16d8:	nopl   0x0(%rax,%rax,1)

00000000000016e0 <__memory_pool_MOD_init>:
    16e0:	push   %rbp
    16e1:	mov    %rsp,%rbp
    16e4:	push   %r13
    16e6:	mov    %rsi,%r13
    16e9:	push   %r12
    16eb:	push   %rbx
    16ec:	mov    %rdi,%rbx
    16ef:	push   %r8
    16f1:	mov    (%rdi),%r12
    16f4:	mov    (%r12),%rdi
    16f8:	test   %rdi,%rdi
    16fb:	jne    128d <__memory_pool_MOD_init.cold>
    1701:	vmovd  0x0(%r13),%xmm0
    1707:	vpxor  %xmm1,%xmm1,%xmm1
    170b:	mov    $0x81,%eax
    1710:	movq   $0x4,0x10(%r12)
    1719:	vpmaxsd %xmm1,%xmm0,%xmm2
    171e:	shl    $0x21,%rax
    1722:	vmovd  %xmm0,%r13d
    1727:	vmovd  %xmm2,%edx
    172b:	mov    %rax,0x18(%r12)
    1730:	movslq %edx,%rbx
    1733:	add    %rbx,%rbx
    1736:	test   %r13d,%r13d
    1739:	jle    12d4 <__memory_pool_MOD_init.cold+0x47>
    173f:	shl    $0x2,%rbx
    1743:	cmpq   $0x0,(%r12)
    1748:	jne    12b8 <__memory_pool_MOD_init.cold+0x2b>
    174e:	test   %rbx,%rbx
    1751:	mov    $0x1,%edi
    1756:	cmovne %rbx,%rdi
    175a:	call   1060 <malloc@plt>
    175f:	mov    %rax,%r8
    1762:	mov    %rax,(%r12)
    1766:	test   %rax,%rax
    1769:	je     12a0 <__memory_pool_MOD_init.cold+0x13>
    176f:	vmovdqa 0x1bb9(%rip),%xmm3        # 3330 <options.33.2+0x290>
    1777:	movslq %r13d,%rdi
    177a:	movq   $0xfffffffffffffffd,0x8(%r12)
    1783:	vmovdqa 0x1bb5(%rip),%ymm4        # 3340 <options.33.2+0x2a0>
    178b:	mov    %rdi,0x50(%r12)
    1790:	vmovdqu %xmm3,0x40(%r12)
    1797:	vmovdqu %ymm4,0x20(%r12)
    179e:	test   %rdi,%rdi
    17a1:	jle    1809 <__memory_pool_MOD_init+0x129>
    17a3:	lea    -0x1(%rdi),%rcx
    17a7:	cmp    $0x2,%rcx
    17ab:	jbe    181b <__memory_pool_MOD_init+0x13b>
    17ad:	mov    %rdi,%r11
    17b0:	xor    %esi,%esi
    17b2:	vpxor  %xmm5,%xmm5,%xmm5
    17b6:	shr    $0x2,%r11
    17ba:	mov    %rsi,%rax
    17bd:	add    $0x1,%rsi
    17c1:	shl    $0x5,%rax
    17c5:	vmovdqu %ymm5,(%r8,%rax,1)
    17cb:	cmp    %rsi,%r11
    17ce:	jne    17ba <__memory_pool_MOD_init+0xda>
    17d0:	mov    %rdi,%r9
    17d3:	and    $0xfffffffffffffffc,%r9
    17d7:	and    $0x3,%r13b
    17db:	lea    0x1(%r9),%r10
    17df:	je     1809 <__memory_pool_MOD_init+0x129>
    17e1:	sub    %r9,%rdi
    17e4:	cmp    $0x1,%rdi
    17e8:	je     1801 <__memory_pool_MOD_init+0x121>
    17ea:	vpxor  %xmm6,%xmm6,%xmm6
    17ee:	vmovdqu %xmm6,(%r8,%r9,8)
    17f4:	test   $0x1,%dil
    17f8:	je     1809 <__memory_pool_MOD_init+0x129>
    17fa:	and    $0xfffffffffffffffe,%rdi
    17fe:	add    %rdi,%r10
    1801:	xor    %r13d,%r13d
    1804:	mov    %r13,-0x8(%r8,%r10,8)
    1809:	xor    %edx,%edx
    180b:	mov    %edx,0x58(%r12)
    1810:	vzeroupper 
    1813:	pop    %rdx
    1814:	pop    %rbx
    1815:	pop    %r12
    1817:	pop    %r13
    1819:	pop    %rbp
    181a:	ret    
    181b:	xor    %r9d,%r9d
    181e:	mov    $0x1,%r10d
    1824:	jmp    17e1 <__memory_pool_MOD_init+0x101>
    1826:	cs nopw 0x0(%rax,%rax,1)

0000000000001830 <__tree_maker_MOD_make_tree.isra.0>:
    1830:	push   %r14
    1832:	push   %r13
    1834:	push   %r12
    1836:	mov    %rsi,%r12
    1839:	push   %rbp
    183a:	push   %rbx
    183b:	mov    0x58(%rsi),%ecx
    183e:	lea    0x1(%rcx),%ebp
    1841:	mov    %ebp,0x58(%rsi)
    1844:	movslq %ebp,%rbx
    1847:	cmp    $0x4,%edi
    184a:	ja     1aec <__tree_maker_MOD_make_tree.isra.0+0x2bc>
    1850:	lea    0x17cd(%rip),%rdx        # 3024 <_IO_stdin_used+0x24>
    1857:	mov    %edi,%edi
    1859:	movslq (%rdx,%rdi,4),%rax
    185d:	add    %rdx,%rax
    1860:	jmp    *%rax
    1862:	nopw   0x0(%rax,%rax,1)
    1868:	mov    0x40(%rsi),%r12
    186c:	lea    0x1f(%rcx),%r8d
    1870:	mov    0x8(%rsi),%rdi
    1874:	mov    %r8d,0x58(%rsi)
    1878:	lea    0x11(%rcx),%r9d
    187c:	mov    (%rsi),%rdx
    187f:	lea    0x2(%rcx),%eax
    1882:	lea    0xa(%rcx),%r13d
    1886:	imul   %r12,%rbx
    188a:	lea    0x3(%rcx),%r10d
    188e:	lea    (%rdi,%rbx,1),%rsi
    1892:	lea    (%r12,%rbx,1),%rbx
    1896:	mov    %r9d,0x8(%rdx,%rsi,4)
    189b:	lea    (%rdi,%rbx,1),%r11
    189f:	add    %r12,%rbx
    18a2:	mov    %eax,0x4(%rdx,%rsi,4)
    18a6:	lea    (%rdi,%rbx,1),%r14
    18aa:	add    %r12,%rbx
    18ad:	mov    %r13d,0x8(%rdx,%r11,4)
    18b2:	lea    (%rdi,%rbx,1),%r9
    18b6:	add    %r12,%rbx
    18b9:	mov    %r10d,0x4(%rdx,%r11,4)
    18be:	lea    0x4(%rcx),%esi
    18c1:	lea    0x7(%rcx),%eax
    18c4:	mov    %esi,0x4(%rdx,%r14,4)
    18c9:	lea    0x1(%rdi,%rbx,1),%r13
    18ce:	add    %r12,%rbx
    18d1:	mov    %eax,0x8(%rdx,%r14,4)
    18d6:	lea    0x1(%rdi,%rbx,1),%r14
    18db:	add    %r12,%rbx
    18de:	lea    (%rdi,%rbx,1),%rsi
    18e2:	add    %r12,%rbx
    18e5:	lea    0x5(%rcx),%r11d
    18e9:	mov    %r11d,0x4(%rdx,%r9,4)
    18ee:	lea    0x6(%rcx),%r10d
    18f2:	lea    0x1(%rdi,%rbx,1),%r11
    18f7:	add    %r12,%rbx
    18fa:	mov    %r10d,0x8(%rdx,%r9,4)
    18ff:	lea    0x1(%rdi,%rbx,1),%r10
    1904:	add    %r12,%rbx
    1907:	movq   $0x0,(%rdx,%r13,4)
    190f:	lea    0x8(%rcx),%eax
    1912:	movq   $0x0,(%rdx,%r14,4)
    191a:	lea    (%rdi,%rbx,1),%r13
    191e:	add    %r12,%rbx
    1921:	mov    %eax,0x4(%rdx,%rsi,4)
    1925:	lea    0x9(%rcx),%r9d
    1929:	lea    (%rdi,%rbx,1),%rax
    192d:	add    %r12,%rbx
    1930:	mov    %r9d,0x8(%rdx,%rsi,4)
    1935:	lea    0xb(%rcx),%r14d
    1939:	movq   $0x0,(%rdx,%r11,4)
    1941:	lea    0xe(%rcx),%esi
    1944:	movq   $0x0,(%rdx,%r10,4)
    194c:	lea    0x1(%rdi,%rbx,1),%r10
    1951:	add    %r12,%rbx
    1954:	mov    %r14d,0x4(%rdx,%r13,4)
    1959:	mov    %esi,0x8(%rdx,%r13,4)
    195e:	lea    0x1(%rdi,%rbx,1),%r13
    1963:	add    %r12,%rbx
    1966:	lea    (%rdi,%rbx,1),%r14
    196a:	add    %r12,%rbx
    196d:	lea    0xc(%rcx),%r9d
    1971:	mov    %r9d,0x4(%rdx,%rax,4)
    1976:	lea    0xd(%rcx),%r11d
    197a:	lea    0x1(%rdi,%rbx,1),%r9
    197f:	add    %r12,%rbx
    1982:	mov    %r11d,0x8(%rdx,%rax,4)
    1987:	lea    0x1(%rdi,%rbx,1),%r11
    198c:	add    %r12,%rbx
    198f:	movq   $0x0,(%rdx,%r10,4)
    1997:	lea    0xf(%rcx),%esi
    199a:	movq   $0x0,(%rdx,%r13,4)
    19a2:	lea    (%rdi,%rbx,1),%r13
    19a6:	add    %r12,%rbx
    19a9:	mov    %esi,0x4(%rdx,%r14,4)
    19ae:	lea    0x10(%rcx),%eax
    19b1:	lea    (%rdi,%rbx,1),%rsi
    19b5:	add    %r12,%rbx
    19b8:	mov    %eax,0x8(%rdx,%r14,4)
    19bd:	movq   $0x0,(%rdx,%r9,4)
    19c5:	lea    0x19(%rcx),%r14d
    19c9:	movq   $0x0,(%rdx,%r11,4)
    19d1:	lea    (%rdi,%rbx,1),%r11
    19d5:	add    %r12,%rbx
    19d8:	mov    %r14d,0x8(%rdx,%r13,4)
    19dd:	lea    0x12(%rcx),%r10d
    19e1:	lea    0x13(%rcx),%eax
    19e4:	mov    %r10d,0x4(%rdx,%r13,4)
    19e9:	lea    0x16(%rcx),%r9d
    19ed:	mov    %eax,0x4(%rdx,%rsi,4)
    19f1:	lea    0x1(%rdi,%rbx,1),%r14
    19f6:	add    %r12,%rbx
    19f9:	mov    %r9d,0x8(%rdx,%rsi,4)
    19fe:	lea    0x1(%rdi,%rbx,1),%rsi
    1a03:	add    %r12,%rbx
    1a06:	lea    (%rdi,%rbx,1),%rax
    1a0a:	add    %r12,%rbx
    1a0d:	lea    0x14(%rcx),%r13d
    1a11:	mov    %r13d,0x4(%rdx,%r11,4)
    1a16:	lea    0x15(%rcx),%r10d
    1a1a:	lea    0x1(%rdi,%rbx,1),%r13
    1a1f:	add    %r12,%rbx
    1a22:	mov    %r10d,0x8(%rdx,%r11,4)
    1a27:	lea    0x1(%rdi,%rbx,1),%r10
    1a2c:	add    %r12,%rbx
    1a2f:	movq   $0x0,(%rdx,%r14,4)
    1a37:	lea    0x17(%rcx),%r9d
    1a3b:	movq   $0x0,(%rdx,%rsi,4)
    1a43:	lea    (%rdi,%rbx,1),%r14
    1a47:	add    %r12,%rbx
    1a4a:	mov    %r9d,0x4(%rdx,%rax,4)
    1a4f:	lea    0x18(%rcx),%r11d
    1a53:	lea    (%rdi,%rbx,1),%r9
    1a57:	add    %r12,%rbx
    1a5a:	mov    %r11d,0x8(%rdx,%rax,4)
    1a5f:	lea    0x1a(%rcx),%esi
    1a62:	movq   $0x0,(%rdx,%r13,4)
    1a6a:	lea    0x1d(%rcx),%eax
    1a6d:	movq   $0x0,(%rdx,%r10,4)
    1a75:	lea    0x1(%rdi,%rbx,1),%r10
    1a7a:	add    %r12,%rbx
    1a7d:	mov    %esi,0x4(%rdx,%r14,4)
    1a82:	mov    %eax,0x8(%rdx,%r14,4)
    1a87:	lea    0x1(%rdi,%rbx,1),%r14
    1a8c:	add    %r12,%rbx
    1a8f:	lea    (%rdi,%rbx,1),%rsi
    1a93:	add    %r12,%rbx
    1a96:	lea    0x1b(%rcx),%r11d
    1a9a:	add    %rbx,%r12
    1a9d:	lea    0x1c(%rcx),%r13d
    1aa1:	add    $0x1e,%ecx
    1aa4:	mov    %r11d,0x4(%rdx,%r9,4)
    1aa9:	mov    %r13d,0x8(%rdx,%r9,4)
    1aae:	movq   $0x0,(%rdx,%r10,4)
    1ab6:	movq   $0x0,(%rdx,%r14,4)
    1abe:	mov    %ecx,0x4(%rdx,%rsi,4)
    1ac2:	lea    0x1(%rdi,%rbx,1),%rcx
    1ac7:	mov    %r8d,0x8(%rdx,%rsi,4)
    1acc:	lea    0x1(%rdi,%r12,1),%r8
    1ad1:	movq   $0x0,(%rdx,%rcx,4)
    1ad9:	movq   $0x0,(%rdx,%r8,4)
    1ae1:	pop    %rbx
    1ae2:	mov    %ebp,%eax
    1ae4:	pop    %rbp
    1ae5:	pop    %r12
    1ae7:	pop    %r13
    1ae9:	pop    %r14
    1aeb:	ret    
    1aec:	lea    -0x1(%rdi),%r13d
    1af0:	mov    %r13d,%edi
    1af3:	call   1830 <__tree_maker_MOD_make_tree.isra.0>
    1af8:	mov    %r12,%rsi
    1afb:	mov    %r13d,%edi
    1afe:	mov    %eax,%r14d
    1b01:	call   1830 <__tree_maker_MOD_make_tree.isra.0>
    1b06:	mov    (%r12),%rdx
    1b0a:	vmovd  %r14d,%xmm1
    1b0f:	imul   0x40(%r12),%rbx
    1b15:	vpinsrd $0x1,%eax,%xmm1,%xmm0
    1b1b:	mov    %ebp,%eax
    1b1d:	add    0x8(%r12),%rbx
    1b22:	vmovq  %xmm0,0x4(%rdx,%rbx,4)
    1b28:	pop    %rbx
    1b29:	pop    %rbp
    1b2a:	pop    %r12
    1b2c:	pop    %r13
    1b2e:	pop    %r14
    1b30:	ret    
    1b31:	data16 cs nopw 0x0(%rax,%rax,1)
    1b3c:	nopl   0x0(%rax)

0000000000001b40 <__tree_maker_MOD_check_tree.isra.0>:
    1b40:	push   %r15
    1b42:	push   %r14
    1b44:	push   %r13
    1b46:	push   %r12
    1b48:	push   %rbp
    1b49:	push   %rbx
    1b4a:	sub    $0x78,%rsp
    1b4e:	test   %esi,%esi
    1b50:	je     150e <__tree_maker_MOD_check_tree.isra.0.cold>
    1b56:	mov    %esi,%ebx
    1b58:	mov    $0x3,%eax
    1b5d:	cmp    $0x1,%esi
    1b60:	jne    1b78 <__tree_maker_MOD_check_tree.isra.0+0x38>
    1b62:	add    $0x78,%rsp
    1b66:	pop    %rbx
    1b67:	pop    %rbp
    1b68:	pop    %r12
    1b6a:	pop    %r13
    1b6c:	pop    %r14
    1b6e:	pop    %r15
    1b70:	ret    
    1b71:	nopl   0x0(%rax)
    1b78:	mov    $0x7,%eax
    1b7d:	cmp    $0x2,%esi
    1b80:	je     1b62 <__tree_maker_MOD_check_tree.isra.0+0x22>
    1b82:	mov    $0xf,%eax
    1b87:	cmp    $0x3,%esi
    1b8a:	je     1b62 <__tree_maker_MOD_check_tree.isra.0+0x22>
    1b8c:	mov    0x40(%rdx),%r13
    1b90:	mov    %rdx,%rbp
    1b93:	movslq (%rdi),%rax
    1b96:	mov    0x8(%rdx),%r8
    1b9a:	mov    (%rdx),%r12
    1b9d:	imul   %r13,%rax
    1ba1:	add    %r8,%rax
    1ba4:	movslq 0x4(%r12,%rax,4),%rdx
    1ba9:	mov    0x8(%r12,%rax,4),%ecx
    1bae:	mov    $0x1f,%eax
    1bb3:	imul   %r13,%rdx
    1bb7:	mov    %ecx,0x10(%rsp)
    1bbb:	add    %r8,%rdx
    1bbe:	movslq 0x4(%r12,%rdx,4),%rsi
    1bc3:	movslq 0x8(%r12,%rdx,4),%r14
    1bc8:	imul   %r13,%rsi
    1bcc:	add    %r8,%rsi
    1bcf:	movslq 0x4(%r12,%rsi,4),%rdi
    1bd4:	movslq 0x8(%r12,%rsi,4),%r15
    1bd9:	cmp    $0x4,%ebx
    1bdc:	je     1b62 <__tree_maker_MOD_check_tree.isra.0+0x22>
    1bde:	imul   %r13,%rdi
    1be2:	sub    $0x4,%ebx
    1be5:	mov    %rbp,%rdx
    1be8:	mov    %r8,0x18(%rsp)
    1bed:	imul   %r13,%r15
    1bf1:	mov    %ebx,%esi
    1bf3:	imul   %r13,%r14
    1bf7:	lea    (%rdi,%r8,1),%r9
    1bfb:	mov    0x4(%r12,%r9,4),%r10d
    1c00:	lea    0x68(%rsp),%rdi
    1c05:	mov    0x8(%r12,%r9,4),%r11d
    1c0a:	mov    %rdi,0x8(%rsp)
    1c0f:	mov    %r10d,0x68(%rsp)
    1c14:	mov    %r11d,0x6c(%rsp)
    1c19:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1c1e:	lea    0x6c(%rsp),%rdi
    1c23:	mov    %rbp,%rdx
    1c26:	mov    %ebx,%esi
    1c28:	mov    %rdi,(%rsp)
    1c2c:	mov    %eax,0x24(%rsp)
    1c30:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1c35:	mov    0x18(%rsp),%r8
    1c3a:	mov    %ebx,%esi
    1c3c:	mov    %eax,0x30(%rsp)
    1c40:	lea    (%r15,%r8,1),%rax
    1c44:	mov    0x8(%rsp),%r15
    1c49:	mov    %r8,0x28(%rsp)
    1c4e:	mov    0x8(%r12,%rax,4),%edx
    1c53:	mov    0x4(%r12,%rax,4),%ecx
    1c58:	mov    %r15,%rdi
    1c5b:	mov    %edx,0x6c(%rsp)
    1c5f:	mov    %rbp,%rdx
    1c62:	mov    %ecx,0x68(%rsp)
    1c66:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1c6b:	mov    (%rsp),%rdi
    1c6f:	mov    %rbp,%rdx
    1c72:	mov    %ebx,%esi
    1c74:	mov    %eax,0x18(%rsp)
    1c78:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1c7d:	mov    0x28(%rsp),%rsi
    1c82:	mov    %rbp,%rdx
    1c85:	mov    %eax,0x20(%rsp)
    1c89:	lea    (%r14,%rsi,1),%r9
    1c8d:	mov    %rsi,0x8(%rsp)
    1c92:	movslq 0x4(%r12,%r9,4),%r10
    1c97:	movslq 0x8(%r12,%r9,4),%r14
    1c9c:	imul   %r13,%r10
    1ca0:	imul   %r13,%r14
    1ca4:	add    %rsi,%r10
    1ca7:	mov    %ebx,%esi
    1ca9:	mov    0x8(%r12,%r10,4),%edi
    1cae:	mov    0x4(%r12,%r10,4),%r11d
    1cb3:	mov    %edi,0x6c(%rsp)
    1cb7:	mov    %r15,%rdi
    1cba:	mov    %r11d,0x68(%rsp)
    1cbf:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1cc4:	mov    (%rsp),%rdi
    1cc8:	mov    %rbp,%rdx
    1ccb:	mov    %ebx,%esi
    1ccd:	mov    %eax,0x38(%rsp)
    1cd1:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1cd6:	mov    0x8(%rsp),%r8
    1cdb:	mov    %ebx,%esi
    1cdd:	mov    %r15,%rdi
    1ce0:	mov    %eax,0x3c(%rsp)
    1ce4:	mov    %r15,0x8(%rsp)
    1ce9:	lea    (%r14,%r8,1),%rax
    1ced:	mov    %r8,0x40(%rsp)
    1cf2:	mov    0x8(%r12,%rax,4),%edx
    1cf7:	mov    0x4(%r12,%rax,4),%ecx
    1cfc:	mov    %edx,0x6c(%rsp)
    1d00:	mov    %rbp,%rdx
    1d03:	mov    %ecx,0x68(%rsp)
    1d07:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1d0c:	mov    (%rsp),%rdi
    1d10:	mov    %rbp,%rdx
    1d13:	mov    %ebx,%esi
    1d15:	mov    %eax,0x28(%rsp)
    1d19:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1d1e:	movslq 0x10(%rsp),%r15
    1d23:	mov    %rbp,%rdx
    1d26:	mov    0x40(%rsp),%rsi
    1d2b:	mov    %eax,0x34(%rsp)
    1d2f:	imul   %r13,%r15
    1d33:	add    %rsi,%r15
    1d36:	movslq 0x4(%r12,%r15,4),%r9
    1d3b:	movslq 0x8(%r12,%r15,4),%r14
    1d40:	imul   %r13,%r9
    1d44:	imul   %r13,%r14
    1d48:	add    %rsi,%r9
    1d4b:	movslq 0x4(%r12,%r9,4),%r10
    1d50:	movslq 0x8(%r12,%r9,4),%r15
    1d55:	mov    %rsi,0x10(%rsp)
    1d5a:	imul   %r13,%r10
    1d5e:	imul   %r13,%r15
    1d62:	add    %rsi,%r10
    1d65:	mov    %ebx,%esi
    1d67:	mov    0x8(%r12,%r10,4),%edi
    1d6c:	mov    0x4(%r12,%r10,4),%r11d
    1d71:	mov    %edi,0x6c(%rsp)
    1d75:	mov    0x8(%rsp),%rdi
    1d7a:	mov    %r11d,0x68(%rsp)
    1d7f:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1d84:	mov    (%rsp),%rdi
    1d88:	mov    %rbp,%rdx
    1d8b:	mov    %ebx,%esi
    1d8d:	mov    %eax,0x48(%rsp)
    1d91:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1d96:	mov    0x10(%rsp),%r8
    1d9b:	mov    %ebx,%esi
    1d9d:	mov    %eax,0x4c(%rsp)
    1da1:	lea    (%r15,%r8,1),%rax
    1da5:	mov    0x8(%rsp),%r15
    1daa:	mov    %r8,0x50(%rsp)
    1daf:	mov    0x8(%r12,%rax,4),%edx
    1db4:	mov    0x4(%r12,%rax,4),%ecx
    1db9:	mov    %r15,%rdi
    1dbc:	mov    %edx,0x6c(%rsp)
    1dc0:	mov    %rbp,%rdx
    1dc3:	mov    %ecx,0x68(%rsp)
    1dc7:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1dcc:	mov    (%rsp),%rdi
    1dd0:	mov    %rbp,%rdx
    1dd3:	mov    %ebx,%esi
    1dd5:	mov    %eax,0x10(%rsp)
    1dd9:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1dde:	mov    0x50(%rsp),%r9
    1de3:	mov    %rbp,%rdx
    1de6:	mov    %eax,0x40(%rsp)
    1dea:	lea    (%r14,%r9,1),%r14
    1dee:	mov    %r9,0x58(%rsp)
    1df3:	movslq 0x4(%r12,%r14,4),%r10
    1df8:	mov    0x8(%r12,%r14,4),%esi
    1dfd:	imul   %r13,%r10
    1e01:	mov    %esi,0x50(%rsp)
    1e05:	mov    %ebx,%esi
    1e07:	add    %r9,%r10
    1e0a:	mov    0x8(%r12,%r10,4),%edi
    1e0f:	mov    0x4(%r12,%r10,4),%r11d
    1e14:	mov    %edi,0x6c(%rsp)
    1e18:	mov    %r15,%rdi
    1e1b:	mov    %r11d,0x68(%rsp)
    1e20:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1e25:	mov    (%rsp),%rdi
    1e29:	mov    %rbp,%rdx
    1e2c:	mov    %ebx,%esi
    1e2e:	mov    %eax,%r15d
    1e31:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1e36:	movslq 0x50(%rsp),%r8
    1e3b:	mov    %rbp,%rdx
    1e3e:	mov    %ebx,%esi
    1e40:	mov    %eax,%r14d
    1e43:	mov    0x58(%rsp),%rax
    1e48:	mov    0x8(%rsp),%rdi
    1e4d:	lea    0x2(%r15,%r14,1),%r15d
    1e52:	imul   %r8,%r13
    1e56:	lea    0x0(%r13,%rax,1),%r13
    1e5b:	mov    0x4(%r12,%r13,4),%ecx
    1e60:	mov    0x8(%r12,%r13,4),%r12d
    1e65:	mov    %ecx,0x68(%rsp)
    1e69:	mov    %r12d,0x6c(%rsp)
    1e6e:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1e73:	mov    (%rsp),%rdi
    1e77:	mov    %rbp,%rdx
    1e7a:	mov    %ebx,%esi
    1e7c:	mov    %eax,%r13d
    1e7f:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    1e84:	mov    0x24(%rsp),%edx
    1e88:	mov    0x30(%rsp),%ebx
    1e8c:	mov    %eax,%ebp
    1e8e:	mov    0x18(%rsp),%esi
    1e92:	lea    0x1(%r13,%rbp,1),%r14d
    1e97:	mov    0x20(%rsp),%r10d
    1e9c:	add    %r14d,%r15d
    1e9f:	mov    0x38(%rsp),%eax
    1ea3:	lea    0x2(%rdx,%rbx,1),%r9d
    1ea8:	mov    0x3c(%rsp),%edi
    1eac:	mov    0x28(%rsp),%ecx
    1eb0:	mov    0x34(%rsp),%edx
    1eb4:	lea    0x1(%rsi,%r10,1),%r11d
    1eb9:	lea    0x1(%r9,%r11,1),%r8d
    1ebe:	mov    0x4c(%rsp),%esi
    1ec2:	lea    0x2(%rax,%rdi,1),%r12d
    1ec7:	mov    0x48(%rsp),%r9d
    1ecc:	mov    0x10(%rsp),%r11d
    1ed1:	lea    0x1(%rcx,%rdx,1),%ebx
    1ed5:	add    %ebx,%r12d
    1ed8:	lea    0x1(%r8,%r12,1),%eax
    1edd:	mov    0x40(%rsp),%r8d
    1ee2:	lea    0x2(%r9,%rsi,1),%r10d
    1ee7:	lea    0x1(%r11,%r8,1),%edi
    1eec:	lea    0x1(%r10,%rdi,1),%r12d
    1ef1:	add    %r15d,%r12d
    1ef4:	add    %r12d,%eax
    1ef7:	jmp    1b62 <__tree_maker_MOD_check_tree.isra.0+0x22>
    1efc:	nopl   0x0(%rax)

0000000000001f00 <MAIN__._omp_fn.0>:
    1f00:	push   %r15
    1f02:	mov    %rdi,%r15
    1f05:	push   %r14
    1f07:	push   %r13
    1f09:	push   %r12
    1f0b:	push   %rbp
    1f0c:	push   %rbx
    1f0d:	sub    $0x68,%rsp
    1f11:	mov    0x18(%rdi),%ebx
    1f14:	lea    0x48(%rsp),%rbp
    1f19:	lea    0x40(%rsp),%r14
    1f1e:	mov    %ebx,0x18(%rsp)
    1f22:	call   1120 <omp_get_thread_num_@plt>
    1f27:	mov    (%r15),%rdx
    1f2a:	mov    $0x2,%ecx
    1f2f:	xor    %edi,%edi
    1f31:	lea    0x1(%rax),%r13d
    1f35:	mov    %ecx,%eax
    1f37:	mov    %rbp,%r9
    1f3a:	sub    %ebx,%eax
    1f3c:	mov    %r14,%r8
    1f3f:	add    (%rdx),%eax
    1f41:	cltd   
    1f42:	idiv   %ecx
    1f44:	mov    $0x1,%ecx
    1f49:	mov    $0x1,%edx
    1f4e:	movslq %eax,%rsi
    1f51:	call   1070 <GOMP_loop_nonmonotonic_dynamic_start@plt>
    1f56:	test   %al,%al
    1f58:	je     211a <MAIN__._omp_fn.0+0x21a>
    1f5e:	lea    0x50(%rsp),%rsi
    1f63:	movslq %r13d,%r13
    1f66:	mov    %rsi,(%rsp)
    1f6a:	mov    0x40(%rsp),%rax
    1f6f:	mov    %rbp,0x28(%rsp)
    1f74:	mov    %r15,%rbp
    1f77:	mov    0x18(%rsp),%r8d
    1f7c:	mov    %r14,0x20(%rsp)
    1f81:	mov    0x48(%rsp),%edi
    1f85:	lea    (%r8,%rax,2),%ebx
    1f89:	cltq   
    1f8b:	mov    %edi,0x1c(%rsp)
    1f8f:	mov    %rax,0x10(%rsp)
    1f94:	mov    0x0(%rbp),%r9
    1f98:	mov    0x18(%rsp),%eax
    1f9c:	add    (%r9),%eax
    1f9f:	sub    %ebx,%eax
    1fa1:	mov    %eax,%ecx
    1fa3:	neg    %ecx
    1fa5:	cmovs  %eax,%ecx
    1fa8:	test   %eax,%eax
    1faa:	js     1518 <MAIN__._omp_fn.0.cold>
    1fb0:	cmp    $0x1f,%ecx
    1fb3:	mov    $0x1,%r11d
    1fb9:	setle  %r10b
    1fbd:	shl    %cl,%r11d
    1fc0:	mov    %r11d,0xc(%rsp)
    1fc5:	test   %r10b,%r10b
    1fc8:	je     1518 <MAIN__._omp_fn.0.cold>
    1fce:	mov    0x10(%rbp),%r14
    1fd2:	lea    0x1(%rbx),%esi
    1fd5:	mov    %esi,%ecx
    1fd7:	mov    0x8(%r14),%r15
    1fdb:	add    %r13,%r15
    1fde:	imul   $0x60,%r15,%rdx
    1fe2:	add    (%r14),%rdx
    1fe5:	neg    %ecx
    1fe7:	cmovs  %esi,%ecx
    1fea:	not    %esi
    1fec:	cmp    $0x1f,%ecx
    1fef:	mov    (%rdx),%r8
    1ff2:	setle  %dil
    1ff6:	shr    $0x1f,%esi
    1ff9:	and    %esi,%edi
    1ffb:	test   %r8,%r8
    1ffe:	je     212e <MAIN__._omp_fn.0+0x22e>
    2004:	mov    0x50(%rdx),%rax
    2008:	mov    $0x0,%r9d
    200e:	mov    $0x1,%r12d
    2014:	sub    0x48(%rdx),%rax
    2018:	add    $0x1,%rax
    201c:	cmovs  %r9,%rax
    2020:	shl    %cl,%r12d
    2023:	xor    %r10d,%r10d
    2026:	test   %dil,%dil
    2029:	cmove  %r10d,%r12d
    202d:	cmp    %eax,%r12d
    2030:	jle    207b <MAIN__._omp_fn.0+0x17b>
    2032:	mov    %r8,%rdi
    2035:	call   10a0 <free@plt>
    203a:	mov    0x10(%rbp),%r11
    203e:	xor    %edx,%edx
    2040:	mov    %r12d,0x3c(%rsp)
    2045:	mov    (%rsp),%rdi
    2049:	lea    0x2fd0(%rip),%rsi        # 5020 <__memory_pool_MOD___vtab_memory_pool_Arena_t>
    2050:	mov    %rsi,0x58(%rsp)
    2055:	lea    0x3c(%rsp),%rsi
    205a:	mov    0x8(%r11),%r14
    205e:	mov    (%r11),%r8
    2061:	add    %r13,%r14
    2064:	imul   $0x60,%r14,%r15
    2068:	add    %r15,%r8
    206b:	mov    %rdx,(%r8)
    206e:	add    (%r11),%r15
    2071:	mov    %r15,0x50(%rsp)
    2076:	call   16e0 <__memory_pool_MOD_init>
    207b:	mov    $0x1,%r15d
    2081:	xor    %r14d,%r14d
    2084:	jmp    20c3 <MAIN__._omp_fn.0+0x1c3>
    2086:	mov    0x10(%rbp),%rdi
    208a:	xor    %r10d,%r10d
    208d:	add    $0x1,%r15d
    2091:	mov    0x8(%rdi),%r12
    2095:	add    %r13,%r12
    2098:	imul   $0x60,%r12,%r12
    209c:	add    (%rdi),%r12
    209f:	mov    %ebx,%edi
    20a1:	mov    %r10d,0x58(%r12)
    20a6:	mov    %r12,%rsi
    20a9:	call   1830 <__tree_maker_MOD_make_tree.isra.0>
    20ae:	mov    (%rsp),%rdi
    20b2:	mov    %r12,%rdx
    20b5:	mov    %ebx,%esi
    20b7:	mov    %eax,0x50(%rsp)
    20bb:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    20c0:	add    %eax,%r14d
    20c3:	cmp    %r15d,0xc(%rsp)
    20c8:	jge    2086 <MAIN__._omp_fn.0+0x186>
    20ca:	mov    0x8(%rbp),%r11
    20ce:	add    $0x2,%ebx
    20d1:	addq   $0x1,0x10(%rsp)
    20d7:	mov    0x10(%rsp),%r8
    20dc:	mov    0x8(%r11),%rax
    20e0:	mov    (%r11),%rdx
    20e3:	mov    %r8d,%esi
    20e6:	add    $0x0,%esi
    20e9:	add    %r8,%rax
    20ec:	mov    %r14d,(%rdx,%rax,4)
    20f0:	cmp    %esi,0x1c(%rsp)
    20f4:	jg     1f94 <MAIN__._omp_fn.0+0x94>
    20fa:	mov    0x20(%rsp),%r14
    20ff:	mov    %rbp,%r15
    2102:	mov    0x28(%rsp),%rbp
    2107:	mov    %r14,%rdi
    210a:	mov    %rbp,%rsi
    210d:	call   1130 <GOMP_loop_nonmonotonic_dynamic_next@plt>
    2112:	test   %al,%al
    2114:	jne    1f6a <MAIN__._omp_fn.0+0x6a>
    211a:	call   1080 <GOMP_loop_end@plt>
    211f:	add    $0x68,%rsp
    2123:	pop    %rbx
    2124:	pop    %rbp
    2125:	pop    %r12
    2127:	pop    %r13
    2129:	pop    %r14
    212b:	pop    %r15
    212d:	ret    
    212e:	lea    0x3c(%rsp),%rsi
    2133:	mov    $0x1,%r9d
    2139:	mov    %rdx,0x50(%rsp)
    213e:	lea    0x2edb(%rip),%rax        # 5020 <__memory_pool_MOD___vtab_memory_pool_Arena_t>
    2145:	shl    %cl,%r9d
    2148:	xor    %ecx,%ecx
    214a:	test   %dil,%dil
    214d:	mov    (%rsp),%rdi
    2151:	mov    %rax,0x58(%rsp)
    2156:	cmove  %ecx,%r9d
    215a:	mov    %r9d,0x3c(%rsp)
    215f:	call   16e0 <__memory_pool_MOD_init>
    2164:	jmp    207b <MAIN__._omp_fn.0+0x17b>
    2169:	nopl   0x0(%rax)

0000000000002170 <_start>:
    2170:	endbr64 
    2174:	xor    %ebp,%ebp
    2176:	mov    %rdx,%r9
    2179:	pop    %rsi
    217a:	mov    %rsp,%rdx
    217d:	and    $0xfffffffffffffff0,%rsp
    2181:	push   %rax
    2182:	push   %rsp
    2183:	xor    %r8d,%r8d
    2186:	xor    %ecx,%ecx
    2188:	lea    0xd1(%rip),%rdi        # 2260 <main>
    218f:	call   *0x2e63(%rip)        # 4ff8 <__libc_start_main@GLIBC_2.34>
    2195:	hlt    
    2196:	cs nopw 0x0(%rax,%rax,1)

00000000000021a0 <deregister_tm_clones>:
    21a0:	lea    0x2ec1(%rip),%rdi        # 5068 <__TMC_END__>
    21a7:	lea    0x2eba(%rip),%rax        # 5068 <__TMC_END__>
    21ae:	cmp    %rdi,%rax
    21b1:	je     21c8 <deregister_tm_clones+0x28>
    21b3:	mov    0x2e26(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    21ba:	test   %rax,%rax
    21bd:	je     21c8 <deregister_tm_clones+0x28>
    21bf:	jmp    *%rax
    21c1:	nopl   0x0(%rax)
    21c8:	ret    
    21c9:	nopl   0x0(%rax)

00000000000021d0 <register_tm_clones>:
    21d0:	lea    0x2e91(%rip),%rdi        # 5068 <__TMC_END__>
    21d7:	lea    0x2e8a(%rip),%rsi        # 5068 <__TMC_END__>
    21de:	sub    %rdi,%rsi
    21e1:	mov    %rsi,%rax
    21e4:	shr    $0x3f,%rsi
    21e8:	sar    $0x3,%rax
    21ec:	add    %rax,%rsi
    21ef:	sar    %rsi
    21f2:	je     2208 <register_tm_clones+0x38>
    21f4:	mov    0x2ded(%rip),%rax        # 4fe8 <_ITM_registerTMCloneTable@Base>
    21fb:	test   %rax,%rax
    21fe:	je     2208 <register_tm_clones+0x38>
    2200:	jmp    *%rax
    2202:	nopw   0x0(%rax,%rax,1)
    2208:	ret    
    2209:	nopl   0x0(%rax)

0000000000002210 <__do_global_dtors_aux>:
    2210:	endbr64 
    2214:	cmpb   $0x0,0x2e65(%rip)        # 5080 <completed.0>
    221b:	jne    2248 <__do_global_dtors_aux+0x38>
    221d:	push   %rbp
    221e:	cmpq   $0x0,0x2dca(%rip)        # 4ff0 <__cxa_finalize@GLIBC_2.2.5>
    2226:	mov    %rsp,%rbp
    2229:	je     2237 <__do_global_dtors_aux+0x27>
    222b:	mov    0x2dd6(%rip),%rdi        # 5008 <__dso_handle>
    2232:	call   1190 <__cxa_finalize@plt>
    2237:	call   21a0 <deregister_tm_clones>
    223c:	movb   $0x1,0x2e3d(%rip)        # 5080 <completed.0>
    2243:	pop    %rbp
    2244:	ret    
    2245:	nopl   (%rax)
    2248:	ret    
    2249:	nopl   0x0(%rax)

0000000000002250 <frame_dummy>:
    2250:	endbr64 
    2254:	jmp    21d0 <register_tm_clones>
    2259:	nopl   0x0(%rax)

0000000000002260 <main>:
    2260:	push   %rax
    2261:	call   1170 <_gfortran_set_args@plt>
    2266:	lea    0xe33(%rip),%rsi        # 30a0 <options.33.2>
    226d:	mov    $0x7,%edi
    2272:	call   1140 <_gfortran_set_options@plt>
    2277:	call   2280 <MAIN__>
    227c:	xor    %eax,%eax
    227e:	pop    %rdx
    227f:	ret    

0000000000002280 <MAIN__>:
    2280:	push   %rbp
    2281:	mov    $0x101,%edi
    2286:	mov    $0x501,%r8d
    228c:	lea    0x2d8d(%rip),%rcx        # 5020 <__memory_pool_MOD___vtab_memory_pool_Arena_t>
    2293:	mov    %rsp,%rbp
    2296:	push   %r15
    2298:	shl    $0x20,%rdi
    229c:	push   %r14
    229e:	lea    0x2dfb(%rip),%r15        # 50a0 <stretch_pool.0>
    22a5:	shl    $0x20,%r8
    22a9:	push   %r13
    22ab:	lea    0x2e4e(%rip),%r14        # 5100 <long_lived_pool.1>
    22b2:	vmovq  %r15,%xmm1
    22b7:	push   %r12
    22b9:	vmovq  %r14,%xmm7
    22be:	xor    %r12d,%r12d
    22c1:	vpinsrq $0x1,%rcx,%xmm1,%xmm2
    22c7:	push   %rbx
    22c8:	xor    %ebx,%ebx
    22ca:	vpinsrq $0x1,%rcx,%xmm7,%xmm6
    22d0:	and    $0xffffffffffffffe0,%rsp
    22d4:	sub    $0x320,%rsp
    22db:	mov    %rbx,0x2e1e(%rip)        # 5100 <long_lived_pool.1>
    22e2:	lea    0x60(%rsp),%rax
    22e7:	vmovdqa %xmm6,0x20(%rsp)
    22ed:	vmovq  %rax,%xmm5
    22f2:	mov    %rax,0x40(%rsp)
    22f7:	xor    %eax,%eax
    22f9:	lea    0xd0(%rsp),%rdx
    2301:	xor    %al,%al
    2303:	vmovdqa %xmm2,0x30(%rsp)
    2309:	mov    $0x0,%ah
    230b:	vpinsrq $0x1,%rdx,%xmm5,%xmm4
    2311:	mov    %rbx,0xd0(%rsp)
    2319:	vmovdqa %xmm4,0x10(%rsp)
    231f:	mov    %eax,%r13d
    2322:	movq   $0x4,0xe0(%rsp)
    232e:	mov    %rdi,0xe8(%rsp)
    2336:	mov    %r12,0x2d63(%rip)        # 50a0 <stretch_pool.0>
    233d:	mov    %r12,0x90(%rsp)
    2345:	movq   $0x60,0xa0(%rsp)
    2351:	mov    %r8,0xa8(%rsp)
    2359:	movl   $0xa,0x5c(%rsp)
    2361:	call   1150 <_gfortran_iargc@plt>
    2366:	test   %eax,%eax
    2368:	jle    11a0 <MAIN__.cold>
    236e:	lea    0x70(%rsp),%r12
    2373:	xor    %ecx,%ecx
    2375:	xor    %eax,%eax
    2377:	mov    $0x20,%r8d
    237d:	xor    %edx,%edx
    237f:	mov    %r12,%rsi
    2382:	lea    0xc97(%rip),%rdi        # 3020 <_IO_stdin_used+0x20>
    2389:	call   1160 <_gfortran_get_command_argument_i4@plt>
    238e:	mov    0xf73(%rip),%rsi        # 3308 <options.33.2+0x268>
    2395:	lea    0xd20(%rip),%r10        # 30bc <options.33.2+0x1c>
    239c:	xor    %r11d,%r11d
    239f:	lea    0x110(%rsp),%rbx
    23a7:	mov    %r10,0x118(%rsp)
    23af:	mov    %r11,0x158(%rsp)
    23b7:	mov    %rbx,%rdi
    23ba:	mov    %r12,0x180(%rsp)
    23c2:	mov    %rsi,0x110(%rsp)
    23ca:	movl   $0xf7,0x120(%rsp)
    23d5:	movq   $0x20,0x188(%rsp)
    23e1:	mov    %r10,0x48(%rsp)
    23e6:	call   10e0 <_gfortran_st_read@plt>
    23eb:	mov    $0x4,%edx
    23f0:	mov    %rbx,%rdi
    23f3:	lea    0x5c(%rsp),%rsi
    23f8:	call   10b0 <_gfortran_transfer_integer@plt>
    23fd:	mov    %rbx,%rdi
    2400:	call   1050 <_gfortran_st_read_done@plt>
    2405:	mov    0x5c(%rsp),%ecx
    2409:	mov    $0x6,%edx
    240e:	vmovdqa 0x30(%rsp),%xmm3
    2414:	vmovdqa %xmm3,0x110(%rsp)
    241d:	cmp    %edx,%ecx
    241f:	cmovl  %edx,%ecx
    2422:	lea    0x1(%rcx),%r12d
    2426:	mov    %ecx,0x60(%rsp)
    242a:	add    $0x2,%ecx
    242d:	mov    %r12d,0x58(%rsp)
    2432:	cmp    $0x1f,%ecx
    2435:	jg     1286 <MAIN__.cold+0xe6>
    243b:	mov    $0x1,%eax
    2440:	shl    %cl,%eax
    2442:	lea    0x6c(%rsp),%rsi
    2447:	mov    %eax,0x6c(%rsp)
    244b:	mov    %rbx,%rdi
    244e:	mov    %rsi,0x30(%rsp)
    2453:	call   16e0 <__memory_pool_MOD_init>
    2458:	mov    %r15,%rsi
    245b:	mov    %r12d,%edi
    245e:	call   1830 <__tree_maker_MOD_make_tree.isra.0>
    2463:	mov    %r15,%rdx
    2466:	mov    %r12d,%esi
    2469:	mov    %rbx,%rdi
    246c:	mov    %eax,0x110(%rsp)
    2473:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    2478:	mov    0x48(%rsp),%r15
    247d:	lea    0xc48(%rip),%rdi        # 30cc <options.33.2+0x2c>
    2484:	movl   $0x101,0x120(%rsp)
    248f:	mov    0xe7a(%rip),%r12        # 3310 <options.33.2+0x270>
    2496:	mov    %rdi,0x160(%rsp)
    249e:	mov    %rbx,%rdi
    24a1:	movq   $0xb,0x168(%rsp)
    24ad:	mov    %eax,0x68(%rsp)
    24b1:	mov    %r15,0x118(%rsp)
    24b9:	lea    0xc2f(%rip),%r15        # 30ef <options.33.2+0x4f>
    24c0:	mov    %r12,0x110(%rsp)
    24c8:	call   1180 <_gfortran_st_write@plt>
    24cd:	mov    $0x16,%edx
    24d2:	mov    %rbx,%rdi
    24d5:	lea    0xbfc(%rip),%rsi        # 30d8 <options.33.2+0x38>
    24dc:	call   10c0 <_gfortran_transfer_character_write@plt>
    24e1:	lea    0x58(%rsp),%rsi
    24e6:	mov    $0x4,%edx
    24eb:	mov    %rbx,%rdi
    24ee:	call   1090 <_gfortran_transfer_integer_write@plt>
    24f3:	mov    $0x9,%edx
    24f8:	mov    %r15,%rsi
    24fb:	mov    %rbx,%rdi
    24fe:	call   10c0 <_gfortran_transfer_character_write@plt>
    2503:	lea    0x68(%rsp),%rsi
    2508:	mov    $0x4,%edx
    250d:	mov    %rbx,%rdi
    2510:	mov    %rsi,0x8(%rsp)
    2515:	call   1090 <_gfortran_transfer_integer_write@plt>
    251a:	mov    %rbx,%rdi
    251d:	call   1100 <_gfortran_st_write_done@plt>
    2522:	mov    0x2b77(%rip),%rdi        # 50a0 <stretch_pool.0>
    2529:	test   %rdi,%rdi
    252c:	je     126a <MAIN__.cold+0xca>
    2532:	call   10a0 <free@plt>
    2537:	mov    0x60(%rsp),%r9d
    253c:	xor    %r8d,%r8d
    253f:	vmovdqa 0x20(%rsp),%xmm8
    2545:	mov    %r8,0x2b54(%rip)        # 50a0 <stretch_pool.0>
    254c:	vmovdqa %xmm8,0x110(%rsp)
    2555:	add    $0x1,%r9d
    2559:	mov    %r9d,%ecx
    255c:	neg    %ecx
    255e:	cmovs  %r9d,%ecx
    2562:	cmp    $0x1f,%ecx
    2565:	jg     1262 <MAIN__.cold+0xc2>
    256b:	test   %r9d,%r9d
    256e:	js     1262 <MAIN__.cold+0xc2>
    2574:	mov    $0x1,%r10d
    257a:	shl    %cl,%r10d
    257d:	mov    0x30(%rsp),%rsi
    2582:	mov    %r10d,0x6c(%rsp)
    2587:	mov    %rbx,%rdi
    258a:	call   16e0 <__memory_pool_MOD_init>
    258f:	mov    0x60(%rsp),%edi
    2593:	mov    %r14,%rsi
    2596:	call   1830 <__tree_maker_MOD_make_tree.isra.0>
    259b:	mov    0x60(%rsp),%r11d
    25a0:	mov    %r14,%rdx
    25a3:	mov    $0x101,%r14d
    25a9:	lea    0xa70(%rip),%rdi        # 3020 <_IO_stdin_used+0x20>
    25b0:	shl    $0x20,%r14
    25b4:	mov    %r11d,%esi
    25b7:	mov    %r11d,0x20(%rsp)
    25bc:	call   1b40 <__tree_maker_MOD_check_tree.isra.0>
    25c1:	mov    0x20(%rsp),%edi
    25c5:	movq   $0x4,0xe0(%rsp)
    25d1:	mov    %eax,0x68(%rsp)
    25d5:	mov    %r14,0xe8(%rsp)
    25dd:	cmp    $0x2,%edi
    25e0:	jle    125a <MAIN__.cold+0xba>
    25e6:	lea    -0x4(%rdi),%eax
    25e9:	mov    $0x2,%esi
    25ee:	cltd   
    25ef:	idiv   %esi
    25f1:	add    $0x1,%eax
    25f4:	movslq %eax,%r14
    25f7:	shl    $0x2,%r14
    25fb:	cmpq   $0x0,0xd0(%rsp)
    2604:	jne    123e <MAIN__.cold+0x9e>
    260a:	mov    %edi,0x20(%rsp)
    260e:	test   %r14,%r14
    2611:	mov    $0x1,%edi
    2616:	cmovne %r14,%rdi
    261a:	call   1060 <malloc@plt>
    261f:	mov    %rax,%rdi
    2622:	mov    %rax,0xd0(%rsp)
    262a:	test   %rax,%rax
    262d:	je     1226 <MAIN__.cold+0x86>
    2633:	mov    0x20(%rsp),%r8d
    2638:	mov    $0x2,%r9d
    263e:	movq   $0x1,0x100(%rsp)
    264a:	vmovdqa 0xcee(%rip),%xmm9        # 3340 <options.33.2+0x2a0>
    2652:	movq   $0xffffffffffffffff,0xd8(%rsp)
    265e:	vmovdqa %xmm9,0xf0(%rsp)
    2667:	lea    -0x4(%r8),%eax
    266b:	cltd   
    266c:	idiv   %r9d
    266f:	xor    %edx,%edx
    2671:	add    $0x1,%eax
    2674:	cltq   
    2676:	mov    %rax,0x108(%rsp)
    267e:	shl    $0x2,%rax
    2682:	test   %r8d,%r8d
    2685:	cmovg  %rax,%rdx
    2689:	xor    %esi,%esi
    268b:	call   1030 <memset@plt>
    2690:	call   1110 <omp_get_max_threads_@plt>
    2695:	mov    $0x501,%r10d
    269b:	vpxor  %xmm11,%xmm11,%xmm11
    26a0:	movq   $0x60,0xa0(%rsp)
    26ac:	vmovd  %eax,%xmm10
    26b0:	shl    $0x20,%r10
    26b4:	vpmaxsd %xmm11,%xmm10,%xmm12
    26b9:	vmovd  %xmm10,%ecx
    26bd:	mov    %r10,0xa8(%rsp)
    26c5:	vmovd  %xmm12,%r11d
    26ca:	movslq %r11d,%rdi
    26cd:	test   %ecx,%ecx
    26cf:	jle    121e <MAIN__.cold+0x7e>
    26d5:	imul   $0x60,%rdi,%r14
    26d9:	cmpq   $0x0,0x90(%rsp)
    26e2:	jne    1202 <MAIN__.cold+0x62>
    26e8:	test   %r14,%r14
    26eb:	mov    $0x1,%edi
    26f0:	mov    %ecx,0x20(%rsp)
    26f4:	cmovne %r14,%rdi
    26f8:	call   1060 <malloc@plt>
    26fd:	mov    %rax,0x90(%rsp)
    2705:	test   %rax,%rax
    2708:	je     11ea <MAIN__.cold+0x4a>
    270e:	movslq 0x20(%rsp),%rcx
    2713:	xor    %edx,%edx
    2715:	movq   $0x1,0xc0(%rsp)
    2721:	vmovdqa 0xbf7(%rip),%xmm13        # 3320 <options.33.2+0x280>
    2729:	movq   $0xffffffffffffffff,0x98(%rsp)
    2735:	vmovdqa %xmm13,0xb0(%rsp)
    273e:	mov    %rcx,0xc8(%rsp)
    2746:	add    $0x1,%rdx
    274a:	cmp    %rcx,%rdx
    274d:	jg     279d <MAIN__+0x51d>
    274f:	xor    %esi,%esi
    2751:	xor    %r8d,%r8d
    2754:	xor    %r9d,%r9d
    2757:	vpxor  %xmm14,%xmm14,%xmm14
    275c:	xor    %r10d,%r10d
    275f:	mov    %rsi,(%rax)
    2762:	vpxor  %xmm15,%xmm15,%xmm15
    2767:	add    $0x60,%rax
    276b:	mov    %rsi,-0x58(%rax)
    276f:	vextractf128 $0x1,%ymm14,-0x30(%rax)
    2776:	mov    %rsi,-0x50(%rax)
    277a:	mov    %r8d,-0x48(%rax)
    277e:	mov    %r13w,-0x44(%rax)
    2783:	movw   $0x0,-0x42(%rax)
    2789:	vmovdqu %xmm14,-0x40(%rax)
    278e:	vmovdqu %xmm15,-0x20(%rax)
    2793:	mov    %r9,-0x10(%rax)
    2797:	mov    %r10d,-0x8(%rax)
    279b:	jmp    2746 <MAIN__+0x4c6>
    279d:	vmovdqa 0x10(%rsp),%xmm5
    27a3:	xor    %ecx,%ecx
    27a5:	xor    %edx,%edx
    27a7:	mov    %rbx,%rsi
    27aa:	lea    0x90(%rsp),%r13
    27b2:	movl   $0x4,0x128(%rsp)
    27bd:	vmovdqa %xmm5,0x110(%rsp)
    27c6:	lea    -0x8cd(%rip),%rdi        # 1f00 <MAIN__._omp_fn.0>
    27cd:	mov    %r13,0x120(%rsp)
    27d5:	vzeroupper 
    27d8:	call   10f0 <GOMP_parallel@plt>
    27dd:	mov    0x60(%rsp),%r9d
    27e2:	lea    0x64(%rsp),%r11
    27e7:	movl   $0x4,0x6c(%rsp)
    27ef:	mov    %r11,0x20(%rsp)
    27f4:	lea    -0x4(%r9),%r14d
    27f8:	shr    %r14d
    27fb:	cmp    $0x3,%r9d
    27ff:	jg     280b <MAIN__+0x58b>
    2801:	jmp    2915 <MAIN__+0x695>
    2806:	mov    0x60(%rsp),%r9d
    280b:	mov    0x6c(%rsp),%r13d
    2810:	sub    %r13d,%r9d
    2813:	add    $0x4,%r9d
    2817:	mov    %r9d,%ecx
    281a:	neg    %ecx
    281c:	cmovs  %r9d,%ecx
    2820:	test   %r9d,%r9d
    2823:	js     11e3 <MAIN__.cold+0x43>
    2829:	cmp    $0x1f,%ecx
    282c:	jg     11e3 <MAIN__.cold+0x43>
    2832:	mov    $0x1,%eax
    2837:	shl    %cl,%eax
    2839:	mov    0x48(%rsp),%rdi
    283e:	mov    %eax,0x64(%rsp)
    2842:	lea    0x907(%rip),%rdx        # 3150 <options.33.2+0xb0>
    2849:	mov    %rdx,0x160(%rsp)
    2851:	movl   $0x12d,0x120(%rsp)
    285c:	movq   $0xe,0x168(%rsp)
    2868:	mov    %rdi,0x118(%rsp)
    2870:	mov    %rbx,%rdi
    2873:	mov    %r12,0x110(%rsp)
    287b:	call   1180 <_gfortran_st_write@plt>
    2880:	mov    0x20(%rsp),%rsi
    2885:	mov    $0x4,%edx
    288a:	mov    %rbx,%rdi
    288d:	call   1090 <_gfortran_transfer_integer_write@plt>
    2892:	mov    $0x11,%edx
    2897:	mov    %rbx,%rdi
    289a:	lea    0x8be(%rip),%rsi        # 315f <options.33.2+0xbf>
    28a1:	call   10c0 <_gfortran_transfer_character_write@plt>
    28a6:	mov    0x30(%rsp),%rsi
    28ab:	mov    $0x4,%edx
    28b0:	mov    %rbx,%rdi
    28b3:	call   1090 <_gfortran_transfer_integer_write@plt>
    28b8:	mov    $0x9,%edx
    28bd:	mov    %r15,%rsi
    28c0:	mov    %rbx,%rdi
    28c3:	call   10c0 <_gfortran_transfer_character_write@plt>
    28c8:	lea    -0x4(%r13),%eax
    28cc:	mov    $0x2,%esi
    28d1:	mov    %rbx,%rdi
    28d4:	cltd   
    28d5:	mov    0xd0(%rsp),%r8
    28dd:	add    $0x2,%r13d
    28e1:	idiv   %esi
    28e3:	mov    $0x4,%edx
    28e8:	add    $0x1,%eax
    28eb:	cltq   
    28ed:	add    0xd8(%rsp),%rax
    28f5:	lea    (%r8,%rax,4),%rsi
    28f9:	call   1090 <_gfortran_transfer_integer_write@plt>
    28fe:	mov    %rbx,%rdi
    2901:	call   1100 <_gfortran_st_write_done@plt>
    2906:	mov    %r13d,0x6c(%rsp)
    290b:	sub    $0x1,%r14d
    290f:	jae    2806 <MAIN__+0x586>
    2915:	mov    0x48(%rsp),%r10
    291a:	lea    0x7ab(%rip),%r14        # 30cc <options.33.2+0x2c>
    2921:	mov    %r12,0x110(%rsp)
    2929:	mov    %rbx,%rdi
    292c:	mov    %r14,0x160(%rsp)
    2934:	movl   $0x130,0x120(%rsp)
    293f:	movq   $0xb,0x168(%rsp)
    294b:	mov    %r10,0x118(%rsp)
    2953:	call   1180 <_gfortran_st_write@plt>
    2958:	mov    %rbx,%rdi
    295b:	mov    $0x19,%edx
    2960:	lea    0x7cf(%rip),%rsi        # 3136 <options.33.2+0x96>
    2967:	call   10c0 <_gfortran_transfer_character_write@plt>
    296c:	mov    0x40(%rsp),%rsi
    2971:	mov    %rbx,%rdi
    2974:	mov    $0x4,%edx
    2979:	call   1090 <_gfortran_transfer_integer_write@plt>
    297e:	mov    %r15,%rsi
    2981:	mov    %rbx,%rdi
    2984:	mov    $0x9,%edx
    2989:	call   10c0 <_gfortran_transfer_character_write@plt>
    298e:	mov    0x8(%rsp),%rsi
    2993:	mov    %rbx,%rdi
    2996:	mov    $0x4,%edx
    299b:	call   1090 <_gfortran_transfer_integer_write@plt>
    29a0:	mov    %rbx,%rdi
    29a3:	call   1100 <_gfortran_st_write_done@plt>
    29a8:	lea    -0x28(%rbp),%rsp
    29ac:	pop    %rbx
    29ad:	pop    %r12
    29af:	pop    %r13
    29b1:	pop    %r14
    29b3:	pop    %r15
    29b5:	pop    %rbp
    29b6:	ret    

Disassembly of section .fini:

00000000000029b8 <_fini>:
    29b8:	endbr64 
    29bc:	sub    $0x8,%rsp
    29c0:	add    $0x8,%rsp
    29c4:	ret    
