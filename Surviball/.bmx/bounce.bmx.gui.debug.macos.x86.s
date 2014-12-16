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
	.reference	_bbCos
	.reference	_bbDelay
	.reference	_bbFloatAbs
	.reference	_bbFloatPow
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
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
	.reference	_bbSin
	.reference	_bbSqr
	.reference	_bbStringClass
	.reference	_bbStringConcat
	.reference	_bbStringFromDouble
	.reference	_brl_blitz_NullObjectError
	.reference	_brl_graphics_Flip
	.reference	_brl_graphics_Graphics
	.reference	_brl_graphics_GraphicsHeight
	.reference	_brl_graphics_GraphicsWidth
	.reference	_brl_max2d_Cls
	.reference	_brl_max2d_DrawLine
	.reference	_brl_max2d_DrawText
	.reference	_brl_max2d_SetColor
	.reference	_brl_polledinput_KeyDown
	.reference	_brl_polledinput_KeyHit
	.globl	__bb_Tball_Create
	.globl	__bb_Tball_Delete
	.globl	__bb_Tball_New
	.globl	__bb_Tball_bounce
	.globl	__bb_Tball_display
	.globl	__bb_Tball_findIntersection
	.globl	__bb_Tball_move
	.globl	__bb_Tball_setComponents
	.globl	__bb_Tball_setDirection
	.globl	__bb_Tgame_Delete
	.globl	__bb_Tgame_New
	.globl	__bb_Tgame_collide
	.globl	__bb_Tgame_display
	.globl	__bb_Tline_Create
	.globl	__bb_Tline_Delete
	.globl	__bb_Tline_New
	.globl	__bb_Tline_display
	.globl	__bb_Tline_setComponents
	.globl	__bb_Tline_setComponentsLength
	.globl	__bb_Tline_setDirection
	.globl	__bb_Tpoint_Delete
	.globl	__bb_Tpoint_New
	.globl	__bb_Tvector_Delete
	.globl	__bb_Tvector_New
	.globl	__bb_Tvector_perP
	.globl	__bb_Tvector_project
	.globl	__bb_Tvector_setNormals
	.globl	__bb_main
	.globl	_bb_Tball
	.globl	_bb_Tgame
	.globl	_bb_Tline
	.globl	_bb_Tpoint
	.globl	_bb_Tvector
	.globl	_bb_game
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	sub	$32,%esp
	cmpl	$0,_222
	je	_223
	mov	$0,%eax
	add	$32,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_223:
	movl	$1,_222
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_219,(%esp)
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
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_Tball,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_Tline,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectRegisterType
	movl	$_184,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_187,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_188
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_game
	orl	$1,_187
_188:
	movl	$_189,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_191
	call	_brl_blitz_NullObjectError
_191:
	fldl	_1281
	fstpl	24(%esp)
	fldl	_1282
	fstpl	16(%esp)
	fldl	_1283
	fstpl	8(%esp)
	fldl	_1284
	fstpl	(%esp)
	calll	*_bb_Tball+60
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_196
	movl	%eax,(%esp)
	call	_bbGCFree
_196:
	movl	%esi,8(%ebx)
	movl	$_197,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_199
	call	_brl_blitz_NullObjectError
_199:
	fldl	_1285
	fstpl	24(%esp)
	fldl	_1286
	fstpl	16(%esp)
	fldl	_1287
	fstpl	8(%esp)
	fldl	_1288
	fstpl	(%esp)
	calll	*_bb_Tline+60
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_204
	movl	%eax,(%esp)
	call	_bbGCFree
_204:
	movl	%esi,12(%ebx)
	movl	$_205,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$30,12(%esp)
	movl	$0,8(%esp)
	movl	$600,4(%esp)
	movl	$800,(%esp)
	call	_brl_graphics_Graphics
	movl	$_206,(%esp)
	calll	*_bbOnDebugEnterStm
_23:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_218,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_207,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_max2d_Cls
	movl	$_208,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_210
	call	_brl_blitz_NullObjectError
_210:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	movl	$_211,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_213
	call	_brl_blitz_NullObjectError
_213:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_214,(%esp)
	calll	*_bbOnDebugEnterStm
	jmp	_24
_26:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_216,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_215,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$2,(%esp)
	call	_bbDelay
	calll	*_bbOnDebugLeaveScope
_24:
	movl	$32,(%esp)
	call	_brl_polledinput_KeyDown
	cmp	$0,%eax
	jne	_26
_25:
	movl	$_217,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
	calll	*_bbOnDebugLeaveScope
_21:
	movl	$27,(%esp)
	call	_brl_polledinput_KeyHit
	cmp	$0,%eax
	je	_23
_22:
	mov	$0,%ebx
	jmp	_88
