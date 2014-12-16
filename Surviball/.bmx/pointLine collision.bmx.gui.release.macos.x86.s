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
	.reference	_bbArrayNew1D
	.reference	_bbGCFree
	.reference	_bbMilliSecs
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
	.reference	_bbStringClass
	.reference	_bbStringConcat
	.reference	_bbStringFromFloat
	.reference	_brl_graphics_Flip
	.reference	_brl_graphics_Graphics
	.reference	_brl_max2d_Cls
	.reference	_brl_max2d_DrawLine
	.reference	_brl_max2d_DrawRect
	.reference	_brl_polledinput_KeyDown
	.reference	_brl_standardio_Print
	.globl	__bb_Tgame_Delete
	.globl	__bb_Tgame_New
	.globl	__bb_Tpoint_Delete
	.globl	__bb_Tpoint_New
	.globl	__bb_Tvector_Create
	.globl	__bb_Tvector_Delete
	.globl	__bb_Tvector_New
	.globl	__bb_Tvector_bounce
	.globl	__bb_Tvector_displaylength
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
	.globl	_bb_runMe
	.globl	_bb_updateObject
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_150
	je	_151
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_151:
	movl	$1,_150
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
	movl	_128,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_129
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_game
	orl	$1,_128
_129:
	movl	_bb_game,%eax
	movl	$0,20(%eax)
	movl	_bb_game,%eax
	movl	$300,28(%eax)
	movl	_bb_game,%eax
	movl	$180,32(%eax)
	movl	_bb_game,%eax
	flds	_277
	fstps	36(%eax)
	movl	_bb_game,%eax
	flds	_278
	fstps	40(%eax)
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	flds	_279
	fstps	52(%eax)
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	flds	_280
	fstps	56(%eax)
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	flds	_281
	fstps	60(%eax)
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	movl	8(%eax),%eax
	flds	_282
	fstps	8(%eax)
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	movl	8(%eax),%eax
	flds	_283
	fstps	12(%eax)
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	fld1
	fstps	16(%eax)
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	fldz
	fstps	20(%eax)
	flds	_284
	fstps	12(%esp)
	flds	_285
	fstps	8(%esp)
	flds	_286
	fstps	4(%esp)
	flds	_287
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	24(%eax),%eax
	decl	4(%eax)
	jnz	_133
	movl	%eax,(%esp)
	call	_bbGCFree
