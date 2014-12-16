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
	.reference	_bbFloatToInt
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
	.reference	_brl_max2d_DrawOval
	.reference	_brl_max2d_DrawText
	.reference	_brl_polledinput_KeyDown
	.globl	__bb_Tgame_Create
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
	.globl	__bb_Tvector_projectVector
	.globl	__bb_Tvector_updateVector
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
	sub	$36,%esp
	cmpl	$0,_156
	je	_157
	mov	$0,%eax
	add	$36,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_157:
	movl	$1,_156
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
	movl	_134,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_135
	flds	_255
	fstps	16(%esp)
	flds	_256
	fstps	12(%esp)
	movl	$180,8(%esp)
	movl	$300,4(%esp)
	movl	$0,(%esp)
	calll	*_bb_Tgame+48
	incl	4(%eax)
	movl	%eax,_bb_game
	orl	$1,_134
_135:
	flds	_257
	fstps	24(%esp)
	flds	_258
	fstps	20(%esp)
	flds	_259
	fstps	16(%esp)
	flds	_260
	fstps	12(%esp)
	flds	_261
	fstps	8(%esp)
	flds	_262
	fstps	4(%esp)
	flds	_263
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	32(%eax),%eax
	decl	4(%eax)
	jnz	_139
	movl	%eax,(%esp)
	call	_bbGCFree
_139:
	movl	_bb_game,%eax
	movl	%ebx,32(%eax)
	movl	_bb_game,%eax
	movl	32(%eax),%eax
	movl	%eax,(%esp)
	movl	_bb_game,%eax
	movl	32(%eax),%eax
	movl	(%eax),%eax
	calll	*52(%eax)
	fld1
	fstps	24(%esp)
	fld1
	fstps	20(%esp)
	fld1
	fstps	16(%esp)
	flds	_264
	fstps	12(%esp)
	flds	_265
	fstps	8(%esp)
	flds	_266
	fstps	4(%esp)
	flds	_267
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	24(%eax),%eax
	decl	4(%eax)
	jnz	_143
	movl	%eax,(%esp)
	call	_bbGCFree
_143:
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	%ebx,24(%eax)
	fld1
	fstps	24(%esp)
	fld1
	fstps	20(%esp)
	fld1
	fstps	16(%esp)
	flds	_268
	fstps	12(%esp)
	flds	_269
	fstps	8(%esp)
	flds	_270
	fstps	4(%esp)
	flds	_271
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	4+24(%eax),%eax
	decl	4(%eax)
	jnz	_147
	movl	%eax,(%esp)
	call	_bbGCFree
_147:
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	%ebx,4+24(%eax)
	fld1
	fstps	24(%esp)
	fld1
	fstps	20(%esp)
	fld1
	fstps	16(%esp)
	flds	_272
	fstps	12(%esp)
	flds	_273
	fstps	8(%esp)
	flds	_274
	fstps	4(%esp)
	flds	_275
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	8+24(%eax),%eax
	decl	4(%eax)
	jnz	_151
	movl	%eax,(%esp)
	call	_bbGCFree
_151:
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	%ebx,8+24(%eax)
	fld1
	fstps	24(%esp)
	fld1
	fstps	20(%esp)
	fld1
	fstps	16(%esp)
	flds	_276
	fstps	12(%esp)
	flds	_277
	fstps	8(%esp)
	flds	_278
	fstps	4(%esp)
	flds	_279
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	12+24(%eax),%eax
	decl	4(%eax)
	jnz	_155
	movl	%eax,(%esp)
	call	_bbGCFree
_155:
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	%ebx,12+24(%eax)
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	24(%eax),%eax
	movl	%eax,(%esp)
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	24(%eax),%eax
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	4+24(%eax),%eax
	movl	%eax,(%esp)
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	4+24(%eax),%eax
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	8+24(%eax),%eax
	movl	%eax,(%esp)
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	8+24(%eax),%eax
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	12+24(%eax),%eax
	movl	%eax,(%esp)
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	12+24(%eax),%eax
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$600,4(%esp)
	movl	$800,(%esp)
	call	_brl_graphics_Graphics
_16:
	call	_brl_max2d_Cls
	call	_bb_runMe
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
_14:
	movl	$27,(%esp)
	call	_brl_polledinput_KeyDown
	cmp	$0,%eax
	je	_16
_15:
	mov	$0,%eax
	jmp	_69
_69:
	add	$36,%esp
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
	jmp	_72
