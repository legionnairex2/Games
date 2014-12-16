	.reference	___bb_appstub_appstub
	.reference	___bb_audio_audio
	.reference	___bb_bank_bank
	.reference	___bb_bankstream_bankstream
	.reference	___bb_basic_basic
	.reference	___bb_blitz_blitz
	.reference	___bb_bmploader_bmploader
	.reference	___bb_d3d7max2d_d3d7max2d
	.reference	___bb_d3d9max2d_d3d9max2d
	.reference	___bb_data_data
	.reference	___bb_directsoundaudio_directsoundaudio
	.reference	___bb_dxgraphics_dxgraphics
	.reference	___bb_event_event
	.reference	___bb_eventqueue_eventqueue
	.reference	___bb_font_font
	.reference	___bb_freeaudioaudio_freeaudioaudio
	.reference	___bb_freejoy_freejoy
	.reference	___bb_freeprocess_freeprocess
	.reference	___bb_freetypefont_freetypefont
	.reference	___bb_glew_glew
	.reference	___bb_glgraphics_glgraphics
	.reference	___bb_glmax2d_glmax2d
	.reference	___bb_gnet_gnet
	.reference	___bb_jpgloader_jpgloader
	.reference	___bb_macos_macos
	.reference	___bb_map_map
	.reference	___bb_maxlua_maxlua
	.reference	___bb_maxutil_maxutil
	.reference	___bb_oggloader_oggloader
	.reference	___bb_openalaudio_openalaudio
	.reference	___bb_pngloader_pngloader
	.reference	___bb_retro_retro
	.reference	___bb_tgaloader_tgaloader
	.reference	___bb_threads_threads
	.reference	___bb_timer_timer
	.reference	___bb_wavloader_wavloader
	.reference	___bb_win32_win32
	.reference	_bbEnd
	.reference	_bbNullObject
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
	.reference	_bbStringClass
	.reference	_brl_blitz_NullObjectError
	.reference	_brl_graphics_Flip
	.reference	_brl_graphics_Graphics
	.reference	_brl_max2d_DrawImage
	.reference	_brl_max2d_LoadImage
	.reference	_brl_max2d_LockImage
	.reference	_brl_polledinput_WaitKey
	.globl	__bb_main
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	sub	$20,%esp
	cmpl	$0,_46
	je	_47
	mov	$0,%eax
	add	$20,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_47:
	movl	$1,_46
	movl	$_bbNullObject,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_40,(%esp)
	calll	*_bbOnDebugEnterScope
	call	___bb_blitz_blitz
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_d3d9max2d_d3d9max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_dxgraphics_dxgraphics
	call	___bb_event_event
	call	___bb_eventqueue_eventqueue
	call	___bb_font_font
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_glgraphics_glgraphics
	call	___bb_glmax2d_glmax2d
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_map_map
	call	___bb_maxlua_maxlua
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_threads_threads
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	call	___bb_win32_win32
	movl	$_13,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,4(%esp)
	movl	$_7,(%esp)
	call	_brl_max2d_LoadImage
	movl	%eax,-4(%ebp)
	movl	$_16,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_max2d_LockImage
	mov	%eax,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_18
	call	_brl_blitz_NullObjectError
_18:
	movl	8(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	$_20,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-12(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_23
	call	_brl_blitz_NullObjectError
_23:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_25
	call	_brl_blitz_NullObjectError
_25:
	movl	8(%esi),%eax
	imull	12(%ebx),%eax
	mov	%eax,%ebx
	jmp	_26
_10:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_32,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_28,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	cmpl	$-16777216,(%edx,%eax,4)
	jne	_29
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_31,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_30,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,(%edx,%eax,4)
	calll	*_bbOnDebugLeaveScope
_29:
	calll	*_bbOnDebugLeaveScope
_8:
	addl	$1,-12(%ebp)
_26:
	cmpl	%ebx,-12(%ebp)
	jl	_10
_9:
	movl	$_35,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$480,4(%esp)
	movl	$640,(%esp)
	call	_brl_graphics_Graphics
	movl	$_36,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,12(%esp)
	fldz
	fstps	8(%esp)
	fldz
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_max2d_DrawImage
	movl	$_37,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
	movl	$_38,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_polledinput_WaitKey
	movl	$_39,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_bbEnd
	mov	$0,%ebx
	jmp	_11
_11:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_46:
	.long	0
_41:
	.asciz	"remove black"
_42:
	.asciz	"img"
_43:
	.asciz	":brl.max2d.TImage"
_44:
	.asciz	"pxels"
_45:
	.asciz	"*i"
	.align	4
_40:
	.long	1
	.long	_41
	.long	2
	.long	_42
	.long	_43
	.long	-4
	.long	2
	.long	_44
	.long	_45
	.long	-8
	.long	0
_14:
	.asciz	"/Users/jesseperez/Desktop/programming/blitzmax/SOB/remove black.bmx"
	.align	4
_13:
	.long	_14
	.long	2
	.long	1
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	115,99,114,111,108,108,116,114,101,101,46,112,110,103
	.align	4
_16:
	.long	_14
	.long	3
	.long	1
	.align	4
_20:
	.long	_14
	.long	4
	.long	1
_33:
	.asciz	"n"
_34:
	.asciz	"i"
	.align	4
_32:
	.long	3
	.long	0
	.long	2
	.long	_33
	.long	_34
	.long	-12
	.long	0
	.align	4
_28:
	.long	_14
	.long	5
	.long	2
	.align	4
_31:
	.long	3
	.long	0
	.long	0
	.align	4
_30:
	.long	_14
	.long	5
	.long	31
	.align	4
_35:
	.long	_14
	.long	7
	.long	1
	.align	4
_36:
	.long	_14
	.long	8
	.long	1
	.align	4
_37:
	.long	_14
	.long	9
	.long	1
	.align	4
_38:
	.long	_14
	.long	10
	.long	1
	.align	4
_39:
	.long	_14
	.long	11
	.long	1
