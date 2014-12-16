	.reference	___bb_blitz_blitz
	.reference	___bb_bmploader_bmploader
	.reference	___bb_glmax2d_glmax2d
	.reference	___bb_pixmap_pixmap
	.reference	___bb_random_random
	.reference	___bb_retro_retro
	.reference	_bbATan2
	.reference	_bbArrayNew1D
	.reference	_bbCos
	.reference	_bbDelay
	.reference	_bbEmptyArray
	.reference	_bbEmptyString
	.reference	_bbEnd
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
	.reference	_bbSin
	.reference	_bbSqr
	.reference	_bbStringClass
	.reference	_bbStringCompare
	.reference	_bbStringConcat
	.reference	_bbStringFromChar
	.reference	_bbStringFromFloat
	.reference	_bbStringFromInt
	.reference	_bbStringToInt
	.reference	_brl_filesystem_OpenFile
	.reference	_brl_glmax2d_GLMax2DDriver
	.reference	_brl_graphics_Flip
	.reference	_brl_graphics_Graphics
	.reference	_brl_graphics_SetGraphicsDriver
	.reference	_brl_max2d_Cls
	.reference	_brl_max2d_DrawImage
	.reference	_brl_max2d_DrawOval
	.reference	_brl_max2d_DrawRect
	.reference	_brl_max2d_LoadAnimImage
	.reference	_brl_max2d_SetColor
	.reference	_brl_max2d_SetOrigin
	.reference	_brl_max2d_SetViewport
	.reference	_brl_pixmap_ConvertPixmap
	.reference	_brl_pixmap_CreatePixmap
	.reference	_brl_pixmap_LoadPixmap
	.reference	_brl_polledinput_KeyDown
	.reference	_brl_random_Rnd
	.reference	_brl_retro_Left
	.reference	_brl_stream_Eof
	.reference	_brl_stream_ReadByte
	.reference	_brl_stream_SeekStream
	.globl	__bb_collectible_Delete
	.globl	__bb_collectible_New
	.globl	__bb_main
	.globl	__bb_vertex_Delete
	.globl	__bb_vertex_New
	.globl	_bb_DrawRectangle
	.globl	_bb_blend_add
	.globl	_bb_blend_avg
	.globl	_bb_blend_mul
	.globl	_bb_changestate
	.globl	_bb_collectible
	.globl	_bb_collectiblecollision
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
	.globl	_bb_gamephysics
	.globl	_bb_init
	.globl	_bb_memcpy
	.globl	_bb_rendergame
	.globl	_bb_reset
	.globl	_bb_rotate_x
	.globl	_bb_rotate_y
	.globl	_bb_rotate_z
	.globl	_bb_vertex
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	sub	$28,%esp
	cmpl	$0,_252
	je	_253
	mov	$0,%eax
	add	$28,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_253:
	movl	$1,_252
	call	___bb_blitz_blitz
	call	___bb_pixmap_pixmap
	call	___bb_bmploader_bmploader
	call	___bb_random_random
	call	___bb_retro_retro
	call	___bb_glmax2d_glmax2d
	movl	$_bb_collectible,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_vertex,(%esp)
	call	_bbObjectRegisterType
	movl	$2,4(%esp)
	call	_brl_glmax2d_GLMax2DDriver
	movl	%eax,(%esp)
	call	_brl_graphics_SetGraphicsDriver
	movl	_234,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_235
	movl	$256,4(%esp)
	movl	$_232,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	%eax,_bb_gFontOfs
	orl	$1,_234
_235:
	movl	_234,%eax
	and	$2,%eax
	cmp	$0,%eax
	jne	_238
	movl	$256,4(%esp)
	movl	$_236,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	%eax,_bb_gFontWidth
	orl	$2,_234
_238:
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$480,4(%esp)
	movl	$640,(%esp)
	call	_brl_graphics_Graphics
	mov	$80,%esi
	mov	$80,%ebx
	movl	%ebx,-4(%ebp)
	fildl	-4(%ebp)
	fstps	4(%esp)
	movl	%esi,-4(%ebp)
	fildl	-4(%ebp)
	fstps	(%esp)
	call	_brl_max2d_SetOrigin
	movl	$320,12(%esp)
	movl	$480,8(%esp)
	movl	%ebx,4(%esp)
	movl	%esi,(%esp)
	call	_brl_max2d_SetViewport
	movl	$4,12(%esp)
	movl	$6,8(%esp)
	movl	$320,4(%esp)
	movl	$480,(%esp)
	call	_brl_pixmap_CreatePixmap
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	_bb_gScreen,%eax
	decl	4(%eax)
	jnz	_244
	movl	%eax,(%esp)
	call	_bbGCFree
_244:
	movl	%ebx,_bb_gScreen
	movl	_bb_gScreen,%eax
	movl	8(%eax),%eax
	movl	%eax,_bb_gScreenPtr
	call	_bb_init
	jmp	_113
_115:
	call	_brl_max2d_Cls
	jmp	_116
_118:
	call	_bb_changestate
_116:
	movl	_bb_gGameState,%eax
	cmpl	%eax,_bb_gNextState
	jne	_118
_117:
	movl	_bb_gGameState,%eax
	cmp	$1,%eax
	je	_247
	cmp	$2,%eax
	je	_247
	cmp	$3,%eax
	je	_247
	cmp	$4,%eax
	je	_247
	cmp	$5,%eax
	je	_247
	jmp	_246
_247:
	call	_bb_rendergame
	jmp	_246
_246:
	movl	$37,(%esp)
	call	_brl_polledinput_KeyDown
	movl	%eax,_bb_gKeyLeft
	movl	$39,(%esp)
	call	_brl_polledinput_KeyDown
	movl	%eax,_bb_gKeyRight
	movl	$38,(%esp)
	call	_brl_polledinput_KeyDown
	movl	%eax,_bb_gKeyUp
	movl	$40,(%esp)
	call	_brl_polledinput_KeyDown
	movl	%eax,_bb_gKeyDown
	movl	$13,(%esp)
	call	_brl_polledinput_KeyDown
	cmp	$0,%eax
	jne	_248
	movl	$32,(%esp)
	call	_brl_polledinput_KeyDown
_248:
	cmp	$0,%eax
	je	_250
	cmpl	$5,_bb_gGameState
	jne	_251
	movl	$1,_bb_gNextState
_251:
_250:
	movl	$0,(%esp)
	call	_brl_graphics_Flip
_113:
	movl	$27,(%esp)
	call	_brl_polledinput_KeyDown
	cmp	$0,%eax
	je	_115
_114:
	mov	$0,%eax
	jmp	_136
_136:
	add	$28,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_collectible_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_collectible,(%ebx)
	fldz
	fstps	8(%ebx)
	fldz
	fstps	12(%ebx)
	movl	$0,16(%ebx)
	movl	$0,20(%ebx)
	movl	$0,24(%ebx)
	mov	$0,%eax
	jmp	_139
_139:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_collectible_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_142:
	mov	$0,%eax
	jmp	_254
_254:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_vertex_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_vertex,(%ebx)
	fldz
	fstps	8(%ebx)
	fldz
	fstps	12(%ebx)
	fldz
	fstps	16(%ebx)
	mov	$0,%eax
	jmp	_145
_145:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_vertex_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_148:
	mov	$0,%eax
	jmp	_255
_255:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_memcpy:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	8(%ebp),%edi
	movl	16(%ebp),%eax
	mov	$0,%ebx
	movl	%eax,-4(%ebp)
	jmp	_257
_5:
	movl	$_bb_vertex,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%edi,%ebx,4),%eax
	decl	4(%eax)
	jnz	_262
	movl	%eax,(%esp)
	call	_bbGCFree
_262:
	movl	%esi,24(%edi,%ebx,4)
	movl	24(%edi,%ebx,4),%eax
	movl	12(%ebp),%edx
	movl	24(%edx,%ebx,4),%edx
	flds	8(%edx)
	fstps	8(%eax)
	movl	24(%edi,%ebx,4),%eax
	movl	12(%ebp),%edx
	movl	24(%edx,%ebx,4),%edx
	flds	12(%edx)
	fstps	12(%eax)
	movl	24(%edi,%ebx,4),%eax
	movl	12(%ebp),%edx
	movl	24(%edx,%ebx,4),%edx
	flds	16(%edx)
	fstps	16(%eax)
_3:
	add	$1,%ebx
_257:
	cmpl	-4(%ebp),%ebx
	jl	_5
_4:
	mov	$0,%eax
	jmp	_153
_153:
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_blend_avg:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	8(%ebp),%ebx
	movl	12(%ebp),%edx
	and	$2147483647,%ebx
	and	$2147483647,%edx
	mov	%ebx,%eax
	and	$255,%eax
	mov	%ebx,%ecx
	shr	$8,%ecx
	and	$255,%ecx
	mov	%ecx,%edi
	shr	$16,%ebx
	and	$255,%ebx
	movl	%ebx,-4(%ebp)
	mov	%edx,%ecx
	and	$255,%ecx
	mov	%ecx,%esi
	mov	%edx,%ecx
	shr	$8,%ecx
	and	$255,%ecx
	mov	%ecx,%ebx
	shr	$16,%edx
	and	$255,%edx
	mov	%edx,%ecx
	add	%esi,%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	mov	%eax,%esi
	mov	%edi,%eax
	add	%ebx,%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	mov	%eax,%ebx
	movl	-4(%ebp),%eax
	add	%ecx,%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	mov	%eax,%ecx
	mov	%esi,%eax
	mov	%ebx,%edx
	shl	$8,%edx
	or	%edx,%eax
	mov	%ecx,%edx
	shl	$16,%edx
	or	%edx,%eax
	and	$2147483647,%eax
	jmp	_157
_157:
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_blend_mul:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	and	$2147483647,%eax
	and	$2147483647,%edx
	mov	%eax,%ecx
	and	$255,%ecx
	mov	%ecx,%esi
	mov	%eax,%ecx
	shr	$8,%ecx
	and	$255,%ecx
	mov	%ecx,%ebx
	shr	$16,%eax
	and	$255,%eax
	mov	%eax,%edi
	mov	%edx,%eax
	and	$255,%eax
	mov	%edx,%ecx
	shr	$8,%ecx
	and	$255,%ecx
	shr	$16,%edx
	and	$255,%edx
	imul	%eax,%esi
	mov	%esi,%eax
	shr	$8,%eax
	imul	%ecx,%ebx
	shr	$8,%ebx
	mov	%ebx,%ecx
	mov	%edi,%ebx
	imul	%edx,%ebx
	shr	$8,%ebx
	mov	%ebx,%edx
	shl	$8,%ecx
	or	%ecx,%eax
	shl	$16,%edx
	or	%edx,%eax
	and	$2147483647,%eax
	jmp	_161
_161:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_blend_add:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	and	$2147483647,%eax
	and	$2147483647,%edx
	mov	%eax,%ecx
	and	$255,%ecx
	mov	%ecx,%esi
	mov	%eax,%ecx
	shr	$8,%ecx
	and	$255,%ecx
	mov	%ecx,%ebx
	shr	$16,%eax
	and	$255,%eax
	mov	%edx,%ecx
	and	$255,%ecx
	mov	%ecx,%edi
	mov	%edx,%ecx
	shr	$8,%ecx
	and	$255,%ecx
	shr	$16,%edx
	and	$255,%edx
	add	%esi,%edi
	add	%ebx,%ecx
	add	%eax,%edx
	cmp	$255,%edi
	jle	_281
	mov	$255,%edi
_281:
	cmp	$255,%ecx
	jle	_282
	mov	$255,%ecx
_282:
	cmp	$255,%edx
	jle	_283
	mov	$255,%edx
_283:
	mov	%edi,%eax
	shl	$8,%ecx
	or	%ecx,%eax
	shl	$16,%edx
	or	%edx,%eax
	and	$2147483647,%eax
	jmp	_165
