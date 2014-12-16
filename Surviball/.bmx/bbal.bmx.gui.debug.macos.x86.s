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
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
	.reference	_bbSqr
	.reference	_brl_blitz_ArrayBoundsError
	.reference	_brl_blitz_NullObjectError
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
	.globl	__bb_Tgame_run
	.globl	__bb_Tgame_updateObject
	.globl	__bb_Tpoint_Delete
	.globl	__bb_Tpoint_New
	.globl	__bb_Tvector_Create
	.globl	__bb_Tvector_Delete
	.globl	__bb_Tvector_New
	.globl	__bb_Tvector_bounce
	.globl	__bb_Tvector_findIntersection
	.globl	__bb_Tvector_perP
	.globl	__bb_Tvector_projectVector
	.globl	__bb_Tvector_update
	.globl	__bb_main
	.globl	_bb_Tgame
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
	cmpl	$0,_183
	je	_184
	mov	$0,%eax
	add	$32,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_184:
	movl	$1,_183
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_179,(%esp)
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
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectRegisterType
	movl	$_134,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_137,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_138
	flds	_1180
	fstps	12(%esp)
	flds	_1181
	fstps	8(%esp)
	flds	_1182
	fstps	4(%esp)
	flds	_1183
	fstps	(%esp)
	calll	*_bb_Tgame+48
	incl	4(%eax)
	movl	%eax,_bb_game
	orl	$1,_137
_138:
	movl	$_139,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_141
	call	_brl_blitz_NullObjectError
_141:
	movl	36(%ebx),%esi
	mov	$0,%ebx
	cmpl	20(%esi),%ebx
	jb	_144
	call	_brl_blitz_ArrayBoundsError
_144:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_146
	call	_brl_blitz_NullObjectError
_146:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_147,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_149
	call	_brl_blitz_NullObjectError
_149:
	movl	36(%ebx),%esi
	mov	$1,%ebx
	cmpl	20(%esi),%ebx
	jb	_152
	call	_brl_blitz_ArrayBoundsError
_152:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_154
	call	_brl_blitz_NullObjectError
_154:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_155,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_157
	call	_brl_blitz_NullObjectError
_157:
	movl	36(%ebx),%esi
	mov	$2,%ebx
	cmpl	20(%esi),%ebx
	jb	_160
	call	_brl_blitz_ArrayBoundsError
_160:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_162
	call	_brl_blitz_NullObjectError
_162:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_163,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_165
	call	_brl_blitz_NullObjectError
_165:
	movl	36(%ebx),%esi
	mov	$3,%ebx
	cmpl	20(%esi),%ebx
	jb	_168
	call	_brl_blitz_ArrayBoundsError
_168:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_170
	call	_brl_blitz_NullObjectError
_170:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_171,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$600,4(%esp)
	movl	$800,(%esp)
	call	_brl_graphics_Graphics
	movl	$_172,(%esp)
	calll	*_bbOnDebugEnterStm
_15:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_178,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_173,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_max2d_Cls
	movl	$_174,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_176
	call	_brl_blitz_NullObjectError
_176:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	movl	$_177,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
	calll	*_bbOnDebugLeaveScope
_13:
	movl	$27,(%esp)
	call	_brl_polledinput_KeyDown
	cmp	$0,%eax
	je	_15
_14:
	mov	$0,%ebx
	jmp	_70
