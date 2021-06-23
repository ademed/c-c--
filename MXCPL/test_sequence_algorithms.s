	.file	"test_sequence_algorithms.cpp"
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	__ZNKSt5ctypeIcE8do_widenEc
	.def	__ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
__ZNKSt5ctypeIcE8do_widenEc:
LFB1600:
	.cfi_startproc
	movzbl	4(%esp), %eax
	ret	$4
	.cfi_endproc
LFE1600:
	.text
	.p2align 4
	.def	___tcf_0;	.scl	3;	.type	32;	.endef
___tcf_0:
LFB4387:
	.cfi_startproc
	movl	$__ZStL8__ioinit, %ecx
	jmp	__ZNSt8ios_base4InitD1Ev
	.cfi_endproc
LFE4387:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC2:
	.ascii "   \0"
	.def	___divdi3;	.scl	2;	.type	32;	.endef
LC5:
	.ascii " seconds\0"
	.section	.text.unlikely,"x"
LCOLDB7:
	.section	.text.startup,"x"
LHOTB7:
	.p2align 4
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB3774:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3774
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
	subl	$56, %esp
	call	___main
	movl	$80000000, (%esp)
LEHB0:
	call	__Znwj
LEHE0:
	vmovapd	LC0, %ymm0
	movl	%eax, %edi
	movl	%eax, %ebx
	leal	80000000(%eax), %esi
L5:
	vmovups	%xmm0, (%eax)
	vextractf128	$0x1, %ymm0, 16(%eax)
	vextractf128	$0x1, %ymm0, 48(%eax)
	vextractf128	$0x1, %ymm0, 80(%eax)
	vmovups	%xmm0, 32(%eax)
	vextractf128	$0x1, %ymm0, 112(%eax)
	vextractf128	$0x1, %ymm0, 144(%eax)
	vextractf128	$0x1, %ymm0, 176(%eax)
	vmovups	%xmm0, 64(%eax)
	addl	$256, %eax
	vextractf128	$0x1, %ymm0, -48(%eax)
	vextractf128	$0x1, %ymm0, -16(%eax)
	vmovups	%xmm0, -160(%eax)
	vmovups	%xmm0, -128(%eax)
	vmovups	%xmm0, -96(%eax)
	vmovups	%xmm0, -64(%eax)
	vmovups	%xmm0, -32(%eax)
	cmpl	%esi, %eax
	jne	L5
	movl	$80000000, (%esp)
	vzeroupper
LEHB1:
	call	__Znwj
LEHE1:
	movl	%eax, -36(%ebp)
	leal	80000000(%eax), %edx
	vmovapd	LC1, %ymm1
L6:
	vmovups	%xmm1, (%eax)
	vextractf128	$0x1, %ymm1, 16(%eax)
	vextractf128	$0x1, %ymm1, 48(%eax)
	vextractf128	$0x1, %ymm1, 80(%eax)
	vmovups	%xmm1, 32(%eax)
	vextractf128	$0x1, %ymm1, 112(%eax)
	vextractf128	$0x1, %ymm1, 144(%eax)
	vextractf128	$0x1, %ymm1, 176(%eax)
	vmovups	%xmm1, 64(%eax)
	addl	$256, %eax
	vextractf128	$0x1, %ymm1, -48(%eax)
	vextractf128	$0x1, %ymm1, -16(%eax)
	vmovups	%xmm1, -160(%eax)
	vmovups	%xmm1, -128(%eax)
	vmovups	%xmm1, -96(%eax)
	vmovups	%xmm1, -64(%eax)
	vmovups	%xmm1, -32(%eax)
	cmpl	%edx, %eax
	jne	L6
	movl	-36(%ebp), %ecx
	movl	%edi, %eax
	andl	$31, %eax
	andl	$31, %ecx
	movl	%eax, (%esp)
	movl	%ecx, -48(%ebp)
	movl	$__ZSt4cout, %ecx
	vzeroupper