_165:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawcircle:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	16(%ebp),%ebx
	movl	20(%ebp),%eax
	mov	%eax,%edx
	and	$255,%edx
	movl	%edx,8(%esp)
	mov	%eax,%edx
	shr	$8,%edx
	and	$255,%edx
	movl	%edx,4(%esp)
	shr	$16,%eax
	and	$255,%eax
	movl	%eax,(%esp)
	call	_brl_max2d_SetColor
	mov	%ebx,%eax
	shl	$1,%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fstps	12(%esp)
	mov	%ebx,%eax
	shl	$1,%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fstps	8(%esp)
	mov	%esi,%eax
	sub	%ebx,%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fstps	4(%esp)
	mov	%edi,%eax
	sub	%ebx,%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fstps	(%esp)
	call	_brl_max2d_DrawOval
	mov	$0,%eax
	jmp	_171
_171:
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_DrawRectangle:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	12(%ebp),%edi
	movl	16(%ebp),%esi
	movl	20(%ebp),%ebx
	movl	24(%ebp),%eax
	mov	%eax,%edx
	and	$255,%edx
	movl	%edx,8(%esp)
	mov	%eax,%edx
	shr	$8,%edx
	and	$255,%edx
	movl	%edx,4(%esp)
	shr	$16,%eax
	and	$255,%eax
	movl	%eax,(%esp)
	call	_brl_max2d_SetColor
	movl	%ebx,-4(%ebp)
	fildl	-4(%ebp)
	fstps	12(%esp)
	movl	%esi,-4(%ebp)
	fildl	-4(%ebp)
	fstps	8(%esp)
	movl	%edi,-4(%ebp)
	fildl	-4(%ebp)
	fstps	4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fstps	(%esp)
	call	_brl_max2d_DrawRect
	mov	$0,%eax
	jmp	_178
_178:
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawtile:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,12(%esp)
	movl	%edx,-4(%ebp)
	fildl	-4(%ebp)
	fstps	8(%esp)
	movl	%ecx,-4(%ebp)
	fildl	-4(%ebp)
	fstps	4(%esp)
	movl	_bb_gTiles,%eax
	movl	%eax,(%esp)
	call	_brl_max2d_DrawImage
	mov	$0,%eax
	jmp	_183
_183:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawCharacter:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	16(%ebp),%ebx
	movl	$0,8(%esp)
	movl	$0,4(%esp)
	movl	$255,(%esp)
	call	_brl_max2d_SetColor
	movl	%ebx,12(%esp)
	movl	%esi,-4(%ebp)
	fildl	-4(%ebp)
	fstps	8(%esp)
	movl	%edi,-4(%ebp)
	fildl	-4(%ebp)
	fstps	4(%esp)
	movl	_bb_gFont,%eax
	movl	%eax,(%esp)
	call	_brl_max2d_DrawImage
	movl	$255,8(%esp)
	movl	$255,4(%esp)
	movl	$255,(%esp)
	call	_brl_max2d_SetColor
	mov	$0,%eax
	jmp	_188
_188:
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawstring:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	8(%ebp),%esi
	movl	16(%ebp),%edi
	mov	$0,%ebx
	movl	8(%edi),%eax
	movl	%eax,-4(%ebp)
	jmp	_285
_8:
	movzwl	12(%edi,%ebx,2),%eax
	mov	%eax,%eax
	cmp	$32,%eax
	jne	_287
	add	$8,%esi
	jmp	_288
_287:
	movzwl	12(%edi,%ebx,2),%eax
	mov	%eax,%eax
	sub	$33,%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	mov	%esi,%edx
	movl	_bb_gFontOfs,%eax
	movzwl	12(%edi,%ebx,2),%ecx
	mov	%ecx,%ecx
	sub	$33,%ecx
	subl	24(%eax,%ecx,4),%edx
	movl	%edx,(%esp)
	call	_bb_drawCharacter
	movl	_bb_gFontWidth,%eax
	movzwl	12(%edi,%ebx,2),%edx
	mov	%edx,%edx
	sub	$33,%edx
	addl	24(%eax,%edx,4),%esi
_288:
_6:
	add	$1,%ebx
_285:
	cmpl	-4(%ebp),%ebx
	jl	_8
_7:
	mov	$0,%eax
	jmp	_193
_193:
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
	sub	$12,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
	cmpl	$0,12(%ebp)
	jge	_289
	movl	$0,12(%ebp)
_289:
	cmpl	$480,12(%ebp)
	jle	_290
	movl	$480,12(%ebp)
_290:
	cmpl	$0,16(%ebp)
	jge	_291
	movl	$0,16(%ebp)
_291:
	cmpl	$320,16(%ebp)
	jle	_292
	movl	$320,16(%ebp)
_292:
	movl	$0,-12(%ebp)
	jmp	_295
_11:
	movl	$0,-8(%ebp)
	jmp	_296
_14:
	movl	_bb_gLut,%edx
	movl	-12(%ebp),%eax
	addl	16(%ebp),%eax
	imul	$480,%eax
	shl	$1,%eax
	addl	-8(%ebp),%eax
	addl	12(%ebp),%eax
	movzwl	24(%edx,%eax,2),%eax
	mov	%eax,%eax
	mov	%eax,%ebx
	movl	_bb_gMask,%edx
	movl	-12(%ebp),%eax
	addl	16(%ebp),%eax
	imul	$480,%eax
	shl	$1,%eax
	addl	-8(%ebp),%eax
	addl	12(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	movl	_bb_gScreenPtr,%edx
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%esi
	movl	-12(%ebp),%edx
	imul	$480,%edx
	add	%edx,%esi
	movl	%eax,4(%esp)
	movl	_bb_gTextureptr,%edi
	mov	%ebx,%ecx
	movl	8(%ebp),%eax
	cdq
	and	$31,%edx
	add	%edx,%eax
	sar	$5,%eax
	add	%eax,%ecx
	mov	%ecx,%eax
	and	$255,%eax
	mov	%eax,%ecx
	mov	%ebx,%eax
	shr	$8,%eax
	mov	%eax,%ebx
	movl	8(%ebp),%eax
	cdq
	and	$15,%edx
	add	%edx,%eax
	sar	$4,%eax
	add	%eax,%ebx
	mov	%ebx,%eax
	and	$255,%eax
	mov	%eax,%edx
	movl	_bb_gTexture,%eax
	imull	12(%eax),%edx
	add	%edx,%ecx
	movl	(%edi,%ecx,4),%eax
	movl	%eax,(%esp)
	call	_bb_blend_mul
	movl	-4(%ebp),%edx
	movl	%eax,(%edx,%esi,4)
_12:
	addl	$1,-8(%ebp)
_296:
	cmpl	$480,-8(%ebp)
	jl	_14
_13:
_9:
	addl	$1,-12(%ebp)
_295:
	cmpl	$320,-12(%ebp)
	jl	_11
_10:
	mov	$0,%eax
	jmp	_198
_198:
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_rotate_z:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	flds	8(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fstps	-4(%ebp)
	flds	8(%ebp)
	fstpl	(%esp)
	call	_bbSin
	mov	$0,%eax
	jmp	_302
_17:
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	flds	8(%edx)
	fmuls	-4(%ebp)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	flds	12(%edx)
	fmul	%st(2),%st(0)
	fsubrp	%st(0),%st(1)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	flds	8(%edx)
	fmul	%st(2),%st(0)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	flds	12(%edx)
	fmuls	-4(%ebp)
	faddp	%st(0),%st(1)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	fxch	%st(1)
	fstps	8(%edx)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	fstps	12(%edx)
_15:
	add	$1,%eax
_302:
	cmp	$10,%eax
	jl	_17
	fstp	%st(0)
_16:
	mov	$0,%eax
	jmp	_201
_201:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_rotate_y:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	flds	8(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fstps	-4(%ebp)
	flds	8(%ebp)
	fstpl	(%esp)
	call	_bbSin
	mov	$0,%eax
	jmp	_308
_20:
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	flds	16(%edx)
	fmuls	-4(%ebp)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	flds	8(%edx)
	fmul	%st(2),%st(0)
	fsubrp	%st(0),%st(1)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	flds	16(%edx)
	fmul	%st(2),%st(0)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	flds	8(%edx)
	fmuls	-4(%ebp)
	faddp	%st(0),%st(1)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	fxch	%st(1)
	fstps	16(%edx)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	fstps	8(%edx)
_18:
	add	$1,%eax
_308:
	cmp	$10,%eax
	jl	_20
	fstp	%st(0)
_19:
	mov	$0,%eax
	jmp	_204
_204:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_rotate_x:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	flds	8(%ebp)
	fstpl	(%esp)
	call	_bbCos
	fstps	-4(%ebp)
	flds	8(%ebp)
	fstpl	(%esp)
	call	_bbSin
	mov	$0,%eax
	jmp	_314
_23:
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	flds	12(%edx)
	fmuls	-4(%ebp)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	flds	16(%edx)
	fmul	%st(2),%st(0)
	fsubrp	%st(0),%st(1)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	flds	12(%edx)
	fmul	%st(2),%st(0)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	flds	16(%edx)
	fmuls	-4(%ebp)
	faddp	%st(0),%st(1)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	fxch	%st(1)
	fstps	12(%edx)
	movl	_bb_gRVtx,%edx
	movl	24(%edx,%eax,4),%edx
	fstps	16(%edx)
_21:
	add	$1,%eax
_314:
	cmp	$10,%eax
	jl	_23
	fstp	%st(0)
_22:
	mov	$0,%eax
	jmp	_207
_207:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawball:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	20(%ebp),%ecx
	mov	$6,%ebx
	movl	16(%ebp),%eax
	cdq
	idiv	%ebx
	mov	%eax,%edi
	movl	%ecx,12(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_drawcircle
	flds	36(%ebp)
	fchs
	fstps	(%esp)
	call	_bb_rotate_z
	flds	32(%ebp)
	fstps	(%esp)
	call	_bb_rotate_y
	flds	36(%ebp)
	fstps	(%esp)
	call	_bb_rotate_z
	mov	$0,%esi
	jmp	_319
_26:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%esi,4),%eax
	flds	16(%eax)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_320
	movl	24(%ebp),%eax
	movl	%eax,12(%esp)
	movl	%edi,8(%esp)
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%esi,4),%eax
	flds	12(%eax)
	movl	16(%ebp),%eax
	sub	%edi,%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fmulp	%st(0),%st(1)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%ebx
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%esi,4),%eax
	flds	8(%eax)
	movl	16(%ebp),%eax
	sub	%edi,%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fmulp	%st(0),%st(1)
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bb_drawcircle
_320:
_24:
	add	$1,%esi
_319:
	cmp	$10,%esi
	jl	_26
_25:
	mov	$0,%esi
	jmp	_321
_29:
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%esi,4),%eax
	flds	16(%eax)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_322
	movl	28(%ebp),%eax
	movl	%eax,12(%esp)
	movl	%edi,8(%esp)
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%esi,4),%eax
	flds	12(%eax)
	movl	16(%ebp),%eax
	sub	%edi,%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fmulp	%st(0),%st(1)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%ebx
	movl	_bb_gRVtx,%eax
	movl	24(%eax,%esi,4),%eax
	flds	8(%eax)
	movl	16(%ebp),%eax
	sub	%edi,%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fmulp	%st(0),%st(1)
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bb_drawcircle
_322:
_27:
	add	$1,%esi
_321:
	cmp	$10,%esi
	jl	_29
_28:
	mov	$0,%eax
	jmp	_217
_217:
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_collectiblecollision:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	sub	$12,%esp
	mov	$0,%ebx
	movl	_bb_gCollectibleCount,%esi
	jmp	_324
