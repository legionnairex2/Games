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
	.reference	_bbCos
	.reference	_bbEmptyArray
	.reference	_bbEmptyString
	.reference	_bbFloatToInt
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
	.reference	_bbStringClass
	.reference	_brl_blitz_ArrayBoundsError
	.reference	_brl_blitz_NullObjectError
	.reference	_brl_max2d_DrawImage
	.reference	_brl_max2d_DrawOval
	.reference	_brl_max2d_DrawRect
	.reference	_brl_max2d_SetColor
	.globl	__bb_collectible_Delete
	.globl	__bb_collectible_New
	.globl	__bb_main
	.globl	__bb_vertex_Delete
	.globl	__bb_vertex_New
	.globl	_bb_DrawRectangle
	.globl	_bb_blend_add
	.globl	_bb_blend_avg
	.globl	_bb_blend_mul
	.globl	_bb_collectible
	.globl	_bb_drawCharacter
	.globl	_bb_drawbackground
	.globl	_bb_drawball
	.globl	_bb_drawcircle
	.globl	_bb_drawstring
	.globl	_bb_drawtile
	.globl	_bb_gCameraX
	.globl	_bb_gCameraY
	.globl	_bb_gCollectible
	.globl	_bb_gCollectibleCount
	.globl	_bb_gCollectiblesTaken
	.globl	_bb_gColliders
	.globl	_bb_gCurrentLevel
	.globl	_bb_gFont
	.globl	_bb_gFontOfs
	.globl	_bb_gFontWidth
	.globl	_bb_gGameState
	.globl	_bb_gKeyDown
	.globl	_bb_gKeyLeft
	.globl	_bb_gKeyRight
	.globl	_bb_gKeyUp
	.globl	_bb_gLastTick
	.globl	_bb_gLevel
	.globl	_bb_gLevelHeight
	.globl	_bb_gLevelName
	.globl	_bb_gLevelStartTick
	.globl	_bb_gLevelTime
	.globl	_bb_gLevelWidth
	.globl	_bb_gLut
	.globl	_bb_gMask
	.globl	_bb_gNextState
	.globl	_bb_gRVtx
	.globl	_bb_gRoll
	.globl	_bb_gScore
	.globl	_bb_gScreen
	.globl	_bb_gScreenPtr
	.globl	_bb_gStartX
	.globl	_bb_gStartY
	.globl	_bb_gStateStartTick
	.globl	_bb_gTexture
	.globl	_bb_gTextureptr
	.globl	_bb_gTiles
	.globl	_bb_gVtx
	.globl	_bb_gXMov
	.globl	_bb_gXPos
	.globl	_bb_gXRoll
	.globl	_bb_gYMov
	.globl	_bb_gYPos
	.globl	_bb_gYRoll
	.globl	_bb_memcpy
	.globl	_bb_rotate_x
	.globl	_bb_rotate_y
	.globl	_bb_rotate_z
	.globl	_bb_vertex
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_319
	je	_320
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_320:
	movl	$1,_319
	movl	%ebp,4(%esp)
	movl	$_185,(%esp)
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
	movl	$_bb_collectible,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_vertex,(%esp)
	call	_bbObjectRegisterType
	movl	$_134,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_136,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_137,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_138,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_139,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_140,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_141,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_142,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_143,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_144,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_145,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_146,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_147,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_148,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_149,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_150,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_151,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_152,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_153,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_154,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_155,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_156,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_157,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_158,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_159,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_160,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_161,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_162,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_163,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_164,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_165,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_168,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_169
	movl	$256,4(%esp)
	movl	$_166,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	%eax,_bb_gFontOfs
	orl	$1,_168
_169:
	movl	$_170,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_168,%eax
	and	$2,%eax
	cmp	$0,%eax
	jne	_173
	movl	$256,4(%esp)
	movl	$_171,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	%eax,_bb_gFontWidth
	orl	$2,_168
_173:
	movl	$_174,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_175,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_176,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_177,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_178,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_179,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_180,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_181,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_182,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_183,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_184,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$0,%ebx
	jmp	_51
