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
	.reference	_brl_graphics_Flip
	.reference	_brl_graphics_Graphics
	.reference	_brl_max2d_Cls
	.reference	_brl_max2d_DrawLine
	.reference	_brl_max2d_DrawOval
	.reference	_brl_polledinput_KeyDown
	.globl	__bb_Tgame_Create
	.globl	__bb_Tgame_Delete
	.globl	__bb_Tgame_New
	.globl	__bb_Tgame_display
	.globl	__bb_Tpoint_Delete
	.globl	__bb_Tpoint_New
	.globl	__bb_Tvector_Create
	.globl	__bb_Tvector_Delete
	.globl	__bb_Tvector_New
	.globl	__bb_main
	.globl	_bb_Tgame
	.globl	_bb_Tpoint
	.globl	_bb_Tvector
	.globl	_bb_bounce
	.globl	_bb_findIntersection
	.globl	_bb_game
	.globl	_bb_perP
	.globl	_bb_projectVector
	.globl	_bb_runMe
	.globl	_bb_updateObject
	.globl	_bb_updateVector
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	cmpl	$0,_124
	je	_125
	mov	$0,%eax
	mov	%ebp,%esp
	pop	%ebp
	ret
_125:
	movl	$1,_124
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
	movl	_122,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_123
	flds	_245
	fstps	12(%esp)
	flds	_246
	fstps	8(%esp)
	flds	_247
	fstps	4(%esp)
	flds	_248
	fstps	(%esp)
	calll	*_bb_Tgame+48
	incl	4(%eax)
	movl	%eax,_bb_game
	orl	$1,_122
_123:
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	24(%eax),%eax
	movl	%eax,(%esp)
	call	_bb_updateVector
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	4+24(%eax),%eax
	movl	%eax,(%esp)
	call	_bb_updateVector
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	12+24(%eax),%eax
	movl	%eax,(%esp)
	call	_bb_updateVector
	movl	_bb_game,%eax
	movl	36(%eax),%eax
	movl	16+24(%eax),%eax
	movl	%eax,(%esp)
	call	_bb_updateVector
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$600,4(%esp)
	movl	$800,(%esp)
	call	_brl_graphics_Graphics
_15:
	call	_brl_max2d_Cls
	call	_bb_runMe
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
_13:
	movl	$27,(%esp)
	call	_brl_polledinput_KeyDown
	cmp	$0,%eax
	je	_15
_14:
	mov	$0,%eax
	jmp	_58
_58:
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
	jmp	_61
_61:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tpoint_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_64:
	mov	$0,%eax
	jmp	_126
_126:
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
	jnz	_132
	movl	%eax,(%esp)
	call	_bbGCFree
_132:
	movl	%esi,8(%ebx)
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_136
	movl	%eax,(%esp)
	call	_bbGCFree
_136:
	movl	%esi,12(%ebx)
	mov	$0,%eax
	jmp	_67
_67:
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
_70:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_139
	movl	%eax,(%esp)
	call	_bbGCFree
_139:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_141
	movl	%eax,(%esp)
	call	_bbGCFree
_141:
	mov	$0,%eax
	jmp	_137
_137:
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
	fstps	52(%eax)
	flds	28(%ebp)
	fstps	56(%eax)
	flds	32(%ebp)
	fstps	60(%eax)
	jmp	_79
