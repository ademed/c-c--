	.file	"test_sequence_algorithms.cpp"
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	__ZNKSt5ctypeIcE8do_widenEc
	.def	__ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
__ZNKSt5ctypeIcE8do_widenEc:
LFB1604:
	.cfi_startproc
	movzbl	4(%esp), %eax
	ret	$4
	.cfi_endproc
LFE1604:
	.text
	.p2align 4
	.def	___tcf_0;	.scl	3;	.type	32;	.endef
___tcf_0:
LFB4392:
	.cfi_startproc
	movl	$__ZStL8__ioinit, %ecx
	jmp	__ZNSt8ios_base4InitD1Ev
	.cfi_endproc
LFE4392:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC2:
	.ascii "   \0"
	.def	___divdi3;	.scl	2;	.type	32;	.endef
LC4:
	.ascii " seconds\0"
	.section	.text.unlikely,"x"
LCOLDB6:
	.section	.text.startup,"x"
LHOTB6:
	.p2align 4
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB3778:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3778
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$40, %esp
	call	___main
	movl	$80000000, (%esp)
LEHB0:
	call	__Znwj
LEHE0:
	movl	%eax, %esi
	leal	80000000(%eax), %edx
L5:
	flds	LC0
	addl	$8, %eax
	fstpl	-8(%eax)
	cmpl	%eax, %edx
	jne	L5
	movl	$80000000, (%esp)
LEHB1:
	call	__Znwj
LEHE1:
	movl	%eax, %edi
	leal	80000000(%eax), %edx
L6:
	flds	LC1
	addl	$8, %eax
	fstpl	-8(%eax)
	cmpl	%edx, %eax
	jne	L6
	movl	%esi, %ecx
	movl	%edi, %eax
	andl	$31, %ecx
	andl	$31, %eax
	movl	%ecx, (%esp)
	movl	$__ZSt4cout, %ecx
	movl	%eax, -32(%ebp)
LEHB2:
	call	__ZNSo9_M_insertImEERSoT_
	subl	$4, %esp
	movl	%eax, %ebx
	movl	$3, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	-32(%ebp), %eax
	movl	%ebx, %ecx
	movl	%eax, (%esp)
	call	__ZNSo9_M_insertImEERSoT_
	subl	$4, %esp
	movl	%eax, (%esp)
	call	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movl	$1000, %ebx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.p2align 4,,10
	.p2align 3
L7:
	movl	$80000000, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_memcpy
	subl	$1, %ebx
	jne	L7
	call	__ZNSt6chrono3_V212system_clock3nowEv
	subl	-32(%ebp), %eax
	sbbl	-28(%ebp), %edx
	movl	$1000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	$__ZSt4cout, %ecx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	fildq	-32(%ebp)
	fdivs	LC3
	fstpl	(%esp)
	call	__ZNSo9_M_insertIdEERSoT_
	subl	$8, %esp
	movl	%eax, %ebx
	movl	$8, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	%ebx, (%esp)
	call	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
LEHE2:
	movl	%edi, (%esp)
	call	__ZdlPv
	movl	%esi, (%esp)
	call	__ZdlPv
	leal	-16(%ebp), %esp
	xorl	%eax, %eax
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
L10:
	.cfi_restore_state
	movl	%eax, %ebx
	jmp	L9
L11:
	movl	%eax, %ebx
	jmp	L8
	.def	___gxx_personality_v0;	.scl	2;	.type	32;	.endef
	.section	.gcc_except_table,"w"
LLSDA3778:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3778-LLSDACSB3778
LLSDACSB3778:
	.uleb128 LEHB0-LFB3778
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB1-LFB3778
	.uleb128 LEHE1-LEHB1
	.uleb128 L10-LFB3778
	.uleb128 0
	.uleb128 LEHB2-LFB3778
	.uleb128 LEHE2-LEHB2
	.uleb128 L11-LFB3778
	.uleb128 0
LLSDACSE3778:
	.section	.text.startup,"x"
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDAC3778
	.def	_main.cold;	.scl	3;	.type	32;	.endef
_main.cold:
LFSB3778:
L8:
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	movl	%edi, (%esp)
	call	__ZdlPv