LEHB2:
	call	__ZNSo9_M_insertImEERSoT_
	subl	$4, %esp
	movl	%eax, -40(%ebp)
	movl	$3, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	-48(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, (%esp)
	call	__ZNSo9_M_insertImEERSoT_
	subl	$4, %esp
	movl	%eax, (%esp)
	call	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movl	%edx, -44(%ebp)
	movl	%esi, %edx
	subl	%edi, %edx
	movl	%eax, -48(%ebp)
	subl	$8, %edx
	shrl	$3, %edx
	addl	$1, %edx
	andl	$7, %edx
	je	L7
	cmpl	$1, %edx
	je	L50
	cmpl	$2, %edx
	je	L51
	cmpl	$3, %edx
	je	L52
	cmpl	$4, %edx
	je	L53
	cmpl	$5, %edx
	je	L54
	cmpl	$6, %edx
	jne	L68
L55:
	fld1
	addl	$8, %ebx
	fstpl	-8(%ebx)
L54:
	fld1
	addl	$8, %ebx
	fstpl	-8(%ebx)
L53:
	fld1
	addl	$8, %ebx
	fstpl	-8(%ebx)
L52:
	fld1
	addl	$8, %ebx
	fstpl	-8(%ebx)
L51:
	fld1
	addl	$8, %ebx
	fstpl	-8(%ebx)
L50:
	fld1
	addl	$8, %ebx
	fstpl	-8(%ebx)
	cmpl	%esi, %ebx
	je	L65
	.p2align 4,,10
	.p2align 3
L7:
	fld1
	addl	$64, %ebx
	fstl	-64(%ebx)
	fstl	-56(%ebx)
	fstl	-48(%ebx)
	fstl	-40(%ebx)
	fstl	-32(%ebx)
	fstl	-24(%ebx)
	fstl	-16(%ebx)
	fstpl	-8(%ebx)
	cmpl	%esi, %ebx
	jne	L7
L65:
	call	__ZNSt6chrono3_V212system_clock3nowEv
	subl	-48(%ebp), %eax
	sbbl	-44(%ebp), %edx
	movl	$1000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	$__ZSt4cout, %ecx
	vmovd	%eax, %xmm3
	vmovd	%edx, %xmm2
	vpunpckldq	%xmm2, %xmm3, %xmm4
	vmovq	%xmm4, -32(%ebp)
	fildq	-32(%ebp)
	fdivs	LC4
	fstpl	(%esp)
	call	__ZNSo9_M_insertIdEERSoT_
	subl	$8, %esp
	movl	%eax, %esi
	movl	$8, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	%esi, (%esp)
	call	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
LEHE2:
	movl	-36(%ebp), %ecx
	movl	%ecx, (%esp)
	call	__ZdlPv
	movl	%edi, (%esp)
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
L68:
	.cfi_restore_state
	fld1
	leal	8(%edi), %ebx
	fstpl	(%edi)
	jmp	L55
L10:
	movl	%eax, %ebx
	vzeroupper
	jmp	L9
L11:
	movl	%eax, %ebx
	jmp	L8
	.def	___gxx_personality_v0;	.scl	2;	.type	32;	.endef
	.section	.gcc_except_table,"w"
LLSDA3774:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3774-LLSDACSB3774
LLSDACSB3774:
	.uleb128 LEHB0-LFB3774
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB1-LFB3774
	.uleb128 LEHE1-LEHB1
	.uleb128 L10-LFB3774
	.uleb128 0
	.uleb128 LEHB2-LFB3774
	.uleb128 LEHE2-LEHB2
	.uleb128 L11-LFB3774
	.uleb128 0
LLSDACSE3774:
	.section	.text.startup,"x"
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDAC3774
	.def	_main.cold;	.scl	3;	.type	32;	.endef
_main.cold:
LFSB3774:
L8:
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	vzeroupper
	call	__ZdlPv
L9:
	movl	%edi, (%esp)
	call	__ZdlPv
	movl	%ebx, (%esp)
LEHB3:
	call	__Unwind_Resume
LEHE3:
	.cfi_endproc
LFE3774:
	.section	.gcc_except_table,"w"
LLSDAC3774:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSEC3774-LLSDACSBC3774
LLSDACSBC3774:
	.uleb128 LEHB3-LCOLDB7
	.uleb128 LEHE3-LEHB3
	.uleb128 0
	.uleb128 0
LLSDACSEC3774:
	.section	.text.unlikely,"x"
	.section	.text.startup,"x"
	.section	.text.unlikely,"x"
LCOLDE7:
	.section	.text.startup,"x"
LHOTE7:
	.section .rdata,"dr"
LC8:
	.ascii "v = [ \0"
LC9:
	.ascii " ]\0"
LC10:
	.ascii " \0"
	.section	.text$_Z12print_vectorISt6vectorIdSaIdEEEvRKT_,"x"
	.linkonce discard
	.p2align 4
	.globl	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	.def	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_;	.scl	2;	.type	32;	.endef
__Z12print_vectorISt6vectorIdSaIdEEEvRKT_:
LFB4068:
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
	movl	$LC8, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	4(%ebx), %esi
	movl	(%ebx), %ebx
	cmpl	%esi, %ebx
	je	L74
	movl	%esi, %eax
	subl	%ebx, %eax
	subl	$8, %eax
	shrl	$3, %eax
	addl	$1, %eax
	andl	$3, %eax
	je	L73
	cmpl	$1, %eax
	je	L90
	cmpl	$2, %eax
	je	L91
	vmovsd	(%ebx), %xmm6
	movl	$__ZSt4cout, %ecx
	addl	$8, %ebx
	vmovsd	%xmm6, (%esp)
	call	__ZNSo9_M_insertIdEERSoT_
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	$1, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
L91:
	vmovsd	(%ebx), %xmm5
	movl	$__ZSt4cout, %ecx
	addl	$8, %ebx
	vmovsd	%xmm5, (%esp)
	call	__ZNSo9_M_insertIdEERSoT_
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	$1, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
L90:
	vmovsd	(%ebx), %xmm4
	movl	$__ZSt4cout, %ecx
	addl	$8, %ebx
	vmovsd	%xmm4, (%esp)
	call	__ZNSo9_M_insertIdEERSoT_
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	$1, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	cmpl	%ebx, %esi
	je	L74
L73:
	vmovsd	(%ebx), %xmm0
	movl	$__ZSt4cout, %ecx
	addl	$32, %ebx
	vmovsd	%xmm0, (%esp)
	call	__ZNSo9_M_insertIdEERSoT_
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	$1, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmovsd	-24(%ebx), %xmm1
	movl	$__ZSt4cout, %ecx
	vmovsd	%xmm1, (%esp)
	call	__ZNSo9_M_insertIdEERSoT_
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	$1, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmovsd	-16(%ebx), %xmm2
	movl	$__ZSt4cout, %ecx
	vmovsd	%xmm2, (%esp)
	call	__ZNSo9_M_insertIdEERSoT_
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	$1, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmovsd	-8(%ebx), %xmm3
	movl	$__ZSt4cout, %ecx
	vmovsd	%xmm3, (%esp)
	call	__ZNSo9_M_insertIdEERSoT_
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	$1, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	cmpl	%ebx, %esi
	jne	L73
L74:
	movl	$2, 8(%esp)
	movl	$LC9, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %edx
	movl	-12(%edx), %ecx
	movl	__ZSt4cout+124(%ecx), %esi
	testl	%esi, %esi
	je	L99
	cmpb	$0, 28(%esi)
	je	L75
	movsbl	39(%esi), %eax
L76:
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
L75:
	.cfi_restore_state
	movl	%esi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%esi), %ebx
	movl	$10, %eax
	movl	24(%ebx), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L76
	movl	$10, (%esp)
	movl	%esi, %ecx
	call	*%edx
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movsbl	%al, %eax
	jmp	L76