_72:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tpoint_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_75:
	mov	$0,%eax
	jmp	_158
_158:
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
	fldz
	fstps	64(%ebx)
	fldz
	fstps	68(%ebx)
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_164
	movl	%eax,(%esp)
	call	_bbGCFree
_164:
	movl	%esi,8(%ebx)
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_168
	movl	%eax,(%esp)
	call	_bbGCFree
_168:
	movl	%esi,12(%ebx)
	mov	$0,%eax
	jmp	_78
_78:
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
_81:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_171
	movl	%eax,(%esp)
	call	_bbGCFree
_171:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_173
	movl	%eax,(%esp)
	call	_bbGCFree
_173:
	mov	$0,%eax
	jmp	_169
_169:
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
	flds	24(%ebp)
	fstps	56(%eax)
	flds	28(%ebp)
	fstps	60(%eax)
	flds	32(%ebp)
	fstps	52(%eax)
	jmp	_90
_90:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_updateVector:
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
	fstps	32(%ebx)
	flds	32(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_175
	flds	16(%ebx)
	fdivs	32(%ebx)
	fstps	24(%ebx)
	flds	20(%ebx)
	fdivs	32(%ebx)
	fstps	28(%ebx)
	jmp	_176
_175:
	fldz
	fstps	24(%ebx)
	fldz
	fstps	28(%ebx)
_176:
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
	jmp	_93
_93:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_findIntersection:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%esi
	movl	12(%ebp),%ebx
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-16(%ebp)
	movl	8(%ebx),%eax
	flds	8(%eax)
	movl	8(%esi),%eax
	fsubs	8(%eax)
	movl	-16(%ebp),%eax
	fstps	16(%eax)
	movl	8(%ebx),%eax
	flds	12(%eax)
	movl	8(%esi),%eax
	fsubs	12(%eax)
	movl	-16(%ebp),%eax
	fstps	20(%eax)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	mov	%eax,%edi
	movl	8(%esi),%eax
	flds	8(%eax)
	movl	8(%ebx),%eax
	fsubs	8(%eax)
	fstps	16(%edi)
	movl	8(%esi),%eax
	flds	12(%eax)
	movl	8(%ebx),%eax
	fsubs	12(%eax)
	fstps	20(%edi)
	flds	24(%esi)
	flds	24(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_181
	flds	28(%esi)
	flds	28(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_181:
	cmp	$0,%eax
	jne	_185
	flds	24(%esi)
	flds	24(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_183
	flds	28(%esi)
	flds	28(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_183:
_185:
	cmp	$0,%eax
	je	_187
	flds	_300
	jmp	_97
_187:
	movl	%ebx,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	calll	*_bb_Tvector+60
	fstps	-4(%ebp)
	movl	%ebx,4(%esp)
	movl	%esi,(%esp)
	calll	*_bb_Tvector+60
	flds	-4(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	fstps	-12(%ebp)
	movl	%esi,4(%esp)
	movl	%edi,(%esp)
	calll	*_bb_Tvector+60
	fstps	-8(%ebp)
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	calll	*_bb_Tvector+60
	flds	-8(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
_188:
	fldz
	flds	-12(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_189
	fld1
	flds	-12(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_189:
	cmp	$0,%eax
	je	_191
	fldz
	fxch	%st(1)
	fucom	%st(1)
	fxch	%st(1)
	fstp	%st(0)
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
_191:
	cmp	$0,%eax
	jne	_315
	fstp	%st(0)
	jmp	_193
_315:
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_193:
	cmp	$0,%eax
	je	_195
	flds	-12(%ebp)
	jmp	_97
_195:
	flds	_301
	jmp	_97
_97:
	add	$12,%esp
	pop	%edi
	pop	%esi
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
	jmp	_101
_101:
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
	flds	28(%ebx)
	fstps	8(%esp)
	flds	24(%ebx)
	fstps	4(%esp)
	movl	%edi,(%esp)
	calll	*_bb_Tvector+68
	movl	%eax,-4(%ebp)
	flds	48(%ebx)
	fdivs	32(%ebx)
	fstps	8(%esp)
	flds	44(%ebx)
	fdivs	32(%ebx)
	fstps	4(%esp)
	movl	%edi,(%esp)
	calll	*_bb_Tvector+68
	mov	%eax,%esi
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	flds	16(%esi)
	fmuls	_320
	fstps	16(%esi)
	flds	20(%esi)
	fmuls	_321
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
	jmp	_105
_105:
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_projectVector:
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
	jmp	_110
_110:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_Tgame,(%ebx)
	movl	$0,8(%ebx)
	movl	$0,12(%ebx)
	movl	$0,16(%ebx)
	fldz
	fstps	20(%ebx)
	fldz
	fstps	24(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,28(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,32(%ebx)
	movl	$4,4(%esp)
	movl	$_204,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	%eax,36(%ebx)
	movl	$0,40(%ebx)
	mov	$0,%eax
	jmp	_113
_113:
	add	$20,%esp
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
_116:
	movl	36(%ebx),%eax
	decl	4(%eax)
	jnz	_208
	movl	%eax,(%esp)
	call	_bbGCFree
_208:
	movl	32(%ebx),%eax
	decl	4(%eax)
	jnz	_210
	movl	%eax,(%esp)
	call	_bbGCFree
_210:
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_212
	movl	%eax,(%esp)
	call	_bbGCFree
_212:
	mov	$0,%eax
	jmp	_206
_206:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_Create:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	16(%ebp),%ebx
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectNew
	movl	%edi,8(%eax)
	movl	%esi,12(%eax)
	movl	%ebx,16(%eax)
	flds	20(%ebp)
	fstps	20(%eax)
	flds	24(%ebp)
	fstps	24(%eax)
	jmp	_123
_123:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawAll:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	_bb_game,%eax
	movl	36(%eax),%esi
	mov	%esi,%eax
	add	$24,%eax
	mov	%eax,%ebx
	mov	%ebx,%eax
	addl	16(%esi),%eax
	mov	%eax,%edi
	jmp	_7
_9:
	movl	(%ebx),%eax
	add	$4,%ebx
	cmp	$_bbNullObject,%eax
	je	_7
	movl	$1,16(%esp)
	movl	8(%eax),%edx
	flds	12(%edx)
	fadds	20(%eax)
	fstps	12(%esp)
	movl	8(%eax),%edx
	flds	8(%edx)
	fadds	16(%eax)
	fstps	8(%esp)
	movl	8(%eax),%edx
	flds	12(%edx)
	fstps	4(%esp)
	movl	8(%eax),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
_7:
	cmp	%edi,%ebx
	jne	_9
_8:
	flds	_335
	fstps	12(%esp)
	flds	_336
	fstps	8(%esp)
	movl	8(%ebp),%eax
	movl	8(%eax),%eax
	flds	12(%eax)
	fsubs	_337
	fstps	4(%esp)
	movl	8(%ebp),%eax
	movl	8(%eax),%eax
	flds	8(%eax)
	fsubs	_338
	fstps	(%esp)
	call	_brl_max2d_DrawOval
	flds	_339
	fstps	8(%esp)
	flds	_340
	fstps	-4(%ebp)
	movl	8(%ebp),%eax
	movl	8(%eax),%eax
	flds	12(%eax)
	fstps	(%esp)
	call	_bbStringFromFloat
	mov	%eax,%ebx
	movl	$_10,4(%esp)
	movl	8(%ebp),%eax
	movl	8(%eax),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_bbStringFromFloat
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	flds	-4(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	mov	$0,%eax
	jmp	_126
_126:
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_runMe:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	_bb_game,%eax
	movl	32(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	flds	16(%eax)
	movl	-8(%ebp),%eax
	fmuls	52(%eax)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	flds	20(%eax)
	movl	-8(%ebp),%eax
	fmuls	52(%eax)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	flds	16(%eax)
	movl	_bb_game,%eax
	flds	20(%eax)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_220
	movl	_bb_game,%eax
	flds	20(%eax)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	jmp	_221
_220:
	movl	-8(%ebp),%eax
	flds	16(%eax)
	movl	_bb_game,%eax
	flds	20(%eax)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_222
	movl	_bb_game,%eax
	flds	20(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	16(%eax)
_222:
_221:
	movl	-8(%ebp),%eax
	flds	20(%eax)
	movl	_bb_game,%eax
	flds	20(%eax)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_223
	movl	_bb_game,%eax
	flds	20(%eax)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	jmp	_224
_223:
	movl	-8(%ebp),%eax
	flds	20(%eax)
	movl	_bb_game,%eax
	flds	20(%eax)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_225
	movl	_bb_game,%eax
	flds	20(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	20(%eax)
_225:
_224:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_updateObject
	movl	_bb_game,%eax
	movl	$1000000,40(%eax)
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_game,%eax
	movl	28(%eax),%eax
	decl	4(%eax)
	jnz	_229
	movl	%eax,(%esp)
	call	_bbGCFree
_229:
	movl	_bb_game,%eax
	movl	%ebx,28(%eax)
	movl	_bb_game,%eax
	movl	36(%eax),%edi
	mov	%edi,%eax
	add	$24,%eax
	mov	%eax,%esi
	mov	%esi,%eax
	addl	16(%edi),%eax
	movl	%eax,-12(%ebp)
	jmp	_11
_13:
	movl	(%esi),%ebx
	add	$4,%esi
	cmp	$_bbNullObject,%ebx
	je	_11
	movl	%ebx,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	calll	*56(%eax)
	fstps	-4(%ebp)
	movl	_bb_game,%eax
	movl	40(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	flds	-4(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_236
	mov	%ebx,%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	28(%eax),%eax
	decl	4(%eax)
	jnz	_240
	movl	%eax,(%esp)
	call	_bbGCFree
_240:
	movl	_bb_game,%eax
	movl	%ebx,28(%eax)
	movl	_bb_game,%ebx
	flds	-4(%ebp)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,40(%ebx)
_236:
_11:
	cmpl	-12(%ebp),%esi
	jne	_13
_12:
	movl	_bb_game,%eax
	cmpl	$_bbNullObject,28(%eax)
	je	_241
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	flds	8(%edx)
	movl	-8(%ebp),%edx
	flds	16(%edx)
	movl	_bb_game,%edx
	movl	40(%edx),%edx
	movl	%edx,-16(%ebp)
	fildl	-16(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	flds	12(%edx)
	movl	-8(%ebp),%edx
	flds	20(%edx)
	movl	_bb_game,%edx
	movl	40(%edx),%edx
	movl	%edx,-16(%ebp)
	fildl	-16(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	12(%eax)
	movl	_bb_game,%eax
	movl	28(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	calll	*64(%eax)
	flds	16(%eax)
	movl	-8(%ebp),%edx
	fstps	16(%edx)
	flds	20(%eax)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	flds	8(%edx)
	movl	-8(%ebp),%edx
	flds	16(%edx)
	mov	$1,%ecx
	movl	_bb_game,%edx
	subl	40(%edx),%ecx
	movl	%ecx,-16(%ebp)
	fildl	-16(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	flds	12(%edx)
	movl	-8(%ebp),%edx
	flds	20(%edx)
	mov	$1,%ecx
	movl	_bb_game,%edx
	subl	40(%edx),%ecx
	movl	%ecx,-16(%ebp)
	fildl	-16(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	12(%eax)
	movl	_bb_game,%ecx
	mov	$1,%edx
	movl	_bb_game,%eax
	subl	40(%eax),%edx
	movl	%edx,40(%ecx)
_241:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	flds	8(%eax)
	movl	_bb_game,%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_243
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	flds	8(%edx)
	movl	_bb_game,%edx
	movl	12(%edx),%edx
	movl	%edx,-16(%ebp)
	fildl	-16(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	8(%eax)
	jmp	_244
_243:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	flds	8(%eax)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_245
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	flds	8(%edx)
	movl	_bb_game,%edx
	movl	12(%edx),%edx
	movl	%edx,-16(%ebp)
	fildl	-16(%ebp)
	faddp	%st(0),%st(1)
	fstps	8(%eax)
_245:
_244:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	flds	12(%eax)
	movl	_bb_game,%eax
	movl	16(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_246
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	flds	12(%edx)
	movl	_bb_game,%edx
	movl	16(%edx),%edx
	movl	%edx,-16(%ebp)
	fildl	-16(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	12(%eax)
	jmp	_247
_246:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	flds	12(%eax)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_248
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	flds	12(%edx)
	movl	_bb_game,%edx
	movl	16(%edx),%edx
	movl	%edx,-16(%ebp)
	fildl	-16(%ebp)
	faddp	%st(0),%st(1)
	fstps	12(%eax)
_248:
_247:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_drawAll
	movl	-8(%ebp),%eax
	movl	12(%eax),%ebx
	incl	4(%ebx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_252
	movl	%eax,(%esp)
	call	_bbGCFree
_252:
	movl	-8(%ebp),%eax
	movl	%ebx,8(%eax)
	movl	-8(%ebp),%eax
	flds	16(%eax)
	movl	-8(%ebp),%eax
	fdivs	64(%eax)
	movl	-8(%ebp),%eax
	fstps	16(%eax)
	movl	-8(%ebp),%eax
	flds	20(%eax)
	movl	-8(%ebp),%eax
	fdivs	64(%eax)
	movl	-8(%ebp),%eax
	fstps	20(%eax)
	mov	$0,%eax
	jmp	_128
_128:
	add	$12,%esp
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
	fdivs	_357
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
	fmuls	24(%eax)
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
	flds	16(%ebx)
	fmuls	16(%ebx)
	flds	20(%ebx)
	fmuls	20(%ebx)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	fstps	32(%ebx)
	flds	16(%ebx)
	fdivs	32(%ebx)
	fstps	24(%ebx)
	flds	20(%ebx)
	fdivs	32(%ebx)
	fstps	28(%ebx)
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
	flds	-8(%ebp)
	fstps	68(%ebx)
	flds	-4(%ebp)
	fstps	64(%ebx)
	mov	$0,%eax
	jmp	_131
_131:
	add	$8,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_156:
	.long	0
_18:
	.asciz	"Tpoint"
_19:
	.asciz	"x"
_20:
	.asciz	"f"
_21:
	.asciz	"y"
_22:
	.asciz	"New"
_23:
	.asciz	"()i"
_24:
	.asciz	"Delete"
	.align	4
_17:
	.long	2
	.long	_18
	.long	3
	.long	_19
	.long	_20
	.long	8
	.long	3
	.long	_21
	.long	_20
	.long	12
	.long	6
	.long	_22
	.long	_23
	.long	16
	.long	6
	.long	_24
	.long	_23
	.long	20
	.long	0
	.align	4
_bb_Tpoint:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_17
	.long	16
	.long	__bb_Tpoint_New
	.long	__bb_Tpoint_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_26:
	.asciz	"Tvector"
_27:
	.asciz	"p0"
_28:
	.asciz	":Tpoint"
_29:
	.asciz	"p1"
_30:
	.asciz	"vx"
_31:
	.asciz	"vy"
_32:
	.asciz	"dx"
_33:
	.asciz	"dy"
_34:
	.asciz	"length"
_35:
	.asciz	"rx"
_36:
	.asciz	"ry"
_37:
	.asciz	"lx"
_38:
	.asciz	"ly"
_39:
	.asciz	"airf"
_40:
	.asciz	"b"
_41:
	.asciz	"timeFrame"
_42:
	.asciz	"LastTime"
_43:
	.asciz	"Create"
_44:
	.asciz	"(f,f,f,f,f,f,f):Tvector"
_45:
	.asciz	"updateVector"
_46:
	.asciz	"(:Tvector)i"
_47:
	.asciz	"findIntersection"
_48:
	.asciz	"(:tvector,:Tvector)f"
_49:
	.asciz	"perP"
_50:
	.asciz	"(:Tvector,:Tvector)f"
_51:
	.asciz	"bounce"
_52:
	.asciz	"(:Tvector,:tvector):tvector"
_53:
	.asciz	"projectVector"
_54:
	.asciz	"(:Tvector,f,f):Tvector"
	.align	4
_25:
	.long	2
	.long	_26
	.long	3
	.long	_27
	.long	_28
	.long	8
	.long	3
	.long	_29
	.long	_28
	.long	12
	.long	3
	.long	_30
	.long	_20
	.long	16
	.long	3
	.long	_31
	.long	_20
	.long	20
	.long	3
	.long	_32
	.long	_20
	.long	24
	.long	3
	.long	_33
	.long	_20
	.long	28
	.long	3
	.long	_34
	.long	_20
	.long	32
	.long	3
	.long	_35
	.long	_20
	.long	36
	.long	3
	.long	_36
	.long	_20
	.long	40
	.long	3
	.long	_37
	.long	_20
	.long	44
	.long	3
	.long	_38
	.long	_20
	.long	48
	.long	3
	.long	_39
	.long	_20
	.long	52
	.long	3
	.long	_40
	.long	_20
	.long	56
	.long	3
	.long	_20
	.long	_20
	.long	60
	.long	3
	.long	_41
	.long	_20
	.long	64
	.long	3
	.long	_42
	.long	_20
	.long	68
	.long	6
	.long	_22
	.long	_23
	.long	16
	.long	6
	.long	_24
	.long	_23
	.long	20
	.long	7
	.long	_43
	.long	_44
	.long	48
	.long	7
	.long	_45
	.long	_46
	.long	52
	.long	7
	.long	_47
	.long	_48
	.long	56
	.long	7
	.long	_49
	.long	_50
	.long	60
	.long	7
	.long	_51
	.long	_52
	.long	64
	.long	7
	.long	_53
	.long	_54
	.long	68
	.long	0
	.align	4
_bb_Tvector:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_25
	.long	72
	.long	__bb_Tvector_New
	.long	__bb_Tvector_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Tvector_Create
	.long	__bb_Tvector_updateVector
	.long	__bb_Tvector_findIntersection
	.long	__bb_Tvector_perP
	.long	__bb_Tvector_bounce
	.long	__bb_Tvector_projectVector
_56:
	.asciz	"Tgame"
_57:
	.asciz	"dragging"
_58:
	.asciz	"i"
_59:
	.asciz	"stageW"
_60:
	.asciz	"stageH"
_61:
	.asciz	"maxV"
_62:
	.asciz	"gravity"
_63:
	.asciz	":Tvector"
_64:
	.asciz	"myOb"
_65:
	.asciz	"v"
_66:
	.asciz	"[]:Tvector"
_67:
	.asciz	"t"
_68:
	.asciz	"(i,i,i,f,f):Tgame"
	.align	4
_55:
	.long	2
	.long	_56
	.long	3
	.long	_57
	.long	_58
	.long	8
	.long	3
	.long	_59
	.long	_58
	.long	12
	.long	3
	.long	_60
	.long	_58
	.long	16
	.long	3
	.long	_61
	.long	_20
	.long	20
	.long	3
	.long	_62
	.long	_20
	.long	24
	.long	3
	.long	_51
	.long	_63
	.long	28
	.long	3
	.long	_64
	.long	_63
	.long	32
	.long	3
	.long	_65
	.long	_66
	.long	36
	.long	3
	.long	_67
	.long	_58
	.long	40
	.long	6
	.long	_22
	.long	_23
	.long	16
	.long	6
	.long	_24
	.long	_23
	.long	20
	.long	7
	.long	_43
	.long	_68
	.long	48
	.long	0
	.align	4
_bb_Tgame:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_55
	.long	44
	.long	__bb_Tgame_New
	.long	__bb_Tgame_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Tgame_Create
	.align	4
_134:
	.long	0
	.align	4
_255:
	.long	0x3f000000
	.align	4
_256:
	.long	0x41200000
	.align	4
_bb_game:
	.long	_bbNullObject
	.align	4
_257:
	.long	0x3f7d70a4
	.align	4
_258:
	.long	0x3f4ccccd
	.align	4
_259:
	.long	0x3f4ccccd
	.align	4
_260:
	.long	0x43160000
	.align	4
_261:
	.long	0x43170000
	.align	4
_262:
	.long	0x42c80000
	.align	4
_263:
	.long	0x43160000
	.align	4
_264:
	.long	0x42480000
	.align	4
_265:
	.long	0x437a0000
	.align	4
_266:
	.long	0x42480000
	.align	4
_267:
	.long	0x42480000
	.align	4
_268:
	.long	0x43020000
	.align	4
_269:
	.long	0x437a0000
	.align	4
_270:
	.long	0x42480000
	.align	4
_271:
	.long	0x437a0000
	.align	4
_272:
	.long	0x43020000
	.align	4
_273:
	.long	0x42480000
	.align	4
_274:
	.long	0x43020000
	.align	4
_275:
	.long	0x437a0000
	.align	4
_276:
	.long	0x42480000
	.align	4
_277:
	.long	0x42480000
	.align	4
_278:
	.long	0x43020000
	.align	4
_279:
	.long	0x42480000
	.align	4
_300:
	.long	0x49742400
	.align	4
_301:
	.long	0x49742400
	.align	4
_320:
	.long	0xbf800000
	.align	4
_321:
	.long	0xbf800000
_204:
	.asciz	":Tvector"
	.align	4
_335:
	.long	0x40c00000
	.align	4
_336:
	.long	0x40c00000
	.align	4
_337:
	.long	0x40400000
	.align	4
_338:
	.long	0x40400000
	.align	4
_339:
	.long	0x43c80000
	.align	4
_340:
	.long	0x40a00000
	.align	4
_10:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	45,45,45,45,45,45
	.align	4
_357:
	.long	0x42c80000