_88:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$32,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tpoint_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_225,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Tpoint,(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	8(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	%ebp,4(%esp)
	movl	$_224,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_91
_91:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tpoint_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_94:
	mov	$0,%eax
	jmp	_227
_227:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_247,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Tvector,(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,12(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	16(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	24(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	32(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	40(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	48(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	56(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	64(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	72(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	80(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	88(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	96(%eax)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_246,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_230,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_232
	call	_brl_blitz_NullObjectError
_232:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_237
	movl	%eax,(%esp)
	call	_bbGCFree
_237:
	movl	%esi,8(%ebx)
	movl	$_238,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_240
	call	_brl_blitz_NullObjectError
_240:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_245
	movl	%eax,(%esp)
	call	_bbGCFree
_245:
	movl	%esi,12(%ebx)
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_97
_97:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
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
_100:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_250
	movl	%eax,(%esp)
	call	_bbGCFree
_250:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_252
	movl	%eax,(%esp)
	call	_bbGCFree
_252:
	mov	$0,%eax
	jmp	_248
_248:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_setNormals:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_277,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_253,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_255
	call	_brl_blitz_NullObjectError
_255:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_258
	call	_brl_blitz_NullObjectError
_258:
	fldl	24(%ebx)
	fchs
	fstpl	56(%esi)
	movl	$_259,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_261
	call	_brl_blitz_NullObjectError
_261:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_264
	call	_brl_blitz_NullObjectError
_264:
	fldl	16(%ebx)
	fstpl	64(%esi)
	movl	$_265,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_267
	call	_brl_blitz_NullObjectError
_267:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_270
	call	_brl_blitz_NullObjectError
_270:
	fldl	24(%ebx)
	fstpl	72(%esi)
	movl	$_271,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_273
	call	_brl_blitz_NullObjectError
_273:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_276
	call	_brl_blitz_NullObjectError
_276:
	fldl	16(%esi)
	fchs
	fstpl	80(%ebx)
	mov	$0,%ebx
	jmp	_103
_103:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_perP:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_287,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_278,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	$_bbNullObject,-20(%ebp)
	jne	_280
	call	_brl_blitz_NullObjectError
_280:
	movl	-8(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_282
	call	_brl_blitz_NullObjectError
_282:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_284
	call	_brl_blitz_NullObjectError
_284:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_286
	call	_brl_blitz_NullObjectError
_286:
	movl	-20(%ebp),%eax
	fldl	16(%eax)
	fmull	24(%edi)
	fldl	24(%esi)
	fmull	16(%ebx)
	fsubrp	%st(0),%st(1)
	fstpl	-16(%ebp)
	jmp	_107
_107:
	calll	*_bbOnDebugLeaveScope
	fldl	-16(%ebp)
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_project:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	fldl	12(%ebp)
	fstpl	-12(%ebp)
	fldl	20(%ebp)
	fstpl	-20(%ebp)
	movl	$_bbNullObject,-24(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_312,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_289,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_291
	call	_brl_blitz_NullObjectError
_291:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_294
	call	_brl_blitz_NullObjectError
_294:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_296
	call	_brl_blitz_NullObjectError
_296:
	fldl	16(%esi)
	fmull	-12(%ebp)
	fldl	24(%ebx)
	fmull	-20(%ebp)
	faddp	%st(0),%st(1)
	fstpl	48(%edi)
	movl	$_297,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-24(%ebp)
	movl	$_299,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_301
	call	_brl_blitz_NullObjectError
_301:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_304
	call	_brl_blitz_NullObjectError
_304:
	fldl	48(%ebx)
	fmull	-12(%ebp)
	fstpl	16(%esi)
	movl	$_305,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_307
	call	_brl_blitz_NullObjectError
_307:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_310
	call	_brl_blitz_NullObjectError
_310:
	fldl	48(%ebx)
	fmull	-20(%ebp)
	fstpl	24(%esi)
	movl	$_311,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	jmp	_112
_112:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tball_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_333,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	__bb_Tvector_New
	movl	-4(%ebp),%eax
	movl	$_bb_Tball,(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,104(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,108(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	112(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstpl	120(%eax)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_332,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_316,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_318
	call	_brl_blitz_NullObjectError
_318:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	104(%ebx),%eax
	decl	4(%eax)
	jnz	_323
	movl	%eax,(%esp)
	call	_bbGCFree
_323:
	movl	%esi,104(%ebx)
	movl	$_324,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_326
	call	_brl_blitz_NullObjectError
_326:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	108(%ebx),%eax
	decl	4(%eax)
	jnz	_331
	movl	%eax,(%esp)
	call	_bbGCFree
_331:
	movl	%esi,108(%ebx)
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_115
_115:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tball_Delete:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
_118:
	movl	108(%ebx),%eax
	decl	4(%eax)
	jnz	_336
	movl	%eax,(%esp)
	call	_bbGCFree
_336:
	movl	104(%ebx),%eax
	decl	4(%eax)
	jnz	_338
	movl	%eax,(%esp)
	call	_bbGCFree
_338:
	movl	$_bb_Tvector,(%ebx)
	movl	%ebx,(%esp)
	call	__bb_Tvector_Delete
	mov	$0,%eax
	jmp	_334
_334:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tball_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$36,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	fldl	8(%ebp)
	fstpl	-8(%ebp)
	fldl	16(%ebp)
	fstpl	-16(%ebp)
	fldl	24(%ebp)
	fstpl	-24(%ebp)
	fldl	32(%ebp)
	fstpl	-32(%ebp)
	movl	$_bbNullObject,-36(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_391,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_339,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tball,(%esp)
	call	_bbObjectNew
	movl	%eax,-36(%ebp)
	movl	$_341,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_343
	call	_brl_blitz_NullObjectError
_343:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_345
	call	_brl_blitz_NullObjectError
_345:
	fldl	-8(%ebp)
	fstpl	8(%ebx)
	movl	$_347,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_349
	call	_brl_blitz_NullObjectError
_349:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_351
	call	_brl_blitz_NullObjectError
_351:
	fldl	-16(%ebp)
	fstpl	16(%ebx)
	movl	$_353,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_355
	call	_brl_blitz_NullObjectError
_355:
	fldl	-32(%ebp)
	fstpl	96(%ebx)
	movl	$_357,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_359
	call	_brl_blitz_NullObjectError
_359:
	fldl	-24(%ebp)
	fstpl	4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*64(%eax)
	movl	$_360,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_362
	call	_brl_blitz_NullObjectError
_362:
	fld1
	fstpl	4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_363,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_365
	call	_brl_blitz_NullObjectError
_365:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	movl	$_366,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_368
	call	_brl_blitz_NullObjectError
_368:
	movl	104(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_370
	call	_brl_blitz_NullObjectError
_370:
	mov	%ebx,%edi
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_373
	call	_brl_blitz_NullObjectError
_373:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_375
	call	_brl_blitz_NullObjectError
_375:
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_377
	call	_brl_blitz_NullObjectError
_377:
	fldl	8(%esi)
	faddl	16(%ebx)
	fstpl	8(%edi)
	movl	$_378,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_380
	call	_brl_blitz_NullObjectError
_380:
	movl	104(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_382
	call	_brl_blitz_NullObjectError
_382:
	mov	%ebx,%edi
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_385
	call	_brl_blitz_NullObjectError
_385:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_387
	call	_brl_blitz_NullObjectError
_387:
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_389
	call	_brl_blitz_NullObjectError
_389:
	fldl	16(%esi)
	faddl	24(%ebx)
	fstpl	16(%edi)
	movl	$_390,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	jmp	_124
_124:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tball_setDirection:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	fldl	12(%ebp)
	fstpl	-12(%ebp)
	movl	%ebp,4(%esp)
	movl	$_402,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_394,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_396
	call	_brl_blitz_NullObjectError
_396:
	fldl	-12(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fstpl	32(%ebx)
	movl	$_398,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	fldl	-12(%ebp)
	fstpl	(%esp)
	call	_bbSin
	fstpl	40(%ebx)
	mov	$0,%ebx
	jmp	_128
_128:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tball_setComponents:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	fldl	12(%ebp)
	fstpl	-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_419,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_403,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_405
	call	_brl_blitz_NullObjectError
_405:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_408
	call	_brl_blitz_NullObjectError
_408:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_410
	call	_brl_blitz_NullObjectError
_410:
	fldl	32(%esi)
	fmull	96(%ebx)
	fmull	-12(%ebp)
	fstpl	16(%edi)
	movl	$_411,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_413
	call	_brl_blitz_NullObjectError
_413:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_416
	call	_brl_blitz_NullObjectError
_416:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_418
	call	_brl_blitz_NullObjectError
_418:
	fldl	40(%esi)
	fmull	96(%ebx)
	fmull	-12(%ebp)
	fstpl	24(%edi)
	mov	$0,%ebx
	jmp	_132
_132:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tball_findIntersection:
	push	%ebp
	mov	%esp,%ebp
	sub	$48,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	fldz
	fstpl	-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	movl	$_bbNullObject,-24(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_574,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_421,(%esp)
	calll	*_bbOnDebugEnterStm
	fldz
	fstpl	-16(%ebp)
	movl	$_423,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_425,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_427
	call	_brl_blitz_NullObjectError
_427:
	mov	%ebx,%edi
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_430
	call	_brl_blitz_NullObjectError
_430:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_432
	call	_brl_blitz_NullObjectError
_432:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_434
	call	_brl_blitz_NullObjectError
_434:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_436
	call	_brl_blitz_NullObjectError
_436:
	fldl	8(%esi)
	fsubl	8(%ebx)
	fstpl	16(%edi)
	movl	$_437,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_439
	call	_brl_blitz_NullObjectError
_439:
	mov	%ebx,%edi
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_442
	call	_brl_blitz_NullObjectError
_442:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_444
	call	_brl_blitz_NullObjectError
_444:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_446
	call	_brl_blitz_NullObjectError
_446:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_448
	call	_brl_blitz_NullObjectError
_448:
	fldl	16(%esi)
	fsubl	16(%ebx)
	fstpl	24(%edi)
	movl	$_449,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-24(%ebp)
	movl	$_451,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_453
	call	_brl_blitz_NullObjectError
_453:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_456
	call	_brl_blitz_NullObjectError
_456:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_458
	call	_brl_blitz_NullObjectError
_458:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_460
	call	_brl_blitz_NullObjectError
_460:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_462
	call	_brl_blitz_NullObjectError
_462:
	fldl	8(%esi)
	fsubl	8(%ebx)
	fstpl	16(%edi)
	movl	$_463,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_465
	call	_brl_blitz_NullObjectError
_465:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_468
	call	_brl_blitz_NullObjectError
_468:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_470
	call	_brl_blitz_NullObjectError
_470:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_472
	call	_brl_blitz_NullObjectError
_472:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_474
	call	_brl_blitz_NullObjectError
_474:
	fldl	16(%esi)
	fsubl	16(%ebx)
	fstpl	24(%edi)
	movl	$_475,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_477
	call	_brl_blitz_NullObjectError
_477:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_479
	call	_brl_blitz_NullObjectError
_479:
	fldl	32(%esi)
	fldl	32(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_484
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_481
	call	_brl_blitz_NullObjectError
_481:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_483
	call	_brl_blitz_NullObjectError
_483:
	fldl	40(%esi)
	fldl	40(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_484:
	cmp	$0,%eax
	jne	_496
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_487
	call	_brl_blitz_NullObjectError
_487:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_489
	call	_brl_blitz_NullObjectError
_489:
	fldl	32(%esi)
	fldl	32(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_494
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_491
	call	_brl_blitz_NullObjectError
_491:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_493
	call	_brl_blitz_NullObjectError
_493:
	fldl	40(%esi)
	fldl	40(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_494:
_496:
	cmp	$0,%eax
	je	_498
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_500,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_499,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	calll	*_bbOnDebugLeaveScope
	jmp	_136
_498:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_518,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_502,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_504
	call	_brl_blitz_NullObjectError
_504:
	mov	%ebx,%edi
	movl	-20(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_507
	call	_brl_blitz_NullObjectError
_507:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_509
	call	_brl_blitz_NullObjectError
_509:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*52(%eax)
	fstpl	-40(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	fldl	-40(%ebp)
	fdivp	%st(0),%st(1)
	fstpl	-40(%ebp)
	fldl	-40(%ebp)
	fstpl	112(%edi)
	movl	$_510,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_512
	call	_brl_blitz_NullObjectError
_512:
	mov	%ebx,%edi
	movl	-24(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_515
	call	_brl_blitz_NullObjectError
_515:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_517
	call	_brl_blitz_NullObjectError
_517:
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*52(%eax)
	fstpl	-32(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	fldl	-32(%ebp)
	fdivp	%st(0),%st(1)
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fstpl	120(%edi)
	calll	*_bbOnDebugLeaveScope
_501:
	movl	$_519,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_521
	call	_brl_blitz_NullObjectError
_521:
	fldl	112(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_524
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_523
	call	_brl_blitz_NullObjectError
_523:
	fldl	112(%ebx)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_524:
	cmp	$0,%eax
	je	_528
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_527
	call	_brl_blitz_NullObjectError
_527:
	fldl	120(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
_528:
	cmp	$0,%eax
	je	_532
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_531
	call	_brl_blitz_NullObjectError
_531:
	fldl	120(%ebx)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_532:
	cmp	$0,%eax
	je	_534
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_566,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_535,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_537
	call	_brl_blitz_NullObjectError
_537:
	movl	108(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_539
	call	_brl_blitz_NullObjectError
_539:
	movl	%ebx,-48(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_542
	call	_brl_blitz_NullObjectError
_542:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_544
	call	_brl_blitz_NullObjectError
_544:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_546
	call	_brl_blitz_NullObjectError
_546:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_548
	call	_brl_blitz_NullObjectError
_548:
	fldl	8(%edi)
	fldl	16(%esi)
	fmull	112(%ebx)
	faddp	%st(0),%st(1)
	movl	-48(%ebp),%eax
	fstpl	8(%eax)
	movl	$_549,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_551
	call	_brl_blitz_NullObjectError
_551:
	movl	108(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_553
	call	_brl_blitz_NullObjectError
_553:
	movl	%ebx,-44(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_556
	call	_brl_blitz_NullObjectError
_556:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_558
	call	_brl_blitz_NullObjectError
_558:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_560
	call	_brl_blitz_NullObjectError
_560:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_562
	call	_brl_blitz_NullObjectError
_562:
	fldl	16(%edi)
	fldl	24(%esi)
	fmull	112(%ebx)
	faddp	%st(0),%st(1)
	movl	-44(%ebp),%eax
	fstpl	16(%eax)
	movl	$_563,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_565
	call	_brl_blitz_NullObjectError
_565:
	movl	108(%ebx),%ebx
	calll	*_bbOnDebugLeaveScope
	jmp	_136
_534:
	movl	$_567,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_569
	call	_brl_blitz_NullObjectError
_569:
	fldl	112(%ebx)
	fstpl	(%esp)
	call	_bbFloatAbs
	fldl	_1373
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_570
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_572,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_571,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$2000,(%esp)
	call	_bbDelay
	calll	*_bbOnDebugLeaveScope
_570:
	movl	$_573,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	jmp	_136
_136:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tball_bounce:
	push	%ebp
	mov	%esp,%ebp
	sub	$52,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	movl	$_bbNullObject,-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_771,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_577,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_579
	call	_brl_blitz_NullObjectError
_579:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_581
	call	_brl_blitz_NullObjectError
_581:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_583
	call	_brl_blitz_NullObjectError
_583:
	fldl	40(%ebx)
	fstpl	12(%esp)
	fldl	32(%esi)
	fstpl	4(%esp)
	movl	%edi,(%esp)
	movl	(%edi),%eax
	calll	*56(%eax)
	movl	%eax,-12(%ebp)
	movl	$_585,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,-40(%ebp)
	cmpl	$_bbNullObject,-40(%ebp)
	jne	_587
	call	_brl_blitz_NullObjectError
_587:
	movl	-8(%ebp),%eax
	movl	%eax,-44(%ebp)
	cmpl	$_bbNullObject,-44(%ebp)
	jne	_589
	call	_brl_blitz_NullObjectError
_589:
	movl	-8(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_591
	call	_brl_blitz_NullObjectError
_591:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_593
	call	_brl_blitz_NullObjectError
_593:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_595
	call	_brl_blitz_NullObjectError
_595:
	fldl	80(%esi)
	fdivl	88(%ebx)
	fstpl	12(%esp)
	movl	-44(%ebp),%eax
	fldl	72(%eax)
	fdivl	88(%edi)
	fstpl	4(%esp)
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	calll	*56(%eax)
	movl	%eax,-16(%ebp)
	movl	$_597,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_599
	call	_brl_blitz_NullObjectError
_599:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_601
	call	_brl_blitz_NullObjectError
_601:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_604
	call	_brl_blitz_NullObjectError
_604:
	movl	108(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_606
	call	_brl_blitz_NullObjectError
_606:
	fldl	8(%ebx)
	fstpl	8(%esi)
	movl	$_607,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_609
	call	_brl_blitz_NullObjectError
_609:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_611
	call	_brl_blitz_NullObjectError
_611:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_614
	call	_brl_blitz_NullObjectError
_614:
	movl	108(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_616
	call	_brl_blitz_NullObjectError
_616:
	fldl	16(%ebx)
	fstpl	16(%esi)
	movl	$_617,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_619,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_621
	call	_brl_blitz_NullObjectError
_621:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_623
	call	_brl_blitz_NullObjectError
_623:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_626
	call	_brl_blitz_NullObjectError
_626:
	movl	108(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_628
	call	_brl_blitz_NullObjectError
_628:
	fldl	8(%ebx)
	fstpl	8(%esi)
	movl	$_629,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_631
	call	_brl_blitz_NullObjectError
_631:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_633
	call	_brl_blitz_NullObjectError
_633:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_636
	call	_brl_blitz_NullObjectError
_636:
	movl	108(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_638
	call	_brl_blitz_NullObjectError
_638:
	fldl	16(%ebx)
	fstpl	16(%esi)
	movl	$_639,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_641
	call	_brl_blitz_NullObjectError
_641:
	fldl	16(%ebx)
	fldl	_1440
	fmulp	%st(0),%st(1)
	fstpl	16(%ebx)
	movl	$_643,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_645
	call	_brl_blitz_NullObjectError
_645:
	fldl	24(%ebx)
	fldl	_1441
	fmulp	%st(0),%st(1)
	fstpl	24(%ebx)
	movl	$_647,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_649
	call	_brl_blitz_NullObjectError
_649:
	mov	%ebx,%edi
	movl	-12(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_652
	call	_brl_blitz_NullObjectError
_652:
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_654
	call	_brl_blitz_NullObjectError
_654:
	fldl	16(%esi)
	faddl	16(%ebx)
	fstpl	16(%edi)
	movl	$_655,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_657
	call	_brl_blitz_NullObjectError
_657:
	mov	%ebx,%edi
	movl	-12(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_660
	call	_brl_blitz_NullObjectError
_660:
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_662
	call	_brl_blitz_NullObjectError
_662:
	fldl	24(%esi)
	faddl	24(%ebx)
	fstpl	24(%edi)
	movl	$_663,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_665
	call	_brl_blitz_NullObjectError
_665:
	mov	%ebx,%edi
	movl	-20(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_668
	call	_brl_blitz_NullObjectError
_668:
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_670
	call	_brl_blitz_NullObjectError
_670:
	fldl	_1442
	fstpl	8(%esp)
	fldl	16(%esi)
	fstpl	(%esp)
	call	_bbFloatPow
	fstpl	-36(%ebp)
	fldl	_1443
	fstpl	8(%esp)
	fldl	24(%ebx)
	fstpl	(%esp)
	call	_bbFloatPow
	fldl	-36(%ebp)
	faddp	%st(0),%st(1)
	fstpl	-36(%ebp)
	fldl	-36(%ebp)
	fstpl	(%esp)
	call	_bbSqr
	fstpl	88(%edi)
	movl	$_671,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_673
	call	_brl_blitz_NullObjectError
_673:
	mov	%ebx,%edi
	movl	-20(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_676
	call	_brl_blitz_NullObjectError
_676:
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_678
	call	_brl_blitz_NullObjectError
_678:
	fldl	16(%esi)
	fdivl	88(%ebx)
	fstpl	32(%edi)
	movl	$_679,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_681
	call	_brl_blitz_NullObjectError
_681:
	mov	%ebx,%edi
	movl	-20(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_684
	call	_brl_blitz_NullObjectError
_684:
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_686
	call	_brl_blitz_NullObjectError
_686:
	fldl	24(%esi)
	fdivl	88(%ebx)
	fstpl	40(%edi)
	movl	$_687,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_689
	call	_brl_blitz_NullObjectError
_689:
	movl	%ebx,-52(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_692
	call	_brl_blitz_NullObjectError
_692:
	movl	104(%ebx),%eax
	movl	%eax,-48(%ebp)
	cmpl	$_bbNullObject,-48(%ebp)
	jne	_694
	call	_brl_blitz_NullObjectError
_694:
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_696
	call	_brl_blitz_NullObjectError
_696:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_698
	call	_brl_blitz_NullObjectError
_698:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_700
	call	_brl_blitz_NullObjectError
_700:
	movl	104(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_702
	call	_brl_blitz_NullObjectError
_702:
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_704
	call	_brl_blitz_NullObjectError
_704:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_706
	call	_brl_blitz_NullObjectError
_706:
	fldl	_1444
	fstpl	8(%esp)
	movl	-48(%ebp),%eax
	fldl	8(%eax)
	fsubl	8(%edi)
	fstpl	(%esp)
	call	_bbFloatPow
	fstpl	-28(%ebp)
	fldl	_1445
	fstpl	8(%esp)
	fldl	16(%esi)
	fsubl	16(%ebx)
	fstpl	(%esp)
	call	_bbFloatPow
	fldl	-28(%ebp)
	faddp	%st(0),%st(1)
	fstpl	-28(%ebp)
	fldl	-28(%ebp)
	fstpl	(%esp)
	call	_bbSqr
	movl	-52(%ebp),%eax
	fstpl	88(%eax)
	movl	$_707,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_709
	call	_brl_blitz_NullObjectError
_709:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_712
	call	_brl_blitz_NullObjectError
_712:
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_714
	call	_brl_blitz_NullObjectError
_714:
	fldl	32(%esi)
	fmull	88(%ebx)
	fstpl	16(%edi)
	movl	$_715,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_717
	call	_brl_blitz_NullObjectError
_717:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_720
	call	_brl_blitz_NullObjectError
_720:
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_722
	call	_brl_blitz_NullObjectError
_722:
	fldl	40(%esi)
	fmull	88(%ebx)
	fstpl	24(%edi)
	movl	$_723,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_725
	call	_brl_blitz_NullObjectError
_725:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_727
	call	_brl_blitz_NullObjectError
_727:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_730
	call	_brl_blitz_NullObjectError
_730:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_732
	call	_brl_blitz_NullObjectError
_732:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_734
	call	_brl_blitz_NullObjectError
_734:
	fldl	8(%esi)
	faddl	16(%ebx)
	fstpl	8(%edi)
	movl	$_735,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_737
	call	_brl_blitz_NullObjectError
_737:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_739
	call	_brl_blitz_NullObjectError
_739:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_742
	call	_brl_blitz_NullObjectError
_742:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_744
	call	_brl_blitz_NullObjectError
_744:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_746
	call	_brl_blitz_NullObjectError
_746:
	fldl	16(%esi)
	faddl	24(%ebx)
	fstpl	16(%edi)
	movl	$_747,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_749
	call	_brl_blitz_NullObjectError
_749:
	movl	104(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_751
	call	_brl_blitz_NullObjectError
_751:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_754
	call	_brl_blitz_NullObjectError
_754:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_756
	call	_brl_blitz_NullObjectError
_756:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_758
	call	_brl_blitz_NullObjectError
_758:
	fldl	8(%esi)
	faddl	16(%ebx)
	fstpl	8(%edi)
	movl	$_759,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_761
	call	_brl_blitz_NullObjectError
_761:
	movl	104(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_763
	call	_brl_blitz_NullObjectError
_763:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_766
	call	_brl_blitz_NullObjectError
_766:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_768
	call	_brl_blitz_NullObjectError
_768:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_770
	call	_brl_blitz_NullObjectError
_770:
	fldl	16(%esi)
	faddl	24(%ebx)
	fstpl	16(%edi)
	mov	$0,%ebx
	jmp	_140
_140:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tball_move:
	push	%ebp
	mov	%esp,%ebp
	sub	$40,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_916,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_772,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_774
	call	_brl_blitz_NullObjectError
_774:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_776
	call	_brl_blitz_NullObjectError
_776:
	mov	%ebx,%esi
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_779
	call	_brl_blitz_NullObjectError
_779:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_781
	call	_brl_blitz_NullObjectError
_781:
	fldl	8(%esi)
	fldl	32(%edi)
	fmull	96(%ebx)
	faddp	%st(0),%st(1)
	fstpl	8(%esi)
	movl	$_782,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_784
	call	_brl_blitz_NullObjectError
_784:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_786
	call	_brl_blitz_NullObjectError
_786:
	mov	%ebx,%esi
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_789
	call	_brl_blitz_NullObjectError
_789:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_791
	call	_brl_blitz_NullObjectError
_791:
	fldl	16(%esi)
	fldl	40(%edi)
	fmull	96(%ebx)
	faddp	%st(0),%st(1)
	fstpl	16(%esi)
	movl	$_792,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_794
	call	_brl_blitz_NullObjectError
_794:
	movl	104(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_796
	call	_brl_blitz_NullObjectError
_796:
	movl	%ebx,-36(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_799
	call	_brl_blitz_NullObjectError
_799:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_801
	call	_brl_blitz_NullObjectError
_801:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_803
	call	_brl_blitz_NullObjectError
_803:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_805
	call	_brl_blitz_NullObjectError
_805:
	fldl	8(%edi)
	fldl	32(%esi)
	fmull	96(%ebx)
	faddp	%st(0),%st(1)
	movl	-36(%ebp),%eax
	fstpl	8(%eax)
	movl	$_806,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_808
	call	_brl_blitz_NullObjectError
_808:
	movl	104(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_810
	call	_brl_blitz_NullObjectError
_810:
	movl	%ebx,-32(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_813
	call	_brl_blitz_NullObjectError
_813:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_815
	call	_brl_blitz_NullObjectError
_815:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_817
	call	_brl_blitz_NullObjectError
_817:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_819
	call	_brl_blitz_NullObjectError
_819:
	fldl	16(%edi)
	fldl	40(%esi)
	fmull	96(%ebx)
	faddp	%st(0),%st(1)
	movl	-32(%ebp),%eax
	fstpl	16(%eax)
	movl	$_820,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_822
	call	_brl_blitz_NullObjectError
_822:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_824
	call	_brl_blitz_NullObjectError
_824:
	fldl	8(%ebx)
	fstpl	-20(%ebp)
	call	_brl_graphics_GraphicsWidth
	movl	%eax,-40(%ebp)
	fildl	-40(%ebp)
	fldl	-20(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_827
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_826
	call	_brl_blitz_NullObjectError
_826:
	fldl	32(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
_827:
	cmp	$0,%eax
	je	_829
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_836,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_830,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_832
	call	_brl_blitz_NullObjectError
_832:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_834
	call	_brl_blitz_NullObjectError
_834:
	fldz
	fstpl	8(%ebx)
	calll	*_bbOnDebugLeaveScope
_829:
	movl	$_837,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_839
	call	_brl_blitz_NullObjectError
_839:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_841
	call	_brl_blitz_NullObjectError
_841:
	fldl	8(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_844
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_843
	call	_brl_blitz_NullObjectError
_843:
	fldl	32(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_844:
	cmp	$0,%eax
	je	_846
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_853,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_847,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_849
	call	_brl_blitz_NullObjectError
_849:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_851
	call	_brl_blitz_NullObjectError
_851:
	call	_brl_graphics_GraphicsWidth
	movl	%eax,-40(%ebp)
	fildl	-40(%ebp)
	fstpl	8(%ebx)
	calll	*_bbOnDebugLeaveScope
_846:
	movl	$_854,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_856
	call	_brl_blitz_NullObjectError
_856:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_858
	call	_brl_blitz_NullObjectError
_858:
	fldl	16(%ebx)
	fstpl	-12(%ebp)
	call	_brl_graphics_GraphicsHeight
	movl	%eax,-40(%ebp)
	fildl	-40(%ebp)
	fldl	-12(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_861
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_860
	call	_brl_blitz_NullObjectError
_860:
	fldl	40(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
_861:
	cmp	$0,%eax
	je	_863
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_870,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_864,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_866
	call	_brl_blitz_NullObjectError
_866:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_868
	call	_brl_blitz_NullObjectError
_868:
	fldz
	fstpl	16(%ebx)
	calll	*_bbOnDebugLeaveScope
_863:
	movl	$_871,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_873
	call	_brl_blitz_NullObjectError
_873:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_875
	call	_brl_blitz_NullObjectError
_875:
	fldl	16(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_878
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_877
	call	_brl_blitz_NullObjectError
_877:
	fldl	40(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_878:
	cmp	$0,%eax
	je	_880
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_887,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_881,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_883
	call	_brl_blitz_NullObjectError
_883:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_885
	call	_brl_blitz_NullObjectError
_885:
	call	_brl_graphics_GraphicsHeight
	movl	%eax,-40(%ebp)
	fildl	-40(%ebp)
	fstpl	16(%ebx)
	calll	*_bbOnDebugLeaveScope
_880:
	movl	$_888,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_890
	call	_brl_blitz_NullObjectError
_890:
	movl	104(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_892
	call	_brl_blitz_NullObjectError
_892:
	movl	%ebx,-28(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_895
	call	_brl_blitz_NullObjectError
_895:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_897
	call	_brl_blitz_NullObjectError
_897:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_899
	call	_brl_blitz_NullObjectError
_899:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_901
	call	_brl_blitz_NullObjectError
_901:
	fldl	8(%edi)
	fldl	32(%esi)
	fmull	96(%ebx)
	faddp	%st(0),%st(1)
	movl	-28(%ebp),%eax
	fstpl	8(%eax)
	movl	$_902,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_904
	call	_brl_blitz_NullObjectError
_904:
	movl	104(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_906
	call	_brl_blitz_NullObjectError
_906:
	movl	%ebx,-24(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_909
	call	_brl_blitz_NullObjectError
_909:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_911
	call	_brl_blitz_NullObjectError
_911:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_913
	call	_brl_blitz_NullObjectError
_913:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_915
	call	_brl_blitz_NullObjectError
_915:
	fldl	16(%edi)
	fldl	40(%esi)
	fmull	96(%ebx)
	faddp	%st(0),%st(1)
	movl	-24(%ebp),%eax
	fstpl	16(%eax)
	mov	$0,%ebx
	jmp	_143
_143:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tball_display:
	push	%ebp
	mov	%esp,%ebp
	sub	$56,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_979,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_917,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_919
	call	_brl_blitz_NullObjectError
_919:
	movl	8(%ebx),%eax
	movl	%eax,-56(%ebp)
	cmpl	$_bbNullObject,-56(%ebp)
	jne	_921
	call	_brl_blitz_NullObjectError
_921:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_923
	call	_brl_blitz_NullObjectError
_923:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_925
	call	_brl_blitz_NullObjectError
_925:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_927
	call	_brl_blitz_NullObjectError
_927:
	movl	104(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_929
	call	_brl_blitz_NullObjectError
_929:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_931
	call	_brl_blitz_NullObjectError
_931:
	movl	104(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_933
	call	_brl_blitz_NullObjectError
_933:
	movl	$1,16(%esp)
	fldl	16(%ebx)
	fstps	12(%esp)
	fldl	8(%esi)
	fstps	8(%esp)
	fldl	16(%edi)
	fstps	4(%esp)
	movl	-56(%ebp),%eax
	fldl	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$_934,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_1586
	fstps	8(%esp)
	flds	_1587
	fstps	4(%esp)
	movl	$_7,(%esp)
	call	_brl_max2d_DrawText
	movl	$_935,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_937
	call	_brl_blitz_NullObjectError
_937:
	flds	_1588
	fstps	8(%esp)
	flds	_1589
	fstps	-52(%ebp)
	fldl	32(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_8,(%esp)
	call	_bbStringConcat
	flds	-52(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_938,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_940
	call	_brl_blitz_NullObjectError
_940:
	flds	_1590
	fstps	8(%esp)
	flds	_1591
	fstps	-48(%ebp)
	fldl	40(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_9,(%esp)
	call	_bbStringConcat
	flds	-48(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_941,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_943
	call	_brl_blitz_NullObjectError
_943:
	flds	_1592
	fstps	8(%esp)
	flds	_1593
	fstps	-44(%ebp)
	fldl	88(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_10,(%esp)
	call	_bbStringConcat
	flds	-44(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_944,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_946
	call	_brl_blitz_NullObjectError
_946:
	flds	_1594
	fstps	8(%esp)
	flds	_1595
	fstps	-40(%ebp)
	fldl	16(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_11,(%esp)
	call	_bbStringConcat
	flds	-40(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_947,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_949
	call	_brl_blitz_NullObjectError
_949:
	flds	_1596
	fstps	8(%esp)
	flds	_1597
	fstps	-36(%ebp)
	fldl	24(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_12,(%esp)
	call	_bbStringConcat
	flds	-36(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_950,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_952
	call	_brl_blitz_NullObjectError
_952:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_954
	call	_brl_blitz_NullObjectError
_954:
	flds	_1598
	fstps	8(%esp)
	flds	_1599
	fstps	-32(%ebp)
	fldl	8(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_13,(%esp)
	call	_bbStringConcat
	flds	-32(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_955,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_957
	call	_brl_blitz_NullObjectError
_957:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_959
	call	_brl_blitz_NullObjectError
_959:
	flds	_1600
	fstps	8(%esp)
	flds	_1601
	fstps	-28(%ebp)
	fldl	16(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_14,(%esp)
	call	_bbStringConcat
	flds	-28(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_960,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_962
	call	_brl_blitz_NullObjectError
_962:
	movl	104(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_964
	call	_brl_blitz_NullObjectError
_964:
	flds	_1602
	fstps	8(%esp)
	flds	_1603
	fstps	-24(%ebp)
	fldl	8(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_15,(%esp)
	call	_bbStringConcat
	flds	-24(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_965,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_967
	call	_brl_blitz_NullObjectError
_967:
	movl	104(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_969
	call	_brl_blitz_NullObjectError
_969:
	flds	_1604
	fstps	8(%esp)
	flds	_1605
	fstps	-20(%ebp)
	fldl	16(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_16,(%esp)
	call	_bbStringConcat
	flds	-20(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_970,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_972
	call	_brl_blitz_NullObjectError
_972:
	flds	_1606
	fstps	8(%esp)
	flds	_1607
	fstps	-16(%ebp)
	fldl	48(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_17,(%esp)
	call	_bbStringConcat
	flds	-16(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_973,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_975
	call	_brl_blitz_NullObjectError
_975:
	flds	_1608
	fstps	8(%esp)
	flds	_1609
	fstps	-12(%ebp)
	fldl	112(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_18,(%esp)
	call	_bbStringConcat
	flds	-12(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_976,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_978
	call	_brl_blitz_NullObjectError
_978:
	flds	_1610
	fstps	8(%esp)
	flds	_1611
	fstps	-8(%ebp)
	fldl	120(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_19,(%esp)
	call	_bbStringConcat
	flds	-8(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	mov	$0,%ebx
	jmp	_146
_146:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tline_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_981,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	__bb_Tvector_New
	movl	-4(%ebp),%eax
	movl	$_bb_Tline,(%eax)
	movl	%ebp,4(%esp)
	movl	$_980,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_149
_149:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tline_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
_152:
	movl	$_bb_Tvector,(%eax)
	movl	%eax,(%esp)
	call	__bb_Tvector_Delete
	mov	$0,%eax
	jmp	_982
_982:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tline_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$36,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	fldl	8(%ebp)
	fstpl	-8(%ebp)
	fldl	16(%ebp)
	fstpl	-16(%ebp)
	fldl	24(%ebp)
	fstpl	-24(%ebp)
	fldl	32(%ebp)
	fstpl	-32(%ebp)
	movl	$_bbNullObject,-36(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1042,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_983,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tline,(%esp)
	call	_bbObjectNew
	movl	%eax,-36(%ebp)
	movl	$_985,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_987
	call	_brl_blitz_NullObjectError
_987:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_989
	call	_brl_blitz_NullObjectError
_989:
	fldl	-8(%ebp)
	fstpl	8(%ebx)
	movl	$_991,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_993
	call	_brl_blitz_NullObjectError
_993:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_995
	call	_brl_blitz_NullObjectError
_995:
	fldl	-16(%ebp)
	fstpl	16(%ebx)
	movl	$_997,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_999
	call	_brl_blitz_NullObjectError
_999:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1001
	call	_brl_blitz_NullObjectError
_1001:
	fldl	-24(%ebp)
	fstpl	8(%ebx)
	movl	$_1003,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1005
	call	_brl_blitz_NullObjectError
_1005:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1007
	call	_brl_blitz_NullObjectError
_1007:
	fldl	-32(%ebp)
	fstpl	16(%ebx)
	movl	$_1009,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1011
	call	_brl_blitz_NullObjectError
_1011:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*64(%eax)
	movl	$_1012,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1014
	call	_brl_blitz_NullObjectError
_1014:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*72(%eax)
	movl	$_1015,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1017
	call	_brl_blitz_NullObjectError
_1017:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_1018,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1020
	call	_brl_blitz_NullObjectError
_1020:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	movl	$_1021,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1023
	call	_brl_blitz_NullObjectError
_1023:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1025
	call	_brl_blitz_NullObjectError
_1025:
	mov	%ebx,%edi
	movl	-36(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1028
	call	_brl_blitz_NullObjectError
_1028:
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1030
	call	_brl_blitz_NullObjectError
_1030:
	fldl	-8(%ebp)
	fldl	32(%esi)
	fmull	88(%ebx)
	faddp	%st(0),%st(1)
	fstpl	8(%edi)
	movl	$_1031,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1033
	call	_brl_blitz_NullObjectError
_1033:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1035
	call	_brl_blitz_NullObjectError
_1035:
	mov	%ebx,%edi
	movl	-36(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1038
	call	_brl_blitz_NullObjectError
_1038:
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1040
	call	_brl_blitz_NullObjectError
_1040:
	fldl	-16(%ebp)
	fldl	40(%esi)
	fmull	88(%ebx)
	faddp	%st(0),%st(1)
	fstpl	16(%edi)
	movl	$_1041,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	jmp	_158
_158:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tline_setComponents:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1072,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1048,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1050
	call	_brl_blitz_NullObjectError
_1050:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1053
	call	_brl_blitz_NullObjectError
_1053:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_1055
	call	_brl_blitz_NullObjectError
_1055:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1057
	call	_brl_blitz_NullObjectError
_1057:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1059
	call	_brl_blitz_NullObjectError
_1059:
	fldl	8(%esi)
	fsubl	8(%ebx)
	fstpl	16(%edi)
	movl	$_1060,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1062
	call	_brl_blitz_NullObjectError
_1062:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1065
	call	_brl_blitz_NullObjectError
_1065:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1067
	call	_brl_blitz_NullObjectError
_1067:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1069
	call	_brl_blitz_NullObjectError
_1069:
	movl	8(%esi),%esi
	cmp	$_bbNullObject,%esi
	jne	_1071
	call	_brl_blitz_NullObjectError
_1071:
	fldl	16(%ebx)
	fsubl	16(%esi)
	fstpl	24(%edi)
	mov	$0,%ebx
	jmp	_161
_161:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tline_setDirection:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1089,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1073,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1075
	call	_brl_blitz_NullObjectError
_1075:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1078
	call	_brl_blitz_NullObjectError
_1078:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1080
	call	_brl_blitz_NullObjectError
_1080:
	fldl	16(%esi)
	fdivl	88(%ebx)
	fstpl	32(%edi)
	movl	$_1081,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1083
	call	_brl_blitz_NullObjectError
_1083:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1086
	call	_brl_blitz_NullObjectError
_1086:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1088
	call	_brl_blitz_NullObjectError
_1088:
	fldl	24(%esi)
	fdivl	88(%ebx)
	fstpl	40(%edi)
	mov	$0,%ebx
	jmp	_164
_164:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tline_setComponentsLength:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1102,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1090,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1092
	call	_brl_blitz_NullObjectError
_1092:
	movl	%ebx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	cmpl	$_bbNullObject,-8(%ebp)
	jne	_1095
	call	_brl_blitz_NullObjectError
_1095:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_1097
	call	_brl_blitz_NullObjectError
_1097:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1099
	call	_brl_blitz_NullObjectError
_1099:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1101
	call	_brl_blitz_NullObjectError
_1101:
	movl	-8(%ebp),%eax
	fldl	16(%eax)
	fmull	16(%edi)
	fldl	24(%esi)
	fmull	24(%ebx)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	movl	-12(%ebp),%eax
	fstpl	88(%eax)
	mov	$0,%ebx
	jmp	_167
_167:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tline_display:
	push	%ebp
	mov	%esp,%ebp
	sub	$44,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$32,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1156,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1103,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1105
	call	_brl_blitz_NullObjectError
_1105:
	movl	8(%ebx),%eax
	movl	%eax,-44(%ebp)
	cmpl	$_bbNullObject,-44(%ebp)
	jne	_1107
	call	_brl_blitz_NullObjectError
_1107:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1109
	call	_brl_blitz_NullObjectError
_1109:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_1111
	call	_brl_blitz_NullObjectError
_1111:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1113
	call	_brl_blitz_NullObjectError
_1113:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_1115
	call	_brl_blitz_NullObjectError
_1115:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1117
	call	_brl_blitz_NullObjectError
_1117:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1119
	call	_brl_blitz_NullObjectError
_1119:
	movl	$1,16(%esp)
	fldl	16(%ebx)
	fstps	12(%esp)
	fldl	8(%esi)
	fstps	8(%esp)
	fldl	16(%edi)
	fstps	4(%esp)
	movl	-44(%ebp),%eax
	fldl	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$_1120,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_1692
	fstps	8(%esp)
	flds	_1693
	fstps	4(%esp)
	movl	$_7,(%esp)
	call	_brl_max2d_DrawText
	movl	$_1121,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1123
	call	_brl_blitz_NullObjectError
_1123:
	flds	_1694
	fstps	8(%esp)
	flds	_1695
	fstps	-40(%ebp)
	fldl	32(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_8,(%esp)
	call	_bbStringConcat
	flds	-40(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_1124,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1126
	call	_brl_blitz_NullObjectError
_1126:
	flds	_1696
	fstps	8(%esp)
	flds	_1697
	fstps	-36(%ebp)
	fldl	40(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_9,(%esp)
	call	_bbStringConcat
	flds	-36(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_1127,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1129
	call	_brl_blitz_NullObjectError
_1129:
	flds	_1698
	fstps	8(%esp)
	flds	_1699
	fstps	-32(%ebp)
	fldl	88(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_10,(%esp)
	call	_bbStringConcat
	flds	-32(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_1130,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1132
	call	_brl_blitz_NullObjectError
_1132:
	flds	_1700
	fstps	8(%esp)
	flds	_1701
	fstps	-28(%ebp)
	fldl	16(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_11,(%esp)
	call	_bbStringConcat
	flds	-28(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_1133,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1135
	call	_brl_blitz_NullObjectError
_1135:
	flds	_1702
	fstps	8(%esp)
	flds	_1703
	fstps	-24(%ebp)
	fldl	24(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_12,(%esp)
	call	_bbStringConcat
	flds	-24(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_1136,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1138
	call	_brl_blitz_NullObjectError
_1138:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1140
	call	_brl_blitz_NullObjectError
_1140:
	flds	_1704
	fstps	8(%esp)
	flds	_1705
	fstps	-20(%ebp)
	fldl	8(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_13,(%esp)
	call	_bbStringConcat
	flds	-20(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_1141,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1143
	call	_brl_blitz_NullObjectError
_1143:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1145
	call	_brl_blitz_NullObjectError
_1145:
	flds	_1706
	fstps	8(%esp)
	flds	_1707
	fstps	-16(%ebp)
	fldl	16(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_14,(%esp)
	call	_bbStringConcat
	flds	-16(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_1146,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1148
	call	_brl_blitz_NullObjectError
_1148:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1150
	call	_brl_blitz_NullObjectError
_1150:
	flds	_1708
	fstps	8(%esp)
	flds	_1709
	fstps	-12(%ebp)
	fldl	8(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_15,(%esp)
	call	_bbStringConcat
	flds	-12(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	movl	$_1151,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1153
	call	_brl_blitz_NullObjectError
_1153:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1155
	call	_brl_blitz_NullObjectError
_1155:
	flds	_1710
	fstps	8(%esp)
	flds	_1711
	fstps	-8(%ebp)
	fldl	16(%ebx)
	fstpl	(%esp)
	call	_bbStringFromDouble
	movl	%eax,4(%esp)
	movl	$_16,(%esp)
	call	_bbStringConcat
	flds	-8(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	call	_brl_max2d_DrawText
	mov	$0,%ebx
	jmp	_170
_170:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$32,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1212,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Tgame,(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,12(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,16(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,20(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,24(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1211,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1163,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1165
	call	_brl_blitz_NullObjectError
_1165:
	movl	$_bb_Tball,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_1170
	movl	%eax,(%esp)
	call	_bbGCFree
_1170:
	movl	%esi,8(%ebx)
	movl	$_1171,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1173
	call	_brl_blitz_NullObjectError
_1173:
	movl	$_bb_Tline,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_1178
	movl	%eax,(%esp)
	call	_bbGCFree
_1178:
	movl	%esi,12(%ebx)
	movl	$_1179,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1181
	call	_brl_blitz_NullObjectError
_1181:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_1186
	movl	%eax,(%esp)
	call	_bbGCFree
_1186:
	movl	%esi,20(%ebx)
	movl	$_1187,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1189
	call	_brl_blitz_NullObjectError
_1189:
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_1194
	movl	%eax,(%esp)
	call	_bbGCFree
_1194:
	movl	%esi,24(%ebx)
	movl	$_1195,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1197
	call	_brl_blitz_NullObjectError
_1197:
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_1202
	movl	%eax,(%esp)
	call	_bbGCFree
_1202:
	movl	%esi,28(%ebx)
	movl	$_1203,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1205
	call	_brl_blitz_NullObjectError
_1205:
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_1210
	movl	%eax,(%esp)
	call	_bbGCFree
_1210:
	movl	%esi,16(%ebx)
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_173
_173:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
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
_176:
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_1215
	movl	%eax,(%esp)
	call	_bbGCFree
_1215:
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_1217
	movl	%eax,(%esp)
	call	_bbGCFree
_1217:
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_1219
	movl	%eax,(%esp)
	call	_bbGCFree
_1219:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_1221
	movl	%eax,(%esp)
	call	_bbGCFree
_1221:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_1223
	movl	%eax,(%esp)
	call	_bbGCFree
_1223:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_1225
	movl	%eax,(%esp)
	call	_bbGCFree
_1225:
	mov	$0,%eax
	jmp	_1213
_1213:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_collide:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1261,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1226,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1228
	call	_brl_blitz_NullObjectError
_1228:
	movl	$0,32(%ebx)
	movl	$_1230,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1232
	call	_brl_blitz_NullObjectError
_1232:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_1234
	call	_brl_blitz_NullObjectError
_1234:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1236
	call	_brl_blitz_NullObjectError
_1236:
	movl	12(%ebx),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*72(%eax)
	cmp	$_bbNullObject,%eax
	je	_1237
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1249,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1238,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1240
	call	_brl_blitz_NullObjectError
_1240:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_1242
	call	_brl_blitz_NullObjectError
_1242:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1244
	call	_brl_blitz_NullObjectError
_1244:
	movl	12(%ebx),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*76(%eax)
	movl	$_1245,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1247
	call	_brl_blitz_NullObjectError
_1247:
	movl	$1,32(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_1250
_1237:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1260,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1251,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1253
	call	_brl_blitz_NullObjectError
_1253:
	movl	$0,32(%ebx)
	movl	$_1255,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1257
	call	_brl_blitz_NullObjectError
_1257:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1259
	call	_brl_blitz_NullObjectError
_1259:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*80(%eax)
	calll	*_bbOnDebugLeaveScope
_1250:
	mov	$0,%ebx
	jmp	_179
_179:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_display:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_1280,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1262,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,8(%esp)
	movl	$255,4(%esp)
	movl	$0,(%esp)
	call	_brl_max2d_SetColor
	movl	$_1263,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1265
	call	_brl_blitz_NullObjectError
_1265:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1267
	call	_brl_blitz_NullObjectError
_1267:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*84(%eax)
	movl	$_1268,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,8(%esp)
	movl	$0,4(%esp)
	movl	$255,(%esp)
	call	_brl_max2d_SetColor
	movl	$_1269,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1271
	call	_brl_blitz_NullObjectError
_1271:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1273
	call	_brl_blitz_NullObjectError
_1273:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*76(%eax)
	movl	$_1274,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1276
	call	_brl_blitz_NullObjectError
_1276:
	cmpl	$0,32(%ebx)
	je	_1277
	movl	%ebp,4(%esp)
	movl	$_1279,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1278,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_1759
	fstps	8(%esp)
	flds	_1760
	fstps	4(%esp)
	movl	$_20,(%esp)
	call	_brl_max2d_DrawText
	calll	*_bbOnDebugLeaveScope
_1277:
	mov	$0,%ebx
	jmp	_182
_182:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_222:
	.long	0
_68:
	.asciz	"bounce"
_220:
	.asciz	"game"
_221:
	.asciz	":Tgame"
	.align	4
_bb_game:
	.long	_bbNullObject
	.align	4
_219:
	.long	1
	.long	_68
	.long	4
	.long	_220
	.long	_221
	.long	_bb_game
	.long	0
_28:
	.asciz	"Tpoint"
_29:
	.asciz	"x"
_30:
	.asciz	"d"
_31:
	.asciz	"y"
_32:
	.asciz	"New"
_33:
	.asciz	"()i"
_34:
	.asciz	"Delete"
	.align	4
_27:
	.long	2
	.long	_28
	.long	3
	.long	_29
	.long	_30
	.long	8
	.long	3
	.long	_31
	.long	_30
	.long	16
	.long	6
	.long	_32
	.long	_33
	.long	16
	.long	6
	.long	_34
	.long	_33
	.long	20
	.long	0
	.align	4
_bb_Tpoint:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_27
	.long	24
	.long	__bb_Tpoint_New
	.long	__bb_Tpoint_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_36:
	.asciz	"Tvector"
_37:
	.asciz	"p0"
_38:
	.asciz	":Tpoint"
_39:
	.asciz	"p1"
_40:
	.asciz	"vx"
_41:
	.asciz	"vy"
_42:
	.asciz	"dx"
_43:
	.asciz	"dy"
_44:
	.asciz	"dp"
_45:
	.asciz	"rx"
_46:
	.asciz	"ry"
_47:
	.asciz	"lx"
_48:
	.asciz	"ly"
_49:
	.asciz	"length"
_50:
	.asciz	"speed"
_51:
	.asciz	"setNormals"
_52:
	.asciz	"perP"
_53:
	.asciz	"(:Tvector)d"
_54:
	.asciz	"project"
_55:
	.asciz	"(d,d):Tvector"
	.align	4
_35:
	.long	2
	.long	_36
	.long	3
	.long	_37
	.long	_38
	.long	8
	.long	3
	.long	_39
	.long	_38
	.long	12
	.long	3
	.long	_40
	.long	_30
	.long	16
	.long	3
	.long	_41
	.long	_30
	.long	24
	.long	3
	.long	_42
	.long	_30
	.long	32
	.long	3
	.long	_43
	.long	_30
	.long	40
	.long	3
	.long	_44
	.long	_30
	.long	48
	.long	3
	.long	_45
	.long	_30
	.long	56
	.long	3
	.long	_46
	.long	_30
	.long	64
	.long	3
	.long	_47
	.long	_30
	.long	72
	.long	3
	.long	_48
	.long	_30
	.long	80
	.long	3
	.long	_49
	.long	_30
	.long	88
	.long	3
	.long	_50
	.long	_30
	.long	96
	.long	6
	.long	_32
	.long	_33
	.long	16
	.long	6
	.long	_34
	.long	_33
	.long	20
	.long	6
	.long	_51
	.long	_33
	.long	48
	.long	6
	.long	_52
	.long	_53
	.long	52
	.long	6
	.long	_54
	.long	_55
	.long	56
	.long	0
	.align	4
_bb_Tvector:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_35
	.long	104
	.long	__bb_Tvector_New
	.long	__bb_Tvector_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Tvector_setNormals
	.long	__bb_Tvector_perP
	.long	__bb_Tvector_project
_57:
	.asciz	"Tball"
_58:
	.asciz	"ip"
_59:
	.asciz	"t1"
_60:
	.asciz	"t2"
_61:
	.asciz	"Create"
_62:
	.asciz	"(d,d,d,d):Tball"
_63:
	.asciz	"setDirection"
_64:
	.asciz	"(d)i"
_65:
	.asciz	"setComponents"
_66:
	.asciz	"findIntersection"
_67:
	.asciz	"(:Tvector):Tpoint"
_69:
	.asciz	"(:Tvector)i"
_70:
	.asciz	"move"
_71:
	.asciz	"display"
	.align	4
_56:
	.long	2
	.long	_57
	.long	3
	.long	_39
	.long	_38
	.long	104
	.long	3
	.long	_58
	.long	_38
	.long	108
	.long	3
	.long	_59
	.long	_30
	.long	112
	.long	3
	.long	_60
	.long	_30
	.long	120
	.long	6
	.long	_32
	.long	_33
	.long	16
	.long	6
	.long	_34
	.long	_33
	.long	20
	.long	7
	.long	_61
	.long	_62
	.long	60
	.long	6
	.long	_63
	.long	_64
	.long	64
	.long	6
	.long	_65
	.long	_64
	.long	68
	.long	6
	.long	_66
	.long	_67
	.long	72
	.long	6
	.long	_68
	.long	_69
	.long	76
	.long	6
	.long	_70
	.long	_33
	.long	80
	.long	6
	.long	_71
	.long	_33
	.long	84
	.long	0
	.align	4
_bb_Tball:
	.long	_bb_Tvector
	.long	_bbObjectFree
	.long	_56
	.long	128
	.long	__bb_Tball_New
	.long	__bb_Tball_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Tvector_setNormals
	.long	__bb_Tvector_perP
	.long	__bb_Tvector_project
	.long	__bb_Tball_Create
	.long	__bb_Tball_setDirection
	.long	__bb_Tball_setComponents
	.long	__bb_Tball_findIntersection
	.long	__bb_Tball_bounce
	.long	__bb_Tball_move
	.long	__bb_Tball_display
_73:
	.asciz	"Tline"
_74:
	.asciz	"(d,d,d,d):Tline"
_75:
	.asciz	"setComponentsLength"
	.align	4
_72:
	.long	2
	.long	_73
	.long	6
	.long	_32
	.long	_33
	.long	16
	.long	6
	.long	_34
	.long	_33
	.long	20
	.long	7
	.long	_61
	.long	_74
	.long	60
	.long	6
	.long	_65
	.long	_33
	.long	64
	.long	6
	.long	_63
	.long	_33
	.long	68
	.long	6
	.long	_75
	.long	_33
	.long	72
	.long	6
	.long	_71
	.long	_33
	.long	76
	.long	0
	.align	4
_bb_Tline:
	.long	_bb_Tvector
	.long	_bbObjectFree
	.long	_72
	.long	104
	.long	__bb_Tline_New
	.long	__bb_Tline_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Tvector_setNormals
	.long	__bb_Tvector_perP
	.long	__bb_Tvector_project
	.long	__bb_Tline_Create
	.long	__bb_Tline_setComponents
	.long	__bb_Tline_setDirection
	.long	__bb_Tline_setComponentsLength
	.long	__bb_Tline_display
_77:
	.asciz	"Tgame"
_78:
	.asciz	"v1"
_79:
	.asciz	":Tball"
_80:
	.asciz	"v2"
_81:
	.asciz	":Tline"
_82:
	.asciz	"v3"
_83:
	.asciz	":Tvector"
_84:
	.asciz	"proj1"
_85:
	.asciz	"proj2"
_86:
	.asciz	"i"
_87:
	.asciz	"collide"
	.align	4
_76:
	.long	2
	.long	_77
	.long	3
	.long	_78
	.long	_79
	.long	8
	.long	3
	.long	_80
	.long	_81
	.long	12
	.long	3
	.long	_82
	.long	_83
	.long	16
	.long	3
	.long	_58
	.long	_38
	.long	20
	.long	3
	.long	_84
	.long	_83
	.long	24
	.long	3
	.long	_85
	.long	_83
	.long	28
	.long	3
	.long	_68
	.long	_86
	.long	32
	.long	6
	.long	_32
	.long	_33
	.long	16
	.long	6
	.long	_34
	.long	_33
	.long	20
	.long	6
	.long	_87
	.long	_33
	.long	48
	.long	6
	.long	_71
	.long	_33
	.long	52
	.long	0
	.align	4
_bb_Tgame:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_76
	.long	36
	.long	__bb_Tgame_New
	.long	__bb_Tgame_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Tgame_collide
	.long	__bb_Tgame_display
_185:
	.asciz	"/Users/jesseperez/Desktop/roll_ball/bounce.bmx"
	.align	4
_184:
	.long	_185
	.long	299
	.long	1
	.align	4
_187:
	.long	0
	.align	4
_189:
	.long	_185
	.long	301
	.long	1
	.align	8
_1281:
	.long	0x0,0x40200000
	.align	8
_1282:
	.long	0x0,0x40518000
	.align	8
_1283:
	.long	0x0,0x40490000
	.align	8
_1284:
	.long	0x0,0x4067c000
	.align	4
_197:
	.long	_185
	.long	302
	.long	1
	.align	8
_1285:
	.long	0x0,0x407f4000
	.align	8
_1286:
	.long	0x0,0x407f4000
	.align	8
_1287:
	.long	0x0,0x40590000
	.align	8
_1288:
	.long	0x0,0x4062c000
	.align	4
_205:
	.long	_185
	.long	305
	.long	1
	.align	4
_206:
	.long	_185
	.long	313
	.long	1
	.align	4
_218:
	.long	3
	.long	0
	.long	0
	.align	4
_207:
	.long	_185
	.long	308
	.long	2
	.align	4
_208:
	.long	_185
	.long	309
	.long	2
	.align	4
_211:
	.long	_185
	.long	310
	.long	2
	.align	4
_214:
	.long	_185
	.long	311
	.long	2
	.align	4
_216:
	.long	3
	.long	0
	.long	0
	.align	4
_215:
	.long	_185
	.long	311
	.long	27
	.align	4
_217:
	.long	_185
	.long	312
	.long	2
_226:
	.asciz	"Self"
	.align	4
_225:
	.long	1
	.long	_32
	.long	2
	.long	_226
	.long	_38
	.long	-4
	.long	0
	.align	4
_224:
	.long	3
	.long	0
	.long	0
	.align	4
_247:
	.long	1
	.long	_32
	.long	2
	.long	_226
	.long	_83
	.long	-4
	.long	0
	.align	4
_246:
	.long	3
	.long	0
	.long	0
	.align	4
_230:
	.long	_185
	.long	26
	.long	3
	.align	4
_238:
	.long	_185
	.long	27
	.long	3
	.align	4
_277:
	.long	1
	.long	_51
	.long	2
	.long	_226
	.long	_83
	.long	-4
	.long	0
	.align	4
_253:
	.long	_185
	.long	33
	.long	3
	.align	4
_259:
	.long	_185
	.long	34
	.long	3
	.align	4
_265:
	.long	_185
	.long	36
	.long	3
	.align	4
_271:
	.long	_185
	.long	37
	.long	3
_288:
	.asciz	"vb"
	.align	4
_287:
	.long	1
	.long	_52
	.long	2
	.long	_226
	.long	_83
	.long	-4
	.long	2
	.long	_288
	.long	_83
	.long	-8
	.long	0
	.align	4
_278:
	.long	_185
	.long	42
	.long	3
_313:
	.asciz	"proj"
	.align	4
_312:
	.long	1
	.long	_54
	.long	2
	.long	_226
	.long	_83
	.long	-4
	.long	2
	.long	_42
	.long	_30
	.long	-12
	.long	2
	.long	_43
	.long	_30
	.long	-20
	.long	2
	.long	_313
	.long	_83
	.long	-24
	.long	0
	.align	4
_289:
	.long	_185
	.long	48
	.long	3
	.align	4
_297:
	.long	_185
	.long	49
	.long	3
	.align	4
_299:
	.long	_185
	.long	51
	.long	3
	.align	4
_305:
	.long	_185
	.long	52
	.long	3
	.align	4
_311:
	.long	_185
	.long	53
	.long	3
	.align	4
_333:
	.long	1
	.long	_32
	.long	2
	.long	_226
	.long	_79
	.long	-4
	.long	0
	.align	4
_332:
	.long	3
	.long	0
	.long	0
	.align	4
_316:
	.long	_185
	.long	66
	.long	3
	.align	4
_324:
	.long	_185
	.long	67
	.long	3
_392:
	.asciz	"angle"
_393:
	.asciz	"b"
	.align	4
_391:
	.long	1
	.long	_61
	.long	2
	.long	_29
	.long	_30
	.long	-8
	.long	2
	.long	_31
	.long	_30
	.long	-16
	.long	2
	.long	_392
	.long	_30
	.long	-24
	.long	2
	.long	_50
	.long	_30
	.long	-32
	.long	2
	.long	_393
	.long	_79
	.long	-36
	.long	0
	.align	4
_339:
	.long	_185
	.long	71
	.long	3
	.align	4
_341:
	.long	_185
	.long	72
	.long	3
	.align	4
_347:
	.long	_185
	.long	73
	.long	3
	.align	4
_353:
	.long	_185
	.long	74
	.long	3
	.align	4
_357:
	.long	_185
	.long	75
	.long	3
	.align	4
_360:
	.long	_185
	.long	76
	.long	3
	.align	4
_363:
	.long	_185
	.long	77
	.long	3
	.align	4
_366:
	.long	_185
	.long	78
	.long	3
	.align	4
_378:
	.long	_185
	.long	79
	.long	3
	.align	4
_390:
	.long	_185
	.long	80
	.long	3
	.align	4
_402:
	.long	1
	.long	_63
	.long	2
	.long	_226
	.long	_79
	.long	-4
	.long	2
	.long	_392
	.long	_30
	.long	-12
	.long	0
	.align	4
_394:
	.long	_185
	.long	84
	.long	3
	.align	4
_398:
	.long	_185
	.long	85
	.long	3
_420:
	.asciz	"t"
	.align	4
_419:
	.long	1
	.long	_65
	.long	2
	.long	_226
	.long	_79
	.long	-4
	.long	2
	.long	_420
	.long	_30
	.long	-12
	.long	0
	.align	4
_403:
	.long	_185
	.long	89
	.long	3
	.align	4
_411:
	.long	_185
	.long	90
	.long	3
_575:
	.asciz	"v3a"
_576:
	.asciz	"v3b"
	.align	4
_574:
	.long	1
	.long	_66
	.long	2
	.long	_226
	.long	_79
	.long	-4
	.long	2
	.long	_80
	.long	_83
	.long	-8
	.long	2
	.long	_420
	.long	_30
	.long	-16
	.long	2
	.long	_575
	.long	_83
	.long	-20
	.long	2
	.long	_576
	.long	_83
	.long	-24
	.long	0
	.align	4
_421:
	.long	_185
	.long	95
	.long	3
	.align	4
_423:
	.long	_185
	.long	97
	.long	3
	.align	4
_425:
	.long	_185
	.long	98
	.long	3
	.align	4
_437:
	.long	_185
	.long	99
	.long	3
	.align	4
_449:
	.long	_185
	.long	100
	.long	3
	.align	4
_451:
	.long	_185
	.long	101
	.long	3
	.align	4
_463:
	.long	_185
	.long	102
	.long	3
	.align	4
_475:
	.long	_185
	.long	104
	.long	3
	.align	4
_500:
	.long	3
	.long	0
	.long	0
	.align	4
_499:
	.long	_185
	.long	105
	.long	4
	.align	4
_518:
	.long	3
	.long	0
	.long	0
	.align	4
_502:
	.long	_185
	.long	107
	.long	4
	.align	4
_510:
	.long	_185
	.long	108
	.long	4
	.align	4
_519:
	.long	_185
	.long	110
	.long	3
	.align	4
_566:
	.long	3
	.long	0
	.long	0
	.align	4
_535:
	.long	_185
	.long	112
	.long	4
	.align	4
_549:
	.long	_185
	.long	113
	.long	4
	.align	4
_563:
	.long	_185
	.long	114
	.long	4
	.align	4
_567:
	.long	_185
	.long	116
	.long	3
	.align	8
_1373:
	.long	0x0,0x40080000
	.align	4
_572:
	.long	3
	.long	0
	.long	0
	.align	4
_571:
	.long	_185
	.long	116
	.long	18
	.align	4
_573:
	.long	_185
	.long	117
	.long	3
	.align	4
_771:
	.long	1
	.long	_68
	.long	2
	.long	_226
	.long	_79
	.long	-4
	.long	2
	.long	_80
	.long	_83
	.long	-8
	.long	2
	.long	_84
	.long	_83
	.long	-12
	.long	2
	.long	_85
	.long	_83
	.long	-16
	.long	2
	.long	_313
	.long	_83
	.long	-20
	.long	0
	.align	4
_577:
	.long	_185
	.long	149
	.long	3
	.align	4
_585:
	.long	_185
	.long	151
	.long	3
	.align	4
_597:
	.long	_185
	.long	152
	.long	3
	.align	4
_607:
	.long	_185
	.long	153
	.long	3
	.align	4
_617:
	.long	_185
	.long	154
	.long	3
	.align	4
_619:
	.long	_185
	.long	155
	.long	3
	.align	4
_629:
	.long	_185
	.long	156
	.long	3
	.align	4
_639:
	.long	_185
	.long	157
	.long	3
	.align	8
_1440:
	.long	0x0,0xbff00000
	.align	4
_643:
	.long	_185
	.long	158
	.long	3
	.align	8
_1441:
	.long	0x0,0xbff00000
	.align	4
_647:
	.long	_185
	.long	159
	.long	3
	.align	4
_655:
	.long	_185
	.long	160
	.long	3
	.align	4
_663:
	.long	_185
	.long	161
	.long	3
	.align	8
_1442:
	.long	0x0,0x40000000
	.align	8
_1443:
	.long	0x0,0x40000000
	.align	4
_671:
	.long	_185
	.long	162
	.long	3
	.align	4
_679:
	.long	_185
	.long	163
	.long	3
	.align	4
_687:
	.long	_185
	.long	164
	.long	3
	.align	8
_1444:
	.long	0x0,0x40000000
	.align	8
_1445:
	.long	0x0,0x40000000
	.align	4
_707:
	.long	_185
	.long	165
	.long	3
	.align	4
_715:
	.long	_185
	.long	166
	.long	3
	.align	4
_723:
	.long	_185
	.long	167
	.long	3
	.align	4
_735:
	.long	_185
	.long	168
	.long	3
	.align	4
_747:
	.long	_185
	.long	169
	.long	3
	.align	4
_759:
	.long	_185
	.long	170
	.long	3
	.align	4
_916:
	.long	1
	.long	_70
	.long	2
	.long	_226
	.long	_79
	.long	-4
	.long	0
	.align	4
_772:
	.long	_185
	.long	175
	.long	3
	.align	4
_782:
	.long	_185
	.long	176
	.long	3
	.align	4
_792:
	.long	_185
	.long	177
	.long	3
	.align	4
_806:
	.long	_185
	.long	178
	.long	3
	.align	4
_820:
	.long	_185
	.long	180
	.long	3
	.align	4
_836:
	.long	3
	.long	0
	.long	0
	.align	4
_830:
	.long	_185
	.long	180
	.long	44
	.align	4
_837:
	.long	_185
	.long	181
	.long	3
	.align	4
_853:
	.long	3
	.long	0
	.long	0
	.align	4
_847:
	.long	_185
	.long	181
	.long	31
	.align	4
_854:
	.long	_185
	.long	182
	.long	3
	.align	4
_870:
	.long	3
	.long	0
	.long	0
	.align	4
_864:
	.long	_185
	.long	182
	.long	46
	.align	4
_871:
	.long	_185
	.long	183
	.long	3
	.align	4
_887:
	.long	3
	.long	0
	.long	0
	.align	4
_881:
	.long	_185
	.long	183
	.long	31
	.align	4
_888:
	.long	_185
	.long	184
	.long	3
	.align	4
_902:
	.long	_185
	.long	185
	.long	3
	.align	4
_979:
	.long	1
	.long	_71
	.long	2
	.long	_226
	.long	_79
	.long	-4
	.long	0
	.align	4
_917:
	.long	_185
	.long	192
	.long	3
	.align	4
_934:
	.long	_185
	.long	193
	.long	3
	.align	4
_1586:
	.long	0x41200000
	.align	4
_1587:
	.long	0x41200000
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	119,97,108,108
	.align	4
_935:
	.long	_185
	.long	194
	.long	3
	.align	4
_1588:
	.long	0x41d00000
	.align	4
_1589:
	.long	0x43fa0000
	.align	4
_8:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	100,120,32,32,32,32,32,61,32
	.align	4
_938:
	.long	_185
	.long	195
	.long	3
	.align	4
_1590:
	.long	0x42280000
	.align	4
_1591:
	.long	0x43fa0000
	.align	4
_9:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	100,121,32,32,32,32,32,61,32
	.align	4
_941:
	.long	_185
	.long	196
	.long	3
	.align	4
_1592:
	.long	0x42680000
	.align	4
_1593:
	.long	0x43fa0000
	.align	4
_10:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	108,101,110,103,116,104,32,61,32
	.align	4
_944:
	.long	_185
	.long	197
	.long	3
	.align	4
_1594:
	.long	0x42940000
	.align	4
_1595:
	.long	0x43fa0000
	.align	4
_11:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	118,120,32,32,32,32,32,61,32
	.align	4
_947:
	.long	_185
	.long	198
	.long	3
	.align	4
_1596:
	.long	0x42b40000
	.align	4
_1597:
	.long	0x43fa0000
	.align	4
_12:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	118,121,32,32,32,32,32,61,32
	.align	4
_950:
	.long	_185
	.long	199
	.long	3
	.align	4
_1598:
	.long	0x42d40000
	.align	4
_1599:
	.long	0x43fa0000
	.align	4
_13:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	112,48,46,120,32,32,32,61,32
	.align	4
_955:
	.long	_185
	.long	200
	.long	3
	.align	4
_1600:
	.long	0x42f40000
	.align	4
_1601:
	.long	0x43fa0000
	.align	4
_14:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	112,48,46,121,32,32,32,61,32
	.align	4
_960:
	.long	_185
	.long	201
	.long	3
	.align	4
_1602:
	.long	0x430a0000
	.align	4
_1603:
	.long	0x43fa0000
	.align	4
_15:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	112,49,46,120,32,32,32,61,32
	.align	4
_965:
	.long	_185
	.long	202
	.long	3
	.align	4
_1604:
	.long	0x431a0000
	.align	4
_1605:
	.long	0x43fa0000
	.align	4
_16:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	112,49,46,121,32,32,32,61,32
	.align	4
_970:
	.long	_185
	.long	203
	.long	3
	.align	4
_1606:
	.long	0x432a0000
	.align	4
_1607:
	.long	0x43fa0000
	.align	4
_17:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	100,112,32,32,32,32,32,61,32
	.align	4
_973:
	.long	_185
	.long	204
	.long	3
	.align	4
_1608:
	.long	0x433a0000
	.align	4
_1609:
	.long	0x43fa0000
	.align	4
_18:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	116,49,32,32,32,32,32,61,32
	.align	4
_976:
	.long	_185
	.long	205
	.long	3
	.align	4
_1610:
	.long	0x434a0000
	.align	4
_1611:
	.long	0x43fa0000
	.align	4
_19:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	116,50,32,32,32,32,32,61,32
	.align	4
_981:
	.long	1
	.long	_32
	.long	2
	.long	_226
	.long	_81
	.long	-4
	.long	0
	.align	4
_980:
	.long	3
	.long	0
	.long	0
_1043:
	.asciz	"x1"
_1044:
	.asciz	"y1"
_1045:
	.asciz	"x2"
_1046:
	.asciz	"y2"
_1047:
	.asciz	"l"
	.align	4
_1042:
	.long	1
	.long	_61
	.long	2
	.long	_1043
	.long	_30
	.long	-8
	.long	2
	.long	_1044
	.long	_30
	.long	-16
	.long	2
	.long	_1045
	.long	_30
	.long	-24
	.long	2
	.long	_1046
	.long	_30
	.long	-32
	.long	2
	.long	_1047
	.long	_81
	.long	-36
	.long	0
	.align	4
_983:
	.long	_185
	.long	213
	.long	3
	.align	4
_985:
	.long	_185
	.long	214
	.long	3
	.align	4
_991:
	.long	_185
	.long	215
	.long	3
	.align	4
_997:
	.long	_185
	.long	216
	.long	3
	.align	4
_1003:
	.long	_185
	.long	217
	.long	3
	.align	4
_1009:
	.long	_185
	.long	218
	.long	3
	.align	4
_1012:
	.long	_185
	.long	219
	.long	3
	.align	4
_1015:
	.long	_185
	.long	220
	.long	3
	.align	4
_1018:
	.long	_185
	.long	221
	.long	3
	.align	4
_1021:
	.long	_185
	.long	222
	.long	3
	.align	4
_1031:
	.long	_185
	.long	223
	.long	3
	.align	4
_1041:
	.long	_185
	.long	224
	.long	3
	.align	4
_1072:
	.long	1
	.long	_65
	.long	2
	.long	_226
	.long	_81
	.long	-4
	.long	0
	.align	4
_1048:
	.long	_185
	.long	229
	.long	3
	.align	4
_1060:
	.long	_185
	.long	230
	.long	3
	.align	4
_1089:
	.long	1
	.long	_63
	.long	2
	.long	_226
	.long	_81
	.long	-4
	.long	0
	.align	4
_1073:
	.long	_185
	.long	234
	.long	3
	.align	4
_1081:
	.long	_185
	.long	235
	.long	3
	.align	4
_1102:
	.long	1
	.long	_75
	.long	2
	.long	_226
	.long	_81
	.long	-4
	.long	0
	.align	4
_1090:
	.long	_185
	.long	239
	.long	3
	.align	4
_1156:
	.long	1
	.long	_71
	.long	2
	.long	_226
	.long	_81
	.long	-4
	.long	0
	.align	4
_1103:
	.long	_185
	.long	243
	.long	3
	.align	4
_1120:
	.long	_185
	.long	244
	.long	3
	.align	4
_1692:
	.long	0x41200000
	.align	4
_1693:
	.long	0x41200000
	.align	4
_1121:
	.long	_185
	.long	245
	.long	3
	.align	4
_1694:
	.long	0x41d00000
	.align	4
_1695:
	.long	0x41200000
	.align	4
_1124:
	.long	_185
	.long	246
	.long	3
	.align	4
_1696:
	.long	0x42280000
	.align	4
_1697:
	.long	0x41200000
	.align	4
_1127:
	.long	_185
	.long	247
	.long	3
	.align	4
_1698:
	.long	0x42680000
	.align	4
_1699:
	.long	0x41200000
	.align	4
_1130:
	.long	_185
	.long	248
	.long	3
	.align	4
_1700:
	.long	0x42940000
	.align	4
_1701:
	.long	0x41200000
	.align	4
_1133:
	.long	_185
	.long	249
	.long	3
	.align	4
_1702:
	.long	0x42b40000
	.align	4
_1703:
	.long	0x41200000
	.align	4
_1136:
	.long	_185
	.long	250
	.long	3
	.align	4
_1704:
	.long	0x42d40000
	.align	4
_1705:
	.long	0x41200000
	.align	4
_1141:
	.long	_185
	.long	251
	.long	3
	.align	4
_1706:
	.long	0x42f40000
	.align	4
_1707:
	.long	0x41200000
	.align	4
_1146:
	.long	_185
	.long	252
	.long	3
	.align	4
_1708:
	.long	0x430a0000
	.align	4
_1709:
	.long	0x41200000
	.align	4
_1151:
	.long	_185
	.long	253
	.long	3
	.align	4
_1710:
	.long	0x431a0000
	.align	4
_1711:
	.long	0x41200000
	.align	4
_1212:
	.long	1
	.long	_32
	.long	2
	.long	_226
	.long	_221
	.long	-4
	.long	0
	.align	4
_1211:
	.long	3
	.long	0
	.long	0
	.align	4
_1163:
	.long	_185
	.long	267
	.long	3
	.align	4
_1171:
	.long	_185
	.long	268
	.long	3
	.align	4
_1179:
	.long	_185
	.long	269
	.long	3
	.align	4
_1187:
	.long	_185
	.long	270
	.long	3
	.align	4
_1195:
	.long	_185
	.long	271
	.long	3
	.align	4
_1203:
	.long	_185
	.long	272
	.long	3
	.align	4
_1261:
	.long	1
	.long	_87
	.long	2
	.long	_226
	.long	_221
	.long	-4
	.long	0
	.align	4
_1226:
	.long	_185
	.long	276
	.long	3
	.align	4
_1230:
	.long	_185
	.long	277
	.long	3
	.align	4
_1249:
	.long	3
	.long	0
	.long	0
	.align	4
_1238:
	.long	_185
	.long	278
	.long	4
	.align	4
_1245:
	.long	_185
	.long	279
	.long	4
	.align	4
_1260:
	.long	3
	.long	0
	.long	0
	.align	4
_1251:
	.long	_185
	.long	281
	.long	4
	.align	4
_1255:
	.long	_185
	.long	282
	.long	4
	.align	4
_1280:
	.long	1
	.long	_71
	.long	2
	.long	_226
	.long	_221
	.long	-4
	.long	0
	.align	4
_1262:
	.long	_185
	.long	287
	.long	3
	.align	4
_1263:
	.long	_185
	.long	288
	.long	3
	.align	4
_1268:
	.long	_185
	.long	289
	.long	3
	.align	4
_1269:
	.long	_185
	.long	290
	.long	3
	.align	4
_1274:
	.long	_185
	.long	291
	.long	3
	.align	4
_1279:
	.long	3
	.long	0
	.long	0
	.align	4
_1278:
	.long	_185
	.long	291
	.long	13
	.align	4
_1759:
	.long	0x43960000
	.align	4
_1760:
	.long	0x43960000
	.align	4
_20:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	98,111,117,110,99,101,100,32