_32:
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%ebx,4),%eax
	cmpl	$0,24(%eax)
	jne	_326
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%ebx,4),%eax
	flds	8(%eax)
	fsubs	_bb_gXPos
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%ebx,4),%eax
	flds	8(%eax)
	fsubs	_bb_gXPos
	fmulp	%st(0),%st(1)
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%ebx,4),%eax
	flds	12(%eax)
	fsubs	_bb_gYPos
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%ebx,4),%eax
	flds	12(%eax)
	fsubs	_bb_gYPos
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%ebx,4),%eax
	movl	20(%eax),%eax
	add	$12,%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_327
	addl	$1,_bb_gCollectiblesTaken
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%ebx,4),%eax
	movl	$1,24(%eax)
	addl	$10,_bb_gScore
_327:
_326:
_30:
	add	$1,%ebx
_324:
	cmp	%esi,%ebx
	jl	_32
_31:
	mov	$0,%eax
	jmp	_219
_219:
	add	$12,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_reset:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	fldz
	fstps	_bb_gXMov
	fldz
	fstps	_bb_gYMov
	fldz
	fstps	_bb_gXRoll
	fldz
	fstps	_bb_gYRoll
	fldz
	fstps	_bb_gRoll
	movl	$0,_bb_gKeyLeft
	movl	$0,_bb_gKeyRight
	movl	$0,_bb_gKeyUp
	movl	$0,_bb_gKeyDown
	movl	$_bbEmptyString,-12(%ebp)
_35:
	movl	$1,8(%esp)
	movl	_bb_gCurrentLevel,%eax
	movl	%eax,(%esp)
	call	_bbStringFromInt
	mov	%eax,%ebx
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$_36,(%esp)
	call	_bbStringConcat
	movl	$_37,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$_38,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	$1,4(%esp)
	movl	%eax,(%esp)
	call	_brl_filesystem_OpenFile
	mov	%eax,%edi
	cmp	$_bbNullObject,%edi
	jne	_330
	cmpl	$0,_bb_gCurrentLevel
	jne	_331
	call	_bbEnd
_331:
	movl	$0,_bb_gCurrentLevel
_330:
_33:
	cmp	$_bbNullObject,%edi
	je	_35
_34:
	movl	$-1,_bb_gLevelWidth
	mov	$0,%esi
	jmp	_39
_41:
	movl	%edi,(%esp)
	call	_brl_stream_ReadByte
	mov	%eax,%esi
	addl	$1,_bb_gLevelWidth
_39:
	movl	$_42,4(%esp)
	movl	%esi,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	setne	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_333
	movl	$_43,4(%esp)
	movl	%esi,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	setne	%al
	movzbl	%al,%eax
_333:
	cmp	$0,%eax
	jne	_41
_40:
	movl	$1,_bb_gLevelHeight
	movb	$0,-4(%ebp)
	jmp	_44
_46:
	movl	%edi,(%esp)
	call	_brl_stream_ReadByte
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	cmp	%esi,%eax
	jne	_338
	addl	$1,_bb_gLevelHeight
_338:
_44:
	movl	%edi,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_336
	movl	$_47,4(%esp)
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movl	%eax,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	setne	%al
	movzbl	%al,%eax
_336:
	cmp	$0,%eax
	jne	_46
_45:
	movl	$0,4(%esp)
	movl	%edi,(%esp)
	call	_brl_stream_SeekStream
	movl	_bb_gLevelWidth,%edx
	movl	_bb_gLevelHeight,%eax
	add	$1,%eax
	imul	%eax,%edx
	movl	%edx,4(%esp)
	movl	$_339,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_gLevel,%eax
	decl	4(%eax)
	jnz	_343
	movl	%eax,(%esp)
	call	_bbGCFree
_343:
	movl	%ebx,_bb_gLevel
	movl	_bb_gLevelWidth,%edx
	movl	_bb_gLevelHeight,%eax
	add	$1,%eax
	imul	%eax,%edx
	movl	%edx,4(%esp)
	movl	$_344,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_gColliders,%eax
	decl	4(%eax)
	jnz	_348
	movl	%eax,(%esp)
	call	_bbGCFree
_348:
	movl	%ebx,_bb_gColliders
	mov	$0,%esi
	jmp	_48
_50:
	movl	%edi,(%esp)
	call	_brl_stream_ReadByte
	cmp	$32,%eax
	jle	_353
	movl	%eax,(%esp)
	call	_bbStringFromChar
	mov	%eax,%ebx
	movl	$_51,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	je	_356
	movl	$_52,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	je	_357
	movl	$_53,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	je	_358
	movl	$_54,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	je	_359
	movl	$_55,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	je	_360
	movl	$_2,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	je	_361
	movl	$_56,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	je	_362
	movl	$_57,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	je	_363
	movl	$_58,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	je	_364
	movl	$_59,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	je	_365
	movl	$_60,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	je	_366
	movl	$_61,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	je	_367
	jmp	_355
_356:
	movl	_bb_gLevel,%eax
	movb	$0,24(%eax,%esi,1)
	jmp	_355
_357:
	movl	_bb_gLevel,%eax
	movb	$1,24(%eax,%esi,1)
	jmp	_355
_358:
	movl	_bb_gLevel,%eax
	movb	$2,24(%eax,%esi,1)
	jmp	_355
_359:
	movl	_bb_gLevel,%eax
	movb	$3,24(%eax,%esi,1)
	jmp	_355
_360:
	movl	_bb_gLevel,%eax
	movb	$5,24(%eax,%esi,1)
	jmp	_355
_361:
	movl	_bb_gLevel,%eax
	movb	$11,24(%eax,%esi,1)
	jmp	_355
_362:
	movl	_bb_gLevel,%eax
	movb	$10,24(%eax,%esi,1)
	jmp	_355
_363:
	movl	_bb_gLevel,%eax
	movb	$13,24(%eax,%esi,1)
	jmp	_355
_364:
	movl	_bb_gLevel,%eax
	movb	$12,24(%eax,%esi,1)
	jmp	_355
_365:
	movl	_bb_gLevel,%eax
	movb	$24,24(%eax,%esi,1)
	jmp	_355
_366:
	movl	_bb_gLevel,%eax
	movb	$26,24(%eax,%esi,1)
	jmp	_355
_367:
	movl	_bb_gLevel,%eax
	movb	$25,24(%eax,%esi,1)
	jmp	_355
_355:
	add	$1,%esi
_353:
_48:
	movl	_bb_gLevelWidth,%eax
	imull	_bb_gLevelHeight,%eax
	cmp	%eax,%esi
	setl	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_350
	movl	%edi,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
_350:
	cmp	$0,%eax
	jne	_50
_49:
	mov	$_bbEmptyString,%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_gLevelName,%eax
	decl	4(%eax)
	jnz	_371
	movl	%eax,(%esp)
	call	_bbGCFree
_371:
	movl	%ebx,_bb_gLevelName
	movl	$10,_bb_gLevelTime
	movb	$0,-4(%ebp)
	jmp	_62
_64:
	movl	%edi,(%esp)
	call	_brl_stream_ReadByte
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,-4(%ebp)
_62:
	movl	%edi,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_372
	movl	$_47,4(%esp)
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movl	%eax,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	setne	%al
	movzbl	%al,%eax
_372:
	cmp	$0,%eax
	jne	_64
_63:
	movl	$_47,4(%esp)
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movl	%eax,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	jne	_374
	movb	$0,-4(%ebp)
	jmp	_65
_67:
	movl	%edi,(%esp)
	call	_brl_stream_ReadByte
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,-4(%ebp)
	movl	$_47,4(%esp)
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movl	%eax,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	jne	_377
	jmp	_65
_377:
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movl	%eax,(%esp)
	call	_bbStringFromChar
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,-12(%ebp)
_65:
	movl	%edi,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_375
	movl	$_47,4(%esp)
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movl	%eax,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	setne	%al
	movzbl	%al,%eax
_375:
	cmp	$0,%eax
	jne	_67
_66:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringToInt
	movl	%eax,_bb_gLevelTime
	movb	$0,-4(%ebp)
	movl	$_bbEmptyString,-12(%ebp)
	jmp	_68
_70:
	movl	%edi,(%esp)
	call	_brl_stream_ReadByte
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,-4(%ebp)
	movl	$_47,4(%esp)
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movl	%eax,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	jne	_380
	jmp	_68
_380:
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movl	%eax,(%esp)
	call	_bbStringFromChar
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,-12(%ebp)
_68:
	movl	%edi,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_378
	movl	$_47,4(%esp)
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movl	%eax,(%esp)
	call	_bbStringFromChar
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	setne	%al
	movzbl	%al,%eax
_378:
	cmp	$0,%eax
	jne	_70
_69:
_374:
	movl	-12(%ebp),%ebx
	incl	4(%ebx)
	movl	_bb_gLevelName,%eax
	decl	4(%eax)
	jnz	_385
	movl	%eax,(%esp)
	call	_bbGCFree
_385:
	movl	%ebx,_bb_gLevelName
	movl	$0,_bb_gCollectibleCount
	mov	$0,%esi
	movl	_bb_gLevelWidth,%eax
	imull	_bb_gLevelHeight,%eax
	movl	%eax,-16(%ebp)
	jmp	_386
_73:
	movl	_bb_gLevel,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	cmp	$2,%eax
	jne	_388
	mov	%esi,%eax
	cdq
	idivl	_bb_gLevelWidth
	mov	%edx,%eax
	shl	$5,%eax
	add	$16,%eax
	movl	%eax,-20(%ebp)
	fildl	-20(%ebp)
	fstps	_bb_gStartX
	mov	%esi,%eax
	cdq
	idivl	_bb_gLevelWidth
	shl	$5,%eax
	add	$16,%eax
	movl	%eax,-20(%ebp)
	fildl	-20(%ebp)
	fstps	_bb_gStartY
_388:
	movl	_bb_gLevel,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	cmp	$24,%eax
	jne	_389
	mov	%esi,%eax
	cdq
	idivl	_bb_gLevelWidth
	movl	%eax,-8(%ebp)
	mov	%esi,%eax
	cdq
	idivl	_bb_gLevelWidth
	mov	%edx,%eax
	mov	%eax,%edi
	cmpl	$0,-8(%ebp)
	jle	_392
	cmp	$0,%edi
	jle	_393
	movl	_bb_gColliders,%ecx
	mov	%esi,%eax
	subl	_bb_gLevelWidth,%eax
	mov	%eax,%edx
	sub	$1,%edx
	movl	_bb_gColliders,%eax
	mov	%esi,%ebx
	subl	_bb_gLevelWidth,%ebx
	sub	$1,%ebx
	movzbl	24(%eax,%ebx,1),%eax
	mov	%eax,%eax
	or	$32,%eax
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,24(%ecx,%edx,1)
_393:
	movl	_bb_gColliders,%ecx
	mov	%esi,%edx
	subl	_bb_gLevelWidth,%edx
	movl	_bb_gColliders,%ebx
	mov	%esi,%eax
	subl	_bb_gLevelWidth,%eax
	movzbl	24(%ebx,%eax,1),%eax
	mov	%eax,%eax
	or	$16,%eax
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,24(%ecx,%edx,1)
	movl	_bb_gLevelWidth,%eax
	sub	$1,%eax
	cmp	%eax,%edi
	jge	_394
	movl	_bb_gColliders,%ecx
	mov	%esi,%eax
	subl	_bb_gLevelWidth,%eax
	mov	%eax,%edx
	add	$1,%edx
	movl	_bb_gColliders,%eax
	mov	%esi,%ebx
	subl	_bb_gLevelWidth,%ebx
	add	$1,%ebx
	movzbl	24(%eax,%ebx,1),%eax
	mov	%eax,%eax
	or	$8,%eax
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,24(%ecx,%edx,1)
_394:
_392:
	cmp	$0,%edi
	jle	_395
	movl	_bb_gColliders,%ecx
	mov	%esi,%edx
	sub	$1,%edx
	movl	_bb_gColliders,%ebx
	mov	%esi,%eax
	sub	$1,%eax
	movzbl	24(%ebx,%eax,1),%eax
	mov	%eax,%eax
	or	$64,%eax
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,24(%ecx,%edx,1)
_395:
	movl	_bb_gLevelWidth,%eax
	sub	$1,%eax
	cmp	%eax,%edi
	jge	_396
	movl	_bb_gColliders,%ecx
	mov	%esi,%edx
	add	$1,%edx
	movl	_bb_gColliders,%ebx
	mov	%esi,%eax
	add	$1,%eax
	movzbl	24(%ebx,%eax,1),%eax
	mov	%eax,%eax
	or	$4,%eax
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,24(%ecx,%edx,1)
_396:
	movl	_bb_gLevelHeight,%eax
	sub	$1,%eax
	cmpl	%eax,-8(%ebp)
	jge	_397
	cmp	$0,%edi
	jle	_398
	movl	_bb_gColliders,%ecx
	mov	%esi,%eax
	addl	_bb_gLevelWidth,%eax
	mov	%eax,%edx
	sub	$1,%edx
	movl	_bb_gColliders,%eax
	mov	%esi,%ebx
	addl	_bb_gLevelWidth,%ebx
	sub	$1,%ebx
	movzbl	24(%eax,%ebx,1),%eax
	mov	%eax,%eax
	or	$128,%eax
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,24(%ecx,%edx,1)
_398:
	movl	_bb_gColliders,%ecx
	mov	%esi,%edx
	addl	_bb_gLevelWidth,%edx
	movl	_bb_gColliders,%ebx
	mov	%esi,%eax
	addl	_bb_gLevelWidth,%eax
	movzbl	24(%ebx,%eax,1),%eax
	mov	%eax,%eax
	or	$1,%eax
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,24(%ecx,%edx,1)
	movl	_bb_gLevelWidth,%eax
	sub	$1,%eax
	cmp	%eax,%edi
	jge	_399
	movl	_bb_gColliders,%ecx
	mov	%esi,%eax
	addl	_bb_gLevelWidth,%eax
	mov	%eax,%edx
	add	$1,%edx
	movl	_bb_gColliders,%eax
	mov	%esi,%ebx
	addl	_bb_gLevelWidth,%ebx
	add	$1,%ebx
	movzbl	24(%eax,%ebx,1),%eax
	mov	%eax,%eax
	or	$2,%eax
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,24(%ecx,%edx,1)
_399:
_397:
_389:
	movl	_bb_gLevel,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	cmp	$5,%eax
	jne	_400
	addl	$1,_bb_gCollectibleCount