L99:
	call	__ZSt16__throw_bad_castv
	.cfi_endproc
LFE4068:
	.section .rdata,"dr"
	.align 4
LC13:
	.ascii "=============================================================\0"
	.align 4
LC14:
	.ascii "Pass a vector lvalue and an rvalue\0"
	.align 4
LC16:
	.ascii "Pass a iterator rvalue and an rvalue\0"
	.align 4
LC19:
	.ascii "Pass a iterator lvalue and an rvalue\0"
	.align 4
LC22:
	.ascii "Pass a pointer lvalue and an rvalue\0"
	.align 4
LC25:
	.ascii "Pass a pointer rvalue and an rvalue\0"
	.align 4
LC27:
	.ascii "Pass a vector lvalue and an lvalue\0"
	.align 4
LC28:
	.ascii "Pass a iterator rvalue and an lvalue\0"
	.align 4
LC29:
	.ascii "Pass a iterator lvalue and an lvalue\0"
	.align 4
LC30:
	.ascii "Pass a pointer lvalue and an lvalue\0"
	.align 4
LC31:
	.ascii "Pass a pointer rvalue and an lvalue\0"
	.align 4
LC32:
	.ascii "Pass a pointer rvalue and a pointer rvalue\0"
	.section	.text.unlikely,"x"