L9:
	movl	%esi, (%esp)
	call	__ZdlPv
	movl	%ebx, (%esp)
LEHB3:
	call	__Unwind_Resume
LEHE3:
	.cfi_endproc
LFE3778:
	.section	.gcc_except_table,"w"
LLSDAC3778:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSEC3778-LLSDACSBC3778
LLSDACSBC3778:
	.uleb128 LEHB3-LCOLDB6
	.uleb128 LEHE3-LEHB3
	.uleb128 0
	.uleb128 0
LLSDACSEC3778:
	.section	.text.unlikely,"x"
	.section	.text.startup,"x"
	.section	.text.unlikely,"x"
LCOLDE6:
	.section	.text.startup,"x"
LHOTE6:
	.section .rdata,"dr"
LC7:
	.ascii "v = [ \0"
LC8:
	.ascii " ]\0"
LC9:
	.ascii " \0"
	.section	.text$_Z12print_vectorISt6vectorIdSaIdEEEvRKT_,"x"
	.linkonce discard
	.p2align 4
	.globl	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	.def	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_;	.scl	2;	.type	32;	.endef
__Z12print_vectorISt6vectorIdSaIdEEEvRKT_:
LFB4072:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	$6, 8(%esp)
	movl	32(%esp), %ebx
	movl	$LC7, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	4(%ebx), %esi
	movl	(%ebx), %ebx
	cmpl	%esi, %ebx
	je	L23
	.p2align 4,,10
	.p2align 3
L22:
	fldl	(%ebx)
	movl	$__ZSt4cout, %ecx
	addl	$8, %ebx
	fstpl	(%esp)
	call	__ZNSo9_M_insertIdEERSoT_
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	$1, 8(%esp)
	movl	$LC9, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	cmpl	%ebx, %esi
	jne	L22
L23:
	movl	$2, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %ebx
	testl	%ebx, %ebx
	je	L32
	cmpb	$0, 28(%ebx)
	je	L24
	movsbl	39(%ebx), %eax
L25:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %ecx
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZNSo5flushEv
	.p2align 4,,10
	.p2align 3
L24:
	.cfi_restore_state
	movl	%ebx, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%ebx), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L25
	movl	$10, (%esp)
	movl	%ebx, %ecx
	call	*%edx
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movsbl	%al, %eax
	jmp	L25
L32:
	call	__ZSt16__throw_bad_castv
	.cfi_endproc
LFE4072:
	.section .rdata,"dr"
	.align 4
LC11:
	.ascii "=============================================================\0"
	.align 4
LC12:
	.ascii "Pass a vector lvalue and an rvalue\0"
	.align 4
LC14:
	.ascii "Pass a iterator rvalue and an rvalue\0"
	.align 4
LC16:
	.ascii "Pass a iterator lvalue and an rvalue\0"
	.align 4
LC18:
	.ascii "Pass a pointer lvalue and an rvalue\0"
	.align 4
LC20:
	.ascii "Pass a pointer rvalue and an rvalue\0"
	.align 4
LC21:
	.ascii "Pass a vector lvalue and an lvalue\0"
	.align 4
LC22:
	.ascii "Pass a iterator rvalue and an lvalue\0"
	.align 4
LC23:
	.ascii "Pass a iterator lvalue and an lvalue\0"
	.align 4
LC24:
	.ascii "Pass a pointer lvalue and an lvalue\0"
	.align 4
LC25:
	.ascii "Pass a pointer rvalue and an lvalue\0"
	.align 4
LC26:
	.ascii "Pass a pointer rvalue and a pointer rvalue\0"
	.section	.text.unlikely,"x"
LCOLDB27:
	.text
LHOTB27:
	.p2align 4
	.globl	__Z14test_no_policyv
	.def	__Z14test_no_policyv;	.scl	2;	.type	32;	.endef
