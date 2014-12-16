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
	.reference	_bbGCFree
	.reference	_bbNullObject
	.reference	_bbObjectClass
	.reference	_bbObjectCompare
	.reference	_bbObjectCtor
	.reference	_bbObjectFree
	.reference	_bbObjectNew
	.reference	_bbObjectRegisterType
	.reference	_bbObjectReserved
	.reference	_bbObjectSendMessage
	.reference	_bbObjectToString
	.reference	_bbSqr
	.reference	_brl_graphics_Flip
	.reference	_brl_graphics_Graphics
	.reference	_brl_max2d_Cls
	.reference	_brl_max2d_DrawLine
	.reference	_brl_max2d_SetColor
	.reference	_brl_polledinput_KeyDown
	.globl	__bb_Tgame_Delete
	.globl	__bb_Tgame_New
	.globl	__bb_Tpoint_Delete
	.globl	__bb_Tpoint_New
	.globl	__bb_Tvector_Create
	.globl	__bb_Tvector_Delete
	.globl	__bb_Tvector_New
	.globl	__bb_Tvector_project
	.globl	__bb_Tvector_update
	.globl	__bb_main
	.globl	_bb_Tgame
	.globl	_bb_Tpoint
	.globl	_bb_Tvector
	.globl	_bb_drawAll
	.globl	_bb_game
	.globl	_bb_update
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_109
	je	_110
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_110:
	movl	$1,_109
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
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectRegisterType
	movl	_87,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_88
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_game
	orl	$1,_87
_88:
	movl	_bb_game,%eax
	movl	$0,24(%eax)
	flds	_160
	fstps	12(%esp)
	flds	_161
	fstps	8(%esp)
	flds	_162
	fstps	4(%esp)
	flds	_163
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_92
	movl	%eax,(%esp)
	call	_bbGCFree
_92:
	movl	_bb_game,%eax
	movl	%ebx,8(%eax)
	flds	_164
	fstps	12(%esp)
	flds	_165
	fstps	8(%esp)
	flds	_166
	fstps	4(%esp)
	flds	_167
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	12(%eax),%eax
	decl	4(%eax)
	jnz	_96
	movl	%eax,(%esp)
	call	_bbGCFree
_96:
	movl	_bb_game,%eax
	movl	%ebx,12(%eax)
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$600,4(%esp)
	movl	$800,(%esp)
	call	_brl_graphics_Graphics
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	_bb_game,%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	_bb_game,%edx
	movl	12(%edx),%edx
	flds	32(%edx)
	fstps	8(%esp)
	movl	_bb_game,%edx
	movl	12(%edx),%edx
	flds	28(%edx)
	fstps	4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	decl	4(%eax)
	jnz	_103
	movl	%eax,(%esp)
	call	_bbGCFree
