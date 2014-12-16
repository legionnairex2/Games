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
	.reference	_brl_polledinput_WaitKey
	.globl	__bb_Tgame_Delete
	.globl	__bb_Tgame_New
	.globl	__bb_Tpoint_Delete
	.globl	__bb_Tpoint_New
	.globl	__bb_Tvector_Create
	.globl	__bb_Tvector_Delete
	.globl	__bb_Tvector_New
	.globl	__bb_Tvector_bounce
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
	cmpl	$0,_117
	je	_118
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_118:
	movl	$1,_117
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
	movl	_102,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_103
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_game
	orl	$1,_102
_103:
	movl	_bb_game,%eax
	movl	$0,36(%eax)
	flds	_215
	fstps	12(%esp)
	flds	_216
	fstps	8(%esp)
	flds	_217
	fstps	4(%esp)
	flds	_218
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_107
	movl	%eax,(%esp)
	call	_bbGCFree
_107:
	movl	_bb_game,%eax
	movl	%ebx,8(%eax)
	flds	_219
	fstps	12(%esp)
	flds	_220
	fstps	8(%esp)
	flds	_221
	fstps	4(%esp)
	flds	_222
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	12(%eax),%eax
	decl	4(%eax)
	jnz	_111
	movl	%eax,(%esp)
	call	_bbGCFree
_111:
	movl	_bb_game,%eax
	movl	%ebx,12(%eax)
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$600,4(%esp)
	movl	$800,(%esp)
	call	_brl_graphics_Graphics
	call	_brl_max2d_Cls
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
	movl	8(%eax),%edx
	movl	_bb_game,%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	(%edx),%eax
	calll	*60(%eax)
	movl	_bb_game,%eax
	cmpl	$0,32(%eax)
	je	_115
	movl	_bb_game,%eax
	movl	8(%eax),%edx
	movl	_bb_game,%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	(%edx),%eax
	calll	*64(%eax)
_115:
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
	jmp	_51
_51:
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
	jmp	_54
_54:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tpoint_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_57:
	mov	$0,%eax
	jmp	_119
_119:
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
	movl	$0,52(%ebx)
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_125
	movl	%eax,(%esp)
	call	_bbGCFree
_125:
	movl	%esi,8(%ebx)
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_129
	movl	%eax,(%esp)
	call	_bbGCFree
_129:
	movl	%esi,12(%ebx)
	mov	$0,%eax
	jmp	_60
_60:
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
_63:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_132
	movl	%eax,(%esp)
	call	_bbGCFree
_132:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_134
	movl	%eax,(%esp)
	call	_bbGCFree
_134:
	mov	$0,%eax
	jmp	_130
_130:
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
	jmp	_69