_133:
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	%ebx,24(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	24(%eax),%eax
	fld1
	fstps	56(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	24(%eax),%eax
	fld1
	fstps	60(%eax)
	flds	_288
	fstps	12(%esp)
	flds	_289
	fstps	8(%esp)
	flds	_290
	fstps	4(%esp)
	flds	_291
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	4+24(%eax),%eax
	decl	4(%eax)
	jnz	_137
	movl	%eax,(%esp)
	call	_bbGCFree
_137:
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	%ebx,4+24(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	4+24(%eax),%eax
	fld1
	fstps	56(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	4+24(%eax),%eax
	fld1
	fstps	60(%eax)
	flds	_292
	fstps	12(%esp)
	flds	_293
	fstps	8(%esp)
	flds	_294
	fstps	4(%esp)
	flds	_295
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	8+24(%eax),%eax
	decl	4(%eax)
	jnz	_141
	movl	%eax,(%esp)
	call	_bbGCFree
_141:
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	%ebx,8+24(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	8+24(%eax),%eax
	fld1
	fstps	56(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	8+24(%eax),%eax
	fld1
	fstps	60(%eax)
	flds	_296
	fstps	12(%esp)
	flds	_297
	fstps	8(%esp)
	flds	_298
	fstps	4(%esp)
	flds	_299
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	12+24(%eax),%eax
	decl	4(%eax)
	jnz	_145
	movl	%eax,(%esp)
	call	_bbGCFree
_145:
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	%ebx,12+24(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	12+24(%eax),%eax
	fld1
	fstps	56(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	12+24(%eax),%eax
	fld1
	fstps	60(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	24(%eax),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	4+24(%eax),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	8+24(%eax),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	12+24(%eax),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$600,4(%esp)
	movl	$800,(%esp)
	call	_brl_graphics_Graphics
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	movl	8(%eax),%eax
	flds	12(%eax)
	fstps	(%esp)
	call	_bbStringFromFloat
	mov	%eax,%ebx
	movl	$_14,4(%esp)
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	movl	8(%eax),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_bbStringFromFloat
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_standardio_Print
_17:
	call	_brl_max2d_Cls
	call	_bb_runMe
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
_15:
	movl	$27,(%esp)
	call	_brl_polledinput_KeyDown
	cmp	$0,%eax
	je	_17
_16:
	mov	$0,%eax
	jmp	_70
_70:
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
	jmp	_73
_73:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tpoint_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_76:
	mov	$0,%eax
	jmp	_152
_152:
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
	fldz
	fstps	52(%ebx)
	fldz
	fstps	56(%ebx)
	fldz
	fstps	60(%ebx)
	movl	$0,64(%ebx)
	fldz
	fstps	68(%ebx)
	fldz
	fstps	72(%ebx)
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_158
	movl	%eax,(%esp)
	call	_bbGCFree
_158:
	movl	%esi,8(%ebx)
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_162
	movl	%eax,(%esp)
	call	_bbGCFree
_162:
	movl	%esi,12(%ebx)
	mov	$0,%eax
	jmp	_79
_79:
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
_82:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_165
	movl	%eax,(%esp)
	call	_bbGCFree
_165:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_167
	movl	%eax,(%esp)
	call	_bbGCFree
_167:
	mov	$0,%eax
	jmp	_163
_163:
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
	jmp	_88
_88:
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
	jne	_169
	flds	16(%ebx)
	fdivs	24(%ebx)
	fstps	28(%ebx)
	flds	20(%ebx)
	fdivs	24(%ebx)
	fstps	32(%ebx)
	jmp	_170
_169:
	fldz
	fstps	28(%ebx)
	fldz
	fstps	32(%ebx)
_170:
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
	jmp	_91
_91:
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
	jmp	_95
_95:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_findIntersection:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	flds	_322
	fstps	-4(%ebp)
	flds	_323
	fstps	-8(%ebp)
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
	movl	%eax,-12(%ebp)
	movl	8(%edi),%eax
	flds	8(%eax)
	movl	8(%esi),%eax
	fsubs	8(%eax)
	movl	-12(%ebp),%eax
	fstps	16(%eax)
	movl	8(%edi),%eax
	flds	12(%eax)
	movl	8(%esi),%eax
	fsubs	12(%eax)
	movl	-12(%ebp),%eax
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
	je	_176
	flds	32(%edi)
	flds	32(%esi)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_176:
	cmp	$0,%eax
	jne	_180
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
	je	_178
	flds	32(%edi)
	flds	32(%esi)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_178:
_180:
	cmp	$0,%eax
	je	_182
	flds	_324
	jmp	_99
_182:
	mov	%ebx,%eax
	mov	%edi,%ebx
	movl	%esi,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	fstp	%st(0)
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	fstp	%st(0)
	movl	-12(%ebp),%eax
	mov	%esi,%ebx
	movl	%edi,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	fstp	%st(0)
	movl	%edi,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	fstp	%st(0)
_183:
	fldz
	flds	-4(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_190
	fld1
	flds	-4(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_190:
	cmp	$0,%eax
	je	_192
	fldz
	flds	-8(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
_192:
	cmp	$0,%eax
	je	_194
	fld1
	flds	-8(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_194:
	cmp	$0,%eax
	je	_196
	flds	-4(%ebp)
	jmp	_99
_196:
	flds	_325
	jmp	_99
_99:
	add	$16,%esp
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
	movl	8(%ebp),%edi
	movl	12(%ebp),%ebx
	mov	%edi,%eax
	flds	32(%ebx)
	fstps	8(%esp)
	flds	28(%ebx)
	fstps	4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*68(%eax)
	movl	%eax,-4(%ebp)
	mov	%edi,%eax
	flds	48(%ebx)
	fdivs	24(%ebx)
	fstps	8(%esp)
	flds	44(%ebx)
	fdivs	24(%ebx)
	fstps	4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*68(%eax)
	mov	%eax,%esi
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	flds	16(%esi)
	fmuls	_339
	fstps	16(%esi)
	flds	20(%esi)
	fmuls	_340
	fstps	20(%esi)
	flds	60(%edi)
	fmuls	60(%ebx)
	movl	-4(%ebp),%edx
	fmuls	16(%edx)
	flds	56(%edi)
	fmuls	56(%ebx)
	fmuls	16(%esi)
	faddp	%st(0),%st(1)
	fstps	16(%eax)
	flds	60(%edi)
	fmuls	60(%ebx)
	movl	-4(%ebp),%edx
	fmuls	20(%edx)
	flds	56(%edi)
	fmuls	56(%ebx)
	fmuls	20(%esi)
	faddp	%st(0),%st(1)
	fstps	20(%eax)
	jmp	_103
_103:
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
	jmp	_108
_108:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_displaylength:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	movl	8(%ebp),%edx
	movl	$1,16(%esp)
	movl	8(%edx),%eax
	flds	12(%eax)
	fadds	20(%edx)
	fstps	12(%esp)
	movl	8(%edx),%eax
	flds	8(%eax)
	fadds	16(%edx)
	fstps	8(%esp)
	movl	8(%edx),%eax
	flds	12(%eax)
	fstps	4(%esp)
	movl	8(%edx),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	mov	$0,%eax
	jmp	_111
_111:
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
	movl	$4,4(%esp)
	movl	$_204,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	%eax,8(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,12(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,16(%ebx)
	movl	$0,20(%ebx)
	fldz
	fstps	24(%ebx)
	movl	$0,28(%ebx)
	movl	$0,32(%ebx)
	fldz
	fstps	36(%ebx)
	fldz
	fstps	40(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,44(%ebx)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	movl	24(%eax),%eax
	decl	4(%eax)
	jnz	_212
	movl	%eax,(%esp)
	call	_bbGCFree
_212:
	movl	8(%ebx),%eax
	movl	%esi,24(%eax)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	movl	4+24(%eax),%eax
	decl	4(%eax)
	jnz	_216
	movl	%eax,(%esp)
	call	_bbGCFree
_216:
	movl	8(%ebx),%eax
	movl	%esi,4+24(%eax)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	movl	8+24(%eax),%eax
	decl	4(%eax)
	jnz	_220
	movl	%eax,(%esp)
	call	_bbGCFree
_220:
	movl	8(%ebx),%eax
	movl	%esi,8+24(%eax)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	movl	12+24(%eax),%eax
	decl	4(%eax)
	jnz	_224
	movl	%eax,(%esp)
	call	_bbGCFree
_224:
	movl	8(%ebx),%eax
	movl	%esi,12+24(%eax)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	44(%ebx),%eax
	decl	4(%eax)
	jnz	_228
	movl	%eax,(%esp)
	call	_bbGCFree
_228:
	movl	%esi,44(%ebx)
	mov	$0,%eax
	jmp	_114
_114:
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
_117:
	movl	44(%ebx),%eax
	decl	4(%eax)
	jnz	_231
	movl	%eax,(%esp)
	call	_bbGCFree
_231:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_233
	movl	%eax,(%esp)
	call	_bbGCFree
_233:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_235
	movl	%eax,(%esp)
	call	_bbGCFree
_235:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_237
	movl	%eax,(%esp)
	call	_bbGCFree
_237:
	mov	$0,%eax
	jmp	_229
_229:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawAll:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	mov	$0,%ebx
	jmp	_239
_9:
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*72(%eax)
_7:
	add	$1,%ebx
_239:
	cmp	$4,%ebx
	jl	_9
_8:
	flds	_353
	fstps	12(%esp)
	flds	_354
	fstps	8(%esp)
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	movl	8(%eax),%eax
	flds	12(%eax)
	fsubs	_355
	fstps	4(%esp)
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	movl	8(%eax),%eax
	flds	8(%eax)
	fsubs	_356
	fstps	(%esp)
	call	_brl_max2d_DrawRect
	mov	$0,%eax
	jmp	_120
_120:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_runMe:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$20,%esp
	movl	_bb_game,%eax
	movl	44(%eax),%edi
	flds	16(%edi)
	fmuls	52(%edi)
	fstps	16(%edi)
	flds	20(%edi)
	fmuls	52(%edi)
	fstps	20(%edi)
	flds	16(%edi)
	movl	_bb_game,%eax
	flds	36(%eax)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_242
	movl	_bb_game,%eax
	flds	36(%eax)
	fstps	16(%edi)
	jmp	_243
_242:
	flds	16(%edi)
	movl	_bb_game,%eax
	flds	36(%eax)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_244
	movl	_bb_game,%eax
	flds	36(%eax)
	fchs
	fstps	16(%edi)
_244:
_243:
	flds	20(%edi)
	movl	_bb_game,%eax
	flds	36(%eax)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_245
	movl	_bb_game,%eax
	flds	36(%eax)
	fstps	20(%edi)
	jmp	_246
_245:
	flds	20(%edi)
	movl	_bb_game,%eax
	flds	36(%eax)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_247
	movl	_bb_game,%eax
	flds	36(%eax)
	fchs
	fstps	20(%edi)
_247:
_246:
	movl	%edi,(%esp)
	call	_bb_updateObject
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	movl	8(%eax),%eax
	flds	12(%eax)
	fstps	(%esp)
	call	_bbStringFromFloat
	mov	%eax,%ebx
	movl	$_10,4(%esp)
	movl	_bb_game,%eax
	movl	44(%eax),%eax
	movl	8(%eax),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_bbStringFromFloat
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_standardio_Print
	movl	_bb_game,%eax
	flds	_359
	fstps	24(%eax)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	decl	4(%eax)
	jnz	_251
	movl	%eax,(%esp)
	call	_bbGCFree
_251:
	movl	_bb_game,%eax
	movl	%ebx,16(%eax)
	mov	$0,%esi
	jmp	_253
_13:
	mov	%edi,%eax
	movl	_bb_game,%edx
	movl	8(%edx),%edx
	movl	24(%edx,%esi,4),%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*60(%eax)
	fstps	-4(%ebp)
	movl	_bb_game,%eax
	flds	24(%eax)
	flds	-4(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_256
	movl	_bb_game,%eax
	movl	8(%eax),%eax
	movl	24(%eax,%esi,4),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	decl	4(%eax)
	jnz	_260
	movl	%eax,(%esp)
	call	_bbGCFree
_260:
	movl	_bb_game,%eax
	movl	%ebx,16(%eax)
	movl	_bb_game,%eax
	flds	-4(%ebp)
	fstps	24(%eax)
_256:
_11:
	add	$1,%esi
_253:
	cmp	$4,%esi
	jl	_13
_12:
	movl	_bb_game,%eax
	cmpl	$_bbNullObject,16(%eax)
	je	_261
	movl	12(%edi),%edx
	movl	8(%edi),%eax
	flds	8(%eax)
	flds	16(%edi)
	movl	_bb_game,%eax
	fmuls	24(%eax)
	faddp	%st(0),%st(1)
	fstps	8(%edx)
	movl	12(%edi),%edx
	movl	8(%edi),%eax
	flds	12(%eax)
	flds	20(%edi)
	movl	_bb_game,%eax
	fmuls	24(%eax)
	faddp	%st(0),%st(1)
	fstps	12(%edx)
	mov	%edi,%eax
	movl	_bb_game,%edx
	movl	16(%edx),%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*64(%eax)
	flds	16(%eax)
	fstps	16(%edi)
	flds	20(%eax)
	fstps	20(%edi)
	movl	12(%edi),%edx
	movl	12(%edi),%eax
	flds	8(%eax)
	flds	16(%edi)
	flds	_360
	movl	_bb_game,%eax
	fsubs	24(%eax)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	8(%edx)
	movl	12(%edi),%edx
	movl	12(%edi),%eax
	flds	12(%eax)
	flds	20(%edi)
	flds	_361
	movl	_bb_game,%eax
	fsubs	24(%eax)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	12(%edx)
	movl	_bb_game,%edx
	flds	_362
	movl	_bb_game,%eax
	fsubs	24(%eax)
	fstps	24(%edx)
_261:
	movl	12(%edi),%eax
	flds	8(%eax)
	movl	_bb_game,%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp)
	fildl	-8(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_264
	movl	12(%edi),%eax
	movl	12(%edi),%edx
	flds	8(%edx)
	movl	_bb_game,%edx
	movl	28(%edx),%edx
	movl	%edx,-8(%ebp)
	fildl	-8(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	8(%eax)
	jmp	_265
_264:
	movl	12(%edi),%eax
	flds	8(%eax)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_266
	movl	12(%edi),%eax
	movl	12(%edi),%edx
	flds	8(%edx)
	movl	_bb_game,%edx
	movl	28(%edx),%edx
	movl	%edx,-8(%ebp)
	fildl	-8(%ebp)
	faddp	%st(0),%st(1)
	fstps	8(%eax)
_266:
_265:
	movl	12(%edi),%eax
	flds	12(%eax)
	movl	_bb_game,%eax
	movl	32(%eax),%eax
	movl	%eax,-8(%ebp)
	fildl	-8(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_267
	movl	12(%edi),%eax
	movl	12(%edi),%edx
	flds	12(%edx)
	movl	_bb_game,%edx
	movl	32(%edx),%edx
	movl	%edx,-8(%ebp)
	fildl	-8(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	12(%eax)
	jmp	_268
_267:
	movl	12(%edi),%eax
	flds	12(%eax)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_269
	movl	12(%edi),%eax
	movl	12(%edi),%edx
	flds	12(%edx)
	movl	_bb_game,%edx
	movl	32(%edx),%edx
	movl	%edx,-8(%ebp)
	fildl	-8(%ebp)
	faddp	%st(0),%st(1)
	fstps	12(%eax)
_269:
_268:
	movl	%edi,(%esp)
	call	_bb_drawAll
	movl	12(%edi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%edi),%eax
	decl	4(%eax)
	jnz	_273
	movl	%eax,(%esp)
	call	_bbGCFree
_273:
	movl	%ebx,8(%edi)
	flds	16(%edi)
	fdivs	72(%edi)
	fstps	16(%edi)
	flds	20(%edi)
	fdivs	72(%edi)
	fstps	20(%edi)
	mov	$0,%eax
	jmp	_122
_122:
	add	$20,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_updateObject:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	sub	$8,%esp
	movl	8(%ebp),%ebx
	call	_bbMilliSecs
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	fsubs	68(%ebx)
	fdivs	_375
	fstps	-4(%ebp)
	flds	16(%ebx)
	fmuls	-4(%ebp)
	fstps	16(%ebx)
	flds	20(%ebx)
	fmuls	-4(%ebp)
	fstps	20(%ebx)
	flds	20(%ebx)
	flds	-4(%ebp)
	movl	_bb_game,%eax
	fmuls	40(%eax)
	faddp	%st(0),%st(1)
	fstps	20(%ebx)
	movl	12(%ebx),%edx
	movl	8(%ebx),%eax
	flds	8(%eax)
	fadds	16(%ebx)
	fstps	8(%edx)
	movl	12(%ebx),%edx
	movl	8(%ebx),%eax
	flds	12(%eax)
	fadds	20(%ebx)
	fstps	12(%edx)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	flds	-8(%ebp)
	fstps	68(%ebx)
	flds	-4(%ebp)
	fstps	72(%ebx)
	mov	$0,%eax
	jmp	_125
_125:
	add	$8,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_150:
	.long	0
_19:
	.asciz	"Tpoint"
_20:
	.asciz	"x"
_21:
	.asciz	"f"
_22:
	.asciz	"y"
_23:
	.asciz	"New"
_24:
	.asciz	"()i"
_25:
	.asciz	"Delete"
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
	.long	6
	.long	_23
	.long	_24
	.long	16
	.long	6
	.long	_25
	.long	_24
	.long	20
	.long	0
	.align	4
_bb_Tpoint:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_18
	.long	16
	.long	__bb_Tpoint_New
	.long	__bb_Tpoint_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_27:
	.asciz	"Tvector"
_28:
	.asciz	"p0"
_29:
	.asciz	":Tpoint"
_30:
	.asciz	"p1"
_31:
	.asciz	"vx"
_32:
	.asciz	"vy"
_33:
	.asciz	"length"
_34:
	.asciz	"dx"
_35:
	.asciz	"dy"
_36:
	.asciz	"rx"
_37:
	.asciz	"ry"
_38:
	.asciz	"lx"
_39:
	.asciz	"ly"
_40:
	.asciz	"airf"
_41:
	.asciz	"b"
_42:
	.asciz	"visible"
_43:
	.asciz	"i"
_44:
	.asciz	"lastTime"
_45:
	.asciz	"timeFrame"
_46:
	.asciz	"Create"
_47:
	.asciz	"(f,f,f,f):Tvector"
_48:
	.asciz	"update"
_49:
	.asciz	"perP"
_50:
	.asciz	"(:Tvector)f"
_51:
	.asciz	"findIntersection"
_52:
	.asciz	"bounce"
_53:
	.asciz	"(:Tvector):Tvector"
_54:
	.asciz	"project"
_55:
	.asciz	"(f,f):Tvector"
_56:
	.asciz	"displaylength"
	.align	4
_26:
	.long	2
	.long	_27
	.long	3
	.long	_28
	.long	_29
	.long	8
	.long	3
	.long	_30
	.long	_29
	.long	12
	.long	3
	.long	_31
	.long	_21
	.long	16
	.long	3
	.long	_32
	.long	_21
	.long	20
	.long	3
	.long	_33
	.long	_21
	.long	24
	.long	3
	.long	_34
	.long	_21
	.long	28
	.long	3
	.long	_35
	.long	_21
	.long	32
	.long	3
	.long	_36
	.long	_21
	.long	36
	.long	3
	.long	_37
	.long	_21
	.long	40
	.long	3
	.long	_38
	.long	_21
	.long	44
	.long	3
	.long	_39
	.long	_21
	.long	48
	.long	3
	.long	_40
	.long	_21
	.long	52
	.long	3
	.long	_41
	.long	_21
	.long	56
	.long	3
	.long	_21
	.long	_21
	.long	60
	.long	3
	.long	_42
	.long	_43
	.long	64
	.long	3
	.long	_44
	.long	_21
	.long	68
	.long	3
	.long	_45
	.long	_21
	.long	72
	.long	6
	.long	_23
	.long	_24
	.long	16
	.long	6
	.long	_25
	.long	_24
	.long	20
	.long	7
	.long	_46
	.long	_47
	.long	48
	.long	6
	.long	_48
	.long	_24
	.long	52
	.long	6
	.long	_49
	.long	_50
	.long	56
	.long	6
	.long	_51
	.long	_50
	.long	60
	.long	6
	.long	_52
	.long	_53
	.long	64
	.long	6
	.long	_54
	.long	_55
	.long	68
	.long	6
	.long	_56
	.long	_24
	.long	72
	.long	0
	.align	4
_bb_Tvector:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_26
	.long	76
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
	.long	__bb_Tvector_displaylength
_58:
	.asciz	"Tgame"
_59:
	.asciz	"v"
_60:
	.asciz	"[]:Tvector"
_61:
	.asciz	"ip"
_62:
	.asciz	":Tvector"
_63:
	.asciz	"dragging"
_64:
	.asciz	"t"
_65:
	.asciz	"stageW"
_66:
	.asciz	"stageH"
_67:
	.asciz	"maxV"
_68:
	.asciz	"gravity"
_69:
	.asciz	"myOb"
	.align	4
_57:
	.long	2
	.long	_58
	.long	3
	.long	_59
	.long	_60
	.long	8
	.long	3
	.long	_61
	.long	_29
	.long	12
	.long	3
	.long	_52
	.long	_62
	.long	16
	.long	3
	.long	_63
	.long	_43
	.long	20
	.long	3
	.long	_64
	.long	_21
	.long	24
	.long	3
	.long	_65
	.long	_43
	.long	28
	.long	3
	.long	_66
	.long	_43
	.long	32
	.long	3
	.long	_67
	.long	_21
	.long	36
	.long	3
	.long	_68
	.long	_21
	.long	40
	.long	3
	.long	_69
	.long	_62
	.long	44
	.long	6
	.long	_23
	.long	_24
	.long	16
	.long	6
	.long	_25
	.long	_24
	.long	20
	.long	0
	.align	4
_bb_Tgame:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_57
	.long	48
	.long	__bb_Tgame_New
	.long	__bb_Tgame_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.align	4
_128:
	.long	0
	.align	4
_bb_game:
	.long	_bbNullObject
	.align	4
_277:
	.long	0x41200000
	.align	4
_278:
	.long	0x3f000000
	.align	4
_279:
	.long	0x3f7d70a4
	.align	4
_280:
	.long	0x3f4ccccd
	.align	4
_281:
	.long	0x3f4ccccd
	.align	4
_282:
	.long	0x43160000
	.align	4
_283:
	.long	0x42c80000
	.align	4
_284:
	.long	0x42480000
	.align	4
_285:
	.long	0x437a0000
	.align	4
_286:
	.long	0x42480000
	.align	4
_287:
	.long	0x42480000
	.align	4
_288:
	.long	0x43020000
	.align	4
_289:
	.long	0x437a0000
	.align	4
_290:
	.long	0x42480000
	.align	4
_291:
	.long	0x437a0000
	.align	4
_292:
	.long	0x43020000
	.align	4
_293:
	.long	0x42480000
	.align	4
_294:
	.long	0x43020000
	.align	4
_295:
	.long	0x437a0000
	.align	4
_296:
	.long	0x42480000
	.align	4
_297:
	.long	0x42480000
	.align	4
_298:
	.long	0x43020000
	.align	4
_299:
	.long	0x42480000
	.align	4
_14:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	43,43,43,43,43,43
	.align	4
_322:
	.long	0x0
	.align	4
_323:
	.long	0x0
	.align	4
_324:
	.long	0x49742400
	.align	4
_325:
	.long	0x49742400
	.align	4
_339:
	.long	0xbf800000
	.align	4
_340:
	.long	0xbf800000
_204:
	.asciz	":Tvector"
	.align	4
_353:
	.long	0x40800000
	.align	4
_354:
	.long	0x40800000
	.align	4
_355:
	.long	0x40000000
	.align	4
_356:
	.long	0x40000000
	.align	4
_10:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	45,45,45,45,45,45,45
	.align	4
_359:
	.long	0x49742400
	.align	4
_360:
	.long	0x3f800000
	.align	4
_361:
	.long	0x3f800000
	.align	4
_362:
	.long	0x3f800000
	.align	4
_375:
	.long	0x42c80000