LCOLDB33:
	.text
LHOTB33:
	.p2align 4
	.globl	__Z14test_no_policyv
	.def	__Z14test_no_policyv;	.scl	2;	.type	32;	.endef
__Z14test_no_policyv:
LFB3773:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3773
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-32, %esp
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
	subl	$56, %esp
	movl	$0, -36(%ebp)
	movl	$40, (%esp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
LEHB4:
	call	__Znwj
LEHE4:
	leal	4(%eax), %edi
	leal	40(%eax), %ebx
	movl	%eax, -36(%ebp)
	andl	$-4, %edi
	movl	%ebx, -28(%ebp)
	movl	$0, (%eax)
	movl	$0, 36(%eax)
	subl	%edi, %eax
	leal	40(%eax), %ecx
	xorl	%eax, %eax
	shrl	$2, %ecx
	rep stosl
	movl	$40, (%esp)
	movl	%ebx, -32(%ebp)
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
	flds	LC12
	movl	%eax, %esi
	vmovapd	LC11, %ymm0
	vmovups	%xmm0, (%eax)
	vextractf128	$0x1, %ymm0, 16(%eax)
	fstpl	32(%eax)
	movl	$61, 8(%esp)
	movl	$LC13, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	vzeroupper
LEHB9:
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %edx
	movl	-12(%edx), %ebx
	movl	__ZSt4cout+124(%ebx), %edi
	testl	%edi, %edi
	je	L188
	cmpb	$0, 28(%edi)
	je	L102
	movsbl	39(%edi), %eax
L103:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	leal	-36(%ebp), %ebx
	movl	%ebx, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$34, 8(%esp)
	movl	$LC14, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %edi
	movl	-12(%edi), %ecx
	movl	__ZSt4cout+124(%ecx), %edi
	testl	%edi, %edi
	je	L189
	cmpb	$0, 28(%edi)
	je	L105
	movsbl	39(%edi), %eax
L106:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	vmovapd	LC15, %xmm1
	movl	-36(%ebp), %ecx
	fld1
	vmovapd	LC15, %ymm2
	fstpl	32(%ecx)
	vmovups	%xmm1, (%ecx)
	vextractf128	$0x1, %ymm2, 16(%ecx)
	movl	%ebx, (%esp)
	vzeroupper
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$36, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %edi
	movl	-12(%edi), %edx
	movl	__ZSt4cout+124(%edx), %edi
	testl	%edi, %edi
	je	L190
	cmpb	$0, 28(%edi)
	je	L108
	movsbl	39(%edi), %ecx
L109:
	movl	%ecx, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC18
	movl	-36(%ebp), %edi
	vmovapd	LC17, %xmm3
	vmovapd	LC17, %ymm4
	fstpl	32(%edi)
	vextractf128	$0x1, %ymm4, 16(%edi)
	vmovups	%xmm3, (%edi)
	movl	%ebx, (%esp)
	vzeroupper
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$36, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %edx
	movl	__ZSt4cout+124(%edx), %edi
	testl	%edi, %edi
	je	L191
	cmpb	$0, 28(%edi)
	je	L111
	movsbl	39(%edi), %eax
L112:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC21
	movl	-36(%ebp), %edi
	vmovapd	LC20, %xmm5
	vmovapd	LC20, %ymm6
	fstpl	32(%edi)
	vextractf128	$0x1, %ymm6, 16(%edi)
	vmovups	%xmm5, (%edi)
	movl	%ebx, (%esp)
	vzeroupper
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$35, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %ecx
	movl	-12(%ecx), %edx
	movl	__ZSt4cout+124(%edx), %edi
	testl	%edi, %edi
	je	L192
	cmpb	$0, 28(%edi)
	je	L114
	movsbl	39(%edi), %ecx
L115:
	movl	%ecx, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC24
	movl	-36(%ebp), %edi
	vmovapd	LC23, %xmm7
	vmovapd	LC23, %ymm0
	fstpl	32(%edi)
	vextractf128	$0x1, %ymm0, 16(%edi)
	vmovups	%xmm7, (%edi)
	movl	%ebx, (%esp)
	vzeroupper
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$35, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %edx
	movl	__ZSt4cout+124(%edx), %edi
	testl	%edi, %edi
	je	L193
	cmpb	$0, 28(%edi)
	je	L117
	movsbl	39(%edi), %eax
L118:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC26
	movl	-36(%ebp), %edi
	vmovapd	LC0, %xmm1
	vmovapd	LC0, %ymm2
	fstpl	32(%edi)
	vextractf128	$0x1, %ymm2, 16(%edi)
	vmovups	%xmm1, (%edi)
	movl	%ebx, (%esp)
	vzeroupper
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$34, 8(%esp)
	movl	$LC27, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %ecx
	movl	-12(%ecx), %edx
	movl	__ZSt4cout+124(%edx), %edi
	testl	%edi, %edi
	je	L194
	cmpb	$0, 28(%edi)
	je	L120
	movsbl	39(%edi), %ecx
L121:
	movl	%ecx, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	vmovapd	LC15, %xmm3
	movl	-36(%ebp), %edi
	fld1
	vmovapd	LC15, %ymm4
	fstpl	32(%edi)
	vmovups	%xmm3, (%edi)
	vextractf128	$0x1, %ymm4, 16(%edi)
	movl	%ebx, (%esp)
	vzeroupper
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$36, 8(%esp)
	movl	$LC28, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %edx
	movl	__ZSt4cout+124(%edx), %edi
	testl	%edi, %edi
	je	L195
	cmpb	$0, 28(%edi)
	je	L123
	movsbl	39(%edi), %eax
L124:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC18
	movl	-36(%ebp), %edi
	vmovapd	LC17, %xmm5
	vmovapd	LC17, %ymm6
	fstpl	32(%edi)
	vextractf128	$0x1, %ymm6, 16(%edi)
	vmovups	%xmm5, (%edi)
	movl	%ebx, (%esp)
	vzeroupper
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$36, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %ecx
	movl	-12(%ecx), %edx
	movl	__ZSt4cout+124(%edx), %edi
	testl	%edi, %edi
	je	L196
	cmpb	$0, 28(%edi)
	je	L126
	movsbl	39(%edi), %ecx
L127:
	movl	%ecx, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC21
	movl	-36(%ebp), %edi
	vmovapd	LC20, %xmm7
	vmovapd	LC20, %ymm0
	fstpl	32(%edi)
	vextractf128	$0x1, %ymm0, 16(%edi)
	vmovups	%xmm7, (%edi)
	movl	%ebx, (%esp)
	vzeroupper
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$35, 8(%esp)
	movl	$LC30, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %edx
	movl	__ZSt4cout+124(%edx), %edi
	testl	%edi, %edi
	je	L197
	cmpb	$0, 28(%edi)
	je	L129
	movsbl	39(%edi), %eax
L130:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC24
	movl	-36(%ebp), %edi
	vmovapd	LC23, %xmm1
	vmovapd	LC23, %ymm2
	fstpl	32(%edi)
	vextractf128	$0x1, %ymm2, 16(%edi)
	vmovups	%xmm1, (%edi)
	movl	%ebx, (%esp)
	vzeroupper
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$35, 8(%esp)
	movl	$LC31, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %ecx
	movl	-12(%ecx), %edx
	movl	__ZSt4cout+124(%edx), %edi
	testl	%edi, %edi
	je	L198
	cmpb	$0, 28(%edi)
	je	L132
	movsbl	39(%edi), %ecx
L133:
	movl	%ecx, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	flds	LC26
	movl	-36(%ebp), %edi
	vmovapd	LC0, %xmm3
	vmovapd	LC0, %ymm4
	fstpl	32(%edi)
	vextractf128	$0x1, %ymm4, 16(%edi)
	vmovups	%xmm3, (%edi)
	movl	%ebx, (%esp)
	vzeroupper
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$42, 8(%esp)
	movl	$LC32, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %eax
	movl	-12(%eax), %edx
	movl	__ZSt4cout+124(%edx), %edi
	testl	%edi, %edi
	je	L199
	cmpb	$0, 28(%edi)
	je	L135
	movsbl	39(%edi), %eax
L136:
	movl	%eax, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	movl	-36(%ebp), %edi
	leal	31(%edi), %ecx
	subl	%esi, %ecx
	cmpl	$62, %ecx
	jbe	L137
	vmovupd	(%esi), %xmm5
	vinsertf128	$0x1, 16(%esi), %ymm5, %ymm6
	vmovups	%xmm6, (%edi)
	vextractf128	$0x1, %ymm6, 16(%edi)
	vmovsd	32(%esi), %xmm7
	vmovsd	%xmm7, 32(%edi)
	vzeroupper
L138:
	movl	%ebx, (%esp)
	call	__Z12print_vectorISt6vectorIdSaIdEEEvRKT_
	movl	$61, 8(%esp)
	movl	$LC13, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	__ZSt4cout, %ebx
	movl	-12(%ebx), %edx
	movl	__ZSt4cout+124(%edx), %edi
	testl	%edi, %edi
	je	L200
	cmpb	$0, 28(%edi)
	je	L140
	movsbl	39(%edi), %ecx
L141:
	movl	%ecx, (%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo3putEc
	subl	$4, %esp
	movl	%eax, %ecx
	call	__ZNSo5flushEv
	movl	%esi, (%esp)
	call	__ZdlPv
	movl	-52(%ebp), %esi
	movl	%esi, (%esp)
	call	__ZdlPv
	movl	-48(%ebp), %edx
	movl	%edx, (%esp)
	call	__ZdlPv
	movl	-44(%ebp), %edi
	movl	%edi, (%esp)
	call	__ZdlPv
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L186
	movl	%eax, (%esp)
	call	__ZdlPv
L186:
	leal	-16(%ebp), %esp
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
	.p2align 4,,10
	.p2align 3
L102:
	.cfi_restore_state
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %ecx
	movl	$10, %eax
	movl	24(%ecx), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L103
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L103
	.p2align 4,,10
	.p2align 3
L114:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	$10, %ecx
	movl	24(%eax), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L115
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %ecx
	jmp	L115
	.p2align 4,,10
	.p2align 3
L111:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %ecx
	movl	$10, %eax
	movl	24(%ecx), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L112
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L112
	.p2align 4,,10
	.p2align 3
L108:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	$10, %ecx
	movl	24(%eax), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L109
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %ecx
	jmp	L109
	.p2align 4,,10
	.p2align 3
L105:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %edx
	movl	$10, %eax
	movl	24(%edx), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L106
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L106
	.p2align 4,,10
	.p2align 3
L129:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %ecx
	movl	$10, %eax
	movl	24(%ecx), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L130
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L130
	.p2align 4,,10
	.p2align 3
L126:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	$10, %ecx
	movl	24(%eax), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L127
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %ecx
	jmp	L127
	.p2align 4,,10
	.p2align 3
L123:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %ecx
	movl	$10, %eax
	movl	24(%ecx), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L124
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L124
	.p2align 4,,10
	.p2align 3
L120:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	$10, %ecx
	movl	24(%eax), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L121
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %ecx
	jmp	L121
	.p2align 4,,10
	.p2align 3
L117:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %ecx
	movl	$10, %eax
	movl	24(%ecx), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L118
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L118
	.p2align 4,,10
	.p2align 3
L132:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	$10, %ecx
	movl	24(%eax), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L133
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %ecx
	jmp	L133
	.p2align 4,,10
	.p2align 3
L135:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %ecx
	movl	$10, %eax
	movl	24(%ecx), %edx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %edx
	je	L136
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%edx
	subl	$4, %esp
	movsbl	%al, %eax
	jmp	L136
	.p2align 4,,10
	.p2align 3
L140:
	movl	%edi, %ecx
	call	__ZNKSt5ctypeIcE13_M_widen_initEv
	movl	(%edi), %eax
	movl	$10, %ecx
	movl	24(%eax), %ebx
	cmpl	$__ZNKSt5ctypeIcE8do_widenEc, %ebx
	je	L141
	movl	$10, (%esp)
	movl	%edi, %ecx
	call	*%ebx
	subl	$4, %esp
	movsbl	%al, %ecx
	jmp	L141
	.p2align 4,,10
	.p2align 3
L137:
	vmovsd	(%esi), %xmm0
	vmovsd	%xmm0, (%edi)
	vmovsd	8(%esi), %xmm1
	vmovsd	%xmm1, 8(%edi)
	vmovsd	16(%esi), %xmm2
	vmovsd	%xmm2, 16(%edi)
	vmovsd	24(%esi), %xmm3
	vmovsd	%xmm3, 24(%edi)
	vmovsd	32(%esi), %xmm4
	vmovsd	%xmm4, 32(%edi)
	jmp	L138
L200:
	call	__ZSt16__throw_bad_castv
L196:
	call	__ZSt16__throw_bad_castv
L195:
	call	__ZSt16__throw_bad_castv
L191:
	call	__ZSt16__throw_bad_castv
L190:
	call	__ZSt16__throw_bad_castv
L188:
	call	__ZSt16__throw_bad_castv
L192:
	call	__ZSt16__throw_bad_castv
L194:
	call	__ZSt16__throw_bad_castv
L193:
	call	__ZSt16__throw_bad_castv
L189:
	call	__ZSt16__throw_bad_castv
L197:
	call	__ZSt16__throw_bad_castv
L198:
	call	__ZSt16__throw_bad_castv
L199:
	call	__ZSt16__throw_bad_castv
LEHE9:
L162:
	movl	%eax, %ebx
	vzeroupper
	jmp	L147
L164:
	movl	%eax, %ebx
	vzeroupper
	jmp	L145
L166:
	movl	%eax, %ebx
	jmp	L143
L163:
	movl	%eax, %ebx
	vzeroupper
	jmp	L146
L165:
	movl	%eax, %ebx
	vzeroupper
	jmp	L144
	.section	.gcc_except_table,"w"
LLSDA3773:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3773-LLSDACSB3773
LLSDACSB3773:
	.uleb128 LEHB4-LFB3773
	.uleb128 LEHE4-LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB5-LFB3773
	.uleb128 LEHE5-LEHB5
	.uleb128 L162-LFB3773
	.uleb128 0
	.uleb128 LEHB6-LFB3773
	.uleb128 LEHE6-LEHB6
	.uleb128 L163-LFB3773
	.uleb128 0
	.uleb128 LEHB7-LFB3773
	.uleb128 LEHE7-LEHB7
	.uleb128 L164-LFB3773
	.uleb128 0
	.uleb128 LEHB8-LFB3773
	.uleb128 LEHE8-LEHB8
	.uleb128 L165-LFB3773
	.uleb128 0
	.uleb128 LEHB9-LFB3773
	.uleb128 LEHE9-LEHB9
	.uleb128 L166-LFB3773
	.uleb128 0
LLSDACSE3773:
	.text
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDAC3773
	.def	__Z14test_no_policyv.cold;	.scl	3;	.type	32;	.endef
__Z14test_no_policyv.cold:
LFSB3773:
L143:
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	movl	%esi, (%esp)
	vzeroupper
	call	__ZdlPv
L144:
	movl	-52(%ebp), %ecx
	movl	%ecx, (%esp)
	call	__ZdlPv
L145:
	movl	-48(%ebp), %esi
	movl	%esi, (%esp)
	call	__ZdlPv
L146:
	movl	-44(%ebp), %edx
	movl	%edx, (%esp)
	call	__ZdlPv
L147:
	movl	-36(%ebp), %edi
	testl	%edi, %edi
	je	L148
	movl	%edi, (%esp)
	call	__ZdlPv
L148:
	movl	%ebx, (%esp)
LEHB10:
	call	__Unwind_Resume
LEHE10:
	.cfi_endproc
LFE3773:
	.section	.gcc_except_table,"w"
LLSDAC3773:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSEC3773-LLSDACSBC3773
LLSDACSBC3773:
	.uleb128 LEHB10-LCOLDB33
	.uleb128 LEHE10-LEHB10
	.uleb128 0
	.uleb128 0
LLSDACSEC3773:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
LCOLDE33:
	.text
LHOTE33:
	.section	.text.startup,"x"
	.p2align 4
	.def	__GLOBAL__sub_I__Z14test_no_policyv;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I__Z14test_no_policyv:
LFB4388:
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
LFE4388:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__sub_I__Z14test_no_policyv
.lcomm __ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 32
LC0:
	.long	0
	.long	1075052544
	.long	0
	.long	1075052544
	.long	0
	.long	1075052544
	.long	0
	.long	1075052544
	.align 32
LC1:
	.long	0
	.long	1077149696
	.long	0
	.long	1077149696
	.long	0
	.long	1077149696
	.long	0
	.long	1077149696
	.align 4
LC4:
	.long	1232348160
	.align 32
LC11:
	.long	0
	.long	1076101120
	.long	0
	.long	1076101120
	.long	0
	.long	1076101120
	.long	0
	.long	1076101120
	.align 4
LC12:
	.long	1092616192
	.align 32
LC15:
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
	.align 32
LC17:
	.long	0
	.long	1073741824
	.long	0
	.long	1073741824
	.long	0
	.long	1073741824
	.long	0
	.long	1073741824
	.align 4
LC18:
	.long	1073741824
	.align 32
LC20:
	.long	0
	.long	1074266112
	.long	0
	.long	1074266112
	.long	0
	.long	1074266112
	.long	0
	.long	1074266112
	.align 4
LC21:
	.long	1077936128
	.align 32
LC23:
	.long	0
	.long	1074790400
	.long	0
	.long	1074790400
	.long	0
	.long	1074790400
	.long	0
	.long	1074790400
	.align 4
LC24:
	.long	1082130432
	.align 4
LC26:
	.long	1084227584
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	__Znwj;	.scl	2;	.type	32;	.endef
	.def	__ZNSo9_M_insertImEERSoT_;	.scl	2;	.type	32;	.endef
	.def	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i;	.scl	2;	.type	32;	.endef
	.def	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	__ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	__ZdlPv;	.scl	2;	.type	32;	.endef
	.def	__Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	__ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	__ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	__ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	__ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