__Z14test_no_policyv:
LFB3777:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3777
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$0, -36(%ebp)
	movl	$40, (%esp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
LEHB4:
	call	__Znwj
LEHE4:
	leal	4(%eax), %edi
	leal	40(%eax), %edx
	movl	%eax, -36(%ebp)
	andl	$-4, %edi
	movl	%edx, -28(%ebp)
	movl	$0, (%eax)
	movl	$0, 36(%eax)
	subl	%edi, %eax
	leal	40(%eax), %ecx
	xorl	%eax, %eax
	shrl	$2, %ecx
	rep stosl
	movl	$40, (%esp)
	movl	%edx, -32(%ebp)
LEHB5:
	call	__Znwj
LEHE5:
	leal	4(%eax), %edi
	movl	%eax, -44(%ebp)
	andl	$-4, %edi
	movl	$0, (%eax)
	movl	$0, 36(%eax)
	subl	%edi, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	addl	$40, %ecx
	shrl	$2, %ecx
	rep stosl
	movl	$40, (%esp)
LEHB6:
	call	__Znwj
LEHE6:
	leal	4(%eax), %edi
	movl	%eax, -48(%ebp)
	andl	$-4, %edi
	movl	$0, (%eax)
	movl	$0, 36(%eax)
	subl	%edi, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	addl	$40, %ecx
	shrl	$2, %ecx
	rep stosl
	movl	$40, (%esp)
LEHB7:
	call	__Znwj
LEHE7:
	leal	4(%eax), %edi
	movl	%eax, -52(%ebp)
	andl	$-4, %edi
	movl	$0, (%eax)
	movl	$0, 36(%eax)
	subl	%edi, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	addl	$40, %ecx
	shrl	$2, %ecx
	rep stosl
	movl	$40, (%esp)
LEHB8:
	call	__Znwj
LEHE8:
	flds	LC10
	movl	%eax, %ebx
	fstl	(%eax)
	fstl	8(%eax)
	fstl	16(%eax)
	fstl	24(%eax)
	fstpl	32(%eax)
	movl	$61, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$__ZSt4cout, (%esp)
LEHB9:
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %esi
	testl	%esi, %esi
	je	L118
	cmpb	$0, 28(%esi)
	je	L35
	movsbl	39(%esi), %eax
L36:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	leal	-36(%ebp), %esi
	movl	%esi, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$34, 8(%esp)
	movl	$LC12, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %edi
	testl	%edi, %edi
	je	L119
	cmpb	$0, 28(%edi)
	je	L38
	movsbl	39(%edi), %eax
L39:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	movl	-36(%ebp), %eax
	fld1
	fstl	(%eax)
	fstl	8(%eax)
	fstl	16(%eax)
	fstl	24(%eax)
	fstpl	32(%eax)
	movl	%esi, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$36, 8(%esp)
	movl	$LC14, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %edi
	testl	%edi, %edi
	je	L120
	cmpb	$0, 28(%edi)
	je	L41
	movsbl	39(%edi), %eax
L42:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC15
	movl	-36(%ebp), %eax
	fstl	(%eax)
	fstl	8(%eax)
	fstl	16(%eax)
	fstl	24(%eax)
	fstpl	32(%eax)
	movl	%esi, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$36, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %edi
	testl	%edi, %edi
	je	L121
	cmpb	$0, 28(%edi)
	je	L44
	movsbl	39(%edi), %eax
L45:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC17
	movl	-36(%ebp), %eax
	fstl	(%eax)
	fstl	8(%eax)
	fstl	16(%eax)
	fstl	24(%eax)
	fstpl	32(%eax)
	movl	%esi, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$35, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %edi
	testl	%edi, %edi
	je	L122
	cmpb	$0, 28(%edi)
	je	L47
	movsbl	39(%edi), %eax
L48:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC19
	movl	-36(%ebp), %eax
	fstl	(%eax)
	fstl	8(%eax)
	fstl	16(%eax)
	fstl	24(%eax)
	fstpl	32(%eax)
	movl	%esi, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$35, 8(%esp)
	movl	$LC20, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %edi
	testl	%edi, %edi
	je	L123
	cmpb	$0, 28(%edi)
	je	L50
	movsbl	39(%edi), %eax
L51:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC0
	movl	-36(%ebp), %eax
	fstl	(%eax)
	fstl	8(%eax)
	fstl	16(%eax)
	fstl	24(%eax)
	fstpl	32(%eax)
	movl	%esi, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$34, 8(%esp)
	movl	$LC21, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %edi
	testl	%edi, %edi
	je	L124
	cmpb	$0, 28(%edi)
	je	L53
	movsbl	39(%edi), %eax
L54:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	movl	-36(%ebp), %eax
	fld1
	fstl	(%eax)
	fstl	8(%eax)
	fstl	16(%eax)
	fstl	24(%eax)
	fstpl	32(%eax)
	movl	%esi, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$36, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %edi
	testl	%edi, %edi
	je	L125
	cmpb	$0, 28(%edi)
	je	L56
	movsbl	39(%edi), %eax
L57:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC15
	movl	-36(%ebp), %eax
	fstl	(%eax)
	fstl	8(%eax)
	fstl	16(%eax)
	fstl	24(%eax)
	fstpl	32(%eax)
	movl	%esi, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$36, 8(%esp)
	movl	$LC23, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %edi
	testl	%edi, %edi
	je	L126
	cmpb	$0, 28(%edi)
	je	L59
	movsbl	39(%edi), %eax
L60:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC17
	movl	-36(%ebp), %eax
	fstl	(%eax)
	fstl	8(%eax)
	fstl	16(%eax)
	fstl	24(%eax)
	fstpl	32(%eax)
	movl	%esi, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$35, 8(%esp)
	movl	$LC24, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %edi
	testl	%edi, %edi
	je	L127
	cmpb	$0, 28(%edi)
	je	L62
	movsbl	39(%edi), %eax
L63:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC19
	movl	-36(%ebp), %eax
	fstl	(%eax)
	fstl	8(%eax)
	fstl	16(%eax)
	fstl	24(%eax)
	fstpl	32(%eax)
	movl	%esi, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$35, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %edi
	testl	%edi, %edi
	je	L128
	cmpb	$0, 28(%edi)
	je	L65
	movsbl	39(%edi), %eax
L66:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC0
	movl	-36(%ebp), %eax
	fstl	(%eax)
	fstl	8(%eax)
	fstl	16(%eax)
	fstl	24(%eax)
	fstpl	32(%eax)
	movl	%esi, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$42, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %edi
	testl	%edi, %edi
	je	L129
	cmpb	$0, 28(%edi)
	je	L68
	movsbl	39(%edi), %eax
L69:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	fldl	(%ebx)
	movl	-36(%ebp), %eax
	fstpl	(%eax)
	fldl	8(%ebx)
	fstpl	8(%eax)
	fldl	16(%ebx)
	fstpl	16(%eax)
	fldl	24(%ebx)
	fstpl	24(%eax)
	fldl	32(%ebx)
	fstpl	32(%eax)
	movl	%esi, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$61, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %eax
	movl	__ZSt4cout+124(%eax), %esi
	testl	%esi, %esi
	je	L130
	cmpb	$0, 28(%esi)
	je	L71
	movsbl	39(%esi), %eax
L72:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	movl	%ebx, (%esp)
	call	__ZdlPv
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L33
	movl	%eax, (%esp)
	call	__ZdlPv
L33:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L35:
	.cfi_restore_state
	movl	%esi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%esi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L36
	movl	$10, (%esp)
	movl	%esi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L36
	.p2align 4,,10
	.p2align 3
L47:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L48
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L48
	.p2align 4,,10
	.p2align 3
L44:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L45
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L45
	.p2align 4,,10
	.p2align 3
L41:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L42
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L42
	.p2align 4,,10
	.p2align 3
L38:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L39
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L39
	.p2align 4,,10
	.p2align 3
L62:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L63
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L63
	.p2align 4,,10
	.p2align 3
L59:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L60
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L60
	.p2align 4,,10
	.p2align 3
L56:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L57
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L57
	.p2align 4,,10
	.p2align 3
L53:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L54
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L54
	.p2align 4,,10
	.p2align 3
L50:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L51
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L51
	.p2align 4,,10
	.p2align 3
L65:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L66
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L66
	.p2align 4,,10
	.p2align 3
L71:
	movl	%esi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%esi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L72
	movl	$10, (%esp)
	movl	%esi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L72
	.p2align 4,,10
	.p2align 3
L68:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	24(%eax), %edx
	movl	$10, %eax
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L69
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L69
L118:
	call	__ZSt16__throw_bad_castv
L130:
	call	__ZSt16__throw_bad_castv
L129:
	call	__ZSt16__throw_bad_castv
L127:
	call	__ZSt16__throw_bad_castv
L126:
	call	__ZSt16__throw_bad_castv
L125:
	call	__ZSt16__throw_bad_castv
L124:
	call	__ZSt16__throw_bad_castv
L123:
	call	__ZSt16__throw_bad_castv
L128:
	call	__ZSt16__throw_bad_castv
L120:
	call	__ZSt16__throw_bad_castv
L119:
	call	__ZSt16__throw_bad_castv
L122:
	call	__ZSt16__throw_bad_castv
L121:
	call	__ZSt16__throw_bad_castv
LEHE9:
L96:
	movl	%eax, %ebx
	jmp	L75
L95:
	movl	%eax, %ebx
	jmp	L76
L93:
	movl	%eax, %ebx
	jmp	L78
L94:
	movl	%eax, %ebx
	jmp	L77
L97:
	movl	%eax, %esi
	jmp	L74
	.section	.gcc_except_table,"w"
LLSDA3777:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3777-LLSDACSB3777
LLSDACSB3777:
	.uleb128 LEHB4-LFB3777
	.uleb128 LEHE4-LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB5-LFB3777
	.uleb128 LEHE5-LEHB5
	.uleb128 L93-LFB3777
	.uleb128 0
	.uleb128 LEHB6-LFB3777
	.uleb128 LEHE6-LEHB6
	.uleb128 L94-LFB3777
	.uleb128 0
	.uleb128 LEHB7-LFB3777
	.uleb128 LEHE7-LEHB7
	.uleb128 L95-LFB3777
	.uleb128 0
	.uleb128 LEHB8-LFB3777
	.uleb128 LEHE8-LEHB8
	.uleb128 L96-LFB3777
	.uleb128 0
	.uleb128 LEHB9-LFB3777
	.uleb128 LEHE9-LEHB9
	.uleb128 L97-LFB3777
	.uleb128 0
LLSDACSE3777:
	.text
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDAC3777
	.def	__Z14test_no_policyv.cold;	.scl	3;	.type	32;	.endef
__Z14test_no_policyv.cold:
LFSB3777:
L74:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebx, (%esp)
	movl	%esi, %ebx
	call	__ZdlPv
L75:
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
L76:
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
L77:
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
L78:
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L79
	movl	%eax, (%esp)
	call	__ZdlPv
L79:
	movl	%ebx, (%esp)
LEHB10:
	call	__Unwind_Resume
LEHE10:
	.cfi_endproc
LFE3777:
	.section	.gcc_except_table,"w"
LLSDAC3777:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSEC3777-LLSDACSBC3777
LLSDACSBC3777:
	.uleb128 LEHB10-LCOLDB27
	.uleb128 LEHE10-LEHB10
	.uleb128 0
	.uleb128 0
LLSDACSEC3777:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
LCOLDE27:
	.text
LHOTE27:
	.section	.text.startup,"x"
	.p2align 4
	.def	__GLOBAL__sub_I__Z14test_no_policyv;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I__Z14test_no_policyv:
LFB4393:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$__ZStL8__ioinit, %ecx
	call	__ZNSt8ios_base4InitC1Ev
	movl	$___tcf_0, (%esp)
	call	_atexit
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE4393:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__sub_I__Z14test_no_policyv
.lcomm __ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1084227584
	.align 4
LC1:
	.long	1101004800
	.align 4
LC3:
	.long	1232348160
	.align 4
LC10:
	.long	1092616192
	.align 4
LC15:
	.long	1073741824
	.align 4
LC17:
	.long	1077936128
	.align 4
LC19:
	.long	1082130432
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	__Znwj;	.scl	2;	.type	32;	.endef
	.def	__ZNSo9_M_insertImEERSoT_;	.scl	2;	.type	32;	.endef
	.def	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i;	.scl	2;	.type	32;	.endef
	.def	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	__ZdlPv;	.scl	2;	.type	32;	.endef
	.def	__Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	__ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	__ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	__ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
