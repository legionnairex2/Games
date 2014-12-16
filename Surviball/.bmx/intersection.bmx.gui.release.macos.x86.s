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
	.reference	_brl_max2d_DrawLine
	.reference	_brl_max2d_DrawOval
	.reference	_brl_polledinput_WaitKey
	.globl	__bb_Tgame_Delete
	.globl	__bb_Tgame_New
	.globl	__bb_Tpoint_Delete
	.globl	__bb_Tpoint_New
	.globl	__bb_Tvector_Create
	.globl	__bb_Tvector_Delete
	.globl	__bb_Tvector_New
	.globl	__bb_Tvector_findIntersection
	.globl	__bb_Tvector_perP
	.globl	__bb_Tvector_project
	.globl	__bb_Tvector_update
	.globl	__bb_main
	.globl	_bb_Tgame
	.globl	_bb_Tpoint
	.globl	_bb_Tvector
	.globl	_bb_drawAll
	.globl	_bb_game
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_122
	je	_123
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_123:
	movl	$1,_122
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
	movl	_96,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_97
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_game
	orl	$1,_96
_97:
	movl	_bb_game,%eax
	movl	$0,32(%eax)
	flds	_195
	fstps	12(%esp)
	flds	_196
	fstps	8(%esp)
	flds	_197
	fstps	4(%esp)
	flds	_198
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_101
	movl	%eax,(%esp)
	call	_bbGCFree
_101:
	movl	_bb_game,%eax
	movl	%ebx,8(%eax)
	flds	_199
	fstps	12(%esp)
	flds	_200
	fstps	8(%esp)
	flds	_201
	fstps	4(%esp)
	flds	_202
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	12(%eax),%eax
	decl	4(%eax)
	jnz	_105
	movl	%eax,(%esp)
	call	_bbGCFree
_105:
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
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	decl	4(%eax)
	jnz	_111
	movl	%eax,(%esp)
	call	_bbGCFree