_400:
_71:
	add	$1,%esi
_386:
	cmpl	-16(%ebp),%esi
	jl	_73
_72:
	movl	_bb_gCollectibleCount,%eax
	movl	%eax,4(%esp)
	movl	$_401,(%esp)
	call	_bbArrayNew1D
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	_bb_gCollectible,%eax
	decl	4(%eax)
	jnz	_405
	movl	%eax,(%esp)
	call	_bbGCFree
_405:
	movl	%ebx,_bb_gCollectible
	movl	$0,_bb_gCollectibleCount
	mov	$0,%esi
	movl	_bb_gLevelWidth,%eax
	imull	_bb_gLevelHeight,%eax
	mov	%eax,%edi
	jmp	_406
_76:
	movl	_bb_gLevel,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	cmp	$5,%eax
	jne	_408
	movl	$_bb_collectible,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_bb_gCollectible,%edx
	movl	_bb_gCollectibleCount,%eax
	movl	24(%edx,%eax,4),%eax
	decl	4(%eax)
	jnz	_412
	movl	%eax,(%esp)
	call	_bbGCFree
_412:
	movl	_bb_gCollectible,%edx
	movl	_bb_gCollectibleCount,%eax
	movl	%ebx,24(%edx,%eax,4)
	movl	_bb_gCollectible,%edx
	movl	_bb_gCollectibleCount,%eax
	movl	24(%edx,%eax,4),%ecx
	mov	%esi,%eax
	cdq
	idivl	_bb_gLevelWidth
	mov	%edx,%eax
	shl	$5,%eax
	add	$16,%eax
	movl	%eax,-20(%ebp)
	fildl	-20(%ebp)
	fstps	8(%ecx)
	movl	_bb_gCollectible,%edx
	movl	_bb_gCollectibleCount,%eax
	movl	24(%edx,%eax,4),%ecx
	mov	%esi,%eax
	cdq
	idivl	_bb_gLevelWidth
	shl	$5,%eax
	add	$16,%eax
	movl	%eax,-20(%ebp)
	fildl	-20(%ebp)
	fstps	12(%ecx)
	movl	_bb_gCollectible,%edx
	movl	_bb_gCollectibleCount,%eax
	movl	24(%edx,%eax,4),%eax
	movl	$16776960,16(%eax)
	movl	_bb_gCollectible,%edx
	movl	_bb_gCollectibleCount,%eax
	movl	24(%edx,%eax,4),%eax
	movl	$8,20(%eax)
	movl	_bb_gCollectible,%edx
	movl	_bb_gCollectibleCount,%eax
	movl	24(%edx,%eax,4),%eax
	movl	$0,24(%eax)
	addl	$1,_bb_gCollectibleCount
_408:
_74:
	add	$1,%esi
_406:
	cmp	%edi,%esi
	jl	_76
_75:
	movl	$10,8(%esp)
	movl	_bb_gVtx,%eax
	movl	%eax,4(%esp)
	movl	_bb_gRVtx,%eax
	movl	%eax,(%esp)
	call	_bb_memcpy
	movl	$0,_bb_gCollectiblesTaken
	flds	_bb_gStartX
	fstps	_bb_gXPos
	flds	_bb_gStartY
	fstps	_bb_gYPos
	flds	_676
	fsubs	_bb_gXPos
	fstps	_bb_gCameraX
	flds	_677
	fsubs	_bb_gYPos
	fstps	_bb_gCameraY
	call	_bbMilliSecs
	movl	%eax,_bb_gLastTick
	call	_bbMilliSecs
	movl	%eax,_bb_gLevelStartTick
	mov	$0,%eax
	jmp	_221
_221:
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_gamephysics:
	push	%ebp
	mov	%esp,%ebp
	sub	$52,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	8(%ebp),%edi
	cmpl	_bb_gLastTick,%edi
	jg	_413
	movl	$1,(%esp)
	call	_bbDelay
	mov	$0,%eax
	jmp	_224
_413:
	jmp	_77
_79:
	flds	_bb_gYPos
	fstpl	(%esp)
	call	_bbFloatToInt
	cdq
	and	$31,%edx
	add	%edx,%eax
	sar	$5,%eax
	imull	_bb_gLevelWidth,%eax
	mov	%eax,%ebx
	flds	_bb_gXPos
	fstpl	(%esp)
	call	_bbFloatToInt
	cdq
	and	$31,%edx
	add	%edx,%eax
	sar	$5,%eax
	add	%eax,%ebx
	mov	%ebx,%esi
	cmpl	$0,_bb_gKeyLeft
	je	_415
	flds	_bb_gXRoll
	fsubs	_717
	fstps	_bb_gXRoll
_415:
	cmpl	$0,_bb_gKeyRight
	je	_416
	flds	_bb_gXRoll
	fadds	_718
	fstps	_bb_gXRoll
_416:
	cmpl	$0,_bb_gKeyUp
	je	_417
	flds	_bb_gYRoll
	fsubs	_719
	fstps	_bb_gYRoll
_417:
	cmpl	$0,_bb_gKeyDown
	je	_418
	flds	_bb_gYRoll
	fadds	_720
	fstps	_bb_gYRoll
_418:
	movl	_bb_gLevel,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	cmp	$0,%eax
	je	_421
	movzbl	-4(%ebp),%eax
	cmp	$3,%eax
	je	_422
	movzbl	-4(%ebp),%eax
	cmp	$10,%eax
	je	_423
	movzbl	-4(%ebp),%eax
	cmp	$11,%eax
	je	_424
	movzbl	-4(%ebp),%eax
	cmp	$12,%eax
	je	_425
	movzbl	-4(%ebp),%eax
	cmp	$13,%eax
	je	_426
	jmp	_420
_421:
	movl	$4,_bb_gNextState
	jmp	_420
_422:
	movl	_bb_gLevelTime,%ebx
	mov	$1000,%ecx
	movl	_bb_gLastTick,%eax
	subl	_bb_gLevelStartTick,%eax
	cdq
	idiv	%ecx
	sub	%eax,%ebx
	mov	%ebx,%eax
	cmp	$0,%eax
	jge	_428
	mov	$0,%eax
_428:
	imul	$25,%eax
	add	$100,%eax
	addl	%eax,_bb_gScore
	movl	$5,_bb_gNextState
	jmp	_420
_423:
	flds	_bb_gXMov
	fsubs	_721
	fstps	_bb_gXMov
	flds	_bb_gXRoll
	fsubs	_722
	fstps	_bb_gXRoll
	jmp	_420
_424:
	flds	_bb_gXMov
	fadds	_723
	fstps	_bb_gXMov
	flds	_bb_gXRoll
	fadds	_724
	fstps	_bb_gXRoll
	jmp	_420
_425:
	flds	_bb_gYMov
	fsubs	_725
	fstps	_bb_gYMov
	flds	_bb_gYRoll
	fsubs	_726
	fstps	_bb_gYRoll
	jmp	_420
_426:
	flds	_bb_gYMov
	fadds	_727
	fstps	_bb_gYMov
	flds	_bb_gYRoll
	fadds	_728
	fstps	_bb_gYRoll
	jmp	_420
_420:
	movl	_bb_gLevel,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	movb	%al,-8(%ebp)
	movzbl	-8(%ebp),%eax
	cmp	$25,%eax
	je	_431
	movzbl	-8(%ebp),%eax
	cmp	$26,%eax
	je	_432
	flds	_bb_gXMov
	fmuls	_729
	fstps	_bb_gXMov
	flds	_bb_gYMov
	fmuls	_730
	fstps	_bb_gYMov
	flds	_bb_gXMov
	fmuls	_731
	fadds	_bb_gXRoll
	fdivs	_732
	fstps	_bb_gXMov
	flds	_bb_gYMov
	fmuls	_733
	fadds	_bb_gYRoll
	fdivs	_734
	fstps	_bb_gYMov
	flds	_bb_gXMov
	flds	_bb_gXRoll
	fmuls	_735
	faddp	%st(0),%st(1)
	fdivs	_736
	fstps	_bb_gXRoll
	flds	_bb_gYMov
	flds	_bb_gYRoll
	fmuls	_737
	faddp	%st(0),%st(1)
	fdivs	_738
	fstps	_bb_gYRoll
	jmp	_430
_431:
	flds	_bb_gXMov
	fmuls	_739
	fadds	_bb_gXRoll
	fdivs	_740
	fstps	_bb_gXMov
	flds	_bb_gYMov
	fmuls	_741
	fadds	_bb_gYRoll
	fdivs	_742
	fstps	_bb_gYMov
	flds	_bb_gXMov
	flds	_bb_gXRoll
	fmuls	_743
	faddp	%st(0),%st(1)
	fdivs	_744
	fstps	_bb_gXRoll
	flds	_bb_gYMov
	flds	_bb_gYRoll
	fmuls	_745
	faddp	%st(0),%st(1)
	fdivs	_746
	fstps	_bb_gYRoll
	jmp	_430
_432:
	flds	_bb_gXMov
	fmuls	_747
	fstps	_bb_gXMov
	flds	_bb_gYMov
	fmuls	_748
	fstps	_bb_gYMov
	flds	_bb_gXMov
	fadds	_bb_gXRoll
	fdivs	_749
	fstps	_bb_gXMov
	flds	_bb_gYMov
	fadds	_bb_gYRoll
	fdivs	_750
	fstps	_bb_gYMov
	flds	_bb_gXMov
	fadds	_bb_gXRoll
	fdivs	_751
	fstps	_bb_gXRoll
	flds	_bb_gYMov
	fadds	_bb_gYRoll
	fdivs	_752
	fstps	_bb_gYRoll
	jmp	_430