_69:
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
	flds	24(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_136
	flds	16(%ebx)
	fdivs	24(%ebx)
	fstps	28(%ebx)
	flds	20(%ebx)
	fdivs	24(%ebx)
	fstps	32(%ebx)
	jmp	_137
_136:
	fldz
	fstps	28(%ebx)
	fldz
	fstps	32(%ebx)
_137:
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
	jmp	_72
_72:
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
	jmp	_76
_76:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_findIntersection:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	flds	_247
	fstps	-12(%ebp)
	flds	_248
	fstps	-16(%ebp)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	movl	8(%esi),%eax
	flds	8(%eax)
	movl	8(%edi),%eax
	fsubs	8(%eax)
	fstps	16(%ebx)
	movl	8(%esi),%eax
	flds	12(%eax)
	movl	8(%edi),%eax
	fsubs	12(%eax)
	fstps	20(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	8(%edi),%eax
	flds	8(%eax)
	movl	8(%esi),%eax
	fsubs	8(%eax)
	movl	-20(%ebp),%eax
	fstps	16(%eax)
	movl	8(%edi),%eax
	flds	12(%eax)
	movl	8(%esi),%eax
	fsubs	12(%eax)
	movl	-20(%ebp),%eax
	fstps	20(%eax)
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
	jmp	_151
_150:
	mov	%ebx,%eax
	mov	%edi,%ebx
	movl	%esi,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	fstps	-8(%ebp)
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	flds	-8(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	fstps	-12(%ebp)
	movl	-20(%ebp),%eax
	mov	%esi,%ebx
	movl	%edi,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	fstps	-4(%ebp)
	movl	%edi,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	flds	-4(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	fstps	-16(%ebp)
_151:
	fldz
	flds	-12(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_156
	fld1
	flds	-12(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_156:
	cmp	$0,%eax
	je	_158
	fldz
	flds	-16(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
_158:
	cmp	$0,%eax
	je	_160
	fld1
	flds	-16(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_160:
	cmp	$0,%eax
	je	_162
	movl	_bb_game,%eax
	movl	$1,32(%eax)
	jmp	_163
_162:
	movl	_bb_game,%eax
	movl	$0,32(%eax)
_163:
	movl	_bb_game,%eax
	movl	20(%eax),%edx
	movl	8(%edi),%eax
	flds	8(%eax)
	flds	16(%edi)
	fmuls	-12(%ebp)
	faddp	%st(0),%st(1)
	fstps	8(%edx)
	movl	_bb_game,%eax
	movl	20(%eax),%edx
	movl	8(%edi),%eax
	flds	12(%eax)
	flds	20(%edi)
	fmuls	-12(%ebp)
	faddp	%st(0),%st(1)
	fstps	12(%edx)
	mov	$0,%eax
	jmp	_80
_80:
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_bounce:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	8(%ebp),%esi
	movl	12(%ebp),%ebx
	mov	%esi,%eax
	flds	32(%ebx)
	fstps	8(%esp)
	flds	28(%ebx)
	fstps	4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*68(%eax)
	mov	%eax,%edi
	mov	%esi,%eax
	flds	48(%ebx)
	fdivs	24(%ebx)
	fstps	8(%esp)
	flds	44(%ebx)
	fdivs	24(%ebx)
	fstps	4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*68(%eax)
	mov	%eax,%ebx
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	mov	%eax,%esi
	movl	_bb_game,%eax
	movl	20(%eax),%eax
	incl	4(%eax)
	movl	%eax,-4(%ebp)
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_172
	movl	%eax,(%esp)
	call	_bbGCFree
_172:
	movl	-4(%ebp),%eax
	movl	%eax,8(%esi)
	flds	16(%ebx)
	fmuls	_260
	fstps	16(%ebx)
	flds	20(%ebx)
	fmuls	_261
	fstps	20(%ebx)
	flds	16(%edi)
	fadds	16(%ebx)
	fstps	16(%esi)
	flds	20(%edi)
	fadds	20(%ebx)
	fstps	20(%esi)
	mov	%esi,%ebx
	incl	4(%ebx)
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	decl	4(%eax)
	jnz	_176
	movl	%eax,(%esp)
	call	_bbGCFree
_176:
	movl	_bb_game,%eax
	movl	%ebx,16(%eax)
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	movl	12(%eax),%eax
	movl	_bb_game,%edx
	movl	16(%edx),%edx
	movl	8(%edx),%edx
	flds	8(%edx)
	movl	_bb_game,%edx
	movl	16(%edx),%edx
	fadds	16(%edx)
	fstps	8(%eax)
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	movl	12(%eax),%eax
	movl	_bb_game,%edx
	movl	16(%edx),%edx
	movl	8(%edx),%edx
	flds	12(%edx)
	movl	_bb_game,%edx
	movl	16(%edx),%edx
	fadds	20(%edx)
	fstps	12(%eax)
	mov	$0,%eax
	jmp	_84
_84:
	add	$24,%esp
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
	jmp	_89
_89:
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
	movl	$0,36(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_188
	movl	%eax,(%esp)
	call	_bbGCFree
_188:
	movl	%esi,8(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_192
	movl	%eax,(%esp)
	call	_bbGCFree
_192:
	movl	%esi,12(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_196
	movl	%eax,(%esp)
	call	_bbGCFree
_196:
	movl	%esi,24(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_200
	movl	%eax,(%esp)
	call	_bbGCFree
_200:
	movl	%esi,28(%ebx)
	mov	$0,%eax
	jmp	_92
_92:
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
_95:
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_203
	movl	%eax,(%esp)
	call	_bbGCFree
_203:
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_205
	movl	%eax,(%esp)
	call	_bbGCFree
_205:
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_207
	movl	%eax,(%esp)
	call	_bbGCFree
_207:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_209
	movl	%eax,(%esp)
	call	_bbGCFree
_209:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_211
	movl	%eax,(%esp)
	call	_bbGCFree
_211:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_213
	movl	%eax,(%esp)
	call	_bbGCFree
_213:
	mov	$0,%eax
	jmp	_201
_201:
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
	movl	$0,4(%esp)
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
	movl	$0,8(%esp)
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
	movl	_bb_game,%eax
	cmpl	$0,32(%eax)
	je	_214
	movl	$255,8(%esp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	call	_brl_max2d_SetColor
	movl	$1,16(%esp)
	movl	_bb_game,%eax
	movl	20(%eax),%eax
	flds	12(%eax)
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	fadds	20(%eax)
	fstps	12(%esp)
	movl	_bb_game,%eax
	movl	20(%eax),%eax
	flds	8(%eax)
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	fadds	16(%eax)
	fstps	8(%esp)
	movl	_bb_game,%eax
	movl	20(%eax),%eax
	flds	12(%eax)
	fstps	4(%esp)
	movl	_bb_game,%eax
	movl	20(%eax),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
_214:
	mov	$0,%eax
	jmp	_99
_99:
	add	$32,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_117:
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
	.asciz	"visible"
_30:
	.asciz	"i"
_31:
	.asciz	"Create"
_32:
	.asciz	"(f,f,f,f):Tvector"
_33:
	.asciz	"update"
_34:
	.asciz	"perP"
_35:
	.asciz	"(:Tvector)f"
_36:
	.asciz	"findIntersection"
_37:
	.asciz	"(:Tvector)i"
_38:
	.asciz	"bounce"
_39:
	.asciz	"project"
_40:
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
	.long	3
	.long	_29
	.long	_30
	.long	52
	.long	6
	.long	_12
	.long	_13
	.long	16
	.long	6
	.long	_14
	.long	_13
	.long	20
	.long	7
	.long	_31
	.long	_32
	.long	48
	.long	6
	.long	_33
	.long	_13
	.long	52
	.long	6
	.long	_34
	.long	_35
	.long	56
	.long	6
	.long	_36
	.long	_37
	.long	60
	.long	6
	.long	_38
	.long	_37
	.long	64
	.long	6
	.long	_39
	.long	_40
	.long	68
	.long	0
	.align	4
_bb_Tvector:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_15
	.long	56
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
	.long	__bb_Tvector_bounce
	.long	__bb_Tvector_project
_42:
	.asciz	"Tgame"
_43:
	.asciz	"v1"
_44:
	.asciz	":Tvector"
_45:
	.asciz	"v2"
_46:
	.asciz	"v3"
_47:
	.asciz	"ip"
_48:
	.asciz	"proj1"
_49:
	.asciz	"proj2"
_50:
	.asciz	"dragging"
	.align	4
_41:
	.long	2
	.long	_42
	.long	3
	.long	_43
	.long	_44
	.long	8
	.long	3
	.long	_45
	.long	_44
	.long	12
	.long	3
	.long	_46
	.long	_44
	.long	16
	.long	3
	.long	_47
	.long	_18
	.long	20
	.long	3
	.long	_48
	.long	_44
	.long	24
	.long	3
	.long	_49
	.long	_44
	.long	28
	.long	3
	.long	_38
	.long	_30
	.long	32
	.long	3
	.long	_50
	.long	_30
	.long	36
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
	.long	_41
	.long	40
	.long	__bb_Tgame_New
	.long	__bb_Tgame_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.align	4
_102:
	.long	0
	.align	4
_bb_game:
	.long	_bbNullObject
	.align	4
_215:
	.long	0x43160000
	.align	4
_216:
	.long	0x43480000
	.align	4
_217:
	.long	0x42480000
	.align	4
_218:
	.long	0x42c80000
	.align	4
_219:
	.long	0x42f00000
	.align	4
_220:
	.long	0x437a0000
	.align	4
_221:
	.long	0x42f00000
	.align	4
_222:
	.long	0x42480000
	.align	4
_247:
	.long	0x0
	.align	4
_248:
	.long	0x0
	.align	4
_260:
	.long	0xbf800000
	.align	4
_261:
	.long	0xbf800000