_51:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_collectible_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_321,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_collectible,(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	mov	$0,%ebx
	jmp	_54
_54:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_collectible_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_57:
	mov	$0,%eax
	jmp	_324
_324:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_vertex_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_325,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_vertex,(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	16(%eax)
	mov	$0,%ebx
	jmp	_60
_60:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_vertex_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_63:
	mov	$0,%eax
	jmp	_327
_327:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_memcpy:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_370,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_328,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%edi
	jmp	_330
_9:
	movl	$_332,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	-4(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_334
	call	_brl_blitz_ArrayBoundsError
_334:
	movl	-4(%ebp),%eax
	mov	%ebx,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	movl	$_bb_vertex,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_339
	movl	%eax,(%esp)
	call	_bbGCFree
_339:
	movl	%esi,24(%ebx)
	movl	$_340,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	-4(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_342
	call	_brl_blitz_ArrayBoundsError
_342:
	movl	-4(%ebp),%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_344
	call	_brl_blitz_NullObjectError
_344:
	mov	%ebx,%esi
	movl	-16(%ebp),%ebx
	movl	-8(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_347
	call	_brl_blitz_ArrayBoundsError
_347:
	movl	-8(%ebp),%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_349
	call	_brl_blitz_NullObjectError
_349:
	flds	8(%ebx)
	fstps	8(%esi)
	movl	$_350,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	-4(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_352
	call	_brl_blitz_ArrayBoundsError
_352:
	movl	-4(%ebp),%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_354
	call	_brl_blitz_NullObjectError
_354:
	mov	%ebx,%esi
	movl	-16(%ebp),%ebx
	movl	-8(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_357
	call	_brl_blitz_ArrayBoundsError
_357:
	movl	-8(%ebp),%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_359
	call	_brl_blitz_NullObjectError
_359:
	flds	12(%ebx)
	fstps	12(%esi)
	movl	$_360,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	-4(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_362
	call	_brl_blitz_ArrayBoundsError
_362:
	movl	-4(%ebp),%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_364
	call	_brl_blitz_NullObjectError
_364:
	mov	%ebx,%esi
	movl	-16(%ebp),%ebx
	movl	-8(%ebp),%eax
	cmpl	20(%eax),%ebx
	jb	_367
	call	_brl_blitz_ArrayBoundsError
_367:
	movl	-8(%ebp),%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_369
	call	_brl_blitz_NullObjectError
_369:
	flds	16(%ebx)
	fstps	16(%esi)
_7:
	addl	$1,-16(%ebp)
_330:
	cmpl	%edi,-16(%ebp)
	jl	_9
_8:
	mov	$0,%ebx
	jmp	_68
_68:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_blend_avg:
	push	%ebp
	mov	%esp,%ebp
	sub	$32,%esp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	%ebp,4(%esp)
	movl	$_393,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_375,(%esp)
	calll	*_bbOnDebugEnterStm
	andl	$2147483647,-4(%ebp)
	movl	$_376,(%esp)
	calll	*_bbOnDebugEnterStm
	andl	$2147483647,-8(%ebp)
	movl	$_377,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	and	$255,%eax
	movl	%eax,-12(%ebp)
	movl	$_379,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	shr	$8,%eax
	and	$255,%eax
	movl	%eax,-16(%ebp)
	movl	$_381,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	shr	$16,%eax
	and	$255,%eax
	movl	%eax,-20(%ebp)
	movl	$_383,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	and	$255,%eax
	movl	%eax,-24(%ebp)
	movl	$_385,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	shr	$8,%eax
	and	$255,%eax
	movl	%eax,-28(%ebp)
	movl	$_387,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	shr	$16,%eax
	and	$255,%eax
	movl	%eax,-32(%ebp)
	movl	$_389,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	addl	-24(%ebp),%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	movl	%eax,-24(%ebp)
	movl	$_390,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	addl	-28(%ebp),%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	movl	%eax,-28(%ebp)
	movl	$_391,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	addl	-32(%ebp),%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	movl	%eax,-32(%ebp)
	movl	$_392,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	movl	-28(%ebp),%eax
	shl	$8,%eax
	or	%eax,%ebx
	movl	-32(%ebp),%eax
	shl	$16,%eax
	or	%eax,%ebx
	and	$2147483647,%ebx
	jmp	_72
_72:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_blend_mul:
	push	%ebp
	mov	%esp,%ebp
	sub	$32,%esp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	%ebp,4(%esp)
	movl	$_420,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_402,(%esp)
	calll	*_bbOnDebugEnterStm
	andl	$2147483647,-4(%ebp)
	movl	$_403,(%esp)
	calll	*_bbOnDebugEnterStm
	andl	$2147483647,-8(%ebp)
	movl	$_404,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	and	$255,%eax
	movl	%eax,-12(%ebp)
	movl	$_406,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	shr	$8,%eax
	and	$255,%eax
	movl	%eax,-16(%ebp)
	movl	$_408,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	shr	$16,%eax
	and	$255,%eax
	movl	%eax,-20(%ebp)
	movl	$_410,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	and	$255,%eax
	movl	%eax,-24(%ebp)
	movl	$_412,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	shr	$8,%eax
	and	$255,%eax
	movl	%eax,-28(%ebp)
	movl	$_414,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	shr	$16,%eax
	and	$255,%eax
	movl	%eax,-32(%ebp)
	movl	$_416,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	imull	-24(%ebp),%eax
	shr	$8,%eax
	movl	%eax,-24(%ebp)
	movl	$_417,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	imull	-28(%ebp),%eax
	shr	$8,%eax
	movl	%eax,-28(%ebp)
	movl	$_418,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	imull	-32(%ebp),%eax
	shr	$8,%eax
	movl	%eax,-32(%ebp)
	movl	$_419,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	movl	-28(%ebp),%eax
	shl	$8,%eax
	or	%eax,%ebx
	movl	-32(%ebp),%eax
	shl	$16,%eax
	or	%eax,%ebx
	and	$2147483647,%ebx
	jmp	_76
_76:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_blend_add:
	push	%ebp
	mov	%esp,%ebp
	sub	$32,%esp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	%ebp,4(%esp)
	movl	$_449,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_422,(%esp)
	calll	*_bbOnDebugEnterStm
	andl	$2147483647,-4(%ebp)
	movl	$_423,(%esp)
	calll	*_bbOnDebugEnterStm
	andl	$2147483647,-8(%ebp)
	movl	$_424,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	and	$255,%eax
	movl	%eax,-12(%ebp)
	movl	$_426,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	shr	$8,%eax
	and	$255,%eax
	movl	%eax,-16(%ebp)
	movl	$_428,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	shr	$16,%eax
	and	$255,%eax
	movl	%eax,-20(%ebp)
	movl	$_430,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	and	$255,%eax
	movl	%eax,-24(%ebp)
	movl	$_432,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	shr	$8,%eax
	and	$255,%eax
	movl	%eax,-28(%ebp)
	movl	$_434,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	shr	$16,%eax
	and	$255,%eax
	movl	%eax,-32(%ebp)
	movl	$_436,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	$_437,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	$_438,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	addl	%eax,-32(%ebp)
	movl	$_439,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$255,-24(%ebp)
	jle	_440
	movl	$_441,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$255,-24(%ebp)
_440:
	movl	$_442,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$255,-28(%ebp)
	jle	_443
	movl	$_444,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$255,-28(%ebp)
_443:
	movl	$_445,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$255,-32(%ebp)
	jle	_446
	movl	$_447,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$255,-32(%ebp)
_446:
	movl	$_448,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	movl	-28(%ebp),%eax
	shl	$8,%eax
	or	%eax,%ebx
	movl	-32(%ebp),%eax
	shl	$16,%eax
	or	%eax,%ebx
	and	$2147483647,%ebx
	jmp	_80
_80:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawcircle:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	%ebp,4(%esp)
	movl	$_453,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_451,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	and	$255,%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	shr	$8,%eax
	and	$255,%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	shr	$16,%eax
	and	$255,%eax
	movl	%eax,(%esp)
	call	_brl_max2d_SetColor
	movl	$_452,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	shl	$1,%eax
	movl	%eax,-20(%ebp)
	fildl	-20(%ebp)
	fstps	12(%esp)
	movl	-12(%ebp),%eax
	shl	$1,%eax
	movl	%eax,-20(%ebp)
	fildl	-20(%ebp)
	fstps	8(%esp)
	movl	-8(%ebp),%eax
	subl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	fildl	-20(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	subl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	fildl	-20(%ebp)
	fstps	(%esp)
	call	_brl_max2d_DrawOval
	mov	$0,%ebx
	jmp	_86
_86:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_DrawRectangle:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	push	%ebx
	sub	$28,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	%ebp,4(%esp)
	movl	$_459,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_457,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	and	$255,%eax
	movl	%eax,8(%esp)
	movl	-20(%ebp),%eax
	shr	$8,%eax
	and	$255,%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	shr	$16,%eax
	and	$255,%eax
	movl	%eax,(%esp)
	call	_brl_max2d_SetColor
	movl	$_458,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	fstps	12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	fstps	8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	fstps	(%esp)
	call	_brl_max2d_DrawRect
	mov	$0,%ebx
	jmp	_93
_93:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$28,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawtile:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	%ebp,4(%esp)
	movl	$_464,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_463,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstps	8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstps	4(%esp)
	movl	_bb_gTiles,%eax
	movl	%eax,(%esp)
	call	_brl_max2d_DrawImage
	mov	$0,%ebx
	jmp	_98
_98:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawCharacter:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	%ebp,4(%esp)
	movl	$_470,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_467,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,8(%esp)
	movl	$0,4(%esp)
	movl	$255,(%esp)
	call	_brl_max2d_SetColor
	movl	$_468,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstps	8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstps	4(%esp)
	movl	_bb_gFont,%eax
	movl	%eax,(%esp)
	call	_brl_max2d_DrawImage
	movl	$_469,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$255,8(%esp)
	movl	$255,4(%esp)
	movl	$255,(%esp)
	call	_brl_max2d_SetColor
	mov	$0,%ebx
	jmp	_103
_103:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawstring:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_499,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_473,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	_475
_12:
	movl	$_477,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%esi
	movl	-16(%ebp),%ebx
	cmpl	8(%esi),%ebx
	jb	_480
	call	_brl_blitz_ArrayBoundsError
_480:
	movzwl	12(%esi,%ebx,2),%eax
	mov	%eax,%eax
	cmp	$32,%eax
	jne	_481
	movl	$_482,(%esp)
	calll	*_bbOnDebugEnterStm
	addl	$8,-4(%ebp)
	jmp	_483
_481:
	movl	$_484,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%esi
	movl	-16(%ebp),%ebx
	cmpl	8(%esi),%ebx
	jb	_487
	call	_brl_blitz_ArrayBoundsError
_487:
	movzwl	12(%esi,%ebx,2),%eax
	mov	%eax,%eax
	sub	$33,%eax
	mov	%eax,%edi
	movl	_bb_gFontOfs,%eax
	cmpl	20(%eax),%edi
	jb	_489
	call	_brl_blitz_ArrayBoundsError
_489:
	movl	-12(%ebp),%esi
	movl	-16(%ebp),%ebx
	cmpl	8(%esi),%ebx
	jb	_492
	call	_brl_blitz_ArrayBoundsError
_492:
	movzwl	12(%esi,%ebx,2),%eax
	mov	%eax,%eax
	sub	$33,%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%edx
	movl	_bb_gFontOfs,%eax
	subl	24(%eax,%edi,4),%edx
	movl	%edx,(%esp)
	call	_bb_drawCharacter
	movl	$_493,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%esi
	movl	-16(%ebp),%ebx
	cmpl	8(%esi),%ebx
	jb	_496
	call	_brl_blitz_ArrayBoundsError
_496:
	movzwl	12(%esi,%ebx,2),%eax
	mov	%eax,%ebx
	sub	$33,%ebx
	movl	_bb_gFontWidth,%eax
	cmpl	20(%eax),%ebx
	jb	_498
	call	_brl_blitz_ArrayBoundsError
_498:
	movl	_bb_gFontWidth,%eax
	movl	24(%eax,%ebx,4),%eax
	addl	%eax,-4(%ebp)
_483:
_10:
	addl	$1,-16(%ebp)
_475:
	movl	-20(%ebp),%eax
	cmpl	%eax,-16(%ebp)
	jl	_12
_11:
	mov	$0,%ebx
	jmp	_108
_108:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawbackground:
	push	%ebp
	mov	%esp,%ebp
	sub	$28,%esp
	push	%ebx
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	%ebp,4(%esp)
	movl	$_529,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_502,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-8(%ebp)
	jge	_503
	movl	$_504,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-8(%ebp)
_503:
	movl	$_505,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$480,-8(%ebp)
	jle	_506
	movl	$_507,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$480,-8(%ebp)
_506:
	movl	$_508,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-12(%ebp)
	jge	_509
	movl	$_510,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-12(%ebp)
_509:
	movl	$_511,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$320,-12(%ebp)
	jle	_512
	movl	$_513,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$320,-12(%ebp)
_512:
	movl	$_514,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$_517,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	jmp	_518
_15:
	movl	$_519,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-20(%ebp)
	jmp	_520
_18:
	movl	$_521,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	addl	-12(%ebp),%ebx
	imul	$480,%ebx
	shl	$1,%ebx
	addl	-20(%ebp),%ebx
	addl	-8(%ebp),%ebx
	movl	_bb_gLut,%eax
	cmpl	20(%eax),%ebx
	jb	_523
	call	_brl_blitz_ArrayBoundsError
_523:
	movl	_bb_gLut,%eax
	movzwl	24(%eax,%ebx,2),%eax
	mov	%eax,%eax
	movl	%eax,-24(%ebp)
	movl	$_525,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	addl	-12(%ebp),%ebx
	imul	$480,%ebx
	shl	$1,%ebx
	addl	-20(%ebp),%ebx
	addl	-8(%ebp),%ebx
	movl	_bb_gMask,%eax
	cmpl	20(%eax),%ebx
	jb	_527
	call	_brl_blitz_ArrayBoundsError
_527:
	movl	_bb_gMask,%eax
	movl	24(%eax,%ebx,4),%eax
	movl	%eax,-28(%ebp)
_16:
	addl	$1,-20(%ebp)
_520:
	cmpl	$480,-20(%ebp)
	jl	_18
_17:
_13:
	addl	$1,-16(%ebp)
_518:
	cmpl	$320,-16(%ebp)
	jl	_15
_14:
	mov	$0,%ebx
	jmp	_113
_113:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_rotate_z:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	push	%ebx
	push	%esi
	sub	$8,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	fldz
	fstps	-8(%ebp)
	fldz
	fstps	-12(%ebp)
	movl	$0,-16(%ebp)
	fldz
	fstps	-20(%ebp)
	fldz
	fstps	-24(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_577,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_537,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fstps	-8(%ebp)
	movl	$_539,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fstpl	(%esp)
	call	_bbSin
	fstps	-12(%ebp)
	movl	$_541,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	movl	$_543,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	jmp	_544
_21:
	movl	$_545,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_547
	call	_brl_blitz_ArrayBoundsError
_547:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%esi
	cmp	$_bbNullObject,%esi
	jne	_549
	call	_brl_blitz_NullObjectError
_549:
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_551
	call	_brl_blitz_ArrayBoundsError
_551:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_553
	call	_brl_blitz_NullObjectError
_553:
	flds	8(%esi)
	fmuls	-8(%ebp)
	flds	12(%ebx)
	fmuls	-12(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	-20(%ebp)
	movl	$_555,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_557
	call	_brl_blitz_ArrayBoundsError
_557:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%esi
	cmp	$_bbNullObject,%esi
	jne	_559
	call	_brl_blitz_NullObjectError
_559:
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_561
	call	_brl_blitz_ArrayBoundsError
_561:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_563
	call	_brl_blitz_NullObjectError
_563:
	flds	8(%esi)
	fmuls	-12(%ebp)
	flds	12(%ebx)
	fmuls	-8(%ebp)
	faddp	%st(0),%st(1)
	fstps	-24(%ebp)
	movl	$_565,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_567
	call	_brl_blitz_ArrayBoundsError
_567:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_569
	call	_brl_blitz_NullObjectError
_569:
	flds	-20(%ebp)
	fstps	8(%ebx)
	movl	$_571,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_573
	call	_brl_blitz_ArrayBoundsError
_573:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_575
	call	_brl_blitz_NullObjectError
_575:
	flds	-24(%ebp)
	fstps	12(%ebx)
_19:
	addl	$1,-16(%ebp)
_544:
	cmpl	$10,-16(%ebp)
	jl	_21
_20:
	mov	$0,%ebx
	jmp	_116
_116:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_rotate_y:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	push	%ebx
	push	%esi
	sub	$8,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	fldz
	fstps	-8(%ebp)
	fldz
	fstps	-12(%ebp)
	movl	$0,-16(%ebp)
	fldz
	fstps	-20(%ebp)
	fldz
	fstps	-24(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_622,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_582,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fstps	-8(%ebp)
	movl	$_584,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fstpl	(%esp)
	call	_bbSin
	fstps	-12(%ebp)
	movl	$_586,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	movl	$_588,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	jmp	_589
_24:
	movl	$_590,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_592
	call	_brl_blitz_ArrayBoundsError
_592:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%esi
	cmp	$_bbNullObject,%esi
	jne	_594
	call	_brl_blitz_NullObjectError
_594:
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_596
	call	_brl_blitz_ArrayBoundsError
_596:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_598
	call	_brl_blitz_NullObjectError
_598:
	flds	16(%esi)
	fmuls	-8(%ebp)
	flds	8(%ebx)
	fmuls	-12(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	-20(%ebp)
	movl	$_600,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_602
	call	_brl_blitz_ArrayBoundsError
_602:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%esi
	cmp	$_bbNullObject,%esi
	jne	_604
	call	_brl_blitz_NullObjectError
_604:
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_606
	call	_brl_blitz_ArrayBoundsError
_606:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_608
	call	_brl_blitz_NullObjectError
_608:
	flds	16(%esi)
	fmuls	-12(%ebp)
	flds	8(%ebx)
	fmuls	-8(%ebp)
	faddp	%st(0),%st(1)
	fstps	-24(%ebp)
	movl	$_610,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_612
	call	_brl_blitz_ArrayBoundsError
_612:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_614
	call	_brl_blitz_NullObjectError
_614:
	flds	-20(%ebp)
	fstps	16(%ebx)
	movl	$_616,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_618
	call	_brl_blitz_ArrayBoundsError
_618:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_620
	call	_brl_blitz_NullObjectError
_620:
	flds	-24(%ebp)
	fstps	8(%ebx)
_22:
	addl	$1,-16(%ebp)
_589:
	cmpl	$10,-16(%ebp)
	jl	_24
_23:
	mov	$0,%ebx
	jmp	_119
_119:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_rotate_x:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	push	%ebx
	push	%esi
	sub	$8,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	fldz
	fstps	-8(%ebp)
	fldz
	fstps	-12(%ebp)
	movl	$0,-16(%ebp)
	fldz
	fstps	-20(%ebp)
	fldz
	fstps	-24(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_664,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_624,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fstps	-8(%ebp)
	movl	$_626,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-4(%ebp)
	fstpl	(%esp)
	call	_bbSin
	fstps	-12(%ebp)
	movl	$_628,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	movl	$_630,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	jmp	_631
_27:
	movl	$_632,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_634
	call	_brl_blitz_ArrayBoundsError
_634:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%esi
	cmp	$_bbNullObject,%esi
	jne	_636
	call	_brl_blitz_NullObjectError
_636:
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_638
	call	_brl_blitz_ArrayBoundsError
_638:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_640
	call	_brl_blitz_NullObjectError
_640:
	flds	12(%esi)
	fmuls	-8(%ebp)
	flds	16(%ebx)
	fmuls	-12(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	-20(%ebp)
	movl	$_642,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_644
	call	_brl_blitz_ArrayBoundsError
_644:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%esi
	cmp	$_bbNullObject,%esi
	jne	_646
	call	_brl_blitz_NullObjectError
_646:
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_648
	call	_brl_blitz_ArrayBoundsError
_648:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_650
	call	_brl_blitz_NullObjectError
_650:
	flds	12(%esi)
	fmuls	-12(%ebp)
	flds	16(%ebx)
	fmuls	-8(%ebp)
	faddp	%st(0),%st(1)
	fstps	-24(%ebp)
	movl	$_652,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_654
	call	_brl_blitz_ArrayBoundsError
_654:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_656
	call	_brl_blitz_NullObjectError
_656:
	flds	-20(%ebp)
	fstps	12(%ebx)
	movl	$_658,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_660
	call	_brl_blitz_ArrayBoundsError
_660:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_662
	call	_brl_blitz_NullObjectError
_662:
	flds	-24(%ebp)
	fstps	16(%ebx)
_25:
	addl	$1,-16(%ebp)
_631:
	cmpl	$10,-16(%ebp)
	jl	_27
_26:
	mov	$0,%ebx
	jmp	_122
_122:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawball:
	push	%ebp
	mov	%esp,%ebp
	sub	$44,%esp
	push	%ebx
	push	%esi
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	28(%ebp),%eax
	movl	%eax,-24(%ebp)
	flds	32(%ebp)
	fstps	-28(%ebp)
	flds	36(%ebp)
	fstps	-32(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-40(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_708,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_666,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$6,%ecx
	movl	-12(%ebp),%eax
	cdq
	idiv	%ecx
	movl	%eax,-36(%ebp)
	movl	$_668,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_drawcircle
	movl	$_669,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-32(%ebp)
	fchs
	fstps	(%esp)
	call	_bb_rotate_z
	movl	$_670,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-28(%ebp)
	fstps	(%esp)
	call	_bb_rotate_y
	movl	$_671,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-32(%ebp)
	fstps	(%esp)
	call	_bb_rotate_z
	movl	$_672,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-40(%ebp)
	movl	$_674,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-40(%ebp)
	jmp	_675
_30:
	movl	$_676,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-40(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_678
	call	_brl_blitz_ArrayBoundsError
_678:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_680
	call	_brl_blitz_NullObjectError
_680:
	flds	16(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_681
	movl	$_682,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-40(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_684
	call	_brl_blitz_ArrayBoundsError
_684:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%esi
	cmp	$_bbNullObject,%esi
	jne	_686
	call	_brl_blitz_NullObjectError
_686:
	movl	-40(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_688
	call	_brl_blitz_ArrayBoundsError
_688:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_690
	call	_brl_blitz_NullObjectError
_690:
	movl	-20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,8(%esp)
	flds	12(%ebx)
	movl	-12(%ebp),%eax
	subl	-36(%ebp),%eax
	movl	%eax,-44(%ebp)
	fildl	-44(%ebp)
	fmulp	%st(0),%st(1)
	movl	-8(%ebp),%eax
	movl	%eax,-44(%ebp)
	fildl	-44(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%ebx
	flds	8(%esi)
	movl	-12(%ebp),%eax
	subl	-36(%ebp),%eax
	movl	%eax,-44(%ebp)
	fildl	-44(%ebp)
	fmulp	%st(0),%st(1)
	movl	-4(%ebp),%eax
	movl	%eax,-44(%ebp)
	fildl	-44(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bb_drawcircle
_681:
_28:
	addl	$1,-40(%ebp)
_675:
	cmpl	$10,-40(%ebp)
	jl	_30
_29:
	movl	$_691,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-40(%ebp)
	jmp	_692
_33:
	movl	$_693,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-40(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_695
	call	_brl_blitz_ArrayBoundsError
_695:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_697
	call	_brl_blitz_NullObjectError
_697:
	flds	16(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_698
	movl	$_699,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-40(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_701
	call	_brl_blitz_ArrayBoundsError
_701:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%esi
	cmp	$_bbNullObject,%esi
	jne	_703
	call	_brl_blitz_NullObjectError
_703:
	movl	-40(%ebp),%ebx
	movl	_bb_gRVtx,%eax
	cmpl	20(%eax),%ebx
	jb	_705
	call	_brl_blitz_ArrayBoundsError
_705:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_707
	call	_brl_blitz_NullObjectError
_707:
	movl	-24(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,8(%esp)
	flds	12(%ebx)
	movl	-12(%ebp),%eax
	subl	-36(%ebp),%eax
	movl	%eax,-44(%ebp)
	fildl	-44(%ebp)
	fmulp	%st(0),%st(1)
	movl	-8(%ebp),%eax
	movl	%eax,-44(%ebp)
	fildl	-44(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%ebx
	flds	8(%esi)
	movl	-12(%ebp),%eax
	subl	-36(%ebp),%eax
	movl	%eax,-44(%ebp)
	fildl	-44(%ebp)
	fmulp	%st(0),%st(1)
	movl	-4(%ebp),%eax
	movl	%eax,-44(%ebp)
	fildl	-44(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bb_drawcircle
_698:
_31:
	addl	$1,-40(%ebp)
_692:
	cmpl	$10,-40(%ebp)
	jl	_33
_32:
	mov	$0,%ebx
	jmp	_132
_132:
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
_319:
	.long	0
_186:
	.asciz	"include"
_187:
	.asciz	"WIDTH"
_40:
	.asciz	"i"
	.align	4
_188:
	.long	_bbStringClass
	.long	2147483646
	.long	3
	.short	52,56,48
_189:
	.asciz	"HEIGHT"
	.align	4
_190:
	.long	_bbStringClass
	.long	2147483646
	.long	3
	.short	51,50,48
_191:
	.asciz	"BALLCOLOR"
	.align	4
_192:
	.long	_bbStringClass
	.long	2147483646
	.long	5
	.short	49,54,50,56,55
_193:
	.asciz	"BALLHICOLOR"
	.align	4
_194:
	.long	_bbStringClass
	.long	2147483646
	.long	8
	.short	49,54,55,55,55,50,49,53
_195:
	.asciz	"BALLLOCOLOR"
	.align	4
_196:
	.long	_bbStringClass
	.long	2147483646
	.long	7
	.short	56,51,53,53,56,51,57
_197:
	.asciz	"BALLVTXCOUNT"
	.align	4
_198:
	.long	_bbStringClass
	.long	2147483646
	.long	2
	.short	49,48
_199:
	.asciz	"RADIUS"
	.align	4
_200:
	.long	_bbStringClass
	.long	2147483646
	.long	2
	.short	49,50
_201:
	.asciz	"BGCOLOR"
	.align	4
_202:
	.long	_bbStringClass
	.long	2147483646
	.long	7
	.short	54,50,50,53,57,50,48
_203:
	.asciz	"FALLCOLOR"
	.align	4
_204:
	.long	_bbStringClass
	.long	2147483646
	.long	1
	.short	48
_205:
	.asciz	"TILESIZE"
	.align	4
_206:
	.long	_bbStringClass
	.long	2147483646
	.long	2
	.short	51,50
_207:
	.asciz	"TIMELIMIT"
_208:
	.asciz	"THRUST"
_37:
	.asciz	"f"
	.align	4
_209:
	.long	_bbStringClass
	.long	2147483646
	.long	11
	.short	48,46,49,48,48,48,48,48,48,48,49
_210:
	.asciz	"SLIDEPOWER"
	.align	4
_211:
	.long	_bbStringClass
	.long	2147483646
	.long	12
	.short	48,46,48,51,57,57,57,57,57,57,57,49
_212:
	.asciz	"SLOWDOWN"
	.align	4
_213:
	.long	_bbStringClass
	.long	2147483646
	.long	11
	.short	48,46,57,57,48,48,48,48,48,49,48
_214:
	.asciz	"SLOWDOWNROUGH"
	.align	4
_215:
	.long	_bbStringClass
	.long	2147483646
	.long	11
	.short	48,46,57,52,57,57,57,57,57,56,56
_216:
	.asciz	"COLLISIONSLOWDOWN"
	.align	4
_217:
	.long	_bbStringClass
	.long	2147483646
	.long	11
	.short	48,46,56,57,57,57,57,57,57,55,54
_218:
	.asciz	"STARTCOLOR"
	.align	4
_219:
	.long	_bbStringClass
	.long	2147483646
	.long	4
	.short	56,48,54,51
_220:
	.asciz	"ENDCOLOR"
	.align	4
_221:
	.long	_bbStringClass
	.long	2147483646
	.long	7
	.short	52,49,54,49,51,49,49
_222:
	.asciz	"COLLECTIBLERADIUS"
	.align	4
_223:
	.long	_bbStringClass
	.long	2147483646
	.long	1
	.short	56
_224:
	.asciz	"COLLECTIBLECOLOR"
	.align	4
_225:
	.long	_bbStringClass
	.long	2147483646
	.long	8
	.short	49,54,55,55,54,57,54,48
_226:
	.asciz	"PHYSICSFPS"
	.align	4
_227:
	.long	_bbStringClass
	.long	2147483646
	.long	3
	.short	49,48,48
_228:
	.asciz	"LEVEL_DROP"
_229:
	.asciz	"LEVEL_GROUND"
	.align	4
_230:
	.long	_bbStringClass
	.long	2147483646
	.long	1
	.short	49
_231:
	.asciz	"LEVEL_START"
	.align	4
_232:
	.long	_bbStringClass
	.long	2147483646
	.long	1
	.short	50
_233:
	.asciz	"LEVEL_END"
	.align	4
_234:
	.long	_bbStringClass
	.long	2147483646
	.long	1
	.short	51
_235:
	.asciz	"LEVEL_COLLECTIBLE"
	.align	4
_236:
	.long	_bbStringClass
	.long	2147483646
	.long	1
	.short	53
_237:
	.asciz	"LEVEL_LEFT"
_238:
	.asciz	"LEVEL_RIGHT"
	.align	4
_239:
	.long	_bbStringClass
	.long	2147483646
	.long	2
	.short	49,49
_240:
	.asciz	"LEVEL_UP"
_241:
	.asciz	"LEVEL_DOWN"
	.align	4
_242:
	.long	_bbStringClass
	.long	2147483646
	.long	2
	.short	49,51
_243:
	.asciz	"LEVEL_WALL"
	.align	4
_244:
	.long	_bbStringClass
	.long	2147483646
	.long	2
	.short	50,52
_245:
	.asciz	"LEVEL_SMOOTH"
	.align	4
_246:
	.long	_bbStringClass
	.long	2147483646
	.long	2
	.short	50,53
_247:
	.asciz	"LEVEL_ROUGH"
	.align	4
_248:
	.long	_bbStringClass
	.long	2147483646
	.long	2
	.short	50,54
_249:
	.asciz	"COLLIDE_N"
_250:
	.asciz	"COLLIDE_NW"
_251:
	.asciz	"COLLIDE_W"
	.align	4
_252:
	.long	_bbStringClass
	.long	2147483646
	.long	1
	.short	52
_253:
	.asciz	"COLLIDE_SW"
_254:
	.asciz	"COLLIDE_S"
	.align	4
_255:
	.long	_bbStringClass
	.long	2147483646
	.long	2
	.short	49,54
_256:
	.asciz	"COLLIDE_SE"
_257:
	.asciz	"COLLIDE_E"
	.align	4
_258:
	.long	_bbStringClass
	.long	2147483646
	.long	2
	.short	54,52
_259:
	.asciz	"COLLIDE_NE"
	.align	4
_260:
	.long	_bbStringClass
	.long	2147483646
	.long	3
	.short	49,50,56
_261:
	.asciz	"STATE_NONE"
_262:
	.asciz	"STATE_ENTRY"
_263:
	.asciz	"STATE_READY"
_264:
	.asciz	"STATE_INGAME"
_265:
	.asciz	"STATE_FALLOFF"
_266:
	.asciz	"STATE_ENDLEVEL"
_267:
	.asciz	"gLut"
_268:
	.asciz	"[]s"
	.align	4
_bb_gLut:
	.long	_bbEmptyArray
_269:
	.asciz	"gMask"
_270:
	.asciz	"[]i"
	.align	4
_bb_gMask:
	.long	_bbEmptyArray
_271:
	.asciz	"gCollectibleCount"
	.align	4
_bb_gCollectibleCount:
	.long	0
_272:
	.asciz	"gCollectiblesTaken"
	.align	4
_bb_gCollectiblesTaken:
	.long	0
_273:
	.asciz	"gCollectible"
_274:
	.asciz	"[]:collectible"
	.align	4
_bb_gCollectible:
	.long	_bbEmptyArray
_275:
	.asciz	"gLastTick"
	.align	4
_bb_gLastTick:
	.long	0
_276:
	.asciz	"gLevelStartTick"
	.align	4
_bb_gLevelStartTick:
	.long	0
_277:
	.asciz	"gCurrentLevel"
	.align	4
_bb_gCurrentLevel:
	.long	0
_278:
	.asciz	"gXPos"
	.align	4
_bb_gXPos:
	.long	0x0
_279:
	.asciz	"gYPos"
	.align	4
_bb_gYPos:
	.long	0x0
_280:
	.asciz	"gXMov"
	.align	4
_bb_gXMov:
	.long	0x0
_281:
	.asciz	"gYMov"
	.align	4
_bb_gYMov:
	.long	0x0
_282:
	.asciz	"gStartX"
	.align	4
_bb_gStartX:
	.long	0x0
_283:
	.asciz	"gStartY"
	.align	4
_bb_gStartY:
	.long	0x0
_284:
	.asciz	"gXRoll"
	.align	4
_bb_gXRoll:
	.long	0x0
_285:
	.asciz	"gYRoll"
	.align	4
_bb_gYRoll:
	.long	0x0
_286:
	.asciz	"gRoll"
	.align	4
_bb_gRoll:
	.long	0x0
_287:
	.asciz	"gKeyLeft"
	.align	4
_bb_gKeyLeft:
	.long	0
_288:
	.asciz	"gKeyRight"
	.align	4
_bb_gKeyRight:
	.long	0
_289:
	.asciz	"gKeyUp"
	.align	4
_bb_gKeyUp:
	.long	0
_290:
	.asciz	"gKeyDown"
	.align	4
_bb_gKeyDown:
	.long	0
_291:
	.asciz	"gScore"
	.align	4
_bb_gScore:
	.long	0
_292:
	.asciz	"gCameraX"
	.align	4
_bb_gCameraX:
	.long	0x0
_293:
	.asciz	"gCameraY"
	.align	4
_bb_gCameraY:
	.long	0x0
_294:
	.asciz	"gLevel"
_295:
	.asciz	"[]b"
	.align	4
_bb_gLevel:
	.long	_bbEmptyArray
_296:
	.asciz	"gColliders"
	.align	4
_bb_gColliders:
	.long	_bbEmptyArray
_297:
	.asciz	"gLevelName"
_298:
	.asciz	"$"
	.align	4
_bb_gLevelName:
	.long	_bbEmptyString
_299:
	.asciz	"gLevelTime"
	.align	4
_bb_gLevelTime:
	.long	0
_300:
	.asciz	"gLevelWidth"
	.align	4
_bb_gLevelWidth:
	.long	0
_301:
	.asciz	"gLevelHeight"
	.align	4
_bb_gLevelHeight:
	.long	0
_302:
	.asciz	"gFontOfs"
	.align	4
_bb_gFontOfs:
	.long	_bbEmptyArray
_303:
	.asciz	"gFontWidth"
	.align	4
_bb_gFontWidth:
	.long	_bbEmptyArray
_304:
	.asciz	"gVtx"
_305:
	.asciz	"[]:vertex"
	.align	4
_bb_gVtx:
	.long	_bbEmptyArray
_306:
	.asciz	"gRVtx"
	.align	4
_bb_gRVtx:
	.long	_bbEmptyArray
_307:
	.asciz	"gNextState"
	.align	4
_bb_gNextState:
	.long	0
_308:
	.asciz	"gGameState"
	.align	4
_bb_gGameState:
	.long	0
_309:
	.asciz	"gStateStartTick"
	.align	4
_bb_gStateStartTick:
	.long	0
_310:
	.asciz	"gScreen"
_311:
	.asciz	":brl.pixmap.TPixmap"
	.align	4
_bb_gScreen:
	.long	_bbNullObject
_312:
	.asciz	"gScreenPtr"
_313:
	.asciz	"*i"
	.align	4
_bb_gScreenPtr:
	.long	0
_314:
	.asciz	"gTiles"
_315:
	.asciz	":brl.max2d.TImage"
	.align	4
_bb_gTiles:
	.long	_bbNullObject
_316:
	.asciz	"gTexture"
	.align	4
_bb_gTexture:
	.long	_bbNullObject
_317:
	.asciz	"gTextureptr"
	.align	4
_bb_gTextureptr:
	.long	0
_318:
	.asciz	"gFont"
	.align	4
_bb_gFont:
	.long	_bbNullObject
	.align	4
_185:
	.long	1
	.long	_186
	.long	1
	.long	_187
	.long	_40
	.long	_188
	.long	1
	.long	_189
	.long	_40
	.long	_190
	.long	1
	.long	_191
	.long	_40
	.long	_192
	.long	1
	.long	_193
	.long	_40
	.long	_194
	.long	1
	.long	_195
	.long	_40
	.long	_196
	.long	1
	.long	_197
	.long	_40
	.long	_198
	.long	1
	.long	_199
	.long	_40
	.long	_200
	.long	1
	.long	_201
	.long	_40
	.long	_202
	.long	1
	.long	_203
	.long	_40
	.long	_204
	.long	1
	.long	_205
	.long	_40
	.long	_206
	.long	1
	.long	_207
	.long	_40
	.long	_198
	.long	1
	.long	_208
	.long	_37
	.long	_209
	.long	1
	.long	_210
	.long	_37
	.long	_211
	.long	1
	.long	_212
	.long	_37
	.long	_213
	.long	1
	.long	_214
	.long	_37
	.long	_215
	.long	1
	.long	_216
	.long	_37
	.long	_217
	.long	1
	.long	_218
	.long	_40
	.long	_219
	.long	1
	.long	_220
	.long	_40
	.long	_221
	.long	1
	.long	_222
	.long	_40
	.long	_223
	.long	1
	.long	_224
	.long	_40
	.long	_225
	.long	1
	.long	_226
	.long	_40
	.long	_227
	.long	1
	.long	_228
	.long	_40
	.long	_204
	.long	1
	.long	_229
	.long	_40
	.long	_230
	.long	1
	.long	_231
	.long	_40
	.long	_232
	.long	1
	.long	_233
	.long	_40
	.long	_234
	.long	1
	.long	_235
	.long	_40
	.long	_236
	.long	1
	.long	_237
	.long	_40
	.long	_198
	.long	1
	.long	_238
	.long	_40
	.long	_239
	.long	1
	.long	_240
	.long	_40
	.long	_200
	.long	1
	.long	_241
	.long	_40
	.long	_242
	.long	1
	.long	_243
	.long	_40
	.long	_244
	.long	1
	.long	_245
	.long	_40
	.long	_246
	.long	1
	.long	_247
	.long	_40
	.long	_248
	.long	1
	.long	_249
	.long	_40
	.long	_230
	.long	1
	.long	_250
	.long	_40
	.long	_232
	.long	1
	.long	_251
	.long	_40
	.long	_252
	.long	1
	.long	_253
	.long	_40
	.long	_223
	.long	1
	.long	_254
	.long	_40
	.long	_255
	.long	1
	.long	_256
	.long	_40
	.long	_206
	.long	1
	.long	_257
	.long	_40
	.long	_258
	.long	1
	.long	_259
	.long	_40
	.long	_260
	.long	1
	.long	_261
	.long	_40
	.long	_204
	.long	1
	.long	_262
	.long	_40
	.long	_230
	.long	1
	.long	_263
	.long	_40
	.long	_232
	.long	1
	.long	_264
	.long	_40
	.long	_234
	.long	1
	.long	_265
	.long	_40
	.long	_252
	.long	1
	.long	_266
	.long	_40
	.long	_236
	.long	4
	.long	_267
	.long	_268
	.long	_bb_gLut
	.long	4
	.long	_269
	.long	_270
	.long	_bb_gMask
	.long	4
	.long	_271
	.long	_40
	.long	_bb_gCollectibleCount
	.long	4
	.long	_272
	.long	_40
	.long	_bb_gCollectiblesTaken
	.long	4
	.long	_273
	.long	_274
	.long	_bb_gCollectible
	.long	4
	.long	_275
	.long	_40
	.long	_bb_gLastTick
	.long	4
	.long	_276
	.long	_40
	.long	_bb_gLevelStartTick
	.long	4
	.long	_277
	.long	_40
	.long	_bb_gCurrentLevel
	.long	4
	.long	_278
	.long	_37
	.long	_bb_gXPos
	.long	4
	.long	_279
	.long	_37
	.long	_bb_gYPos
	.long	4
	.long	_280
	.long	_37
	.long	_bb_gXMov
	.long	4
	.long	_281
	.long	_37
	.long	_bb_gYMov
	.long	4
	.long	_282
	.long	_37
	.long	_bb_gStartX
	.long	4
	.long	_283
	.long	_37
	.long	_bb_gStartY
	.long	4
	.long	_284
	.long	_37
	.long	_bb_gXRoll
	.long	4
	.long	_285
	.long	_37
	.long	_bb_gYRoll
	.long	4
	.long	_286
	.long	_37
	.long	_bb_gRoll
	.long	4
	.long	_287
	.long	_40
	.long	_bb_gKeyLeft
	.long	4
	.long	_288
	.long	_40
	.long	_bb_gKeyRight
	.long	4
	.long	_289
	.long	_40
	.long	_bb_gKeyUp
	.long	4
	.long	_290
	.long	_40
	.long	_bb_gKeyDown
	.long	4
	.long	_291
	.long	_40
	.long	_bb_gScore
	.long	4
	.long	_292
	.long	_37
	.long	_bb_gCameraX
	.long	4
	.long	_293
	.long	_37
	.long	_bb_gCameraY
	.long	4
	.long	_294
	.long	_295
	.long	_bb_gLevel
	.long	4
	.long	_296
	.long	_295
	.long	_bb_gColliders
	.long	4
	.long	_297
	.long	_298
	.long	_bb_gLevelName
	.long	4
	.long	_299
	.long	_40
	.long	_bb_gLevelTime
	.long	4
	.long	_300
	.long	_40
	.long	_bb_gLevelWidth
	.long	4
	.long	_301
	.long	_40
	.long	_bb_gLevelHeight
	.long	4
	.long	_302
	.long	_270
	.long	_bb_gFontOfs
	.long	4
	.long	_303
	.long	_270
	.long	_bb_gFontWidth
	.long	4
	.long	_304
	.long	_305
	.long	_bb_gVtx
	.long	4
	.long	_306
	.long	_305
	.long	_bb_gRVtx
	.long	4
	.long	_307
	.long	_40
	.long	_bb_gNextState
	.long	4
	.long	_308
	.long	_40
	.long	_bb_gGameState
	.long	4
	.long	_309
	.long	_40
	.long	_bb_gStateStartTick
	.long	4
	.long	_310
	.long	_311
	.long	_bb_gScreen
	.long	4
	.long	_312
	.long	_313
	.long	_bb_gScreenPtr
	.long	4
	.long	_314
	.long	_315
	.long	_bb_gTiles
	.long	4
	.long	_316
	.long	_311
	.long	_bb_gTexture
	.long	4
	.long	_317
	.long	_313
	.long	_bb_gTextureptr
	.long	4
	.long	_318
	.long	_315
	.long	_bb_gFont
	.long	0
_35:
	.asciz	"collectible"
_36:
	.asciz	"mX"
_38:
	.asciz	"mY"
_39:
	.asciz	"mColor"
_41:
	.asciz	"mRadius"
_42:
	.asciz	"mTaken"
_43:
	.asciz	"New"
_44:
	.asciz	"()i"
_45:
	.asciz	"Delete"
	.align	4
_34:
	.long	2
	.long	_35
	.long	3
	.long	_36
	.long	_37
	.long	8
	.long	3
	.long	_38
	.long	_37
	.long	12
	.long	3
	.long	_39
	.long	_40
	.long	16
	.long	3
	.long	_41
	.long	_40
	.long	20
	.long	3
	.long	_42
	.long	_40
	.long	24
	.long	6
	.long	_43
	.long	_44
	.long	16
	.long	6
	.long	_45
	.long	_44
	.long	20
	.long	0
	.align	4
_bb_collectible:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_34
	.long	28
	.long	__bb_collectible_New
	.long	__bb_collectible_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_47:
	.asciz	"vertex"
_48:
	.asciz	"x"
_49:
	.asciz	"y"
_50:
	.asciz	"z"
	.align	4
_46:
	.long	2
	.long	_47
	.long	3
	.long	_48
	.long	_37
	.long	8
	.long	3
	.long	_49
	.long	_37
	.long	12
	.long	3
	.long	_50
	.long	_37
	.long	16
	.long	6
	.long	_43
	.long	_44
	.long	16
	.long	6
	.long	_45
	.long	_44
	.long	20
	.long	0
	.align	4
_bb_vertex:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_46
	.long	20
	.long	__bb_vertex_New
	.long	__bb_vertex_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_135:
	.asciz	"/Users/jesseperez/Desktop/roll_ball/include.bmx"
	.align	4
_134:
	.long	_135
	.long	115
	.long	1
	.align	4
_136:
	.long	_135
	.long	117
	.long	1
	.align	4
_137:
	.long	_135
	.long	123
	.long	1
	.align	4
_138:
	.long	_135
	.long	125
	.long	1
	.align	4
_139:
	.long	_135
	.long	127
	.long	1
	.align	4
_140:
	.long	_135
	.long	130
	.long	1
	.align	4
_141:
	.long	_135
	.long	132
	.long	1
	.align	4
_142:
	.long	_135
	.long	134
	.long	1
	.align	4
_143:
	.long	_135
	.long	137
	.long	1
	.align	4
_144:
	.long	_135
	.long	138
	.long	1
	.align	4
_145:
	.long	_135
	.long	141
	.long	1
	.align	4
_146:
	.long	_135
	.long	142
	.long	1
	.align	4
_147:
	.long	_135
	.long	145
	.long	1
	.align	4
_148:
	.long	_135
	.long	146
	.long	1
	.align	4
_149:
	.long	_135
	.long	149
	.long	1
	.align	4
_150:
	.long	_135
	.long	150
	.long	1
	.align	4
_151:
	.long	_135
	.long	153
	.long	1
	.align	4
_152:
	.long	_135
	.long	156
	.long	1
	.align	4
_153:
	.long	_135
	.long	157
	.long	1
	.align	4
_154:
	.long	_135
	.long	158
	.long	1
	.align	4
_155:
	.long	_135
	.long	159
	.long	1
	.align	4
_156:
	.long	_135
	.long	162
	.long	1
	.align	4
_157:
	.long	_135
	.long	165
	.long	1
	.align	4
_158:
	.long	_135
	.long	166
	.long	1
	.align	4
_159:
	.long	_135
	.long	169
	.long	1
	.align	4
_160:
	.long	_135
	.long	171
	.long	1
	.align	4
_161:
	.long	_135
	.long	174
	.long	1
	.align	4
_162:
	.long	_135
	.long	176
	.long	1
	.align	4
_163:
	.long	_135
	.long	179
	.long	1
	.align	4
_164:
	.long	_135
	.long	180
	.long	1
	.align	4
_165:
	.long	_135
	.long	183
	.long	1
	.align	4
_168:
	.long	0
_166:
	.asciz	"i"
	.align	4
_170:
	.long	_135
	.long	185
	.long	1
_171:
	.asciz	"i"
	.align	4
_174:
	.long	_135
	.long	188
	.long	1
	.align	4
_175:
	.long	_135
	.long	190
	.long	1
	.align	4
_176:
	.long	_135
	.long	193
	.long	1
	.align	4
_177:
	.long	_135
	.long	195
	.long	1
	.align	4
_178:
	.long	_135
	.long	197
	.long	1
	.align	4
_179:
	.long	_135
	.long	198
	.long	1
	.align	4
_180:
	.long	_135
	.long	199
	.long	1
	.align	4
_181:
	.long	_135
	.long	200
	.long	1
	.align	4
_182:
	.long	_135
	.long	201
	.long	1
	.align	4
_183:
	.long	_135
	.long	202
	.long	1
	.align	4
_184:
	.long	_135
	.long	204
	.long	1
_322:
	.asciz	"Self"
_323:
	.asciz	":collectible"
	.align	4
_321:
	.long	1
	.long	_43
	.long	2
	.long	_322
	.long	_323
	.long	-4
	.long	0
_326:
	.asciz	":vertex"
	.align	4
_325:
	.long	1
	.long	_43
	.long	2
	.long	_322
	.long	_326
	.long	-4
	.long	0
_371:
	.asciz	"memcpy"
_372:
	.asciz	"dest"
_373:
	.asciz	"source"
_374:
	.asciz	"lengt"
	.align	4
_370:
	.long	1
	.long	_371
	.long	2
	.long	_372
	.long	_305
	.long	-4
	.long	2
	.long	_373
	.long	_305
	.long	-8
	.long	2
	.long	_374
	.long	_40
	.long	-12
	.long	2
	.long	_40
	.long	_40
	.long	-16
	.long	0
	.align	4
_328:
	.long	_135
	.long	208
	.long	2
	.align	4
_332:
	.long	_135
	.long	209
	.long	3
	.align	4
_340:
	.long	_135
	.long	210
	.long	3
	.align	4
_350:
	.long	_135
	.long	211
	.long	3
	.align	4
_360:
	.long	_135
	.long	212
	.long	3
_394:
	.asciz	"blend_avg"
_395:
	.asciz	"target"
_396:
	.asciz	"sourcer"
_397:
	.asciz	"sourceg"
_398:
	.asciz	"sourceb"
_399:
	.asciz	"targetr"
_400:
	.asciz	"targetg"
_401:
	.asciz	"targetb"
	.align	4
_393:
	.long	1
	.long	_394
	.long	2
	.long	_373
	.long	_40
	.long	-4
	.long	2
	.long	_395
	.long	_40
	.long	-8
	.long	2
	.long	_396
	.long	_40
	.long	-12
	.long	2
	.long	_397
	.long	_40
	.long	-16
	.long	2
	.long	_398
	.long	_40
	.long	-20
	.long	2
	.long	_399
	.long	_40
	.long	-24
	.long	2
	.long	_400
	.long	_40
	.long	-28
	.long	2
	.long	_401
	.long	_40
	.long	-32
	.long	0
	.align	4
_375:
	.long	_135
	.long	225
	.long	5
	.align	4
_376:
	.long	_135
	.long	226
	.long	5
	.align	4
_377:
	.long	_135
	.long	227
	.long	5
	.align	4
_379:
	.long	_135
	.long	228
	.long	5
	.align	4
_381:
	.long	_135
	.long	229
	.long	5
	.align	4
_383:
	.long	_135
	.long	230
	.long	5
	.align	4
_385:
	.long	_135
	.long	231
	.long	5
	.align	4
_387:
	.long	_135
	.long	232
	.long	5
	.align	4
_389:
	.long	_135
	.long	234
	.long	5
	.align	4
_390:
	.long	_135
	.long	235
	.long	5
	.align	4
_391:
	.long	_135
	.long	236
	.long	5
	.align	4
_392:
	.long	_135
	.long	238
	.long	5
_421:
	.asciz	"blend_mul"
	.align	4
_420:
	.long	1
	.long	_421
	.long	2
	.long	_373
	.long	_40
	.long	-4
	.long	2
	.long	_395
	.long	_40
	.long	-8
	.long	2
	.long	_396
	.long	_40
	.long	-12
	.long	2
	.long	_397
	.long	_40
	.long	-16
	.long	2
	.long	_398
	.long	_40
	.long	-20
	.long	2
	.long	_399
	.long	_40
	.long	-24
	.long	2
	.long	_400
	.long	_40
	.long	-28
	.long	2
	.long	_401
	.long	_40
	.long	-32
	.long	0
	.align	4
_402:
	.long	_135
	.long	243
	.long	5
	.align	4
_403:
	.long	_135
	.long	244
	.long	5
	.align	4
_404:
	.long	_135
	.long	245
	.long	5
	.align	4
_406:
	.long	_135
	.long	246
	.long	5
	.align	4
_408:
	.long	_135
	.long	247
	.long	5
	.align	4
_410:
	.long	_135
	.long	248
	.long	5
	.align	4
_412:
	.long	_135
	.long	249
	.long	5
	.align	4
_414:
	.long	_135
	.long	250
	.long	5
	.align	4
_416:
	.long	_135
	.long	252
	.long	5
	.align	4
_417:
	.long	_135
	.long	253
	.long	5
	.align	4
_418:
	.long	_135
	.long	254
	.long	5
	.align	4
_419:
	.long	_135
	.long	256
	.long	5
_450:
	.asciz	"blend_add"
	.align	4
_449:
	.long	1
	.long	_450
	.long	2
	.long	_373
	.long	_40
	.long	-4
	.long	2
	.long	_395
	.long	_40
	.long	-8
	.long	2
	.long	_396
	.long	_40
	.long	-12
	.long	2
	.long	_397
	.long	_40
	.long	-16
	.long	2
	.long	_398
	.long	_40
	.long	-20
	.long	2
	.long	_399
	.long	_40
	.long	-24
	.long	2
	.long	_400
	.long	_40
	.long	-28
	.long	2
	.long	_401
	.long	_40
	.long	-32
	.long	0
	.align	4
_422:
	.long	_135
	.long	261
	.long	5
	.align	4
_423:
	.long	_135
	.long	262
	.long	5
	.align	4
_424:
	.long	_135
	.long	263
	.long	5
	.align	4
_426:
	.long	_135
	.long	264
	.long	5
	.align	4
_428:
	.long	_135
	.long	265
	.long	5
	.align	4
_430:
	.long	_135
	.long	266
	.long	5
	.align	4
_432:
	.long	_135
	.long	267
	.long	5
	.align	4
_434:
	.long	_135
	.long	268
	.long	5
	.align	4
_436:
	.long	_135
	.long	270
	.long	5
	.align	4
_437:
	.long	_135
	.long	271
	.long	5
	.align	4
_438:
	.long	_135
	.long	272
	.long	5
	.align	4
_439:
	.long	_135
	.long	274
	.long	5
	.align	4
_441:
	.long	_135
	.long	274
	.long	24
	.align	4
_442:
	.long	_135
	.long	275
	.long	5
	.align	4
_444:
	.long	_135
	.long	275
	.long	24
	.align	4
_445:
	.long	_135
	.long	276
	.long	5
	.align	4
_447:
	.long	_135
	.long	276
	.long	24
	.align	4
_448:
	.long	_135
	.long	278
	.long	5
_454:
	.asciz	"drawcircle"
_455:
	.asciz	"r"
_456:
	.asciz	"c"
	.align	4
_453:
	.long	1
	.long	_454
	.long	2
	.long	_48
	.long	_40
	.long	-4
	.long	2
	.long	_49
	.long	_40
	.long	-8
	.long	2
	.long	_455
	.long	_40
	.long	-12
	.long	2
	.long	_456
	.long	_40
	.long	-16
	.long	0
	.align	4
_451:
	.long	_135
	.long	288
	.long	2
	.align	4
_452:
	.long	_135
	.long	289
	.long	2
_460:
	.asciz	"DrawRectangle"
_461:
	.asciz	"width"
_462:
	.asciz	"heigh"
	.align	4
_459:
	.long	1
	.long	_460
	.long	2
	.long	_48
	.long	_40
	.long	-4
	.long	2
	.long	_49
	.long	_40
	.long	-8
	.long	2
	.long	_461
	.long	_40
	.long	-12
	.long	2
	.long	_462
	.long	_40
	.long	-16
	.long	2
	.long	_456
	.long	_40
	.long	-20
	.long	0
	.align	4
_457:
	.long	_135
	.long	293
	.long	2
	.align	4
_458:
	.long	_135
	.long	294
	.long	2
_465:
	.asciz	"drawtile"
_466:
	.asciz	"tile"
	.align	4
_464:
	.long	1
	.long	_465
	.long	2
	.long	_48
	.long	_40
	.long	-4
	.long	2
	.long	_49
	.long	_40
	.long	-8
	.long	2
	.long	_466
	.long	_40
	.long	-12
	.long	0
	.align	4
_463:
	.long	_135
	.long	300
	.long	2
_471:
	.asciz	"drawCharacter"
_472:
	.asciz	"index"
	.align	4
_470:
	.long	1
	.long	_471
	.long	2
	.long	_48
	.long	_40
	.long	-4
	.long	2
	.long	_49
	.long	_40
	.long	-8
	.long	2
	.long	_472
	.long	_40
	.long	-12
	.long	0
	.align	4
_467:
	.long	_135
	.long	305
	.long	2
	.align	4
_468:
	.long	_135
	.long	306
	.long	2
	.align	4
_469:
	.long	_135
	.long	307
	.long	2
_500:
	.asciz	"drawstring"
_501:
	.asciz	"s"
	.align	4
_499:
	.long	1
	.long	_500
	.long	2
	.long	_48
	.long	_40
	.long	-4
	.long	2
	.long	_49
	.long	_40
	.long	-8
	.long	2
	.long	_501
	.long	_298
	.long	-12
	.long	2
	.long	_40
	.long	_40
	.long	-16
	.long	0
	.align	4
_473:
	.long	_135
	.long	312
	.long	2
	.align	4
_477:
	.long	_135
	.long	313
	.long	3
	.align	4
_482:
	.long	_135
	.long	314
	.long	4
	.align	4
_484:
	.long	_135
	.long	317
	.long	4
	.align	4
_493:
	.long	_135
	.long	318
	.long	4
_530:
	.asciz	"drawbackground"
_531:
	.asciz	"tick"
_532:
	.asciz	"posx"
_533:
	.asciz	"posy"
_534:
	.asciz	"j"
_535:
	.asciz	"lut"
_536:
	.asciz	"mask"
	.align	4
_529:
	.long	1
	.long	_530
	.long	2
	.long	_531
	.long	_40
	.long	-4
	.long	2
	.long	_532
	.long	_40
	.long	-8
	.long	2
	.long	_533
	.long	_40
	.long	-12
	.long	2
	.long	_40
	.long	_40
	.long	-16
	.long	2
	.long	_534
	.long	_40
	.long	-20
	.long	2
	.long	_535
	.long	_40
	.long	-24
	.long	2
	.long	_536
	.long	_40
	.long	-28
	.long	0
	.align	4
_502:
	.long	_135
	.long	334
	.long	2
	.align	4
_504:
	.long	_135
	.long	334
	.long	16
	.align	4
_505:
	.long	_135
	.long	335
	.long	2
	.align	4
_507:
	.long	_135
	.long	335
	.long	20
	.align	4
_508:
	.long	_135
	.long	336
	.long	2
	.align	4
_510:
	.long	_135
	.long	336
	.long	16
	.align	4
_511:
	.long	_135
	.long	337
	.long	2
	.align	4
_513:
	.long	_135
	.long	337
	.long	21
	.align	4
_514:
	.long	_135
	.long	338
	.long	2
	.align	4
_517:
	.long	_135
	.long	339
	.long	2
	.align	4
_519:
	.long	_135
	.long	340
	.long	3
	.align	4
_521:
	.long	_135
	.long	341
	.long	4
	.align	4
_525:
	.long	_135
	.long	342
	.long	4
_578:
	.asciz	"rotate_z"
_579:
	.asciz	"angle"
_580:
	.asciz	"ca"
_581:
	.asciz	"sa"
	.align	4
_577:
	.long	1
	.long	_578
	.long	2
	.long	_579
	.long	_37
	.long	-4
	.long	2
	.long	_580
	.long	_37
	.long	-8
	.long	2
	.long	_581
	.long	_37
	.long	-12
	.long	2
	.long	_40
	.long	_40
	.long	-16
	.long	2
	.long	_48
	.long	_37
	.long	-20
	.long	2
	.long	_49
	.long	_37
	.long	-24
	.long	0
	.align	4
_537:
	.long	_135
	.long	359
	.long	2
	.align	4
_539:
	.long	_135
	.long	360
	.long	2
	.align	4
_541:
	.long	_135
	.long	361
	.long	2
	.align	4
_543:
	.long	_135
	.long	362
	.long	2
	.align	4
_545:
	.long	_135
	.long	363
	.long	3
	.align	4
_555:
	.long	_135
	.long	364
	.long	3
	.align	4
_565:
	.long	_135
	.long	365
	.long	3
	.align	4
_571:
	.long	_135
	.long	366
	.long	3
_623:
	.asciz	"rotate_y"
	.align	4
_622:
	.long	1
	.long	_623
	.long	2
	.long	_579
	.long	_37
	.long	-4
	.long	2
	.long	_580
	.long	_37
	.long	-8
	.long	2
	.long	_581
	.long	_37
	.long	-12
	.long	2
	.long	_40
	.long	_40
	.long	-16
	.long	2
	.long	_50
	.long	_37
	.long	-20
	.long	2
	.long	_48
	.long	_37
	.long	-24
	.long	0
	.align	4
_582:
	.long	_135
	.long	373
	.long	2
	.align	4
_584:
	.long	_135
	.long	374
	.long	2
	.align	4
_586:
	.long	_135
	.long	375
	.long	2
	.align	4
_588:
	.long	_135
	.long	376
	.long	2
	.align	4
_590:
	.long	_135
	.long	377
	.long	3
	.align	4
_600:
	.long	_135
	.long	378
	.long	3
	.align	4
_610:
	.long	_135
	.long	379
	.long	3
	.align	4
_616:
	.long	_135
	.long	380
	.long	3
_665:
	.asciz	"rotate_x"
	.align	4
_664:
	.long	1
	.long	_665
	.long	2
	.long	_579
	.long	_37
	.long	-4
	.long	2
	.long	_580
	.long	_37
	.long	-8
	.long	2
	.long	_581
	.long	_37
	.long	-12
	.long	2
	.long	_40
	.long	_40
	.long	-16
	.long	2
	.long	_49
	.long	_37
	.long	-20
	.long	2
	.long	_50
	.long	_37
	.long	-24
	.long	0
	.align	4
_624:
	.long	_135
	.long	387
	.long	2
	.align	4
_626:
	.long	_135
	.long	388
	.long	2
	.align	4
_628:
	.long	_135
	.long	389
	.long	2
	.align	4
_630:
	.long	_135
	.long	390
	.long	2
	.align	4
_632:
	.long	_135
	.long	391
	.long	3
	.align	4
_642:
	.long	_135
	.long	392
	.long	3
	.align	4
_652:
	.long	_135
	.long	393
	.long	3
	.align	4
_658:
	.long	_135
	.long	394
	.long	3
_709:
	.asciz	"drawball"
_710:
	.asciz	"colorb"
_711:
	.asciz	"color0"
_712:
	.asciz	"color1"
_713:
	.asciz	"roty"
_714:
	.asciz	"rotz"
_715:
	.asciz	"dotradius"
	.align	4
_708:
	.long	1
	.long	_709
	.long	2
	.long	_48
	.long	_40
	.long	-4
	.long	2
	.long	_49
	.long	_40
	.long	-8
	.long	2
	.long	_455
	.long	_40
	.long	-12
	.long	2
	.long	_710
	.long	_40
	.long	-16
	.long	2
	.long	_711
	.long	_40
	.long	-20
	.long	2
	.long	_712
	.long	_40
	.long	-24
	.long	2
	.long	_713
	.long	_37
	.long	-28
	.long	2
	.long	_714
	.long	_37
	.long	-32
	.long	2
	.long	_715
	.long	_40
	.long	-36
	.long	2
	.long	_40
	.long	_40
	.long	-40
	.long	0
	.align	4
_666:
	.long	_135
	.long	401
	.long	2
	.align	4
_668:
	.long	_135
	.long	402
	.long	2
	.align	4
_669:
	.long	_135
	.long	403
	.long	2
	.align	4
_670:
	.long	_135
	.long	404
	.long	2
	.align	4
_671:
	.long	_135
	.long	405
	.long	2
	.align	4
_672:
	.long	_135
	.long	406
	.long	2
	.align	4
_674:
	.long	_135
	.long	407
	.long	2
	.align	4
_676:
	.long	_135
	.long	408
	.long	3
	.align	4
_682:
	.long	_135
	.long	409
	.long	4
	.align	4
_691:
	.long	_135
	.long	412
	.long	2
	.align	4
_693:
	.long	_135
	.long	413
	.long	3
	.align	4
_699:
	.long	_135
	.long	414
	.long	4