_111:
	movl	_bb_game,%eax
	movl	%ebx,16(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	8(%eax),%ebx
	incl	4(%ebx)
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_115
	movl	%eax,(%esp)
	call	_bbGCFree
_115:
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	movl	%ebx,8(%eax)
	movl	_bb_game,%eax
	movl	12(%eax),%eax
	movl	8(%eax),%ebx
	incl	4(%ebx)
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	movl	12(%eax),%eax
	decl	4(%eax)
	jnz	_119
	movl	%eax,(%esp)
	call	_bbGCFree
_119:
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	movl	%ebx,12(%eax)
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%edx
	movl	_bb_game,%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	(%edx),%eax
	calll	*60(%eax)
	movl	_bb_game,%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	call	_bb_drawAll
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
	call	_brl_polledinput_WaitKey
	mov	$0,%eax
	jmp	_49
_49:
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
	jmp	_52
_52:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tpoint_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_55:
	mov	$0,%eax
	jmp	_124
_124:
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
	jnz	_130
	movl	%eax,(%esp)
	call	_bbGCFree
_130:
	movl	%esi,8(%ebx)
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_134
	movl	%eax,(%esp)
	call	_bbGCFree
_134:
	movl	%esi,12(%ebx)
	mov	$0,%eax
	jmp	_58
_58:
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
_61:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_137
	movl	%eax,(%esp)
	call	_bbGCFree
_137:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_139
	movl	%eax,(%esp)
	call	_bbGCFree
_139:
	mov	$0,%eax
	jmp	_135
_135:
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
	jmp	_67
_67:
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
	jmp	_70
_70:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_perP:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	flds	16(%edx)
	fmuls	20(%eax)
	flds	20(%edx)
	fmuls	16(%eax)
	fsubrp	%st(0),%st(1)
	jmp	_74
_74:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_findIntersection:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$20,%esp
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	mov	%eax,%edx
	movl	8(%esi),%eax
	flds	8(%eax)
	movl	8(%edi),%eax
	fsubs	8(%eax)
	fstps	16(%edx)
	movl	8(%esi),%eax
	flds	12(%eax)
	movl	8(%edi),%eax
	fsubs	12(%eax)
	fstps	20(%edx)
	flds	28(%edi)
	flds	28(%esi)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_144
	flds	32(%edi)
	flds	32(%esi)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_144:
	cmp	$0,%eax
	jne	_148
	flds	28(%edi)
	flds	28(%esi)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_146
	flds	32(%edi)
	flds	32(%esi)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_146:
_148:
	cmp	$0,%eax
	je	_150
	flds	_225
	fstps	-8(%ebp)
	jmp	_151
_150:
	mov	%edx,%eax
	mov	%edi,%ebx
	movl	%esi,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	fstps	-4(%ebp)
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	flds	-4(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	fstps	-8(%ebp)
_151:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	20(%eax),%eax
	decl	4(%eax)
	jnz	_157
	movl	%eax,(%esp)
	call	_bbGCFree
_157:
	movl	_bb_game,%eax
	movl	%ebx,20(%eax)
	movl	_bb_game,%eax
	movl	20(%eax),%edx
	movl	8(%edi),%eax
	flds	8(%eax)
	flds	16(%edi)
	fmuls	-8(%ebp)
	faddp	%st(0),%st(1)
	fstps	8(%edx)
	movl	_bb_game,%eax
	movl	20(%eax),%edx
	movl	8(%edi),%eax
	flds	12(%eax)
	flds	20(%edi)
	fmuls	-8(%ebp)
	faddp	%st(0),%st(1)
	fstps	12(%edx)
	mov	$0,%eax
	jmp	_78
_78:
	add	$20,%esp
	pop	%edi
	pop	%esi
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
	jmp	_83
_83:
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
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,24(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,28(%ebx)
	movl	$0,32(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_169
	movl	%eax,(%esp)
	call	_bbGCFree
_169:
	movl	%esi,8(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_173
	movl	%eax,(%esp)
	call	_bbGCFree
_173:
	movl	%esi,12(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_177
	movl	%eax,(%esp)
	call	_bbGCFree
_177:
	movl	%esi,24(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_181
	movl	%eax,(%esp)
	call	_bbGCFree
_181:
	movl	%esi,28(%ebx)
	mov	$0,%eax
	jmp	_86
_86:
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
_89:
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_184
	movl	%eax,(%esp)
	call	_bbGCFree
_184:
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_186
	movl	%eax,(%esp)
	call	_bbGCFree
_186:
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_188
	movl	%eax,(%esp)
	call	_bbGCFree
_188:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_190
	movl	%eax,(%esp)
	call	_bbGCFree
_190:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_192
	movl	%eax,(%esp)
	call	_bbGCFree
_192:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_194
	movl	%eax,(%esp)
	call	_bbGCFree
_194:
	mov	$0,%eax
	jmp	_182
_182:
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
	movl	8(%ebp),%ebx
	movl	12(%ebp),%esi
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
	flds	_239
	fstps	12(%esp)
	flds	_240
	fstps	8(%esp)
	movl	_bb_game,%eax
	movl	20(%eax),%eax
	flds	12(%eax)
	fsubs	_241
	fstps	4(%esp)
	movl	_bb_game,%eax
	movl	20(%eax),%eax
	flds	8(%eax)
	fsubs	_242
	fstps	(%esp)
	call	_brl_max2d_DrawOval
	mov	$0,%eax
	jmp	_93
_93:
	add	$32,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_122:
	.long	0
_8:
	.asciz	"Tpoint"
_9:
	.asciz	"x"
_10:
	.asciz	"f"
_11:
	.asciz	"y"
_12:
	.asciz	"New"
_13:
	.asciz	"()i"
_14:
	.asciz	"Delete"
	.align	4
_7:
	.long	2
	.long	_8
	.long	3
	.long	_9
	.long	_10
	.long	8
	.long	3
	.long	_11
	.long	_10
	.long	12
	.long	6
	.long	_12
	.long	_13
	.long	16
	.long	6
	.long	_14
	.long	_13
	.long	20
	.long	0
	.align	4
_bb_Tpoint:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_7
	.long	16
	.long	__bb_Tpoint_New
	.long	__bb_Tpoint_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_16:
	.asciz	"Tvector"
_17:
	.asciz	"p0"
_18:
	.asciz	":Tpoint"
_19:
	.asciz	"p1"
_20:
	.asciz	"vx"
_21:
	.asciz	"vy"
_22:
	.asciz	"length"
_23:
	.asciz	"dx"
_24:
	.asciz	"dy"
_25:
	.asciz	"rx"
_26:
	.asciz	"ry"
_27:
	.asciz	"lx"
_28:
	.asciz	"ly"
_29:
	.asciz	"Create"
_30:
	.asciz	"(f,f,f,f):Tvector"
_31:
	.asciz	"update"
_32:
	.asciz	"perP"
_33:
	.asciz	"(:Tvector)f"
_34:
	.asciz	"findIntersection"
_35:
	.asciz	"(:Tvector)i"
_36:
	.asciz	"project"
_37:
	.asciz	"(f,f):Tvector"
	.align	4
_15:
	.long	2
	.long	_16
	.long	3
	.long	_17
	.long	_18
	.long	8
	.long	3
	.long	_19
	.long	_18
	.long	12
	.long	3
	.long	_20
	.long	_10
	.long	16
	.long	3
	.long	_21
	.long	_10
	.long	20
	.long	3
	.long	_22
	.long	_10
	.long	24
	.long	3
	.long	_23
	.long	_10
	.long	28
	.long	3
	.long	_24
	.long	_10
	.long	32
	.long	3
	.long	_25
	.long	_10
	.long	36
	.long	3
	.long	_26
	.long	_10
	.long	40
	.long	3
	.long	_27
	.long	_10
	.long	44
	.long	3
	.long	_28
	.long	_10
	.long	48
	.long	6
	.long	_12
	.long	_13
	.long	16
	.long	6
	.long	_14
	.long	_13
	.long	20
	.long	7
	.long	_29
	.long	_30
	.long	48
	.long	6
	.long	_31
	.long	_13
	.long	52
	.long	6
	.long	_32
	.long	_33
	.long	56
	.long	6
	.long	_34
	.long	_35
	.long	60
	.long	6
	.long	_36
	.long	_37
	.long	64
	.long	0
	.align	4
_bb_Tvector:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_15
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
	.long	__bb_Tvector_perP
	.long	__bb_Tvector_findIntersection
	.long	__bb_Tvector_project
_39:
	.asciz	"Tgame"
_40:
	.asciz	"v1"
_41:
	.asciz	":Tvector"
_42:
	.asciz	"v2"
_43:
	.asciz	"v3"
_44:
	.asciz	"ip"
_45:
	.asciz	"proj1"
_46:
	.asciz	"proj2"
_47:
	.asciz	"dragging"
_48:
	.asciz	"i"
	.align	4
_38:
	.long	2
	.long	_39
	.long	3
	.long	_40
	.long	_41
	.long	8
	.long	3
	.long	_42
	.long	_41
	.long	12
	.long	3
	.long	_43
	.long	_41
	.long	16
	.long	3
	.long	_44
	.long	_18
	.long	20
	.long	3
	.long	_45
	.long	_41
	.long	24
	.long	3
	.long	_46
	.long	_41
	.long	28
	.long	3
	.long	_47
	.long	_48
	.long	32
	.long	6
	.long	_12
	.long	_13
	.long	16
	.long	6
	.long	_14
	.long	_13
	.long	20
	.long	0
	.align	4
_bb_Tgame:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_38
	.long	36
	.long	__bb_Tgame_New
	.long	__bb_Tgame_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.align	4
_96:
	.long	0
	.align	4
_bb_game:
	.long	_bbNullObject
	.align	4
_195:
	.long	0x42c80000
	.align	4
_196:
	.long	0x432a0000
	.align	4
_197:
	.long	0x42480000
	.align	4
_198:
	.long	0x43160000
	.align	4
_199:
	.long	0x43160000
	.align	4
_200:
	.long	0x43480000
	.align	4
_201:
	.long	0x43160000
	.align	4
_202:
	.long	0x42c80000
	.align	4
_225:
	.long	0x49742400
	.align	4
_239:
	.long	0x40c00000
	.align	4
_240:
	.long	0x40c00000
	.align	4
_241:
	.long	0x40400000
	.align	4
_242:
	.long	0x40400000