_79:
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
	fldz
	fstps	8(%ebx)
	fldz
	fstps	12(%ebx)
	fldz
	fstps	16(%ebx)
	fldz
	fstps	20(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,24(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,28(%ebx)
	fldz
	fstps	32(%ebx)
	movl	$4,4(%esp)
	movl	$_145,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	%eax,36(%ebx)
	mov	$0,%eax
	jmp	_82
_82:
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
_85:
	movl	36(%ebx),%eax
	decl	4(%eax)
	jnz	_149
	movl	%eax,(%esp)
	call	_bbGCFree
_149:
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_151
	movl	%eax,(%esp)
	call	_bbGCFree
_151:
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_153
	movl	%eax,(%esp)
	call	_bbGCFree
_153:
	mov	$0,%eax
	jmp	_147
_147:
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
	sub	$32,%esp
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	flds	8(%ebp)
	fstps	8(%ebx)
	flds	12(%ebp)
	fstps	12(%ebx)
	flds	16(%ebp)
	fstps	16(%ebx)
	flds	_268
	fstps	24(%esp)
	flds	_269
	fstps	20(%esp)
	flds	_270
	fstps	16(%esp)
	flds	_271
	fstps	12(%esp)
	flds	_272
	fstps	8(%esp)
	flds	_273
	fstps	4(%esp)
	flds	_274
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_158
	movl	%eax,(%esp)
	call	_bbGCFree
_158:
	movl	%esi,24(%ebx)
	movl	24(%ebx),%eax
	movl	%eax,(%esp)
	call	_bb_updateVector
	flds	20(%ebp)
	fstps	20(%ebx)
	fld1
	fstps	24(%esp)
	fld1
	fstps	20(%esp)
	fld1
	fstps	16(%esp)
	flds	_275
	fstps	12(%esp)
	flds	_276
	fstps	8(%esp)
	flds	_277
	fstps	4(%esp)
	flds	_278
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	36(%ebx),%eax
	movl	24(%eax),%eax
	decl	4(%eax)
	jnz	_162
	movl	%eax,(%esp)
	call	_bbGCFree
_162:
	movl	36(%ebx),%eax
	movl	%esi,24(%eax)
	fld1
	fstps	24(%esp)
	fld1
	fstps	20(%esp)
	fld1
	fstps	16(%esp)
	flds	_279
	fstps	12(%esp)
	flds	_280
	fstps	8(%esp)
	flds	_281
	fstps	4(%esp)
	flds	_282
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	36(%ebx),%eax
	movl	4+24(%eax),%eax
	decl	4(%eax)
	jnz	_166
	movl	%eax,(%esp)
	call	_bbGCFree
_166:
	movl	36(%ebx),%eax
	movl	%esi,4+24(%eax)
	fld1
	fstps	24(%esp)
	fld1
	fstps	20(%esp)
	fld1
	fstps	16(%esp)
	flds	_283
	fstps	12(%esp)
	flds	_284
	fstps	8(%esp)
	flds	_285
	fstps	4(%esp)
	flds	_286
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	36(%ebx),%eax
	movl	8+24(%eax),%eax
	decl	4(%eax)
	jnz	_170
	movl	%eax,(%esp)
	call	_bbGCFree
_170:
	movl	36(%ebx),%eax
	movl	%esi,8+24(%eax)
	fld1
	fstps	24(%esp)
	fld1
	fstps	20(%esp)
	fld1
	fstps	16(%esp)
	flds	_287
	fstps	12(%esp)
	flds	_288
	fstps	8(%esp)
	flds	_289
	fstps	4(%esp)
	flds	_290
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	36(%ebx),%eax
	movl	12+24(%eax),%eax
	decl	4(%eax)
	jnz	_174
	movl	%eax,(%esp)
	call	_bbGCFree
_174:
	movl	36(%ebx),%eax
	movl	%esi,12+24(%eax)
	mov	%ebx,%eax
	jmp	_91
_91:
	add	$32,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_display:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	movl	8(%ebp),%eax
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
	fadds	28(%eax)
	fstps	12(%esp)
	movl	8(%eax),%edx
	flds	8(%edx)
	fadds	24(%eax)
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
	flds	_294
	fstps	12(%esp)
	flds	_295
	fstps	8(%esp)
	movl	8(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	flds	12(%eax)
	fsubs	_296
	fstps	4(%esp)
	movl	8(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	flds	8(%eax)
	fsubs	_297
	fstps	(%esp)
	call	_brl_max2d_DrawOval
	mov	$0,%eax
	jmp	_94
_94:
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_runMe:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
	movl	_bb_game,%eax
	movl	24(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	flds	24(%eax)
	movl	-8(%ebp),%eax
	fmuls	60(%eax)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	flds	28(%eax)
	movl	-8(%ebp),%eax
	fmuls	60(%eax)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	flds	24(%eax)
	movl	_bb_game,%eax
	flds	16(%eax)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_181
	movl	_bb_game,%eax
	flds	16(%eax)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	jmp	_182
_181:
	movl	-8(%ebp),%eax
	flds	24(%eax)
	movl	_bb_game,%eax
	flds	16(%eax)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_183
	movl	_bb_game,%eax
	flds	16(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	24(%eax)
_183:
_182:
	movl	-8(%ebp),%eax
	flds	28(%eax)
	movl	_bb_game,%eax
	flds	16(%eax)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_184
	movl	_bb_game,%eax
	flds	16(%eax)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	jmp	_185
_184:
	movl	-8(%ebp),%eax
	flds	28(%eax)
	movl	_bb_game,%eax
	flds	16(%eax)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_186
	movl	_bb_game,%eax
	flds	16(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstps	28(%eax)
_186:
_185:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_updateObject
	movl	_bb_game,%eax
	flds	_301
	fstps	32(%eax)
	mov	$_bbNullObject,%ebx
	incl	4(%ebx)
	movl	_bb_game,%eax
	movl	28(%eax),%eax
	decl	4(%eax)
	jnz	_190
	movl	%eax,(%esp)
	call	_bbGCFree
_190:
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
	jmp	_10
_12:
	movl	(%esi),%ebx
	add	$4,%esi
	cmp	$_bbNullObject,%ebx
	je	_10
	movl	%ebx,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_findIntersection
	fstps	-4(%ebp)
	movl	_bb_game,%eax
	flds	32(%eax)
	flds	-4(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_197
	mov	%ebx,%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_game,%eax
	movl	28(%eax),%eax
	decl	4(%eax)
	jnz	_201
	movl	%eax,(%esp)
	call	_bbGCFree
_201:
	movl	_bb_game,%eax
	movl	%ebx,28(%eax)
	movl	_bb_game,%eax
	flds	-4(%ebp)
	fstps	32(%eax)
_197:
_10:
	cmpl	-12(%ebp),%esi
	jne	_12
_11:
	movl	_bb_game,%eax
	cmpl	$_bbNullObject,28(%eax)
	je	_202
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	flds	8(%edx)
	movl	-8(%ebp),%edx
	flds	24(%edx)
	movl	_bb_game,%edx
	fmuls	32(%edx)
	faddp	%st(0),%st(1)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	flds	12(%edx)
	movl	-8(%ebp),%edx
	flds	28(%edx)
	movl	_bb_game,%edx
	fmuls	32(%edx)
	faddp	%st(0),%st(1)
	fstps	12(%eax)
	movl	_bb_game,%eax
	movl	28(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_bounce
	flds	24(%eax)
	movl	-8(%ebp),%edx
	fstps	24(%edx)
	flds	28(%eax)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	flds	8(%edx)
	movl	-8(%ebp),%edx
	flds	24(%edx)
	flds	_302
	movl	_bb_game,%edx
	fsubs	32(%edx)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	8(%eax)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	flds	12(%edx)
	movl	-8(%ebp),%edx
	flds	28(%edx)
	flds	_303
	movl	_bb_game,%edx
	fsubs	32(%edx)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	12(%eax)
	movl	_bb_game,%edx
	flds	_304
	movl	_bb_game,%eax
	fsubs	32(%eax)
	fstps	32(%edx)
_202:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	flds	8(%eax)
	movl	_bb_game,%eax
	flds	8(%eax)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_204
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	flds	8(%eax)
	movl	_bb_game,%eax
	fsubs	8(%eax)
	fstps	8(%edx)
	jmp	_205
_204:
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
	jne	_206
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	flds	8(%eax)
	movl	_bb_game,%eax
	fadds	8(%eax)
	fstps	8(%edx)
_206:
_205:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	flds	12(%eax)
	movl	_bb_game,%eax
	flds	12(%eax)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_207
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	flds	12(%eax)
	movl	_bb_game,%eax
	fsubs	12(%eax)
	fstps	12(%edx)
	jmp	_208
_207:
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
	jne	_209
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	flds	12(%eax)
	movl	_bb_game,%eax
	fadds	12(%eax)
	fstps	12(%edx)
_209:
_208:
	movl	_bb_game,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	-8(%ebp),%eax
	movl	12(%eax),%ebx
	incl	4(%ebx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_214
	movl	%eax,(%esp)
	call	_bbGCFree
_214:
	movl	-8(%ebp),%eax
	movl	%ebx,8(%eax)
	movl	-8(%ebp),%eax
	flds	24(%eax)
	movl	-8(%ebp),%eax
	fdivs	68(%eax)
	movl	-8(%ebp),%eax
	fstps	24(%eax)
	movl	-8(%ebp),%eax
	flds	28(%eax)
	movl	-8(%ebp),%eax
	fdivs	68(%eax)
	movl	-8(%ebp),%eax
	fstps	28(%eax)
	mov	$0,%eax
	jmp	_96
_96:
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_updateVector:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%ebx
	movl	12(%ebx),%eax
	flds	8(%eax)
	movl	8(%ebx),%eax
	fsubs	8(%eax)
	fstps	24(%ebx)
	movl	12(%ebx),%eax
	flds	12(%eax)
	movl	8(%ebx),%eax
	fsubs	12(%eax)
	fstps	28(%ebx)
	flds	24(%ebx)
	fmuls	24(%ebx)
	flds	28(%ebx)
	fmuls	28(%ebx)
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
	jne	_215
	flds	24(%ebx)
	fdivs	32(%ebx)
	fstps	16(%ebx)
	flds	28(%ebx)
	fdivs	32(%ebx)
	fstps	20(%ebx)
	jmp	_216
_215:
	fldz
	fstps	16(%ebx)
	fldz
	fstps	20(%ebx)
_216:
	flds	28(%ebx)
	fchs
	fstps	36(%ebx)
	flds	24(%ebx)
	fstps	40(%ebx)
	flds	28(%ebx)
	fstps	44(%ebx)
	flds	24(%ebx)
	fchs
	fstps	48(%ebx)
	mov	$0,%eax
	jmp	_99
_99:
	add	$20,%esp
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
	fsubs	64(%ebx)
	fdivs	_321
	fstps	-4(%ebp)
	flds	24(%ebx)
	fmuls	-4(%ebp)
	fstps	24(%ebx)
	flds	28(%ebx)
	fmuls	-4(%ebp)
	fstps	28(%ebx)
	flds	28(%ebx)
	flds	-4(%ebp)
	movl	_bb_game,%eax
	fmuls	20(%eax)
	faddp	%st(0),%st(1)
	fstps	28(%ebx)
	movl	12(%ebx),%edx
	movl	8(%ebx),%eax
	flds	8(%eax)
	fadds	24(%ebx)
	fstps	8(%edx)
	movl	12(%ebx),%edx
	movl	8(%ebx),%eax
	flds	12(%eax)
	fadds	28(%ebx)
	fstps	12(%edx)
	flds	24(%ebx)
	fmuls	24(%ebx)
	flds	28(%ebx)
	fmuls	28(%ebx)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	fstps	32(%ebx)
	flds	24(%ebx)
	fdivs	32(%ebx)
	fstps	16(%ebx)
	flds	28(%ebx)
	fdivs	32(%ebx)
	fstps	20(%ebx)
	flds	28(%ebx)
	fchs
	fstps	36(%ebx)
	flds	24(%ebx)
	fstps	40(%ebx)
	flds	28(%ebx)
	fstps	44(%ebx)
	flds	24(%ebx)
	fchs
	fstps	48(%ebx)
	flds	-8(%ebp)
	fstps	64(%ebx)
	flds	-4(%ebp)
	fstps	68(%ebx)
	mov	$0,%eax
	jmp	_102
_102:
	add	$8,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_findIntersection:
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
	fstps	24(%eax)
	movl	8(%ebx),%eax
	flds	12(%eax)
	movl	8(%esi),%eax
	fsubs	12(%eax)
	movl	-16(%ebp),%eax
	fstps	28(%eax)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	mov	%eax,%edi
	movl	8(%esi),%eax
	flds	8(%eax)
	movl	8(%ebx),%eax
	fsubs	8(%eax)
	fstps	24(%edi)
	movl	8(%esi),%eax
	flds	12(%eax)
	movl	8(%ebx),%eax
	fsubs	12(%eax)
	fstps	28(%edi)
	flds	16(%esi)
	flds	16(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_223
	flds	20(%esi)
	flds	20(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_223:
	cmp	$0,%eax
	jne	_227
	flds	16(%esi)
	flds	16(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_225
	flds	20(%esi)
	flds	20(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_225:
_227:
	cmp	$0,%eax
	je	_229
	flds	_326
	jmp	_106
_229:
	movl	%ebx,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_perP
	fstps	-4(%ebp)
	movl	%ebx,4(%esp)
	movl	%esi,(%esp)
	call	_bb_perP
	flds	-4(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	fstps	-12(%ebp)
	movl	%esi,4(%esp)
	movl	%edi,(%esp)
	call	_bb_perP
	fstps	-8(%ebp)
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	_bb_perP
	flds	-8(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
_230:
	fldz
	flds	-12(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_231
	fld1
	flds	-12(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_231:
	cmp	$0,%eax
	je	_233
	fldz
	fxch	%st(1)
	fucom	%st(1)
	fxch	%st(1)
	fstp	%st(0)
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
_233:
	cmp	$0,%eax
	jne	_341
	fstp	%st(0)
	jmp	_235
_341:
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_235:
	cmp	$0,%eax
	je	_237
	flds	-12(%ebp)
	jmp	_106
_237:
	flds	_327
	jmp	_106
_106:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_perP:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	flds	24(%edx)
	fmuls	28(%eax)
	flds	28(%edx)
	fmuls	24(%eax)
	fsubrp	%st(0),%st(1)
	jmp	_110
_110:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_bounce:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	8(%ebp),%edi
	movl	12(%ebp),%ebx
	flds	20(%ebx)
	fstps	8(%esp)
	flds	16(%ebx)
	fstps	4(%esp)
	movl	%edi,(%esp)
	call	_bb_projectVector
	movl	%eax,-4(%ebp)
	flds	48(%ebx)
	fdivs	32(%ebx)
	fstps	8(%esp)
	flds	44(%ebx)
	fdivs	32(%ebx)
	fstps	4(%esp)
	movl	%edi,(%esp)
	call	_bb_projectVector
	mov	%eax,%esi
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	flds	24(%esi)
	fmuls	_346
	fstps	24(%esi)
	flds	28(%esi)
	fmuls	_347
	fstps	28(%esi)
	flds	56(%edi)
	fmuls	56(%ebx)
	movl	-4(%ebp),%edx
	fmuls	24(%edx)
	flds	52(%edi)
	fmuls	52(%ebx)
	fmuls	24(%esi)
	faddp	%st(0),%st(1)
	fstps	24(%eax)
	flds	56(%edi)
	fmuls	56(%ebx)
	movl	-4(%ebp),%edx
	fmuls	28(%edx)
	flds	52(%edi)
	fmuls	52(%ebx)
	fmuls	28(%esi)
	faddp	%st(0),%st(1)
	fstps	28(%eax)
	jmp	_114
_114:
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_projectVector:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
	flds	24(%eax)
	fmuls	12(%ebp)
	flds	28(%eax)
	fmuls	16(%ebp)
	faddp	%st(0),%st(1)
	fstps	-4(%ebp)
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	flds	-4(%ebp)
	fmuls	12(%ebp)
	fstps	24(%eax)
	flds	-4(%ebp)
	fmuls	16(%ebp)
	fstps	28(%eax)
	jmp	_119
_119:
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_124:
	.long	0
_17:
	.asciz	"Tpoint"
_18:
	.asciz	"x"
_19:
	.asciz	"f"
_20:
	.asciz	"y"
_21:
	.asciz	"New"
_22:
	.asciz	"()i"
_23:
	.asciz	"Delete"
	.align	4
_16:
	.long	2
	.long	_17
	.long	3
	.long	_18
	.long	_19
	.long	8
	.long	3
	.long	_20
	.long	_19
	.long	12
	.long	6
	.long	_21
	.long	_22
	.long	16
	.long	6
	.long	_23
	.long	_22
	.long	20
	.long	0
	.align	4
_bb_Tpoint:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_16
	.long	16
	.long	__bb_Tpoint_New
	.long	__bb_Tpoint_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_25:
	.asciz	"Tvector"
_26:
	.asciz	"p0"
_27:
	.asciz	":Tpoint"
_28:
	.asciz	"p1"
_29:
	.asciz	"dx"
_30:
	.asciz	"dy"
_31:
	.asciz	"vx"
_32:
	.asciz	"vy"
_33:
	.asciz	"length"
_34:
	.asciz	"rx"
_35:
	.asciz	"ry"
_36:
	.asciz	"lx"
_37:
	.asciz	"ly"
_38:
	.asciz	"b"
_39:
	.asciz	"airF"
_40:
	.asciz	"lastTime"
_41:
	.asciz	"timeFrame"
_42:
	.asciz	"Create"
_43:
	.asciz	"(f,f,f,f,f,f,f):Tvector"
	.align	4
_24:
	.long	2
	.long	_25
	.long	3
	.long	_26
	.long	_27
	.long	8
	.long	3
	.long	_28
	.long	_27
	.long	12
	.long	3
	.long	_29
	.long	_19
	.long	16
	.long	3
	.long	_30
	.long	_19
	.long	20
	.long	3
	.long	_31
	.long	_19
	.long	24
	.long	3
	.long	_32
	.long	_19
	.long	28
	.long	3
	.long	_33
	.long	_19
	.long	32
	.long	3
	.long	_34
	.long	_19
	.long	36
	.long	3
	.long	_35
	.long	_19
	.long	40
	.long	3
	.long	_36
	.long	_19
	.long	44
	.long	3
	.long	_37
	.long	_19
	.long	48
	.long	3
	.long	_38
	.long	_19
	.long	52
	.long	3
	.long	_19
	.long	_19
	.long	56
	.long	3
	.long	_39
	.long	_19
	.long	60
	.long	3
	.long	_40
	.long	_19
	.long	64
	.long	3
	.long	_41
	.long	_19
	.long	68
	.long	6
	.long	_21
	.long	_22
	.long	16
	.long	6
	.long	_23
	.long	_22
	.long	20
	.long	7
	.long	_42
	.long	_43
	.long	48
	.long	0
	.align	4
_bb_Tvector:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_24
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
_45:
	.asciz	"Tgame"
_46:
	.asciz	"stageW"
_47:
	.asciz	"stageH"
_48:
	.asciz	"maxV"
_49:
	.asciz	"gravity"
_50:
	.asciz	"myOb"
_51:
	.asciz	":Tvector"
_52:
	.asciz	"bounce"
_53:
	.asciz	"t"
_54:
	.asciz	"v"
_55:
	.asciz	"[]:Tvector"
_56:
	.asciz	"(f,f,f,f):Tgame"
_57:
	.asciz	"display"
	.align	4
_44:
	.long	2
	.long	_45
	.long	3
	.long	_46
	.long	_19
	.long	8
	.long	3
	.long	_47
	.long	_19
	.long	12
	.long	3
	.long	_48
	.long	_19
	.long	16
	.long	3
	.long	_49
	.long	_19
	.long	20
	.long	3
	.long	_50
	.long	_51
	.long	24
	.long	3
	.long	_52
	.long	_51
	.long	28
	.long	3
	.long	_53
	.long	_19
	.long	32
	.long	3
	.long	_54
	.long	_55
	.long	36
	.long	6
	.long	_21
	.long	_22
	.long	16
	.long	6
	.long	_23
	.long	_22
	.long	20
	.long	7
	.long	_42
	.long	_56
	.long	48
	.long	6
	.long	_57
	.long	_22
	.long	52
	.long	0
	.align	4
_bb_Tgame:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_44
	.long	40
	.long	__bb_Tgame_New
	.long	__bb_Tgame_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Tgame_Create
	.long	__bb_Tgame_display
	.align	4
_122:
	.long	0
	.align	4
_245:
	.long	0x3f000000
	.align	4
_246:
	.long	0x41200000
	.align	4
_247:
	.long	0x43340000
	.align	4
_248:
	.long	0x43960000
	.align	4
_bb_game:
	.long	_bbNullObject
_145:
	.asciz	":Tvector"
	.align	4
_268:
	.long	0x3f7d70a4
	.align	4
_269:
	.long	0x3f4ccccd
	.align	4
_270:
	.long	0x3f4ccccd
	.align	4
_271:
	.long	0x42c80000
	.align	4
_272:
	.long	0x43170000
	.align	4
_273:
	.long	0x42c80000
	.align	4
_274:
	.long	0x43160000
	.align	4
_275:
	.long	0x42480000
	.align	4
_276:
	.long	0x437a0000
	.align	4
_277:
	.long	0x42480000
	.align	4
_278:
	.long	0x42480000
	.align	4
_279:
	.long	0x43020000
	.align	4
_280:
	.long	0x437a0000
	.align	4
_281:
	.long	0x42480000
	.align	4
_282:
	.long	0x437a0000
	.align	4
_283:
	.long	0x43020000
	.align	4
_284:
	.long	0x42480000
	.align	4
_285:
	.long	0x43020000
	.align	4
_286:
	.long	0x437a0000
	.align	4
_287:
	.long	0x42480000
	.align	4
_288:
	.long	0x42480000
	.align	4
_289:
	.long	0x43020000
	.align	4
_290:
	.long	0x42480000
	.align	4
_294:
	.long	0x40c00000
	.align	4
_295:
	.long	0x40c00000
	.align	4
_296:
	.long	0x40400000
	.align	4
_297:
	.long	0x40400000
	.align	4
_301:
	.long	0x49742400
	.align	4
_302:
	.long	0x3f800000
	.align	4
_303:
	.long	0x3f800000
	.align	4
_304:
	.long	0x3f800000
	.align	4
_321:
	.long	0x42c80000
	.align	4
_326:
	.long	0x49742400
	.align	4
_327:
	.long	0x49742400
	.align	4
_346:
	.long	0xbf800000
	.align	4
_347:
	.long	0xbf800000