_103:
	movl	_bb_game,%eax
	movl	%ebx,16(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	_bb_game,%edx
	movl	12(%edx),%edx
	flds	48(%edx)
	movl	_bb_game,%edx
	movl	12(%edx),%edx
	fdivs	24(%edx)
	fstps	8(%esp)
	movl	_bb_game,%edx
	movl	12(%edx),%edx
	flds	44(%edx)
	movl	_bb_game,%edx
	movl	12(%edx),%edx
	fdivs	24(%edx)
	fstps	4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	20(%eax),%eax
	decl	4(%eax)
	jnz	_108
	movl	%eax,(%esp)
	call	_bbGCFree
_108:
	movl	_bb_game,%eax
	movl	%ebx,20(%eax)
	movl	_bb_game,%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	call	_bb_drawAll
_9:
	call	_brl_max2d_Cls
	call	_bb_update
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
_7:
	movl	$27,(%esp)
	call	_brl_polledinput_KeyDown
	cmp	$0,%eax
	je	_9
_8:
	mov	$0,%eax
	jmp	_46
_46:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tpoint_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_Tpoint,(%ebx)
	fldz
	fstps	8(%ebx)
	fldz
	fstps	12(%ebx)
	mov	$0,%eax
	jmp	_49
_49:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tpoint_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_52:
	mov	$0,%eax
	jmp	_111
_111:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	sub	$16,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_Tvector,(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,8(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,12(%ebx)
	fldz
	fstps	16(%ebx)
	fldz
	fstps	20(%ebx)
	fldz
	fstps	24(%ebx)
	fldz
	fstps	28(%ebx)
	fldz
	fstps	32(%ebx)
	fldz
	fstps	36(%ebx)
	fldz
	fstps	40(%ebx)
	fldz
	fstps	44(%ebx)
	fldz
	fstps	48(%ebx)
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_117
	movl	%eax,(%esp)
	call	_bbGCFree
_117:
	movl	%esi,8(%ebx)
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_121
	movl	%eax,(%esp)
	call	_bbGCFree
_121:
	movl	%esi,12(%ebx)
	mov	$0,%eax
	jmp	_55
_55:
	add	$16,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_Delete:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
_58:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_124
	movl	%eax,(%esp)
	call	_bbGCFree
_124:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_126
	movl	%eax,(%esp)
	call	_bbGCFree
_126:
	mov	$0,%eax
	jmp	_122
_122:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	8(%eax),%edx
	flds	8(%ebp)
	fstps	8(%edx)
	movl	8(%eax),%edx
	flds	12(%ebp)
	fstps	12(%edx)
	movl	12(%eax),%edx
	flds	16(%ebp)
	fstps	8(%edx)
	movl	12(%eax),%edx
	flds	20(%ebp)
	fstps	12(%edx)
	jmp	_64
_64:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_update:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%ebx
	movl	12(%ebx),%eax
	flds	8(%eax)
	movl	8(%ebx),%eax
	fsubs	8(%eax)
	fstps	16(%ebx)
	movl	12(%ebx),%eax
	flds	12(%eax)
	movl	8(%ebx),%eax
	fsubs	12(%eax)
	fstps	20(%ebx)
	flds	16(%ebx)
	fmuls	16(%ebx)
	flds	20(%ebx)
	fmuls	20(%ebx)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	fstps	24(%ebx)
	flds	16(%ebx)
	fdivs	24(%ebx)
	fstps	28(%ebx)
	flds	20(%ebx)
	fdivs	24(%ebx)
	fstps	32(%ebx)
	flds	20(%ebx)
	fchs
	fstps	36(%ebx)
	flds	16(%ebx)
	fstps	40(%ebx)
	flds	20(%ebx)
	fstps	44(%ebx)
	flds	16(%ebx)
	fchs
	fstps	48(%ebx)
	mov	$0,%eax
	jmp	_67
_67:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_project:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
	flds	16(%eax)
	fmuls	12(%ebp)
	flds	20(%eax)
	fmuls	16(%ebp)
	faddp	%st(0),%st(1)
	fstps	-4(%ebp)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	flds	-4(%ebp)
	fmuls	12(%ebp)
	fstps	16(%eax)
	flds	-4(%ebp)
	fmuls	16(%ebp)
	fstps	20(%eax)
	jmp	_72
_72:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	sub	$16,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_Tgame,(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,8(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,12(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,16(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,20(%ebx)
	movl	$0,24(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_137
	movl	%eax,(%esp)
	call	_bbGCFree
_137:
	movl	%esi,8(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_141
	movl	%eax,(%esp)
	call	_bbGCFree
_141:
	movl	%esi,12(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_145
	movl	%eax,(%esp)
	call	_bbGCFree
_145:
	movl	%esi,16(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_149
	movl	%eax,(%esp)
	call	_bbGCFree
_149:
	movl	%esi,20(%ebx)
	mov	$0,%eax
	jmp	_75
_75:
	add	$16,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_Delete:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
_78:
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_152
	movl	%eax,(%esp)
	call	_bbGCFree
_152:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_154
	movl	%eax,(%esp)
	call	_bbGCFree
_154:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_156
	movl	%eax,(%esp)
	call	_bbGCFree
_156:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_158
	movl	%eax,(%esp)
	call	_bbGCFree
_158:
	mov	$0,%eax
	jmp	_150
_150:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawAll:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	sub	$32,%esp
	movl	8(%ebp),%esi
	movl	12(%ebp),%ebx
	movl	$0,8(%esp)
	movl	$255,4(%esp)
	movl	$255,(%esp)
	call	_brl_max2d_SetColor
	movl	$1,16(%esp)
	movl	8(%esi),%eax
	flds	12(%eax)
	fadds	20(%esi)
	fstps	12(%esp)
	movl	8(%esi),%eax
	flds	8(%eax)
	fadds	16(%esi)
	fstps	8(%esp)
	movl	8(%esi),%eax
	flds	12(%eax)
	fstps	4(%esp)
	movl	8(%esi),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$255,8(%esp)
	movl	$255,4(%esp)
	movl	$0,(%esp)
	call	_brl_max2d_SetColor
	movl	$1,16(%esp)
	movl	8(%ebx),%eax
	flds	12(%eax)
	fadds	20(%ebx)
	fstps	12(%esp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	fadds	16(%ebx)
	fstps	8(%esp)
	movl	8(%ebx),%eax
	flds	12(%eax)
	fstps	4(%esp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$1,16(%esp)
	movl	8(%ebx),%eax
	flds	12(%eax)
	fadds	48(%ebx)
	fstps	12(%esp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	fadds	44(%ebx)
	fstps	8(%esp)
	movl	8(%ebx),%eax
	flds	12(%eax)
	fstps	4(%esp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$1,16(%esp)
	movl	8(%ebx),%eax
	flds	12(%eax)
	fadds	40(%ebx)
	fstps	12(%esp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	fadds	36(%ebx)
	fstps	8(%esp)
	movl	8(%ebx),%eax
	flds	12(%eax)
	fstps	4(%esp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$1,16(%esp)
	movl	8(%ebx),%eax
	flds	12(%eax)
	fsubs	20(%ebx)
	fstps	12(%esp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	fsubs	16(%ebx)
	fstps	8(%esp)
	movl	8(%ebx),%eax
	flds	12(%eax)
	fstps	4(%esp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$255,8(%esp)
	movl	$0,4(%esp)
	movl	$255,(%esp)
	call	_brl_max2d_SetColor
	movl	$1,16(%esp)
	movl	8(%ebx),%eax
	flds	12(%eax)
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	fadds	20(%eax)
	fstps	12(%esp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	fadds	16(%eax)
	fstps	8(%esp)
	movl	8(%ebx),%eax
	flds	12(%eax)
	fstps	4(%esp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$0,8(%esp)
	movl	$0,4(%esp)
	movl	$255,(%esp)
	call	_brl_max2d_SetColor
	movl	$1,16(%esp)
	movl	8(%ebx),%eax
	flds	12(%eax)
	movl	_bb_game,%eax
	movl	20(%eax),%eax
	fadds	20(%eax)
	fstps	12(%esp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	movl	_bb_game,%eax
	movl	20(%eax),%eax
	fadds	16(%eax)
	fstps	8(%esp)
	movl	8(%ebx),%eax
	flds	12(%eax)
	fstps	4(%esp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	mov	$0,%eax
	jmp	_82
_82:
	add	$32,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_update:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	_bb_game,%eax
	cmpl	$0,24(%eax)
	je	_159
_159:
	movl	_bb_game,%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	call	_bb_drawAll
	mov	$0,%eax
	jmp	_84
_84:
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_109:
	.long	0
_11:
	.asciz	"Tpoint"
_12:
	.asciz	"x"
_13:
	.asciz	"f"
_14:
	.asciz	"y"
_15:
	.asciz	"New"
_16:
	.asciz	"()i"
_17:
	.asciz	"Delete"
	.align	4
_10:
	.long	2
	.long	_11
	.long	3
	.long	_12
	.long	_13
	.long	8
	.long	3
	.long	_14
	.long	_13
	.long	12
	.long	6
	.long	_15
	.long	_16
	.long	16
	.long	6
	.long	_17
	.long	_16
	.long	20
	.long	0
	.align	4
_bb_Tpoint:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_10
	.long	16
	.long	__bb_Tpoint_New
	.long	__bb_Tpoint_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_19:
	.asciz	"Tvector"
_20:
	.asciz	"p0"
_21:
	.asciz	":Tpoint"
_22:
	.asciz	"p1"
_23:
	.asciz	"vx"
_24:
	.asciz	"vy"
_25:
	.asciz	"length"
_26:
	.asciz	"dx"
_27:
	.asciz	"dy"
_28:
	.asciz	"rx"
_29:
	.asciz	"ry"
_30:
	.asciz	"lx"
_31:
	.asciz	"ly"
_32:
	.asciz	"Create"
_33:
	.asciz	"(f,f,f,f):Tvector"
_34:
	.asciz	"update"
_35:
	.asciz	"project"
_36:
	.asciz	"(f,f):Tvector"
	.align	4
_18:
	.long	2
	.long	_19
	.long	3
	.long	_20
	.long	_21
	.long	8
	.long	3
	.long	_22
	.long	_21
	.long	12
	.long	3
	.long	_23
	.long	_13
	.long	16
	.long	3
	.long	_24
	.long	_13
	.long	20
	.long	3
	.long	_25
	.long	_13
	.long	24
	.long	3
	.long	_26
	.long	_13
	.long	28
	.long	3
	.long	_27
	.long	_13
	.long	32
	.long	3
	.long	_28
	.long	_13
	.long	36
	.long	3
	.long	_29
	.long	_13
	.long	40
	.long	3
	.long	_30
	.long	_13
	.long	44
	.long	3
	.long	_31
	.long	_13
	.long	48
	.long	6
	.long	_15
	.long	_16
	.long	16
	.long	6
	.long	_17
	.long	_16
	.long	20
	.long	7
	.long	_32
	.long	_33
	.long	48
	.long	6
	.long	_34
	.long	_16
	.long	52
	.long	6
	.long	_35
	.long	_36
	.long	56
	.long	0
	.align	4
_bb_Tvector:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_18
	.long	52
	.long	__bb_Tvector_New
	.long	__bb_Tvector_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Tvector_Create
	.long	__bb_Tvector_update
	.long	__bb_Tvector_project
_38:
	.asciz	"Tgame"
_39:
	.asciz	"v1"
_40:
	.asciz	":Tvector"
_41:
	.asciz	"v2"
_42:
	.asciz	"proj1"
_43:
	.asciz	"proj2"
_44:
	.asciz	"dragging"
_45:
	.asciz	"i"
	.align	4
_37:
	.long	2
	.long	_38
	.long	3
	.long	_39
	.long	_40
	.long	8
	.long	3
	.long	_41
	.long	_40
	.long	12
	.long	3
	.long	_42
	.long	_40
	.long	16
	.long	3
	.long	_43
	.long	_40
	.long	20
	.long	3
	.long	_44
	.long	_45
	.long	24
	.long	6
	.long	_15
	.long	_16
	.long	16
	.long	6
	.long	_17
	.long	_16
	.long	20
	.long	0
	.align	4
_bb_Tgame:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_37
	.long	28
	.long	__bb_Tgame_New
	.long	__bb_Tgame_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.align	4
_87:
	.long	0
	.align	4
_bb_game:
	.long	_bbNullObject
	.align	4
_160:
	.long	0x42c80000
	.align	4
_161:
	.long	0x432f0000
	.align	4
_162:
	.long	0x42c80000
	.align	4
_163:
	.long	0x43160000
	.align	4
_164:
	.long	0x42480000
	.align	4
_165:
	.long	0x42dc0000
	.align	4
_166:
	.long	0x42c80000
	.align	4
_167:
	.long	0x43160000