_70:
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
	movl	$_186,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Tpoint,(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	12(%eax)
	movl	%ebp,4(%esp)
	movl	$_185,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_73
_73:
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
_76:
	mov	$0,%eax
	jmp	_188
_188:
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
	movl	$_208,(%esp)
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
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	20(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	28(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	32(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	36(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	40(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	44(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	48(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	52(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	56(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	60(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	64(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	68(%eax)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_207,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_191,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_193
	call	_brl_blitz_NullObjectError
_193:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_198
	movl	%eax,(%esp)
	call	_bbGCFree
_198:
	movl	%esi,8(%ebx)
	movl	$_199,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_201
	call	_brl_blitz_NullObjectError
_201:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_206
	movl	%eax,(%esp)
	call	_bbGCFree
_206:
	movl	%esi,12(%ebx)
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_79
_79:
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
_82:
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
	jmp	_209
_209:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$32,%esp
	push	%ebx
	sub	$20,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	flds	20(%ebp)
	fstps	-16(%ebp)
	flds	24(%ebp)
	fstps	-20(%ebp)
	flds	28(%ebp)
	fstps	-24(%ebp)
	flds	32(%ebp)
	fstps	-28(%ebp)
	movl	$_bbNullObject,-32(%ebp)
	movl	%ebp,4(%esp)
	movl	$_253,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_214,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-32(%ebp)
	movl	$_216,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_218
	call	_brl_blitz_NullObjectError
_218:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_220
	call	_brl_blitz_NullObjectError
_220:
	flds	-4(%ebp)
	fstps	8(%ebx)
	movl	$_222,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_224
	call	_brl_blitz_NullObjectError
_224:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_226
	call	_brl_blitz_NullObjectError
_226:
	flds	-8(%ebp)
	fstps	12(%ebx)
	movl	$_228,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_230
	call	_brl_blitz_NullObjectError
_230:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_232
	call	_brl_blitz_NullObjectError
_232:
	flds	-12(%ebp)
	fstps	8(%ebx)
	movl	$_234,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_236
	call	_brl_blitz_NullObjectError
_236:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_238
	call	_brl_blitz_NullObjectError
_238:
	flds	-16(%ebp)
	fstps	12(%ebx)
	movl	$_240,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_242
	call	_brl_blitz_NullObjectError
_242:
	flds	-20(%ebp)
	fstps	52(%ebx)
	movl	$_244,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_246
	call	_brl_blitz_NullObjectError
_246:
	flds	-24(%ebp)
	fstps	56(%ebx)
	movl	$_248,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_250
	call	_brl_blitz_NullObjectError
_250:
	flds	-28(%ebp)
	fstps	60(%ebx)
	movl	$_252,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	jmp	_91
_91:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_update:
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
	movl	$_350,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_259,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_261
	call	_brl_blitz_NullObjectError
_261:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_264
	call	_brl_blitz_NullObjectError
_264:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_266
	call	_brl_blitz_NullObjectError
_266:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_268
	call	_brl_blitz_NullObjectError
_268:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_270
	call	_brl_blitz_NullObjectError
_270:
	flds	8(%esi)
	fsubs	8(%ebx)
	fstps	24(%edi)
	movl	$_271,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_273
	call	_brl_blitz_NullObjectError
_273:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_276
	call	_brl_blitz_NullObjectError
_276:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_278
	call	_brl_blitz_NullObjectError
_278:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_280
	call	_brl_blitz_NullObjectError
_280:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_282
	call	_brl_blitz_NullObjectError
_282:
	flds	12(%esi)
	fsubs	12(%ebx)
	fstps	28(%edi)
	movl	$_283,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_285
	call	_brl_blitz_NullObjectError
_285:
	movl	%ebx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	cmpl	$_bbNullObject,-8(%ebp)
	jne	_288
	call	_brl_blitz_NullObjectError
_288:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_290
	call	_brl_blitz_NullObjectError
_290:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_292
	call	_brl_blitz_NullObjectError
_292:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_294
	call	_brl_blitz_NullObjectError
_294:
	movl	-8(%ebp),%eax
	flds	24(%eax)
	fmuls	24(%edi)
	flds	28(%esi)
	fmuls	28(%ebx)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	movl	-12(%ebp),%eax
	fstps	32(%eax)
	movl	$_295,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_297
	call	_brl_blitz_NullObjectError
_297:
	flds	32(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_298
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_315,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_299,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_301
	call	_brl_blitz_NullObjectError
_301:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_304
	call	_brl_blitz_NullObjectError
_304:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_306
	call	_brl_blitz_NullObjectError
_306:
	flds	24(%esi)
	fdivs	32(%ebx)
	fstps	16(%edi)
	movl	$_307,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_309
	call	_brl_blitz_NullObjectError
_309:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_312
	call	_brl_blitz_NullObjectError
_312:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
	flds	28(%esi)
	fdivs	32(%ebx)
	fstps	20(%edi)
	calll	*_bbOnDebugLeaveScope
	jmp	_316
_298:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_325,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_317,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_319
	call	_brl_blitz_NullObjectError
_319:
	fldz
	fstps	16(%ebx)
	movl	$_321,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_323
	call	_brl_blitz_NullObjectError
_323:
	fldz
	fstps	20(%ebx)
	calll	*_bbOnDebugLeaveScope
_316:
	movl	$_326,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_328
	call	_brl_blitz_NullObjectError
_328:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_331
	call	_brl_blitz_NullObjectError
_331:
	flds	28(%ebx)
	fchs
	fstps	36(%esi)
	movl	$_332,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_334
	call	_brl_blitz_NullObjectError
_334:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_337
	call	_brl_blitz_NullObjectError
_337:
	flds	24(%ebx)
	fstps	40(%esi)
	movl	$_338,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_340
	call	_brl_blitz_NullObjectError
_340:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_343
	call	_brl_blitz_NullObjectError
_343:
	flds	28(%ebx)
	fstps	44(%esi)
	movl	$_344,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_346
	call	_brl_blitz_NullObjectError
_346:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_349
	call	_brl_blitz_NullObjectError
_349:
	flds	24(%esi)
	fchs
	fstps	48(%ebx)
	mov	$0,%ebx
	jmp	_94
_94:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_findIntersection:
	push	%ebp
	mov	%esp,%ebp
	sub	$36,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	fldz
	fstps	-12(%ebp)
	fldz
	fstps	-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	movl	$_bbNullObject,-24(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_457,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_351,(%esp)
	calll	*_bbOnDebugEnterStm
	fldz
	fstps	-12(%ebp)
	fldz
	fstps	-16(%ebp)
	movl	$_354,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_356,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_358
	call	_brl_blitz_NullObjectError
_358:
	mov	%ebx,%edi
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_361
	call	_brl_blitz_NullObjectError
_361:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_363
	call	_brl_blitz_NullObjectError
_363:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_365
	call	_brl_blitz_NullObjectError
_365:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_367
	call	_brl_blitz_NullObjectError
_367:
	flds	8(%esi)
	fsubs	8(%ebx)
	fstps	24(%edi)
	movl	$_368,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_370
	call	_brl_blitz_NullObjectError
_370:
	mov	%ebx,%edi
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_373
	call	_brl_blitz_NullObjectError
_373:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_375
	call	_brl_blitz_NullObjectError
_375:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_377
	call	_brl_blitz_NullObjectError
_377:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_379
	call	_brl_blitz_NullObjectError
_379:
	flds	12(%esi)
	fsubs	12(%ebx)
	fstps	28(%edi)
	movl	$_380,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-24(%ebp)
	movl	$_382,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_384
	call	_brl_blitz_NullObjectError
_384:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_387
	call	_brl_blitz_NullObjectError
_387:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_389
	call	_brl_blitz_NullObjectError
_389:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_391
	call	_brl_blitz_NullObjectError
_391:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_393
	call	_brl_blitz_NullObjectError
_393:
	flds	8(%esi)
	fsubs	8(%ebx)
	fstps	24(%edi)
	movl	$_394,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_396
	call	_brl_blitz_NullObjectError
_396:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_399
	call	_brl_blitz_NullObjectError
_399:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_401
	call	_brl_blitz_NullObjectError
_401:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_403
	call	_brl_blitz_NullObjectError
_403:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_405
	call	_brl_blitz_NullObjectError
_405:
	flds	12(%esi)
	fsubs	12(%ebx)
	fstps	28(%edi)
	movl	$_406,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_408
	call	_brl_blitz_NullObjectError
_408:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_410
	call	_brl_blitz_NullObjectError
_410:
	flds	16(%esi)
	flds	16(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_415
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_412
	call	_brl_blitz_NullObjectError
_412:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_414
	call	_brl_blitz_NullObjectError
_414:
	flds	20(%esi)
	flds	20(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_415:
	cmp	$0,%eax
	jne	_427
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_418
	call	_brl_blitz_NullObjectError
_418:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_420
	call	_brl_blitz_NullObjectError
_420:
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
	je	_425
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_422
	call	_brl_blitz_NullObjectError
_422:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_424
	call	_brl_blitz_NullObjectError
_424:
	flds	20(%esi)
	flds	20(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_425:
_427:
	cmp	$0,%eax
	je	_429
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_431,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_430,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_1260
	fstps	-36(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_98
_429:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_443,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_433,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_435
	call	_brl_blitz_NullObjectError
_435:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_437
	call	_brl_blitz_NullObjectError
_437:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*60(%eax)
	fstps	-32(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*60(%eax)
	flds	-32(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-32(%ebp)
	flds	-32(%ebp)
	fstps	-12(%ebp)
	movl	$_438,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_440
	call	_brl_blitz_NullObjectError
_440:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_442
	call	_brl_blitz_NullObjectError
_442:
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*60(%eax)
	fstps	-28(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*60(%eax)
	flds	-28(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fstps	-16(%ebp)
	calll	*_bbOnDebugLeaveScope
_432:
	movl	$_444,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-12(%ebp)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_445
	flds	-12(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_445:
	cmp	$0,%eax
	je	_447
	flds	-16(%ebp)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
_447:
	cmp	$0,%eax
	je	_449
	flds	-16(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_449:
	cmp	$0,%eax
	je	_451
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_453,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_452,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-12(%ebp)
	fstps	-36(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_98
_451:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_456,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_455,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_1261
	fstps	-36(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_98
_98:
	calll	*_bbOnDebugLeaveScope
	flds	-36(%ebp)
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_perP:
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
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_473,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_464,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	$_bbNullObject,-16(%ebp)
	jne	_466
	call	_brl_blitz_NullObjectError
_466:
	movl	-8(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_468
	call	_brl_blitz_NullObjectError
_468:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_470
	call	_brl_blitz_NullObjectError
_470:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_472
	call	_brl_blitz_NullObjectError
_472:
	movl	-16(%ebp),%eax
	flds	24(%eax)
	fmuls	28(%edi)
	flds	28(%esi)
	fmuls	24(%ebx)
	fsubrp	%st(0),%st(1)
	fstps	-12(%ebp)
	jmp	_102
_102:
	calll	*_bbOnDebugLeaveScope
	flds	-12(%ebp)
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_bounce:
	push	%ebp
	mov	%esp,%ebp
	sub	$60,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	movl	$_bbNullObject,-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_538,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_475,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_477
	call	_brl_blitz_NullObjectError
_477:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_479
	call	_brl_blitz_NullObjectError
_479:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_481
	call	_brl_blitz_NullObjectError
_481:
	flds	20(%ebx)
	fstps	8(%esp)
	flds	16(%esi)
	fstps	4(%esp)
	movl	%edi,(%esp)
	movl	(%edi),%eax
	calll	*68(%eax)
	movl	%eax,-12(%ebp)
	movl	$_483,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	$_bbNullObject,-24(%ebp)
	jne	_485
	call	_brl_blitz_NullObjectError
_485:
	movl	-8(%ebp),%eax
	movl	%eax,-36(%ebp)
	cmpl	$_bbNullObject,-36(%ebp)
	jne	_487
	call	_brl_blitz_NullObjectError
_487:
	movl	-8(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_489
	call	_brl_blitz_NullObjectError
_489:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_491
	call	_brl_blitz_NullObjectError
_491:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_493
	call	_brl_blitz_NullObjectError
_493:
	flds	48(%esi)
	fdivs	32(%ebx)
	fstps	8(%esp)
	movl	-36(%ebp),%eax
	flds	44(%eax)
	fdivs	32(%edi)
	fstps	4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	calll	*68(%eax)
	movl	%eax,-16(%ebp)
	movl	$_495,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_497,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_499
	call	_brl_blitz_NullObjectError
_499:
	flds	24(%ebx)
	fmuls	_1316
	fstps	24(%ebx)
	movl	$_501,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_503
	call	_brl_blitz_NullObjectError
_503:
	flds	28(%ebx)
	fmuls	_1317
	fstps	28(%ebx)
	movl	$_505,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_507
	call	_brl_blitz_NullObjectError
_507:
	movl	%ebx,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-52(%ebp)
	cmpl	$_bbNullObject,-52(%ebp)
	jne	_510
	call	_brl_blitz_NullObjectError
_510:
	movl	-8(%ebp),%eax
	movl	%eax,-44(%ebp)
	cmpl	$_bbNullObject,-44(%ebp)
	jne	_512
	call	_brl_blitz_NullObjectError
_512:
	movl	-12(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	$_bbNullObject,-32(%ebp)
	jne	_514
	call	_brl_blitz_NullObjectError
_514:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_516
	call	_brl_blitz_NullObjectError
_516:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_518
	call	_brl_blitz_NullObjectError
_518:
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_520
	call	_brl_blitz_NullObjectError
_520:
	movl	-52(%ebp),%eax
	flds	56(%eax)
	movl	-44(%ebp),%eax
	fmuls	56(%eax)
	movl	-32(%ebp),%eax
	fmuls	24(%eax)
	flds	52(%edi)
	fmuls	52(%esi)
	fmuls	24(%ebx)
	faddp	%st(0),%st(1)
	movl	-60(%ebp),%eax
	fstps	24(%eax)
	movl	$_521,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_523
	call	_brl_blitz_NullObjectError
_523:
	movl	%ebx,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	cmpl	$_bbNullObject,-48(%ebp)
	jne	_526
	call	_brl_blitz_NullObjectError
_526:
	movl	-8(%ebp),%eax
	movl	%eax,-40(%ebp)
	cmpl	$_bbNullObject,-40(%ebp)
	jne	_528
	call	_brl_blitz_NullObjectError
_528:
	movl	-12(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpl	$_bbNullObject,-28(%ebp)
	jne	_530
	call	_brl_blitz_NullObjectError
_530:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_532
	call	_brl_blitz_NullObjectError
_532:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_534
	call	_brl_blitz_NullObjectError
_534:
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_536
	call	_brl_blitz_NullObjectError
_536:
	movl	-48(%ebp),%eax
	flds	56(%eax)
	movl	-40(%ebp),%eax
	fmuls	56(%eax)
	movl	-28(%ebp),%eax
	fmuls	28(%eax)
	flds	52(%edi)
	fmuls	52(%esi)
	fmuls	28(%ebx)
	faddp	%st(0),%st(1)
	movl	-56(%ebp),%eax
	fstps	28(%eax)
	movl	$_537,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	jmp	_106
_106:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_projectVector:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	push	%esi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	fldz
	fstps	-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_559,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_542,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_544
	call	_brl_blitz_NullObjectError
_544:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_546
	call	_brl_blitz_NullObjectError
_546:
	flds	24(%esi)
	fmuls	-8(%ebp)
	flds	28(%ebx)
	fmuls	-12(%ebp)
	faddp	%st(0),%st(1)
	fstps	-16(%ebp)
	movl	$_548,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_550,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_552
	call	_brl_blitz_NullObjectError
_552:
	flds	-16(%ebp)
	fmuls	-8(%ebp)
	fstps	24(%ebx)
	movl	$_554,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_556
	call	_brl_blitz_NullObjectError
_556:
	flds	-16(%ebp)
	fmuls	-12(%ebp)
	fstps	28(%ebx)
	movl	$_558,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	jmp	_111
_111:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
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
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_566,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Tgame,(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	8(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	12(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	16(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	20(%eax)
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
	movl	$4,4(%esp)
	movl	$_563,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
	movl	%ebp,4(%esp)
	movl	$_565,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_114
_114:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
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
	movl	36(%ebx),%eax
	decl	4(%eax)
	jnz	_569
	movl	%eax,(%esp)
	call	_bbGCFree
_569:
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_571
	movl	%eax,(%esp)
	call	_bbGCFree
_571:
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_573
	movl	%eax,(%esp)
	call	_bbGCFree
_573:
	mov	$0,%eax
	jmp	_567
_567:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	push	%ebx
	push	%esi
	sub	$40,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	flds	20(%ebp)
	fstps	-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_656,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_574,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_576,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_578
	call	_brl_blitz_NullObjectError
_578:
	flds	-4(%ebp)
	fstps	8(%ebx)
	movl	$_580,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_582
	call	_brl_blitz_NullObjectError
_582:
	flds	-8(%ebp)
	fstps	12(%ebx)
	movl	$_584,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_586
	call	_brl_blitz_NullObjectError
_586:
	flds	-12(%ebp)
	fstps	16(%ebx)
	movl	$_588,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_590
	call	_brl_blitz_NullObjectError
_590:
	flds	_1356
	fstps	24(%esp)
	flds	_1357
	fstps	20(%esp)
	flds	_1358
	fstps	16(%esp)
	flds	_1359
	fstps	12(%esp)
	flds	_1360
	fstps	8(%esp)
	flds	_1361
	fstps	4(%esp)
	flds	_1362
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_595
	movl	%eax,(%esp)
	call	_bbGCFree
_595:
	movl	%esi,24(%ebx)
	movl	$_596,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_598
	call	_brl_blitz_NullObjectError
_598:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_600
	call	_brl_blitz_NullObjectError
_600:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_601,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_603
	call	_brl_blitz_NullObjectError
_603:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_605
	call	_brl_blitz_NullObjectError
_605:
	call	_bbMilliSecs
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	fstps	64(%ebx)
	movl	$_607,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_609
	call	_brl_blitz_NullObjectError
_609:
	flds	-16(%ebp)
	fstps	20(%ebx)
	movl	$_611,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_613
	call	_brl_blitz_NullObjectError
_613:
	movl	36(%ebx),%ebx
	mov	$0,%esi
	cmpl	20(%ebx),%esi
	jb	_616
	call	_brl_blitz_ArrayBoundsError
_616:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	fld1
	fstps	24(%esp)
	fld1
	fstps	20(%esp)
	fld1
	fstps	16(%esp)
	flds	_1363
	fstps	12(%esp)
	flds	_1364
	fstps	8(%esp)
	flds	_1365
	fstps	4(%esp)
	flds	_1366
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_621
	movl	%eax,(%esp)
	call	_bbGCFree
_621:
	movl	%esi,24(%ebx)
	movl	$_622,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_624
	call	_brl_blitz_NullObjectError
_624:
	movl	36(%ebx),%ebx
	mov	$1,%esi
	cmpl	20(%ebx),%esi
	jb	_627
	call	_brl_blitz_ArrayBoundsError
_627:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	fld1
	fstps	24(%esp)
	fld1
	fstps	20(%esp)
	fld1
	fstps	16(%esp)
	flds	_1367
	fstps	12(%esp)
	flds	_1368
	fstps	8(%esp)
	flds	_1369
	fstps	4(%esp)
	flds	_1370
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_632
	movl	%eax,(%esp)
	call	_bbGCFree
_632:
	movl	%esi,24(%ebx)
	movl	$_633,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_635
	call	_brl_blitz_NullObjectError
_635:
	movl	36(%ebx),%ebx
	mov	$2,%esi
	cmpl	20(%ebx),%esi
	jb	_638
	call	_brl_blitz_ArrayBoundsError
_638:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	fld1
	fstps	24(%esp)
	fld1
	fstps	20(%esp)
	fld1
	fstps	16(%esp)
	flds	_1371
	fstps	12(%esp)
	flds	_1372
	fstps	8(%esp)
	flds	_1373
	fstps	4(%esp)
	flds	_1374
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_643
	movl	%eax,(%esp)
	call	_bbGCFree
_643:
	movl	%esi,24(%ebx)
	movl	$_644,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_646
	call	_brl_blitz_NullObjectError
_646:
	movl	36(%ebx),%ebx
	mov	$3,%esi
	cmpl	20(%ebx),%esi
	jb	_649
	call	_brl_blitz_ArrayBoundsError
_649:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	fld1
	fstps	24(%esp)
	fld1
	fstps	20(%esp)
	fld1
	fstps	16(%esp)
	flds	_1375
	fstps	12(%esp)
	flds	_1376
	fstps	8(%esp)
	flds	_1377
	fstps	4(%esp)
	flds	_1378
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_654
	movl	%eax,(%esp)
	call	_bbGCFree
_654:
	movl	%esi,24(%ebx)
	movl	$_655,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	jmp	_123
_123:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$40,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_display:
	push	%ebp
	mov	%esp,%ebp
	sub	$32,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$_bbNullObject,-8(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_704,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_660,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-8(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_663
	call	_brl_blitz_NullObjectError
_663:
	movl	36(%ebx),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	add	$24,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	16(%eax),%edx
	movl	%edx,-32(%ebp)
	jmp	_7
_9:
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	addl	$4,-24(%ebp)
	cmpl	$_bbNullObject,-8(%ebp)
	je	_7
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_689,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_668,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_670
	call	_brl_blitz_NullObjectError
_670:
	movl	8(%ebx),%eax
	movl	%eax,-20(%ebp)
	cmpl	$_bbNullObject,-20(%ebp)
	jne	_672
	call	_brl_blitz_NullObjectError
_672:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_674
	call	_brl_blitz_NullObjectError
_674:
	movl	8(%ebx),%eax
	movl	%eax,-16(%ebp)
	cmpl	$_bbNullObject,-16(%ebp)
	jne	_676
	call	_brl_blitz_NullObjectError
_676:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_678
	call	_brl_blitz_NullObjectError
_678:
	movl	8(%ebx),%eax
	movl	%eax,-12(%ebp)
	cmpl	$_bbNullObject,-12(%ebp)
	jne	_680
	call	_brl_blitz_NullObjectError
_680:
	movl	-8(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_682
	call	_brl_blitz_NullObjectError
_682:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_684
	call	_brl_blitz_NullObjectError
_684:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_686
	call	_brl_blitz_NullObjectError
_686:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_688
	call	_brl_blitz_NullObjectError
_688:
	movl	$1,16(%esp)
	flds	12(%esi)
	fadds	28(%ebx)
	fstps	12(%esp)
	movl	-12(%ebp),%eax
	flds	8(%eax)
	fadds	24(%edi)
	fstps	8(%esp)
	movl	-16(%ebp),%eax
	flds	12(%eax)
	fstps	4(%esp)
	movl	-20(%ebp),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	calll	*_bbOnDebugLeaveScope
_7:
	movl	-32(%ebp),%eax
	cmpl	%eax,-24(%ebp)
	jne	_9
_8:
	movl	$_691,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_693
	call	_brl_blitz_NullObjectError
_693:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_695
	call	_brl_blitz_NullObjectError
_695:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_697
	call	_brl_blitz_NullObjectError
_697:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_699
	call	_brl_blitz_NullObjectError
_699:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_701
	call	_brl_blitz_NullObjectError
_701:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_703
	call	_brl_blitz_NullObjectError
_703:
	flds	_1399
	fstps	12(%esp)
	flds	_1400
	fstps	8(%esp)
	flds	12(%ebx)
	fsubs	_1401
	fstps	4(%esp)
	flds	8(%esi)
	fsubs	_1402
	fstps	(%esp)
	call	_brl_max2d_DrawOval
	mov	$0,%ebx
	jmp	_126
_126:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_run:
	push	%ebp
	mov	%esp,%ebp
	sub	$36,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$_bbNullObject,-8(%ebp)
	fldz
	fstps	-12(%ebp)
	movl	$_bbNullObject,-16(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1070,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_705,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_707
	call	_brl_blitz_NullObjectError
_707:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_709
	call	_brl_blitz_NullObjectError
_709:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_712
	call	_brl_blitz_NullObjectError
_712:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_714
	call	_brl_blitz_NullObjectError
_714:
	flds	24(%esi)
	fmuls	60(%ebx)
	fstps	24(%esi)
	movl	$_715,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_717
	call	_brl_blitz_NullObjectError
_717:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_719
	call	_brl_blitz_NullObjectError
_719:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_722
	call	_brl_blitz_NullObjectError
_722:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_724
	call	_brl_blitz_NullObjectError
_724:
	flds	28(%esi)
	fmuls	60(%ebx)
	fstps	28(%esi)
	movl	$_725,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_727
	call	_brl_blitz_NullObjectError
_727:
	movl	24(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_729
	call	_brl_blitz_NullObjectError
_729:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_731
	call	_brl_blitz_NullObjectError
_731:
	flds	24(%esi)
	flds	16(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_732
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_741,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_733,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_735
	call	_brl_blitz_NullObjectError
_735:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_737
	call	_brl_blitz_NullObjectError
_737:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_740
	call	_brl_blitz_NullObjectError
_740:
	flds	16(%ebx)
	fstps	24(%esi)
	calll	*_bbOnDebugLeaveScope
	jmp	_742
_732:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_760,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_743,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_745
	call	_brl_blitz_NullObjectError
_745:
	movl	24(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_747
	call	_brl_blitz_NullObjectError
_747:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_749
	call	_brl_blitz_NullObjectError
_749:
	flds	24(%esi)
	flds	16(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_750
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_759,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_751,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_753
	call	_brl_blitz_NullObjectError
_753:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_755
	call	_brl_blitz_NullObjectError
_755:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_758
	call	_brl_blitz_NullObjectError
_758:
	flds	16(%ebx)
	fchs
	fstps	24(%esi)
	calll	*_bbOnDebugLeaveScope
_750:
	calll	*_bbOnDebugLeaveScope
_742:
	movl	$_761,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_763
	call	_brl_blitz_NullObjectError
_763:
	movl	24(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_765
	call	_brl_blitz_NullObjectError
_765:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_767
	call	_brl_blitz_NullObjectError
_767:
	flds	28(%esi)
	flds	16(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_768
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_777,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_769,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_771
	call	_brl_blitz_NullObjectError
_771:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_773
	call	_brl_blitz_NullObjectError
_773:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_776
	call	_brl_blitz_NullObjectError
_776:
	flds	16(%ebx)
	fstps	28(%esi)
	calll	*_bbOnDebugLeaveScope
	jmp	_778
_768:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_796,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_779,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_781
	call	_brl_blitz_NullObjectError
_781:
	movl	24(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_783
	call	_brl_blitz_NullObjectError
_783:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_785
	call	_brl_blitz_NullObjectError
_785:
	flds	28(%esi)
	flds	16(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_786
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_795,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_787,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_789
	call	_brl_blitz_NullObjectError
_789:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_791
	call	_brl_blitz_NullObjectError
_791:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_794
	call	_brl_blitz_NullObjectError
_794:
	flds	16(%ebx)
	fchs
	fstps	28(%esi)
	calll	*_bbOnDebugLeaveScope
_786:
	calll	*_bbOnDebugLeaveScope
_778:
	movl	$_797,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_799
	call	_brl_blitz_NullObjectError
_799:
	movl	24(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	calll	*60(%eax)
	movl	$_800,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_802
	call	_brl_blitz_NullObjectError
_802:
	movl	$1000000,32(%ebx)
	movl	$_804,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_806
	call	_brl_blitz_NullObjectError
_806:
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_811
	movl	%eax,(%esp)
	call	_bbGCFree
_811:
	movl	%esi,28(%ebx)
	movl	$_812,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-8(%ebp)
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_815
	call	_brl_blitz_NullObjectError
_815:
	movl	36(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	add	$24,%eax
	mov	%eax,%edi
	mov	%edi,%edx
	movl	-20(%ebp),%eax
	addl	16(%eax),%edx
	movl	%edx,-24(%ebp)
	jmp	_10
_12:
	movl	(%edi),%eax
	movl	%eax,-8(%ebp)
	add	$4,%edi
	cmpl	$_bbNullObject,-8(%ebp)
	je	_10
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_843,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_820,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_822
	call	_brl_blitz_NullObjectError
_822:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_824
	call	_brl_blitz_NullObjectError
_824:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	fstps	-12(%ebp)
	movl	$_826,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_828
	call	_brl_blitz_NullObjectError
_828:
	flds	-12(%ebp)
	movl	32(%ebx),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_829
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_842,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_830,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_832
	call	_brl_blitz_NullObjectError
_832:
	movl	-8(%ebp),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_837
	movl	%eax,(%esp)
	call	_bbGCFree
_837:
	movl	%esi,28(%ebx)
	movl	$_838,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_840
	call	_brl_blitz_NullObjectError
_840:
	flds	-12(%ebp)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,32(%ebx)
	calll	*_bbOnDebugLeaveScope
_829:
	calll	*_bbOnDebugLeaveScope
_10:
	cmpl	-24(%ebp),%edi
	jne	_12
_11:
	movl	$_845,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_847
	call	_brl_blitz_NullObjectError
_847:
	cmpl	$_bbNullObject,28(%ebx)
	je	_848
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_947,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_849,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_851
	call	_brl_blitz_NullObjectError
_851:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_853
	call	_brl_blitz_NullObjectError
_853:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_855
	call	_brl_blitz_NullObjectError
_855:
	movl	%ebx,-32(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_858
	call	_brl_blitz_NullObjectError
_858:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_860
	call	_brl_blitz_NullObjectError
_860:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_862
	call	_brl_blitz_NullObjectError
_862:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_864
	call	_brl_blitz_NullObjectError
_864:
	movl	24(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_866
	call	_brl_blitz_NullObjectError
_866:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_868
	call	_brl_blitz_NullObjectError
_868:
	flds	8(%edi)
	flds	24(%esi)
	movl	32(%ebx),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	movl	-32(%ebp),%eax
	fstps	8(%eax)
	movl	$_869,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_871
	call	_brl_blitz_NullObjectError
_871:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_873
	call	_brl_blitz_NullObjectError
_873:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_875
	call	_brl_blitz_NullObjectError
_875:
	movl	%ebx,-28(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_878
	call	_brl_blitz_NullObjectError
_878:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_880
	call	_brl_blitz_NullObjectError
_880:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_882
	call	_brl_blitz_NullObjectError
_882:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_884
	call	_brl_blitz_NullObjectError
_884:
	movl	24(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_886
	call	_brl_blitz_NullObjectError
_886:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_888
	call	_brl_blitz_NullObjectError
_888:
	flds	12(%edi)
	flds	28(%esi)
	movl	32(%ebx),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	movl	-28(%ebp),%eax
	fstps	12(%eax)
	movl	$_889,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_891
	call	_brl_blitz_NullObjectError
_891:
	movl	24(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_893
	call	_brl_blitz_NullObjectError
_893:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_895
	call	_brl_blitz_NullObjectError
_895:
	movl	28(%ebx),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*64(%eax)
	movl	%eax,-16(%ebp)
	movl	$_897,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_899
	call	_brl_blitz_NullObjectError
_899:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_901
	call	_brl_blitz_NullObjectError
_901:
	mov	%ebx,%esi
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_904
	call	_brl_blitz_NullObjectError
_904:
	flds	24(%ebx)
	fstps	24(%esi)
	movl	$_905,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_907
	call	_brl_blitz_NullObjectError
_907:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_909
	call	_brl_blitz_NullObjectError
_909:
	mov	%ebx,%esi
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_912
	call	_brl_blitz_NullObjectError
_912:
	flds	28(%ebx)
	fstps	28(%esi)
	movl	$_913,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_915
	call	_brl_blitz_NullObjectError
_915:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_917
	call	_brl_blitz_NullObjectError
_917:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_919
	call	_brl_blitz_NullObjectError
_919:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_922
	call	_brl_blitz_NullObjectError
_922:
	movl	24(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_924
	call	_brl_blitz_NullObjectError
_924:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_926
	call	_brl_blitz_NullObjectError
_926:
	flds	8(%edi)
	flds	24(%esi)
	mov	$1,%eax
	subl	32(%ebx),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	8(%edi)
	movl	$_927,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_929
	call	_brl_blitz_NullObjectError
_929:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_931
	call	_brl_blitz_NullObjectError
_931:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_933
	call	_brl_blitz_NullObjectError
_933:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_936
	call	_brl_blitz_NullObjectError
_936:
	movl	24(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_938
	call	_brl_blitz_NullObjectError
_938:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_940
	call	_brl_blitz_NullObjectError
_940:
	flds	12(%edi)
	flds	28(%esi)
	mov	$1,%eax
	subl	32(%ebx),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	12(%edi)
	movl	$_941,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_943
	call	_brl_blitz_NullObjectError
_943:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_946
	call	_brl_blitz_NullObjectError
_946:
	mov	$1,%eax
	subl	32(%ebx),%eax
	movl	%eax,32(%esi)
	calll	*_bbOnDebugLeaveScope
_848:
	movl	$_949,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_951
	call	_brl_blitz_NullObjectError
_951:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_953
	call	_brl_blitz_NullObjectError
_953:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_955
	call	_brl_blitz_NullObjectError
_955:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_957
	call	_brl_blitz_NullObjectError
_957:
	flds	8(%esi)
	flds	8(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_958
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_969,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_959,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_961
	call	_brl_blitz_NullObjectError
_961:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_963
	call	_brl_blitz_NullObjectError
_963:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_965
	call	_brl_blitz_NullObjectError
_965:
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_968
	call	_brl_blitz_NullObjectError
_968:
	flds	8(%ebx)
	fsubs	8(%esi)
	fstps	8(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_970
_958:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_990,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_971,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_973
	call	_brl_blitz_NullObjectError
_973:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_975
	call	_brl_blitz_NullObjectError
_975:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_977
	call	_brl_blitz_NullObjectError
_977:
	flds	8(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_978
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_989,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_979,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_981
	call	_brl_blitz_NullObjectError
_981:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_983
	call	_brl_blitz_NullObjectError
_983:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_985
	call	_brl_blitz_NullObjectError
_985:
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_988
	call	_brl_blitz_NullObjectError
_988:
	flds	8(%ebx)
	fadds	8(%esi)
	fstps	8(%ebx)
	calll	*_bbOnDebugLeaveScope
_978:
	calll	*_bbOnDebugLeaveScope
_970:
	movl	$_991,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_993
	call	_brl_blitz_NullObjectError
_993:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_995
	call	_brl_blitz_NullObjectError
_995:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_997
	call	_brl_blitz_NullObjectError
_997:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_999
	call	_brl_blitz_NullObjectError
_999:
	flds	12(%esi)
	flds	12(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1000
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1011,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1001,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1003
	call	_brl_blitz_NullObjectError
_1003:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1005
	call	_brl_blitz_NullObjectError
_1005:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1007
	call	_brl_blitz_NullObjectError
_1007:
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_1010
	call	_brl_blitz_NullObjectError
_1010:
	flds	12(%ebx)
	fsubs	12(%esi)
	fstps	12(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_1012
_1000:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1032,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1013,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1015
	call	_brl_blitz_NullObjectError
_1015:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1017
	call	_brl_blitz_NullObjectError
_1017:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1019
	call	_brl_blitz_NullObjectError
_1019:
	flds	12(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1020
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1031,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1021,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1023
	call	_brl_blitz_NullObjectError
_1023:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1025
	call	_brl_blitz_NullObjectError
_1025:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1027
	call	_brl_blitz_NullObjectError
_1027:
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_1030
	call	_brl_blitz_NullObjectError
_1030:
	flds	12(%ebx)
	fadds	12(%esi)
	fstps	12(%ebx)
	calll	*_bbOnDebugLeaveScope
_1020:
	calll	*_bbOnDebugLeaveScope
_1012:
	movl	$_1033,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1035
	call	_brl_blitz_NullObjectError
_1035:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1036,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1038
	call	_brl_blitz_NullObjectError
_1038:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1040
	call	_brl_blitz_NullObjectError
_1040:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1043
	call	_brl_blitz_NullObjectError
_1043:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1045
	call	_brl_blitz_NullObjectError
_1045:
	movl	12(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_1049
	movl	%eax,(%esp)
	call	_bbGCFree
_1049:
	movl	%ebx,8(%esi)
	movl	$_1050,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1052
	call	_brl_blitz_NullObjectError
_1052:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1054
	call	_brl_blitz_NullObjectError
_1054:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1057
	call	_brl_blitz_NullObjectError
_1057:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1059
	call	_brl_blitz_NullObjectError
_1059:
	flds	24(%esi)
	fdivs	68(%ebx)
	fstps	24(%esi)
	movl	$_1060,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1062
	call	_brl_blitz_NullObjectError
_1062:
	movl	24(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1064
	call	_brl_blitz_NullObjectError
_1064:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1067
	call	_brl_blitz_NullObjectError
_1067:
	movl	24(%esi),%esi
	cmp	$_bbNullObject,%esi
	jne	_1069
	call	_brl_blitz_NullObjectError
_1069:
	flds	28(%ebx)
	fdivs	68(%esi)
	fstps	28(%ebx)
	mov	$0,%ebx
	jmp	_129
_129:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_updateObject:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	fldz
	fstps	-8(%ebp)
	fldz
	fstps	-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1177,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1071,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_bbMilliSecs
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	fstps	-8(%ebp)
	movl	$_1073,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1075
	call	_brl_blitz_NullObjectError
_1075:
	flds	-8(%ebp)
	fsubs	64(%ebx)
	fdivs	_1562
	fstps	-12(%ebp)
	movl	$_1077,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1079
	call	_brl_blitz_NullObjectError
_1079:
	flds	24(%ebx)
	fmuls	-12(%ebp)
	fstps	24(%ebx)
	movl	$_1081,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1083
	call	_brl_blitz_NullObjectError
_1083:
	flds	28(%ebx)
	fmuls	-12(%ebp)
	fstps	28(%ebx)
	movl	$_1085,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1087
	call	_brl_blitz_NullObjectError
_1087:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1090
	call	_brl_blitz_NullObjectError
_1090:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1092
	call	_brl_blitz_NullObjectError
_1092:
	flds	28(%esi)
	flds	-12(%ebp)
	fmuls	20(%ebx)
	faddp	%st(0),%st(1)
	fstps	28(%edi)
	movl	$_1093,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1095
	call	_brl_blitz_NullObjectError
_1095:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1097
	call	_brl_blitz_NullObjectError
_1097:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1100
	call	_brl_blitz_NullObjectError
_1100:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_1102
	call	_brl_blitz_NullObjectError
_1102:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1104
	call	_brl_blitz_NullObjectError
_1104:
	flds	8(%esi)
	fadds	24(%ebx)
	fstps	8(%edi)
	movl	$_1105,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1107
	call	_brl_blitz_NullObjectError
_1107:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1109
	call	_brl_blitz_NullObjectError
_1109:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1112
	call	_brl_blitz_NullObjectError
_1112:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_1114
	call	_brl_blitz_NullObjectError
_1114:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1116
	call	_brl_blitz_NullObjectError
_1116:
	flds	12(%esi)
	fadds	28(%ebx)
	fstps	12(%edi)
	movl	$_1117,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1119
	call	_brl_blitz_NullObjectError
_1119:
	movl	%ebx,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	$_bbNullObject,-16(%ebp)
	jne	_1122
	call	_brl_blitz_NullObjectError
_1122:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_1124
	call	_brl_blitz_NullObjectError
_1124:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1126
	call	_brl_blitz_NullObjectError
_1126:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1128
	call	_brl_blitz_NullObjectError
_1128:
	movl	-16(%ebp),%eax
	flds	24(%eax)
	fmuls	24(%edi)
	flds	28(%esi)
	fmuls	28(%ebx)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	movl	-20(%ebp),%eax
	fstps	32(%eax)
	movl	$_1129,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1131
	call	_brl_blitz_NullObjectError
_1131:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1134
	call	_brl_blitz_NullObjectError
_1134:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1136
	call	_brl_blitz_NullObjectError
_1136:
	flds	24(%esi)
	fdivs	32(%ebx)
	fstps	16(%edi)
	movl	$_1137,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1139
	call	_brl_blitz_NullObjectError
_1139:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1142
	call	_brl_blitz_NullObjectError
_1142:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1144
	call	_brl_blitz_NullObjectError
_1144:
	flds	28(%esi)
	fdivs	32(%ebx)
	fstps	20(%edi)
	movl	$_1145,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1147
	call	_brl_blitz_NullObjectError
_1147:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1150
	call	_brl_blitz_NullObjectError
_1150:
	flds	28(%ebx)
	fchs
	fstps	36(%esi)
	movl	$_1151,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1153
	call	_brl_blitz_NullObjectError
_1153:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1156
	call	_brl_blitz_NullObjectError
_1156:
	flds	24(%ebx)
	fstps	40(%esi)
	movl	$_1157,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1159
	call	_brl_blitz_NullObjectError
_1159:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1162
	call	_brl_blitz_NullObjectError
_1162:
	flds	28(%ebx)
	fstps	44(%esi)
	movl	$_1163,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1165
	call	_brl_blitz_NullObjectError
_1165:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1168
	call	_brl_blitz_NullObjectError
_1168:
	flds	24(%ebx)
	fchs
	fstps	48(%esi)
	movl	$_1169,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1171
	call	_brl_blitz_NullObjectError
_1171:
	flds	-8(%ebp)
	fstps	64(%ebx)
	movl	$_1173,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1175
	call	_brl_blitz_NullObjectError
_1175:
	flds	-12(%ebp)
	fstps	68(%ebx)
	mov	$0,%ebx
	jmp	_132
_132:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_183:
	.long	0
_180:
	.asciz	"bbal"
_181:
	.asciz	"game"
_182:
	.asciz	":Tgame"
	.align	4
_bb_game:
	.long	_bbNullObject
	.align	4
_179:
	.long	1
	.long	_180
	.long	4
	.long	_181
	.long	_182
	.long	_bb_game
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
_44:
	.asciz	"update"
_45:
	.asciz	"findIntersection"
_46:
	.asciz	"(:tvector)f"
_47:
	.asciz	"perP"
_48:
	.asciz	"(:Tvector)f"
_49:
	.asciz	"bounce"
_50:
	.asciz	"(:Tvector):tvector"
_51:
	.asciz	"projectVector"
_52:
	.asciz	"(f,f):Tvector"
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
	.long	6
	.long	_44
	.long	_22
	.long	52
	.long	6
	.long	_45
	.long	_46
	.long	56
	.long	6
	.long	_47
	.long	_48
	.long	60
	.long	6
	.long	_49
	.long	_50
	.long	64
	.long	6
	.long	_51
	.long	_52
	.long	68
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
	.long	__bb_Tvector_update
	.long	__bb_Tvector_findIntersection
	.long	__bb_Tvector_perP
	.long	__bb_Tvector_bounce
	.long	__bb_Tvector_projectVector
_54:
	.asciz	"Tgame"
_55:
	.asciz	"stageW"
_56:
	.asciz	"stageH"
_57:
	.asciz	"maxV"
_58:
	.asciz	"gravity"
_59:
	.asciz	"myOb"
_60:
	.asciz	":Tvector"
_61:
	.asciz	"t"
_62:
	.asciz	"i"
_63:
	.asciz	"v"
_64:
	.asciz	"[]:Tvector"
_65:
	.asciz	"(f,f,f,f):Tgame"
_66:
	.asciz	"display"
_67:
	.asciz	"run"
_68:
	.asciz	"updateObject"
_69:
	.asciz	"(:Tvector)i"
	.align	4
_53:
	.long	2
	.long	_54
	.long	3
	.long	_55
	.long	_19
	.long	8
	.long	3
	.long	_56
	.long	_19
	.long	12
	.long	3
	.long	_57
	.long	_19
	.long	16
	.long	3
	.long	_58
	.long	_19
	.long	20
	.long	3
	.long	_59
	.long	_60
	.long	24
	.long	3
	.long	_49
	.long	_60
	.long	28
	.long	3
	.long	_61
	.long	_62
	.long	32
	.long	3
	.long	_63
	.long	_64
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
	.long	_65
	.long	48
	.long	6
	.long	_66
	.long	_22
	.long	52
	.long	6
	.long	_67
	.long	_22
	.long	56
	.long	7
	.long	_68
	.long	_69
	.long	60
	.long	0
	.align	4
_bb_Tgame:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_53
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
	.long	__bb_Tgame_run
	.long	__bb_Tgame_updateObject
_135:
	.asciz	"/Users/jesseperez/Desktop/roll_ball/bbal.bmx"
	.align	4
_134:
	.long	_135
	.long	267
	.long	1
	.align	4
_137:
	.long	0
	.align	4
_1180:
	.long	0x3f000000
	.align	4
_1181:
	.long	0x41200000
	.align	4
_1182:
	.long	0x43340000
	.align	4
_1183:
	.long	0x43960000
	.align	4
_139:
	.long	_135
	.long	274
	.long	1
	.align	4
_147:
	.long	_135
	.long	275
	.long	1
	.align	4
_155:
	.long	_135
	.long	276
	.long	1
	.align	4
_163:
	.long	_135
	.long	277
	.long	1
	.align	4
_171:
	.long	_135
	.long	279
	.long	1
	.align	4
_172:
	.long	_135
	.long	285
	.long	1
	.align	4
_178:
	.long	3
	.long	0
	.long	0
	.align	4
_173:
	.long	_135
	.long	282
	.long	2
	.align	4
_174:
	.long	_135
	.long	283
	.long	2
	.align	4
_177:
	.long	_135
	.long	284
	.long	2
_187:
	.asciz	"Self"
	.align	4
_186:
	.long	1
	.long	_21
	.long	2
	.long	_187
	.long	_27
	.long	-4
	.long	0
	.align	4
_185:
	.long	3
	.long	0
	.long	0
	.align	4
_208:
	.long	1
	.long	_21
	.long	2
	.long	_187
	.long	_60
	.long	-4
	.long	0
	.align	4
_207:
	.long	3
	.long	0
	.long	0
	.align	4
_191:
	.long	_135
	.long	28
	.long	3
	.align	4
_199:
	.long	_135
	.long	29
	.long	3
_254:
	.asciz	"x1"
_255:
	.asciz	"y1"
_256:
	.asciz	"x2"
_257:
	.asciz	"y2"
_258:
	.asciz	"airf"
	.align	4
_253:
	.long	1
	.long	_42
	.long	2
	.long	_254
	.long	_19
	.long	-4
	.long	2
	.long	_255
	.long	_19
	.long	-8
	.long	2
	.long	_256
	.long	_19
	.long	-12
	.long	2
	.long	_257
	.long	_19
	.long	-16
	.long	2
	.long	_38
	.long	_19
	.long	-20
	.long	2
	.long	_19
	.long	_19
	.long	-24
	.long	2
	.long	_258
	.long	_19
	.long	-28
	.long	2
	.long	_63
	.long	_60
	.long	-32
	.long	0
	.align	4
_214:
	.long	_135
	.long	33
	.long	3
	.align	4
_216:
	.long	_135
	.long	34
	.long	3
	.align	4
_222:
	.long	_135
	.long	35
	.long	3
	.align	4
_228:
	.long	_135
	.long	36
	.long	3
	.align	4
_234:
	.long	_135
	.long	37
	.long	3
	.align	4
_240:
	.long	_135
	.long	38
	.long	3
	.align	4
_244:
	.long	_135
	.long	39
	.long	3
	.align	4
_248:
	.long	_135
	.long	40
	.long	3
	.align	4
_252:
	.long	_135
	.long	41
	.long	3
	.align	4
_350:
	.long	1
	.long	_44
	.long	2
	.long	_187
	.long	_60
	.long	-4
	.long	0
	.align	4
_259:
	.long	_135
	.long	48
	.long	3
	.align	4
_271:
	.long	_135
	.long	49
	.long	3
	.align	4
_283:
	.long	_135
	.long	51
	.long	3
	.align	4
_295:
	.long	_135
	.long	53
	.long	3
	.align	4
_315:
	.long	3
	.long	0
	.long	0
	.align	4
_299:
	.long	_135
	.long	54
	.long	4
	.align	4
_307:
	.long	_135
	.long	55
	.long	4
	.align	4
_325:
	.long	3
	.long	0
	.long	0
	.align	4
_317:
	.long	_135
	.long	57
	.long	4
	.align	4
_321:
	.long	_135
	.long	58
	.long	4
	.align	4
_326:
	.long	_135
	.long	61
	.long	3
	.align	4
_332:
	.long	_135
	.long	62
	.long	3
	.align	4
_338:
	.long	_135
	.long	64
	.long	3
	.align	4
_344:
	.long	_135
	.long	65
	.long	3
_458:
	.asciz	"v2"
_459:
	.asciz	":tvector"
_460:
	.asciz	"t1"
_461:
	.asciz	"t2"
_462:
	.asciz	"v3a"
_463:
	.asciz	"v3b"
	.align	4
_457:
	.long	1
	.long	_45
	.long	2
	.long	_187
	.long	_60
	.long	-4
	.long	2
	.long	_458
	.long	_459
	.long	-8
	.long	2
	.long	_460
	.long	_19
	.long	-12
	.long	2
	.long	_461
	.long	_19
	.long	-16
	.long	2
	.long	_462
	.long	_60
	.long	-20
	.long	2
	.long	_463
	.long	_60
	.long	-24
	.long	0
	.align	4
_351:
	.long	_135
	.long	70
	.long	3
	.align	4
_354:
	.long	_135
	.long	72
	.long	3
	.align	4
_356:
	.long	_135
	.long	73
	.long	3
	.align	4
_368:
	.long	_135
	.long	74
	.long	3
	.align	4
_380:
	.long	_135
	.long	75
	.long	3
	.align	4
_382:
	.long	_135
	.long	76
	.long	3
	.align	4
_394:
	.long	_135
	.long	77
	.long	3
	.align	4
_406:
	.long	_135
	.long	79
	.long	3
	.align	4
_431:
	.long	3
	.long	0
	.long	0
	.align	4
_430:
	.long	_135
	.long	80
	.long	4
	.align	4
_1260:
	.long	0x49742400
	.align	4
_443:
	.long	3
	.long	0
	.long	0
	.align	4
_433:
	.long	_135
	.long	82
	.long	4
	.align	4
_438:
	.long	_135
	.long	83
	.long	4
	.align	4
_444:
	.long	_135
	.long	85
	.long	3
	.align	4
_453:
	.long	3
	.long	0
	.long	0
	.align	4
_452:
	.long	_135
	.long	86
	.long	4
	.align	4
_456:
	.long	3
	.long	0
	.long	0
	.align	4
_455:
	.long	_135
	.long	88
	.long	4
	.align	4
_1261:
	.long	0x49742400
_474:
	.asciz	"vb"
	.align	4
_473:
	.long	1
	.long	_47
	.long	2
	.long	_187
	.long	_60
	.long	-4
	.long	2
	.long	_474
	.long	_60
	.long	-8
	.long	0
	.align	4
_464:
	.long	_135
	.long	94
	.long	3
_539:
	.asciz	"proj1"
_540:
	.asciz	"proj2"
_541:
	.asciz	"proj"
	.align	4
_538:
	.long	1
	.long	_49
	.long	2
	.long	_187
	.long	_60
	.long	-4
	.long	2
	.long	_458
	.long	_60
	.long	-8
	.long	2
	.long	_539
	.long	_60
	.long	-12
	.long	2
	.long	_540
	.long	_60
	.long	-16
	.long	2
	.long	_541
	.long	_60
	.long	-20
	.long	0
	.align	4
_475:
	.long	_135
	.long	101
	.long	3
	.align	4
_483:
	.long	_135
	.long	103
	.long	3
	.align	4
_495:
	.long	_135
	.long	104
	.long	3
	.align	4
_497:
	.long	_135
	.long	106
	.long	3
	.align	4
_1316:
	.long	0xbf800000
	.align	4
_501:
	.long	_135
	.long	107
	.long	3
	.align	4
_1317:
	.long	0xbf800000
	.align	4
_505:
	.long	_135
	.long	109
	.long	3
	.align	4
_521:
	.long	_135
	.long	110
	.long	3
	.align	4
_537:
	.long	_135
	.long	111
	.long	3
_560:
	.asciz	"dp"
	.align	4
_559:
	.long	1
	.long	_51
	.long	2
	.long	_187
	.long	_60
	.long	-4
	.long	2
	.long	_29
	.long	_19
	.long	-8
	.long	2
	.long	_30
	.long	_19
	.long	-12
	.long	2
	.long	_560
	.long	_19
	.long	-16
	.long	2
	.long	_541
	.long	_60
	.long	-20
	.long	0
	.align	4
_542:
	.long	_135
	.long	118
	.long	3
	.align	4
_548:
	.long	_135
	.long	119
	.long	3
	.align	4
_550:
	.long	_135
	.long	121
	.long	3
	.align	4
_554:
	.long	_135
	.long	122
	.long	3
	.align	4
_558:
	.long	_135
	.long	123
	.long	3
	.align	4
_566:
	.long	1
	.long	_21
	.long	2
	.long	_187
	.long	_182
	.long	-4
	.long	0
_563:
	.asciz	":Tvector"
	.align	4
_565:
	.long	3
	.long	0
	.long	0
_657:
	.asciz	"w"
_658:
	.asciz	"h"
_659:
	.asciz	"g"
	.align	4
_656:
	.long	1
	.long	_42
	.long	2
	.long	_657
	.long	_19
	.long	-4
	.long	2
	.long	_658
	.long	_19
	.long	-8
	.long	2
	.long	_57
	.long	_19
	.long	-12
	.long	2
	.long	_58
	.long	_19
	.long	-16
	.long	2
	.long	_659
	.long	_182
	.long	-20
	.long	0
	.align	4
_574:
	.long	_135
	.long	141
	.long	3
	.align	4
_576:
	.long	_135
	.long	142
	.long	3
	.align	4
_580:
	.long	_135
	.long	143
	.long	3
	.align	4
_584:
	.long	_135
	.long	144
	.long	3
	.align	4
_588:
	.long	_135
	.long	145
	.long	3
	.align	4
_1356:
	.long	0x3f7d70a4
	.align	4
_1357:
	.long	0x3f4ccccd
	.align	4
_1358:
	.long	0x3f4ccccd
	.align	4
_1359:
	.long	0x42c80000
	.align	4
_1360:
	.long	0x43170000
	.align	4
_1361:
	.long	0x42c80000
	.align	4
_1362:
	.long	0x43160000
	.align	4
_596:
	.long	_135
	.long	146
	.long	3
	.align	4
_601:
	.long	_135
	.long	147
	.long	3
	.align	4
_607:
	.long	_135
	.long	148
	.long	3
	.align	4
_611:
	.long	_135
	.long	149
	.long	3
	.align	4
_1363:
	.long	0x42480000
	.align	4
_1364:
	.long	0x437a0000
	.align	4
_1365:
	.long	0x42480000
	.align	4
_1366:
	.long	0x42480000
	.align	4
_622:
	.long	_135
	.long	150
	.long	3
	.align	4
_1367:
	.long	0x43020000
	.align	4
_1368:
	.long	0x437a0000
	.align	4
_1369:
	.long	0x42480000
	.align	4
_1370:
	.long	0x437a0000
	.align	4
_633:
	.long	_135
	.long	151
	.long	3
	.align	4
_1371:
	.long	0x43020000
	.align	4
_1372:
	.long	0x42480000
	.align	4
_1373:
	.long	0x43020000
	.align	4
_1374:
	.long	0x437a0000
	.align	4
_644:
	.long	_135
	.long	152
	.long	3
	.align	4
_1375:
	.long	0x42480000
	.align	4
_1376:
	.long	0x42480000
	.align	4
_1377:
	.long	0x43020000
	.align	4
_1378:
	.long	0x42480000
	.align	4
_655:
	.long	_135
	.long	153
	.long	3
	.align	4
_704:
	.long	1
	.long	_66
	.long	2
	.long	_187
	.long	_182
	.long	-4
	.long	0
	.align	4
_660:
	.long	_135
	.long	158
	.long	3
_690:
	.asciz	"n"
	.align	4
_689:
	.long	3
	.long	0
	.long	2
	.long	_690
	.long	_60
	.long	-8
	.long	0
	.align	4
_668:
	.long	_135
	.long	159
	.long	4
	.align	4
_691:
	.long	_135
	.long	161
	.long	3
	.align	4
_1399:
	.long	0x40c00000
	.align	4
_1400:
	.long	0x40c00000
	.align	4
_1401:
	.long	0x40400000
	.align	4
_1402:
	.long	0x40400000
	.align	4
_1070:
	.long	1
	.long	_67
	.long	2
	.long	_187
	.long	_182
	.long	-4
	.long	0
	.align	4
_705:
	.long	_135
	.long	169
	.long	3
	.align	4
_715:
	.long	_135
	.long	170
	.long	3
	.align	4
_725:
	.long	_135
	.long	172
	.long	3
	.align	4
_741:
	.long	3
	.long	0
	.long	0
	.align	4
_733:
	.long	_135
	.long	173
	.long	4
	.align	4
_760:
	.long	3
	.long	0
	.long	0
	.align	4
_743:
	.long	_135
	.long	174
	.long	8
	.align	4
_759:
	.long	3
	.long	0
	.long	0
	.align	4
_751:
	.long	_135
	.long	175
	.long	4
	.align	4
_761:
	.long	_135
	.long	177
	.long	3
	.align	4
_777:
	.long	3
	.long	0
	.long	0
	.align	4
_769:
	.long	_135
	.long	178
	.long	4
	.align	4
_796:
	.long	3
	.long	0
	.long	0
	.align	4
_779:
	.long	_135
	.long	179
	.long	8
	.align	4
_795:
	.long	3
	.long	0
	.long	0
	.align	4
_787:
	.long	_135
	.long	180
	.long	4
	.align	4
_797:
	.long	_135
	.long	183
	.long	3
	.align	4
_800:
	.long	_135
	.long	185
	.long	3
	.align	4
_804:
	.long	_135
	.long	187
	.long	3
	.align	4
_812:
	.long	_135
	.long	189
	.long	3
_844:
	.asciz	"tt"
	.align	4
_843:
	.long	3
	.long	0
	.long	2
	.long	_62
	.long	_60
	.long	-8
	.long	2
	.long	_844
	.long	_19
	.long	-12
	.long	0
	.align	4
_820:
	.long	_135
	.long	190
	.long	4
	.align	4
_826:
	.long	_135
	.long	192
	.long	4
	.align	4
_842:
	.long	3
	.long	0
	.long	0
	.align	4
_830:
	.long	_135
	.long	194
	.long	5
	.align	4
_838:
	.long	_135
	.long	196
	.long	5
	.align	4
_845:
	.long	_135
	.long	200
	.long	3
_948:
	.asciz	"newv"
	.align	4
_947:
	.long	3
	.long	0
	.long	2
	.long	_948
	.long	_60
	.long	-16
	.long	0
	.align	4
_849:
	.long	_135
	.long	202
	.long	4
	.align	4
_869:
	.long	_135
	.long	203
	.long	4
	.align	4
_889:
	.long	_135
	.long	205
	.long	4
	.align	4
_897:
	.long	_135
	.long	207
	.long	4
	.align	4
_905:
	.long	_135
	.long	208
	.long	4
	.align	4
_913:
	.long	_135
	.long	210
	.long	4
	.align	4
_927:
	.long	_135
	.long	211
	.long	4
	.align	4
_941:
	.long	_135
	.long	213
	.long	4
	.align	4
_949:
	.long	_135
	.long	216
	.long	3
	.align	4
_969:
	.long	3
	.long	0
	.long	0
	.align	4
_959:
	.long	_135
	.long	217
	.long	4
	.align	4
_990:
	.long	3
	.long	0
	.long	0
	.align	4
_971:
	.long	_135
	.long	218
	.long	3
	.align	4
_989:
	.long	3
	.long	0
	.long	0
	.align	4
_979:
	.long	_135
	.long	219
	.long	4
	.align	4
_991:
	.long	_135
	.long	221
	.long	3
	.align	4
_1011:
	.long	3
	.long	0
	.long	0
	.align	4
_1001:
	.long	_135
	.long	222
	.long	4
	.align	4
_1032:
	.long	3
	.long	0
	.long	0
	.align	4
_1013:
	.long	_135
	.long	223
	.long	3
	.align	4
_1031:
	.long	3
	.long	0
	.long	0
	.align	4
_1021:
	.long	_135
	.long	224
	.long	4
	.align	4
_1033:
	.long	_135
	.long	227
	.long	3
	.align	4
_1036:
	.long	_135
	.long	229
	.long	3
	.align	4
_1050:
	.long	_135
	.long	231
	.long	3
	.align	4
_1060:
	.long	_135
	.long	232
	.long	3
_1178:
	.asciz	"thisTime"
_1179:
	.asciz	"time"
	.align	4
_1177:
	.long	1
	.long	_68
	.long	2
	.long	_63
	.long	_60
	.long	-4
	.long	2
	.long	_1178
	.long	_19
	.long	-8
	.long	2
	.long	_1179
	.long	_19
	.long	-12
	.long	0
	.align	4
_1071:
	.long	_135
	.long	237
	.long	3
	.align	4
_1073:
	.long	_135
	.long	238
	.long	3
	.align	4
_1562:
	.long	0x42c80000
	.align	4
_1077:
	.long	_135
	.long	240
	.long	3
	.align	4
_1081:
	.long	_135
	.long	241
	.long	3
	.align	4
_1085:
	.long	_135
	.long	243
	.long	3
	.align	4
_1093:
	.long	_135
	.long	245
	.long	3
	.align	4
_1105:
	.long	_135
	.long	246
	.long	3
	.align	4
_1117:
	.long	_135
	.long	248
	.long	3
	.align	4
_1129:
	.long	_135
	.long	250
	.long	3
	.align	4
_1137:
	.long	_135
	.long	251
	.long	3
	.align	4
_1145:
	.long	_135
	.long	253
	.long	3
	.align	4
_1151:
	.long	_135
	.long	254
	.long	3
	.align	4
_1157:
	.long	_135
	.long	256
	.long	3
	.align	4
_1163:
	.long	_135
	.long	257
	.long	3
	.align	4
_1169:
	.long	_135
	.long	259
	.long	3
	.align	4
_1173:
	.long	_135
	.long	261
	.long	3