_430:
	flds	_bb_gXPos
	fadds	_bb_gXMov
	fstps	_bb_gXPos
	flds	_bb_gYPos
	fadds	_bb_gYMov
	fstps	_bb_gYPos
	flds	_753
	flds	_bb_gXPos
	flds	_bb_gXMov
	fmuls	_754
	faddp	%st(0),%st(1)
	fsubrp	%st(0),%st(1)
	flds	_755
	flds	_bb_gYPos
	flds	_bb_gYMov
	fmuls	_756
	faddp	%st(0),%st(1)
	fsubrp	%st(0),%st(1)
	flds	_bb_gCameraX
	fmuls	_757
	faddp	%st(0),%st(2)
	fxch	%st(1)
	fdivs	_758
	fstps	_bb_gCameraX
	flds	_bb_gCameraY
	fmuls	_759
	faddp	%st(0),%st(1)
	fdivs	_760
	fstps	_bb_gCameraY
	flds	_bb_gRoll
	fstpl	-32(%ebp)
	flds	_bb_gXRoll
	fmuls	_bb_gXRoll
	flds	_bb_gYRoll
	fmuls	_bb_gYRoll
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	fldl	-32(%ebp)
	faddp	%st(0),%st(1)
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fstps	_bb_gRoll
	flds	_bb_gYPos
	fdivs	_761
	fstpl	(%esp)
	call	_bbFloatToInt
	imull	_bb_gLevelWidth,%eax
	mov	%eax,%ebx
	flds	_bb_gXPos
	fdivs	_762
	fstpl	(%esp)
	call	_bbFloatToInt
	add	%eax,%ebx
	mov	%ebx,%esi
	flds	_bb_gXPos
	fstps	-24(%ebp)
	flds	_bb_gXPos
	fdivs	_763
	fstpl	(%esp)
	call	_bbFloatToInt
	shl	$5,%eax
	movl	%eax,-52(%ebp)
	fildl	-52(%ebp)
	flds	-24(%ebp)
	fsubp	%st(0),%st(1)
	fstps	-24(%ebp)
	flds	-24(%ebp)
	fstps	-40(%ebp)
	flds	_bb_gYPos
	fstps	-20(%ebp)
	flds	_bb_gYPos
	fdivs	_764
	fstpl	(%esp)
	call	_bbFloatToInt
	shl	$5,%eax
	movl	%eax,-52(%ebp)
	fildl	-52(%ebp)
	flds	-20(%ebp)
	fsubp	%st(0),%st(1)
	fstps	-20(%ebp)
	flds	-20(%ebp)
	fstps	-36(%ebp)
	mov	$0,%ebx
	flds	_765
	fstps	-44(%ebp)
	flds	_766
	fstps	-48(%ebp)
	movl	_bb_gColliders,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	and	$64,%eax
	cmp	$0,%eax
	je	_440
	flds	_767
	flds	-40(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
_440:
	cmp	$0,%eax
	je	_442
	flds	-40(%ebp)
	fsubs	_768
	flds	-44(%ebp)
	fsubp	%st(0),%st(1)
	fstps	-44(%ebp)
	mov	$1,%ebx
_442:
	movl	_bb_gColliders,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	and	$4,%eax
	cmp	$0,%eax
	je	_443
	flds	_769
	flds	-40(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_443:
	cmp	$0,%eax
	je	_445
	flds	_770
	fsubs	-40(%ebp)
	flds	-44(%ebp)
	faddp	%st(0),%st(1)
	fstps	-44(%ebp)
	mov	$1,%ebx
_445:
	movl	_bb_gColliders,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	and	$16,%eax
	cmp	$0,%eax
	je	_446
	flds	_771
	flds	-36(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
_446:
	cmp	$0,%eax
	je	_448
	flds	-36(%ebp)
	fsubs	_772
	flds	-48(%ebp)
	fsubp	%st(0),%st(1)
	fstps	-48(%ebp)
	mov	$1,%ebx
_448:
	movl	_bb_gColliders,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	and	$1,%eax
	cmp	$0,%eax
	je	_449
	flds	_773
	flds	-36(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_449:
	cmp	$0,%eax
	je	_451
	flds	_774
	fsubs	-36(%ebp)
	flds	-48(%ebp)
	faddp	%st(0),%st(1)
	fstps	-48(%ebp)
	mov	$1,%ebx
_451:
	cmp	$0,%ebx
	je	_452
	flds	_bb_gXPos
	fadds	-44(%ebp)
	fstps	_bb_gXPos
	flds	_bb_gYPos
	fadds	-48(%ebp)
	fstps	_bb_gYPos
	flds	_bb_gXPos
	fstps	-16(%ebp)
	flds	_bb_gXPos
	fdivs	_775
	fstpl	(%esp)
	call	_bbFloatToInt
	shl	$5,%eax
	movl	%eax,-52(%ebp)
	fildl	-52(%ebp)
	flds	-16(%ebp)
	fsubp	%st(0),%st(1)
	fstps	-16(%ebp)
	flds	-16(%ebp)
	fstps	-40(%ebp)
	flds	_bb_gYPos
	fstps	-12(%ebp)
	flds	_bb_gYPos
	fdivs	_776
	fstpl	(%esp)
	call	_bbFloatToInt
	shl	$5,%eax
	movl	%eax,-52(%ebp)
	fildl	-52(%ebp)
	flds	-12(%ebp)
	fsubp	%st(0),%st(1)
	fstps	-12(%ebp)
	flds	-12(%ebp)
	fstps	-36(%ebp)
_452:
	movl	_bb_gColliders,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	and	$128,%eax
	cmp	$0,%eax
	je	_453
	flds	-40(%ebp)
	fsubs	_777
	flds	-40(%ebp)
	fsubs	_778
	fmulp	%st(0),%st(1)
	flds	-36(%ebp)
	fmuls	-36(%ebp)
	faddp	%st(0),%st(1)
	flds	_779
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_453:
	cmp	$0,%eax
	je	_455
	flds	-40(%ebp)
	fsubs	_780
	flds	-40(%ebp)
	fsubs	_781
	fmulp	%st(0),%st(1)
	flds	-36(%ebp)
	fmuls	-36(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	fldz
	fxch	%st(1)
	fucom	%st(1)
	fxch	%st(1)
	fstp	%st(0)
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_851
	fstp	%st(0)
	jmp	_457
_851:
	flds	_782
	fsubs	-40(%ebp)
	fdiv	%st(1),%st(0)
	flds	-44(%ebp)
	faddp	%st(0),%st(1)
	fstps	-44(%ebp)
	flds	_783
	fsubs	-36(%ebp)
	fdivp	%st(0),%st(1)
	flds	-44(%ebp)
	faddp	%st(0),%st(1)
	fstps	-44(%ebp)
	mov	$1,%ebx
_457:
_455:
	movl	_bb_gColliders,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	and	$2,%eax
	cmp	$0,%eax
	je	_458
	flds	-40(%ebp)
	fmuls	-40(%ebp)
	flds	-36(%ebp)
	fmuls	-36(%ebp)
	faddp	%st(0),%st(1)
	flds	_784
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_458:
	cmp	$0,%eax
	je	_460
	flds	-40(%ebp)
	fmuls	-40(%ebp)
	flds	-36(%ebp)
	fmuls	-36(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	fldz
	fxch	%st(1)
	fucom	%st(1)
	fxch	%st(1)
	fstp	%st(0)
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_852
	fstp	%st(0)
	jmp	_462
_852:
	flds	_785
	fsubs	-40(%ebp)
	fdiv	%st(1),%st(0)
	flds	-44(%ebp)
	faddp	%st(0),%st(1)
	fstps	-44(%ebp)
	flds	_786
	fsubs	-36(%ebp)
	fdivp	%st(0),%st(1)
	flds	-48(%ebp)
	faddp	%st(0),%st(1)
	fstps	-48(%ebp)
	mov	$1,%ebx
_462:
_460:
	movl	_bb_gColliders,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	and	$32,%eax
	cmp	$0,%eax
	je	_463
	flds	-40(%ebp)
	fsubs	_787
	flds	-40(%ebp)
	fsubs	_788
	fmulp	%st(0),%st(1)
	flds	-36(%ebp)
	fsubs	_789
	flds	-36(%ebp)
	fsubs	_790
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	flds	_791
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_463:
	cmp	$0,%eax
	je	_465
	flds	-40(%ebp)
	fsubs	_792
	flds	-40(%ebp)
	fsubs	_793
	fmulp	%st(0),%st(1)
	flds	-36(%ebp)
	fsubs	_794
	flds	-36(%ebp)
	fsubs	_795
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	fldz
	fxch	%st(1)
	fucom	%st(1)
	fxch	%st(1)
	fstp	%st(0)
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_853
	fstp	%st(0)
	jmp	_467
_853:
	flds	_796
	fsubs	-40(%ebp)
	fdiv	%st(1),%st(0)
	flds	-44(%ebp)
	faddp	%st(0),%st(1)
	fstps	-44(%ebp)
	flds	_797
	fsubs	-36(%ebp)
	fdivp	%st(0),%st(1)
	flds	-48(%ebp)
	faddp	%st(0),%st(1)
	fstps	-48(%ebp)
	mov	$1,%ebx
_467:
_465:
	movl	_bb_gColliders,%eax
	movzbl	24(%eax,%esi,1),%eax
	mov	%eax,%eax
	and	$8,%eax
	cmp	$0,%eax
	je	_468
	flds	-40(%ebp)
	fmuls	-40(%ebp)
	flds	-36(%ebp)
	fsubs	_798
	flds	-36(%ebp)
	fsubs	_799
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	flds	_800
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_468:
	cmp	$0,%eax
	je	_470
	flds	-40(%ebp)
	fmuls	-40(%ebp)
	flds	-36(%ebp)
	fsubs	_801
	flds	-36(%ebp)
	fsubs	_802
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	fldz
	fxch	%st(1)
	fucom	%st(1)
	fxch	%st(1)
	fstp	%st(0)
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_854
	fstp	%st(0)
	jmp	_472
_854:
	flds	_803
	fsubs	-40(%ebp)
	fdiv	%st(1),%st(0)
	flds	-44(%ebp)
	faddp	%st(0),%st(1)
	fstps	-44(%ebp)
	flds	_804
	fsubs	-36(%ebp)
	fdivp	%st(0),%st(1)
	flds	-48(%ebp)
	faddp	%st(0),%st(1)
	fstps	-48(%ebp)
	mov	$1,%ebx
_472:
_470:
	cmp	$0,%ebx
	je	_473
	flds	_bb_gXPos
	fadds	-44(%ebp)
	fstps	_bb_gXPos
	flds	_bb_gYPos
	fadds	-48(%ebp)
	fstps	_bb_gYPos
	flds	-44(%ebp)
	fmuls	-44(%ebp)
	flds	-48(%ebp)
	fmuls	-48(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	flds	-44(%ebp)
	fdiv	%st(1),%st(0)
	fstps	-44(%ebp)
	flds	-48(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-48(%ebp)
	flds	_bb_gXMov
	fmuls	-44(%ebp)
	flds	_bb_gYMov
	fmuls	-48(%ebp)
	faddp	%st(0),%st(1)
	flds	_bb_gXMov
	fld	%st(1)
	fmuls	_805
	fmuls	-44(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	_bb_gXMov
	flds	_bb_gYMov
	fld	%st(1)
	fmuls	_806
	fmuls	-48(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	_bb_gYMov
	flds	_bb_gXRoll
	fld	%st(1)
	fmuls	_807
	fmuls	-44(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	_bb_gXRoll
	flds	_bb_gYRoll
	fxch	%st(1)
	fmuls	_808
	fmuls	-48(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	_bb_gYRoll
_473:
	flds	_bb_gXPos
	movl	_bb_gLevelWidth,%eax
	shl	$5,%eax
	movl	%eax,-52(%ebp)
	fildl	-52(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_476
	flds	_bb_gXPos
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_476:
	cmp	$0,%eax
	jne	_478
	flds	_bb_gYPos
	movl	_bb_gLevelHeight,%eax
	shl	$5,%eax
	movl	%eax,-52(%ebp)
	fildl	-52(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
_478:
	cmp	$0,%eax
	jne	_480
	flds	_bb_gYPos
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
_480:
	cmp	$0,%eax
	je	_482
	movl	$4,_bb_gNextState
_482:
	call	_bb_collectiblecollision
	addl	$10,_bb_gLastTick
_77:
	cmpl	%edi,_bb_gLastTick
	jl	_79
_78:
	mov	$0,%eax
	jmp	_224
_224:
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_rendergame:
	push	%ebp
	mov	%esp,%ebp
	sub	$28,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$32,%esp
	call	_bbMilliSecs
	movl	%eax,-24(%ebp)
	cmpl	$3,_bb_gGameState
	jne	_484
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_gamephysics
_484:
	flds	_855
	flds	_856
	fsubs	_bb_gCameraY
	fmulp	%st(0),%st(1)
	movl	_bb_gLevelHeight,%eax
	shl	$5,%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fdivrp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,8(%esp)
	flds	_857
	flds	_858
	fsubs	_bb_gCameraX
	fmulp	%st(0),%st(1)
	movl	_bb_gLevelWidth,%eax
	shl	$5,%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fdivrp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_drawbackground
	cmpl	$4,_bb_gGameState
	jne	_485
	movl	-24(%ebp),%eax
	subl	_bb_gStateStartTick,%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fdivs	_859
	fstps	-8(%ebp)
	fld1
	flds	-8(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_487
	flds	_860
	fstps	-8(%ebp)
	movl	$1,_bb_gNextState
_487:
	flds	_861
	fsubs	-8(%ebp)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	fmuls	-8(%ebp)
	fstps	-8(%ebp)
	flds	_862
	flds	_863
	flds	_864
	fsubs	_bb_gCameraX
	fmulp	%st(0),%st(1)
	movl	_bb_gLevelWidth,%eax
	shl	$5,%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fdivrp	%st(0),%st(1)
	fsubrp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%esi
	flds	_865
	flds	_866
	flds	_867
	fsubs	_bb_gCameraY
	fmulp	%st(0),%st(1)
	movl	_bb_gLevelHeight,%eax
	shl	$5,%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fdivrp	%st(0),%st(1)
	fsubrp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%ebx
	fldz
	fstps	28(%esp)
	fldz
	fstps	24(%esp)
	movl	$16777215,20(%esp)
	movl	$8355839,16(%esp)
	movl	$16287,12(%esp)
	flds	_868
	fmuls	-8(%ebp)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,8(%esp)
	movl	%ebx,-28(%ebp)
	fildl	-28(%ebp)
	flds	_869
	fsubs	-8(%ebp)
	fmulp	%st(0),%st(1)
	flds	_bb_gYPos
	fadds	_bb_gCameraY
	fmuls	-8(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%ebx
	movl	%esi,-28(%ebp)
	fildl	-28(%ebp)
	flds	_870
	fsubs	-8(%ebp)
	fmulp	%st(0),%st(1)
	flds	_bb_gXPos
	fadds	_bb_gCameraX
	fmuls	-8(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bb_drawball
_485:
	mov	$0,%edi
	movl	_bb_gLevelHeight,%eax
	movl	%eax,-20(%ebp)
	jmp	_492
_82:
	mov	$0,%esi
	movl	_bb_gLevelWidth,%eax
	movl	%eax,-16(%ebp)
	jmp	_494
_85:
	movl	_bb_gLevel,%edx
	mov	%edi,%eax
	imull	_bb_gLevelWidth,%eax
	add	%esi,%eax
	movzbl	24(%edx,%eax,1),%eax
	mov	%eax,%eax
	cmp	$0,%eax
	je	_496
	mov	$0,%edx
	movl	_bb_gLevel,%eax
	mov	%edi,%ecx
	imull	_bb_gLevelWidth,%ecx
	add	%esi,%ecx
	movzbl	24(%eax,%ecx,1),%eax
	mov	%eax,%eax
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	cmp	$2,%eax
	je	_500
	movzbl	-4(%ebp),%eax
	cmp	$3,%eax
	je	_501
	movzbl	-4(%ebp),%eax
	cmp	$12,%eax
	je	_502
	movzbl	-4(%ebp),%eax
	cmp	$11,%eax
	je	_503
	movzbl	-4(%ebp),%eax
	cmp	$13,%eax
	je	_504
	movzbl	-4(%ebp),%eax
	cmp	$10,%eax
	je	_505
	movzbl	-4(%ebp),%eax
	cmp	$24,%eax
	je	_506
	movzbl	-4(%ebp),%eax
	cmp	$26,%eax
	je	_507
	movzbl	-4(%ebp),%eax
	cmp	$25,%eax
	je	_508
	movzbl	-4(%ebp),%eax
	cmp	$1,%eax
	je	_509
	movzbl	-4(%ebp),%eax
	cmp	$5,%eax
	je	_509
	jmp	_499
_500:
	mov	$2,%edx
	jmp	_499
_501:
	mov	$1,%edx
	jmp	_499
_502:
	mov	$4,%edx
	jmp	_499
_503:
	mov	$5,%edx
	jmp	_499
_504:
	mov	$6,%edx
	jmp	_499
_505:
	mov	$7,%edx
	jmp	_499
_506:
	mov	$3,%edx
	jmp	_499
_507:
	mov	$8,%edx
	jmp	_499
_508:
	mov	$9,%edx
	jmp	_499
_509:
	jmp	_499
_499:
	movl	%edx,8(%esp)
	mov	%edi,%eax
	shl	$5,%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fadds	_bb_gCameraY
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%ebx
	mov	%esi,%eax
	shl	$5,%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fadds	_bb_gCameraX
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bb_drawtile
_496:
_83:
	add	$1,%esi
_494:
	cmpl	-16(%ebp),%esi
	jl	_85
_84:
_80:
	add	$1,%edi
_492:
	cmpl	-20(%ebp),%edi
	jl	_82
_81:
	mov	$0,%edi
	movl	_bb_gCollectibleCount,%esi
	jmp	_510
_88:
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%edi,4),%eax
	cmpl	$0,24(%eax)
	jne	_512
	movl	$0,12(%esp)
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%edi,4),%eax
	movl	20(%eax),%eax
	movl	%eax,8(%esp)
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%edi,4),%eax
	flds	12(%eax)
	fadds	_871
	fadds	_bb_gCameraY
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%ebx
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%edi,4),%eax
	flds	8(%eax)
	fadds	_872
	fadds	_bb_gCameraX
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bb_drawcircle
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%edi,4),%eax
	movl	16(%eax),%eax
	movl	%eax,12(%esp)
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%edi,4),%eax
	movl	20(%eax),%eax
	movl	%eax,8(%esp)
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%edi,4),%eax
	flds	12(%eax)
	fadds	_bb_gCameraY
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%ebx
	movl	_bb_gCollectible,%eax
	movl	24(%eax,%edi,4),%eax
	flds	8(%eax)
	fadds	_bb_gCameraX
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bb_drawcircle
_512:
_86:
	add	$1,%edi
_510:
	cmp	%esi,%edi
	jl	_88
_87:
	movl	_bb_gGameState,%eax
	cmp	$4,%eax
	je	_515
	cmp	$1,%eax
	je	_516
	flds	_bb_gXRoll
	fstpl	8(%esp)
	flds	_bb_gYRoll
	fstpl	(%esp)
	call	_bbATan2
	fstps	28(%esp)
	flds	_bb_gRoll
	fmuls	_873
	fstps	24(%esp)
	movl	$16777215,20(%esp)
	movl	$8355839,16(%esp)
	movl	$16287,12(%esp)
	movl	$12,8(%esp)
	flds	_bb_gYPos
	fadds	_bb_gCameraY
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%ebx
	flds	_bb_gXPos
	fadds	_bb_gCameraX
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bb_drawball
	jmp	_514
_515:
	jmp	_514
_516:
	movl	-24(%ebp),%eax
	subl	_bb_gStateStartTick,%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fdivs	_874
	fld1
	fxch	%st(1)
	fucom	%st(1)
	fxch	%st(1)
	fstp	%st(0)
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_518
	fstp	%st(0)
	flds	_875
	movl	$2,_bb_gNextState
_518:
	flds	_876
	fsubp	%st(0),%st(1)
	fld	%st(0)
	fmul	%st(1),%st(0)
	fld	%st(1)
	fldl	_877
	fmulp	%st(0),%st(1)
	fstps	28(%esp)
	flds	_878
	fmulp	%st(0),%st(2)
	fxch	%st(1)
	fstps	24(%esp)
	movl	$16777215,20(%esp)
	movl	$8355839,16(%esp)
	movl	$16287,12(%esp)
	flds	_879
	fxch	%st(1)
	fmuls	_880
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,8(%esp)
	flds	_bb_gYPos
	fadds	_bb_gCameraY
	fstpl	(%esp)
	call	_bbFloatToInt
	mov	%eax,%ebx
	flds	_bb_gXPos
	fadds	_bb_gCameraX
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bb_drawball
	jmp	_514
_514:
	fldz
	fstps	_bb_gRoll
	movl	_bb_gLevelTime,%eax
	movl	%eax,(%esp)
	call	_bbStringFromInt
	mov	%eax,%ebx
	movl	$_89,4(%esp)
	movl	_bb_gLevelName,%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,8(%esp)
	movl	$5,4(%esp)
	movl	$5,(%esp)
	call	_bb_drawstring
	movl	_bb_gScore,%eax
	movl	%eax,(%esp)
	call	_bbStringFromInt
	movl	%eax,4(%esp)
	movl	$_90,(%esp)
	call	_bbStringConcat
	movl	%eax,8(%esp)
	movl	$22,4(%esp)
	movl	$5,(%esp)
	call	_bb_drawstring
	movl	_bb_gLevelTime,%ebx
	mov	$1000,%ecx
	movl	_bb_gLastTick,%eax
	subl	_bb_gLevelStartTick,%eax
	cdq
	idiv	%ecx
	sub	%eax,%ebx
	cmp	$0,%ebx
	jge	_522
	mov	$0,%ebx
_522:
	movl	%ebx,(%esp)
	call	_bbStringFromInt
	movl	%eax,4(%esp)
	movl	$_91,(%esp)
	call	_bbStringConcat
	movl	%eax,8(%esp)
	movl	$39,4(%esp)
	movl	$5,(%esp)
	call	_bb_drawstring
	movl	_bb_gGameState,%eax
	cmp	$1,%eax
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_523
	movl	_bb_gGameState,%eax
	cmp	$2,%eax
	sete	%al
	movzbl	%al,%eax
_523:
	cmp	$0,%eax
	je	_525
	movl	$_92,8(%esp)
	movl	$140,4(%esp)
	movl	$200,(%esp)
	call	_bb_drawstring
_525:
	cmpl	$2,_bb_gGameState
	jne	_526
	movl	$_93,8(%esp)
	movl	$160,4(%esp)
	movl	$230,(%esp)
	call	_bb_drawstring
	movl	-24(%ebp),%eax
	subl	_bb_gStateStartTick,%eax
	cmp	$500,%eax
	jle	_527
	movl	$3,_bb_gNextState
_527:
_526:
	cmpl	$4,_bb_gGameState
	jne	_528
	movl	$_94,8(%esp)
	movl	$140,4(%esp)
	movl	$200,(%esp)
	call	_bb_drawstring
_528:
	cmpl	$5,_bb_gGameState
	jne	_529
	movl	-24(%ebp),%eax
	subl	_bb_gStateStartTick,%eax
	mov	%eax,%esi
	movl	$_95,8(%esp)
	movl	$120,4(%esp)
	movl	$160,(%esp)
	call	_bb_drawstring
	cmp	$500,%esi
	jle	_532
	movl	_bb_gLastTick,%eax
	subl	_bb_gLevelStartTick,%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fdivs	_881
	fstps	-12(%ebp)
	movl	_bb_gLevelTime,%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fsubs	-12(%ebp)
	fstpl	(%esp)
	call	_bbFloatToInt
	imul	$25,%eax
	cmp	$0,%eax
	jge	_535
	mov	$0,%eax
_535:
	movl	%eax,(%esp)
	call	_bbStringFromInt
	mov	%eax,%ebx
	movl	$4,4(%esp)
	flds	-12(%ebp)
	fstps	(%esp)
	call	_bbStringFromFloat
	movl	%eax,(%esp)
	call	_brl_retro_Left
	movl	%eax,4(%esp)
	movl	$_96,(%esp)
	call	_bbStringConcat
	movl	$_97,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,8(%esp)
	movl	$140,4(%esp)
	movl	$160,(%esp)
	call	_bb_drawstring
	cmp	$1000,%esi
	jle	_536
	movl	_bb_gCollectiblesTaken,%eax
	imul	$100,%eax
	cdq
	idivl	_bb_gCollectibleCount
	movl	%eax,(%esp)
	call	_bbStringFromInt
	movl	%eax,4(%esp)
	movl	$_98,(%esp)
	call	_bbStringConcat
	movl	%eax,8(%esp)
	movl	$160,4(%esp)
	movl	$160,(%esp)
	call	_bb_drawstring
	cmp	$2000,%esi
	setg	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_537
	mov	$2000,%ecx
	mov	%esi,%eax
	cdq
	idiv	%ecx
	mov	%edx,%eax
	cmp	$500,%eax
	setg	%al
	movzbl	%al,%eax
_537:
	cmp	$0,%eax
	je	_539
_539:
_536:
_532:
_529:
	mov	$0,%eax
	jmp	_226
_226:
	add	$32,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_init:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	movl	$614400,4(%esp)
	movl	$_540,(%esp)
	call	_bbArrayNew1D
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	_bb_gLut,%eax
	decl	4(%eax)
	jnz	_544
	movl	%eax,(%esp)
	call	_bbGCFree
_544:
	movl	%ebx,_bb_gLut
	movl	$614400,4(%esp)
	movl	$_545,(%esp)
	call	_bbArrayNew1D
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	_bb_gMask,%eax
	decl	4(%eax)
	jnz	_549
	movl	%eax,(%esp)
	call	_bbGCFree
_549:
	movl	%ebx,_bb_gMask
	movl	$10,4(%esp)
	movl	$_553,(%esp)
	call	_bbArrayNew1D
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	_bb_gVtx,%eax
	decl	4(%eax)
	jnz	_557
	movl	%eax,(%esp)
	call	_bbGCFree
_557:
	movl	%ebx,_bb_gVtx
	movl	$10,4(%esp)
	movl	$_558,(%esp)
	call	_bbArrayNew1D
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	_bb_gRVtx,%eax
	decl	4(%eax)
	jnz	_562
	movl	%eax,(%esp)
	call	_bbGCFree
_562:
	movl	%ebx,_bb_gRVtx
	movl	$0,-4(%ebp)
	jmp	_563
_101:
	movl	$_bb_vertex,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	decl	4(%eax)
	jnz	_567
	movl	%eax,(%esp)
	call	_bbGCFree
_567:
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	%ebx,24(%edx,%eax,4)
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%ebx
	fldz
	fstpl	8(%esp)
	fldl	_914
	fstpl	(%esp)
	call	_brl_random_Rnd
	fldl	_915
	fsubrp	%st(0),%st(1)
	fstps	8(%ebx)
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%ebx
	fldz
	fstpl	8(%esp)
	fldl	_916
	fstpl	(%esp)
	call	_brl_random_Rnd
	fldl	_917
	fsubrp	%st(0),%st(1)
	fstps	12(%ebx)
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%ebx
	fldz
	fstpl	8(%esp)
	fldl	_918
	fstpl	(%esp)
	call	_brl_random_Rnd
	fldl	_919
	fsubrp	%st(0),%st(1)
	fstps	16(%ebx)
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	flds	8(%eax)
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	fmuls	8(%eax)
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	flds	12(%eax)
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	fmuls	12(%eax)
	faddp	%st(0),%st(1)
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	flds	16(%eax)
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	fmuls	16(%eax)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	fldz
	fxch	%st(1)
	fucom	%st(1)
	fxch	%st(1)
	fstp	%st(0)
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_926
	fstp	%st(0)
	jmp	_569
_926:
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%ecx
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	flds	8(%eax)
	fdiv	%st(1),%st(0)
	fstps	8(%ecx)
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%ecx
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	flds	12(%eax)
	fdiv	%st(1),%st(0)
	fstps	12(%ecx)
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%ecx
	movl	_bb_gVtx,%edx
	movl	-4(%ebp),%eax
	movl	24(%edx,%eax,4),%eax
	flds	16(%eax)
	fdivp	%st(0),%st(1)
	fstps	16(%ecx)
_569:
_99:
	addl	$1,-4(%ebp)
_563:
	cmpl	$10,-4(%ebp)
	jl	_101
_100:
	mov	$_bbEmptyArray,%ebx
	incl	4(%ebx)
	movl	_bb_gCollectible,%eax
	decl	4(%eax)
	jnz	_573
	movl	%eax,(%esp)
	call	_bbGCFree
_573:
	movl	%ebx,_bb_gCollectible
	mov	$_bbEmptyArray,%ebx
	incl	4(%ebx)
	movl	_bb_gLevel,%eax
	decl	4(%eax)
	jnz	_577
	movl	%eax,(%esp)
	call	_bbGCFree
_577:
	movl	%ebx,_bb_gLevel
	mov	$_bbEmptyArray,%ebx
	incl	4(%ebx)
	movl	_bb_gColliders,%eax
	decl	4(%eax)
	jnz	_581
	movl	%eax,(%esp)
	call	_bbGCFree
_581:
	movl	%ebx,_bb_gColliders
	mov	$_bbEmptyString,%ebx
	incl	4(%ebx)
	movl	_bb_gLevelName,%eax
	decl	4(%eax)
	jnz	_585
	movl	%eax,(%esp)
	call	_bbGCFree
_585:
	movl	%ebx,_bb_gLevelName
	movl	$0,_bb_gScore
	movl	$0,_bb_gCurrentLevel
	movl	$0,_bb_gGameState
	movl	$1,_bb_gNextState
	movl	$_102,(%esp)
	call	_brl_pixmap_LoadPixmap
	mov	%eax,%esi
	movl	$6,4(%esp)
	movl	%esi,(%esp)
	call	_brl_pixmap_ConvertPixmap
	mov	%eax,%esi
	movl	8(%esi),%eax
	movl	%eax,-8(%ebp)
	mov	$0,%ecx
	movl	16(%esi),%eax
	cdq
	idivl	12(%esi)
	movl	%eax,-16(%ebp)
	jmp	_588
_105:
	movl	_bb_gFontOfs,%edx
	movl	12(%esi),%eax
	movl	%eax,24(%edx,%ecx,4)
	movl	_bb_gFontWidth,%eax
	movl	$0,24(%eax,%ecx,4)
	movl	$0,-4(%ebp)
	movl	12(%esi),%eax
	movl	%eax,-12(%ebp)
	jmp	_590
_108:
	mov	$0,%eax
	movl	12(%esi),%edi
	jmp	_592
_111:
	mov	%eax,%edx
	mov	%ecx,%ebx
	imull	12(%esi),%ebx
	imull	12(%esi),%ebx
	add	%ebx,%edx
	movl	-4(%ebp),%ebx
	imull	12(%esi),%ebx
	add	%ebx,%edx
	movl	-8(%ebp),%ebx
	movl	(%ebx,%edx,4),%edx
	and	$16777215,%edx
	cmp	$0,%edx
	je	_594
	movl	_bb_gFontOfs,%edx
	cmpl	24(%edx,%ecx,4),%eax
	jge	_595
	movl	_bb_gFontOfs,%edx
	movl	%eax,24(%edx,%ecx,4)
_595:
	movl	_bb_gFontWidth,%edx
	cmpl	24(%edx,%ecx,4),%eax
	jle	_596
	movl	_bb_gFontWidth,%edx
	movl	%eax,24(%edx,%ecx,4)
_596:
_594:
_109:
	add	$1,%eax
_592:
	cmp	%edi,%eax
	jl	_111
_110:
_106:
	addl	$1,-4(%ebp)
_590:
	movl	-12(%ebp),%eax
	cmpl	%eax,-4(%ebp)
	jl	_108
_107:
	movl	_bb_gFontWidth,%ebx
	movl	_bb_gFontWidth,%eax
	movl	24(%eax,%ecx,4),%eax
	movl	_bb_gFontOfs,%edx
	movl	24(%edx,%ecx,4),%edx
	sub	$1,%edx
	sub	%edx,%eax
	movl	%eax,24(%ebx,%ecx,4)
_103:
	add	$1,%ecx
_588:
	cmpl	-16(%ebp),%ecx
	jl	_105
_104:
	movl	$-1,20(%esp)
	movl	$10,16(%esp)
	movl	$0,12(%esp)
	movl	$32,8(%esp)
	movl	$32,4(%esp)
	movl	$_112,(%esp)
	call	_brl_max2d_LoadAnimImage
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	_bb_gTiles,%eax
	decl	4(%eax)
	jnz	_600
	movl	%eax,(%esp)
	call	_bbGCFree
_600:
	movl	%ebx,_bb_gTiles
	movl	$-1,20(%esp)
	movl	$94,16(%esp)
	movl	$0,12(%esp)
	movl	$16,8(%esp)
	movl	$16,4(%esp)
	movl	$_102,(%esp)
	call	_brl_max2d_LoadAnimImage
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	_bb_gFont,%eax
	decl	4(%eax)
	jnz	_604
	movl	%eax,(%esp)
	call	_bbGCFree
_604:
	movl	%ebx,_bb_gFont
	mov	$0,%eax
	jmp	_228
_228:
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_changestate:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	cmpl	$5,_bb_gGameState
	jne	_605
	addl	$1,_bb_gCurrentLevel
_605:
	movl	_bb_gNextState,%eax
	movl	%eax,_bb_gGameState
	movl	_bb_gGameState,%eax
	cmp	$1,%eax
	je	_608
	cmp	$3,%eax
	je	_609
	jmp	_607
_608:
	call	_bb_reset
	jmp	_607
_609:
	call	_bbMilliSecs
	movl	%eax,_bb_gLastTick
	call	_bbMilliSecs
	movl	%eax,_bb_gLevelStartTick
	jmp	_607
_607:
	call	_bbMilliSecs
	movl	%eax,_bb_gStateStartTick
	mov	$0,%eax
	jmp	_230
_230:
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_252:
	.long	0
_120:
	.asciz	"collectible"
_121:
	.asciz	"mX"
_122:
	.asciz	"f"
_123:
	.asciz	"mY"
_124:
	.asciz	"mColor"
_125:
	.asciz	"i"
_126:
	.asciz	"mRadius"
_127:
	.asciz	"mTaken"
_128:
	.asciz	"New"
_129:
	.asciz	"()i"
_130:
	.asciz	"Delete"
	.align	4
_119:
	.long	2
	.long	_120
	.long	3
	.long	_121
	.long	_122
	.long	8
	.long	3
	.long	_123
	.long	_122
	.long	12
	.long	3
	.long	_124
	.long	_125
	.long	16
	.long	3
	.long	_126
	.long	_125
	.long	20
	.long	3
	.long	_127
	.long	_125
	.long	24
	.long	6
	.long	_128
	.long	_129
	.long	16
	.long	6
	.long	_130
	.long	_129
	.long	20
	.long	0
	.align	4
_bb_collectible:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_119
	.long	28
	.long	__bb_collectible_New
	.long	__bb_collectible_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_132:
	.asciz	"vertex"
_133:
	.asciz	"x"
_134:
	.asciz	"y"
_135:
	.asciz	"z"
	.align	4
_131:
	.long	2
	.long	_132
	.long	3
	.long	_133
	.long	_122
	.long	8
	.long	3
	.long	_134
	.long	_122
	.long	12
	.long	3
	.long	_135
	.long	_122
	.long	16
	.long	6
	.long	_128
	.long	_129
	.long	16
	.long	6
	.long	_130
	.long	_129
	.long	20
	.long	0
	.align	4
_bb_vertex:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_131
	.long	20
	.long	__bb_vertex_New
	.long	__bb_vertex_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.align	4
_bb_gLut:
	.long	_bbEmptyArray
	.align	4
_bb_gMask:
	.long	_bbEmptyArray
	.align	4
_bb_gCollectibleCount:
	.long	0
	.align	4
_bb_gCollectiblesTaken:
	.long	0
	.align	4
_bb_gCollectible:
	.long	_bbEmptyArray
	.align	4
_bb_gLastTick:
	.long	0
	.align	4
_bb_gLevelStartTick:
	.long	0
	.align	4
_bb_gCurrentLevel:
	.long	0
	.align	4
_bb_gXPos:
	.long	0x0
	.align	4
_bb_gYPos:
	.long	0x0
	.align	4
_bb_gXMov:
	.long	0x0
	.align	4
_bb_gYMov:
	.long	0x0
	.align	4
_bb_gStartX:
	.long	0x0
	.align	4
_bb_gStartY:
	.long	0x0
	.align	4
_bb_gXRoll:
	.long	0x0
	.align	4
_bb_gYRoll:
	.long	0x0
	.align	4
_bb_gRoll:
	.long	0x0
	.align	4
_bb_gKeyLeft:
	.long	0
	.align	4
_bb_gKeyRight:
	.long	0
	.align	4
_bb_gKeyUp:
	.long	0
	.align	4
_bb_gKeyDown:
	.long	0
	.align	4
_bb_gScore:
	.long	0
	.align	4
_bb_gCameraX:
	.long	0x0
	.align	4
_bb_gCameraY:
	.long	0x0
	.align	4
_bb_gLevel:
	.long	_bbEmptyArray
	.align	4
_bb_gColliders:
	.long	_bbEmptyArray
	.align	4
_bb_gLevelName:
	.long	_bbEmptyString
	.align	4
_bb_gLevelTime:
	.long	0
	.align	4
_bb_gLevelWidth:
	.long	0
	.align	4
_bb_gLevelHeight:
	.long	0
	.align	4
_234:
	.long	0
_232:
	.asciz	"i"
	.align	4
_bb_gFontOfs:
	.long	_bbEmptyArray
_236:
	.asciz	"i"
	.align	4
_bb_gFontWidth:
	.long	_bbEmptyArray
	.align	4
_bb_gVtx:
	.long	_bbEmptyArray
	.align	4
_bb_gRVtx:
	.long	_bbEmptyArray
	.align	4
_bb_gNextState:
	.long	0
	.align	4
_bb_gGameState:
	.long	0
	.align	4
_bb_gStateStartTick:
	.long	0
	.align	4
_bb_gScreen:
	.long	_bbNullObject
	.align	4
_bb_gScreenPtr:
	.long	0
	.align	4
_bb_gTiles:
	.long	_bbNullObject
	.align	4
_bb_gTexture:
	.long	_bbNullObject
	.align	4
_bb_gTextureptr:
	.long	0
	.align	4
_bb_gFont:
	.long	_bbNullObject
	.align	4
_36:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	108,101,118,101,108,115,92
	.align	4
_37:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	108,101,118,101,108
	.align	4
_38:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	46,116,120,116
	.align	4
_42:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	10
	.align	4
_43:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	13
	.align	4
_47:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	64
_339:
	.asciz	"b"
_344:
	.asciz	"b"
	.align	4
_51:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	46
	.align	4
_52:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	95
	.align	4
_53:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	83
	.align	4
_54:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	69
	.align	4
_55:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	111
	.align	4
_2:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	62
	.align	4
_56:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	60
	.align	4
_57:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	118
	.align	4
_58:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	94
	.align	4
_59:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	35
	.align	4
_60:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	126
	.align	4
_61:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	61
_401:
	.asciz	":collectible"
	.align	4
_676:
	.long	0x43700000
	.align	4
_677:
	.long	0x43200000
	.align	4
_717:
	.long	0x3dcccccd
	.align	4
_718:
	.long	0x3dcccccd
	.align	4
_719:
	.long	0x3dcccccd
	.align	4
_720:
	.long	0x3dcccccd
	.align	4
_721:
	.long	0x3d23d70a
	.align	4
_722:
	.long	0x3d23d70a
	.align	4
_723:
	.long	0x3d23d70a
	.align	4
_724:
	.long	0x3d23d70a
	.align	4
_725:
	.long	0x3d23d70a
	.align	4
_726:
	.long	0x3d23d70a
	.align	4
_727:
	.long	0x3d23d70a
	.align	4
_728:
	.long	0x3d23d70a
	.align	4
_729:
	.long	0x3f7d70a4
	.align	4
_730:
	.long	0x3f7d70a4
	.align	4
_731:
	.long	0x40e00000
	.align	4
_732:
	.long	0x41000000
	.align	4
_733:
	.long	0x40e00000
	.align	4
_734:
	.long	0x41000000
	.align	4
_735:
	.long	0x40e00000
	.align	4
_736:
	.long	0x41000000
	.align	4
_737:
	.long	0x40e00000
	.align	4
_738:
	.long	0x41000000
	.align	4
_739:
	.long	0x427c0000
	.align	4
_740:
	.long	0x42800000
	.align	4
_741:
	.long	0x427c0000
	.align	4
_742:
	.long	0x42800000
	.align	4
_743:
	.long	0x427c0000
	.align	4
_744:
	.long	0x42800000
	.align	4
_745:
	.long	0x427c0000
	.align	4
_746:
	.long	0x42800000
	.align	4
_747:
	.long	0x3f733333
	.align	4
_748:
	.long	0x3f733333
	.align	4
_749:
	.long	0x40000000
	.align	4
_750:
	.long	0x40000000
	.align	4
_751:
	.long	0x40000000
	.align	4
_752:
	.long	0x40000000
	.align	4
_753:
	.long	0x43700000
	.align	4
_754:
	.long	0x41c80000
	.align	4
_755:
	.long	0x43200000
	.align	4
_756:
	.long	0x41c80000
	.align	4
_757:
	.long	0x41980000
	.align	4
_758:
	.long	0x41a00000
	.align	4
_759:
	.long	0x41980000
	.align	4
_760:
	.long	0x41a00000
	.align	4
_761:
	.long	0x42000000
	.align	4
_762:
	.long	0x42000000
	.align	4
_763:
	.long	0x42000000
	.align	4
_764:
	.long	0x42000000
	.align	4
_765:
	.long	0x0
	.align	4
_766:
	.long	0x0
	.align	4
_767:
	.long	0x41a00000
	.align	4
_768:
	.long	0x41a00000
	.align	4
_769:
	.long	0x41400000
	.align	4
_770:
	.long	0x41400000
	.align	4
_771:
	.long	0x41a00000
	.align	4
_772:
	.long	0x41a00000
	.align	4
_773:
	.long	0x41400000
	.align	4
_774:
	.long	0x41400000
	.align	4
_775:
	.long	0x42000000
	.align	4
_776:
	.long	0x42000000
	.align	4
_777:
	.long	0x42000000
	.align	4
_778:
	.long	0x42000000
	.align	4
_779:
	.long	0x43100000
	.align	4
_780:
	.long	0x42000000
	.align	4
_781:
	.long	0x42000000
	.align	4
_782:
	.long	0x41400000
	.align	4
_783:
	.long	0x41400000
	.align	4
_784:
	.long	0x43100000
	.align	4
_785:
	.long	0x41400000
	.align	4
_786:
	.long	0x41400000
	.align	4
_787:
	.long	0x42000000
	.align	4
_788:
	.long	0x42000000
	.align	4
_789:
	.long	0x42000000
	.align	4
_790:
	.long	0x42000000
	.align	4
_791:
	.long	0x43100000
	.align	4
_792:
	.long	0x42000000
	.align	4
_793:
	.long	0x42000000
	.align	4
_794:
	.long	0x42000000
	.align	4
_795:
	.long	0x42000000
	.align	4
_796:
	.long	0x41400000
	.align	4
_797:
	.long	0x41400000
	.align	4
_798:
	.long	0x42000000
	.align	4
_799:
	.long	0x42000000
	.align	4
_800:
	.long	0x43100000
	.align	4
_801:
	.long	0x42000000
	.align	4
_802:
	.long	0x42000000
	.align	4
_803:
	.long	0x41400000
	.align	4
_804:
	.long	0x41400000
	.align	4
_805:
	.long	0x3fa00000
	.align	4
_806:
	.long	0x3fa00000
	.align	4
_807:
	.long	0x3fa00000
	.align	4
_808:
	.long	0x3fa00000
	.align	4
_855:
	.long	0x43a00000
	.align	4
_856:
	.long	0x43200000
	.align	4
_857:
	.long	0x43f00000
	.align	4
_858:
	.long	0x43700000
	.align	4
_859:
	.long	0x447a0000
	.align	4
_860:
	.long	0x3f800000
	.align	4
_861:
	.long	0x3f800000
	.align	4
_862:
	.long	0x43f00000
	.align	4
_863:
	.long	0x43f00000
	.align	4
_864:
	.long	0x43700000
	.align	4
_865:
	.long	0x43a00000
	.align	4
_866:
	.long	0x43a00000
	.align	4
_867:
	.long	0x43200000
	.align	4
_868:
	.long	0x41400000
	.align	4
_869:
	.long	0x3f800000
	.align	4
_870:
	.long	0x3f800000
	.align	4
_871:
	.long	0x40000000
	.align	4
_872:
	.long	0x40000000
	.align	4
_873:
	.long	0x40400000
	.align	4
_874:
	.long	0x447a0000
	.align	4
_875:
	.long	0x3f800000
	.align	4
_876:
	.long	0x3f800000
	.align	8
_877:
	.long	0x54442d18,0x400921fb
	.align	4
_878:
	.long	0x3ecccccd
	.align	4
_879:
	.long	0x41400000
	.align	4
_880:
	.long	0x43480000
	.align	4
_89:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	116,105,109,101,32,108,105,109,105,116,58,32
	.align	4
_90:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	83,99,111,114,101,58,32
	.align	4
_91:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	84,105,109,101,58,32
	.align	4
_92:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	71,101,116,32,114,101,97,100,121,33
	.align	4
_93:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	71,111,33
	.align	4
_94:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	70,97,108,108,32,111,102,102,33
	.align	4
_95:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	76,101,118,101,108,32,102,105,110,105,115,104,101,100,33
	.align	4
_881:
	.long	0x447a0000
	.align	4
_96:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	84,105,109,101,32
	.align	4
_97:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	32,115,101,99,111,110,100,115,32,66,111,110,117,115,58,32
	.align	4
_98:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	67,111,105,110,115,58,32
_540:
	.asciz	"s"
_545:
	.asciz	"i"
_553:
	.asciz	":vertex"
_558:
	.asciz	":vertex"
	.align	8
_914:
	.long	0x0,0x40e00000
	.align	8
_915:
	.long	0x0,0x40d00000
	.align	8
_916:
	.long	0x0,0x40e00000
	.align	8
_917:
	.long	0x0,0x40d00000
	.align	8
_918:
	.long	0x0,0x40e00000
	.align	8
_919:
	.long	0x0,0x40d00000
	.align	4
_102:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	103,102,120,92,102,111,110,116,46,98,109,112
	.align	4
_112:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	103,102,120,92,116,105,108,101,115,50,46,98,109,112
