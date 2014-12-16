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
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
	.reference	_bbSqr
	.reference	_bbStringClass
	.reference	_bbStringConcat
	.reference	_bbStringFromFloat
	.reference	_brl_blitz_ArrayBoundsError
	.reference	_brl_blitz_NullObjectError
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
	push	%esi
	sub	$32,%esp
	cmpl	$0,_369
	je	_370
	mov	$0,%eax
	add	$32,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_370:
	movl	$1,_369
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_365,(%esp)
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
	movl	$_127,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_130,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_131
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_game
	orl	$1,_130
_131:
	movl	$_132,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_134
	call	_brl_blitz_NullObjectError
_134:
	movl	$0,20(%ebx)
	movl	$_136,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_138
	call	_brl_blitz_NullObjectError
_138:
	movl	$300,28(%ebx)
	movl	$_140,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_142
	call	_brl_blitz_NullObjectError
_142:
	movl	$180,32(%ebx)
	movl	$_144,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_146
	call	_brl_blitz_NullObjectError
_146:
	flds	_1219
	fstps	36(%ebx)
	movl	$_148,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_150
	call	_brl_blitz_NullObjectError
_150:
	flds	_1220
	fstps	40(%ebx)
	movl	$_152,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_154
	call	_brl_blitz_NullObjectError
_154:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_156
	call	_brl_blitz_NullObjectError
_156:
	flds	_1221
	fstps	52(%ebx)
	movl	$_158,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_160
	call	_brl_blitz_NullObjectError
_160:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_162
	call	_brl_blitz_NullObjectError
_162:
	flds	_1222
	fstps	56(%ebx)
	movl	$_164,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_166
	call	_brl_blitz_NullObjectError
_166:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_168
	call	_brl_blitz_NullObjectError
_168:
	flds	_1223
	fstps	60(%ebx)
	movl	$_170,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_172
	call	_brl_blitz_NullObjectError
_172:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_174
	call	_brl_blitz_NullObjectError
_174:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_176
	call	_brl_blitz_NullObjectError
_176:
	flds	_1224
	fstps	8(%ebx)
	movl	$_178,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_180
	call	_brl_blitz_NullObjectError
_180:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_182
	call	_brl_blitz_NullObjectError
_182:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_184
	call	_brl_blitz_NullObjectError
_184:
	flds	_1225
	fstps	12(%ebx)
	movl	$_186,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_188
	call	_brl_blitz_NullObjectError
_188:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_190
	call	_brl_blitz_NullObjectError
_190:
	fld1
	fstps	16(%ebx)
	movl	$_192,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_194
	call	_brl_blitz_NullObjectError
_194:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_196
	call	_brl_blitz_NullObjectError
_196:
	fldz
	fstps	20(%ebx)
	movl	$_198,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_200
	call	_brl_blitz_NullObjectError
_200:
	movl	8(%ebx),%ebx
	mov	$0,%esi
	cmpl	20(%ebx),%esi
	jb	_203
	call	_brl_blitz_ArrayBoundsError
_203:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	flds	_1226
	fstps	12(%esp)
	flds	_1227
	fstps	8(%esp)
	flds	_1228
	fstps	4(%esp)
	flds	_1229
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_208
	movl	%eax,(%esp)
	call	_bbGCFree
_208:
	movl	%esi,24(%ebx)
	movl	$_209,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_211
	call	_brl_blitz_NullObjectError
_211:
	movl	8(%ebx),%esi
	mov	$0,%ebx
	cmpl	20(%esi),%ebx
	jb	_214
	call	_brl_blitz_ArrayBoundsError
_214:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_216
	call	_brl_blitz_NullObjectError
_216:
	fld1
	fstps	56(%ebx)
	movl	$_218,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_220
	call	_brl_blitz_NullObjectError
_220:
	movl	8(%ebx),%esi
	mov	$0,%ebx
	cmpl	20(%esi),%ebx
	jb	_223
	call	_brl_blitz_ArrayBoundsError
_223:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_225
	call	_brl_blitz_NullObjectError
_225:
	fld1
	fstps	60(%ebx)
	movl	$_227,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_229
	call	_brl_blitz_NullObjectError
_229:
	movl	8(%ebx),%ebx
	mov	$1,%esi
	cmpl	20(%ebx),%esi
	jb	_232
	call	_brl_blitz_ArrayBoundsError
_232:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	flds	_1230
	fstps	12(%esp)
	flds	_1231
	fstps	8(%esp)
	flds	_1232
	fstps	4(%esp)
	flds	_1233
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_237
	movl	%eax,(%esp)
	call	_bbGCFree
_237:
	movl	%esi,24(%ebx)
	movl	$_238,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_240
	call	_brl_blitz_NullObjectError
_240:
	movl	8(%ebx),%esi
	mov	$1,%ebx
	cmpl	20(%esi),%ebx
	jb	_243
	call	_brl_blitz_ArrayBoundsError
_243:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_245
	call	_brl_blitz_NullObjectError
_245:
	fld1
	fstps	56(%ebx)
	movl	$_247,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_249
	call	_brl_blitz_NullObjectError
_249:
	movl	8(%ebx),%esi
	mov	$1,%ebx
	cmpl	20(%esi),%ebx
	jb	_252
	call	_brl_blitz_ArrayBoundsError
_252:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_254
	call	_brl_blitz_NullObjectError
_254:
	fld1
	fstps	60(%ebx)
	movl	$_256,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_258
	call	_brl_blitz_NullObjectError
_258:
	movl	8(%ebx),%ebx
	mov	$2,%esi
	cmpl	20(%ebx),%esi
	jb	_261
	call	_brl_blitz_ArrayBoundsError
_261:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	flds	_1234
	fstps	12(%esp)
	flds	_1235
	fstps	8(%esp)
	flds	_1236
	fstps	4(%esp)
	flds	_1237
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_266
	movl	%eax,(%esp)
	call	_bbGCFree
_266:
	movl	%esi,24(%ebx)
	movl	$_267,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_269
	call	_brl_blitz_NullObjectError
_269:
	movl	8(%ebx),%esi
	mov	$2,%ebx
	cmpl	20(%esi),%ebx
	jb	_272
	call	_brl_blitz_ArrayBoundsError
_272:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_274
	call	_brl_blitz_NullObjectError
_274:
	fld1
	fstps	56(%ebx)
	movl	$_276,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_278
	call	_brl_blitz_NullObjectError
_278:
	movl	8(%ebx),%esi
	mov	$2,%ebx
	cmpl	20(%esi),%ebx
	jb	_281
	call	_brl_blitz_ArrayBoundsError
_281:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_283
	call	_brl_blitz_NullObjectError
_283:
	fld1
	fstps	60(%ebx)
	movl	$_285,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_287
	call	_brl_blitz_NullObjectError
_287:
	movl	8(%ebx),%ebx
	mov	$3,%esi
	cmpl	20(%ebx),%esi
	jb	_290
	call	_brl_blitz_ArrayBoundsError
_290:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	flds	_1238
	fstps	12(%esp)
	flds	_1239
	fstps	8(%esp)
	flds	_1240
	fstps	4(%esp)
	flds	_1241
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_295
	movl	%eax,(%esp)
	call	_bbGCFree
_295:
	movl	%esi,24(%ebx)
	movl	$_296,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_298
	call	_brl_blitz_NullObjectError
_298:
	movl	8(%ebx),%esi
	mov	$3,%ebx
	cmpl	20(%esi),%ebx
	jb	_301
	call	_brl_blitz_ArrayBoundsError
_301:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_303
	call	_brl_blitz_NullObjectError
_303:
	fld1
	fstps	56(%ebx)
	movl	$_305,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_307
	call	_brl_blitz_NullObjectError
_307:
	movl	8(%ebx),%esi
	mov	$3,%ebx
	cmpl	20(%esi),%ebx
	jb	_310
	call	_brl_blitz_ArrayBoundsError
_310:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_312
	call	_brl_blitz_NullObjectError
_312:
	fld1
	fstps	60(%ebx)
	movl	$_314,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_316
	call	_brl_blitz_NullObjectError
_316:
	movl	8(%ebx),%esi
	mov	$0,%ebx
	cmpl	20(%esi),%ebx
	jb	_319
	call	_brl_blitz_ArrayBoundsError
_319:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_321
	call	_brl_blitz_NullObjectError
_321:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_322,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_324
	call	_brl_blitz_NullObjectError
_324:
	movl	8(%ebx),%esi
	mov	$1,%ebx
	cmpl	20(%esi),%ebx
	jb	_327
	call	_brl_blitz_ArrayBoundsError
_327:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_329
	call	_brl_blitz_NullObjectError
_329:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_330,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_332
	call	_brl_blitz_NullObjectError
_332:
	movl	8(%ebx),%esi
	mov	$2,%ebx
	cmpl	20(%esi),%ebx
	jb	_335
	call	_brl_blitz_ArrayBoundsError
_335:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_337
	call	_brl_blitz_NullObjectError
_337:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_338,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_340
	call	_brl_blitz_NullObjectError
_340:
	movl	8(%ebx),%esi
	mov	$3,%ebx
	cmpl	20(%esi),%ebx
	jb	_343
	call	_brl_blitz_ArrayBoundsError
_343:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_345
	call	_brl_blitz_NullObjectError
_345:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_346,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$600,4(%esp)
	movl	$800,(%esp)
	call	_brl_graphics_Graphics
	movl	$_347,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_349
	call	_brl_blitz_NullObjectError
_349:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_351
	call	_brl_blitz_NullObjectError
_351:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_353
	call	_brl_blitz_NullObjectError
_353:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_355
	call	_brl_blitz_NullObjectError
_355:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_357
	call	_brl_blitz_NullObjectError
_357:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_359
	call	_brl_blitz_NullObjectError
_359:
	flds	12(%ebx)
	fstps	(%esp)
	call	_bbStringFromFloat
	mov	%eax,%ebx
	movl	$_14,4(%esp)
	flds	8(%esi)
	fstps	(%esp)
	call	_bbStringFromFloat
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_standardio_Print
	movl	$_360,(%esp)
	calll	*_bbOnDebugEnterStm
_17:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_364,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_361,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_max2d_Cls
	movl	$_362,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_bb_runMe
	movl	$_363,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
	calll	*_bbOnDebugLeaveScope
_15:
	movl	$27,(%esp)
	call	_brl_polledinput_KeyDown
	cmp	$0,%eax
	je	_17
_16:
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
	movl	$_372,(%esp)
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
	movl	$_371,(%esp)
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
	jmp	_374
_374:
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
	movl	$_394,(%esp)
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
	movl	$0,64(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	68(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	72(%eax)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_393,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_377,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_379
	call	_brl_blitz_NullObjectError
_379:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_384
	movl	%eax,(%esp)
	call	_bbGCFree
_384:
	movl	%esi,8(%ebx)
	movl	$_385,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_387
	call	_brl_blitz_NullObjectError
_387:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_392
	movl	%eax,(%esp)
	call	_bbGCFree
_392:
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
	jnz	_397
	movl	%eax,(%esp)
	call	_bbGCFree
_397:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_399
	movl	%eax,(%esp)
	call	_bbGCFree
_399:
	mov	$0,%eax
	jmp	_395
_395:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	sub	$16,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	flds	20(%ebp)
	fstps	-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	movl	%ebp,4(%esp)
	movl	$_427,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_400,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_402,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_404
	call	_brl_blitz_NullObjectError
_404:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_406
	call	_brl_blitz_NullObjectError
_406:
	flds	-4(%ebp)
	fstps	8(%ebx)
	movl	$_408,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_410
	call	_brl_blitz_NullObjectError
_410:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_412
	call	_brl_blitz_NullObjectError
_412:
	flds	-8(%ebp)
	fstps	12(%ebx)
	movl	$_414,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_416
	call	_brl_blitz_NullObjectError
_416:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_418
	call	_brl_blitz_NullObjectError
_418:
	flds	-12(%ebp)
	fstps	8(%ebx)
	movl	$_420,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_422
	call	_brl_blitz_NullObjectError
_422:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_424
	call	_brl_blitz_NullObjectError
_424:
	flds	-16(%ebp)
	fstps	12(%ebx)
	movl	$_426,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	jmp	_88
_88:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
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
	movl	$_523,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_432,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_434
	call	_brl_blitz_NullObjectError
_434:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_437
	call	_brl_blitz_NullObjectError
_437:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_439
	call	_brl_blitz_NullObjectError
_439:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_441
	call	_brl_blitz_NullObjectError
_441:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_443
	call	_brl_blitz_NullObjectError
_443:
	flds	8(%esi)
	fsubs	8(%ebx)
	fstps	16(%edi)
	movl	$_444,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_446
	call	_brl_blitz_NullObjectError
_446:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_449
	call	_brl_blitz_NullObjectError
_449:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_451
	call	_brl_blitz_NullObjectError
_451:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_453
	call	_brl_blitz_NullObjectError
_453:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_455
	call	_brl_blitz_NullObjectError
_455:
	flds	12(%esi)
	fsubs	12(%ebx)
	fstps	20(%edi)
	movl	$_456,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_458
	call	_brl_blitz_NullObjectError
_458:
	movl	%ebx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	cmpl	$_bbNullObject,-8(%ebp)
	jne	_461
	call	_brl_blitz_NullObjectError
_461:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_463
	call	_brl_blitz_NullObjectError
_463:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_465
	call	_brl_blitz_NullObjectError
_465:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_467
	call	_brl_blitz_NullObjectError
_467:
	movl	-8(%ebp),%eax
	flds	16(%eax)
	fmuls	16(%edi)
	flds	20(%esi)
	fmuls	20(%ebx)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	movl	-12(%ebp),%eax
	fstps	24(%eax)
	movl	$_468,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_470
	call	_brl_blitz_NullObjectError
_470:
	flds	24(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_471
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_488,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_472,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_474
	call	_brl_blitz_NullObjectError
_474:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_477
	call	_brl_blitz_NullObjectError
_477:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_479
	call	_brl_blitz_NullObjectError
_479:
	flds	16(%esi)
	fdivs	24(%ebx)
	fstps	28(%edi)
	movl	$_480,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_482
	call	_brl_blitz_NullObjectError
_482:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_485
	call	_brl_blitz_NullObjectError
_485:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_487
	call	_brl_blitz_NullObjectError
_487:
	flds	20(%esi)
	fdivs	24(%ebx)
	fstps	32(%edi)
	calll	*_bbOnDebugLeaveScope
	jmp	_489
_471:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_498,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_490,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_492
	call	_brl_blitz_NullObjectError
_492:
	fldz
	fstps	28(%ebx)
	movl	$_494,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_496
	call	_brl_blitz_NullObjectError
_496:
	fldz
	fstps	32(%ebx)
	calll	*_bbOnDebugLeaveScope
_489:
	movl	$_499,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_501
	call	_brl_blitz_NullObjectError
_501:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_504
	call	_brl_blitz_NullObjectError
_504:
	flds	20(%ebx)
	fchs
	fstps	36(%esi)
	movl	$_505,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_507
	call	_brl_blitz_NullObjectError
_507:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_510
	call	_brl_blitz_NullObjectError
_510:
	flds	16(%ebx)
	fstps	40(%esi)
	movl	$_511,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_513
	call	_brl_blitz_NullObjectError
_513:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_516
	call	_brl_blitz_NullObjectError
_516:
	flds	20(%ebx)
	fstps	44(%esi)
	movl	$_517,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_519
	call	_brl_blitz_NullObjectError
_519:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_522
	call	_brl_blitz_NullObjectError
_522:
	flds	16(%esi)
	fchs
	fstps	48(%ebx)
	mov	$0,%ebx
	jmp	_91
_91:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%edi
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
	fldz
	fstps	-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_535,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_524,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	$_bbNullObject,-20(%ebp)
	jne	_526
	call	_brl_blitz_NullObjectError
_526:
	movl	-8(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_528
	call	_brl_blitz_NullObjectError
_528:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_530
	call	_brl_blitz_NullObjectError
_530:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_532
	call	_brl_blitz_NullObjectError
_532:
	movl	-20(%ebp),%eax
	flds	16(%eax)
	fmuls	20(%edi)
	flds	20(%esi)
	fmuls	16(%ebx)
	fsubrp	%st(0),%st(1)
	fstps	-12(%ebp)
	movl	$_534,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-12(%ebp)
	fstps	-16(%ebp)
	jmp	_95
_95:
	calll	*_bbOnDebugLeaveScope
	flds	-16(%ebp)
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_findIntersection:
	push	%ebp
	mov	%esp,%ebp
	sub	$44,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
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
	fldz
	fstps	-28(%ebp)
	fldz
	fstps	-32(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_646,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_538,(%esp)
	calll	*_bbOnDebugEnterStm
	fldz
	fstps	-12(%ebp)
	fldz
	fstps	-16(%ebp)
	movl	$_541,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_543,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_545
	call	_brl_blitz_NullObjectError
_545:
	mov	%ebx,%edi
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_548
	call	_brl_blitz_NullObjectError
_548:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_550
	call	_brl_blitz_NullObjectError
_550:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_552
	call	_brl_blitz_NullObjectError
_552:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_554
	call	_brl_blitz_NullObjectError
_554:
	flds	8(%esi)
	fsubs	8(%ebx)
	fstps	16(%edi)
	movl	$_555,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_557
	call	_brl_blitz_NullObjectError
_557:
	mov	%ebx,%edi
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_560
	call	_brl_blitz_NullObjectError
_560:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_562
	call	_brl_blitz_NullObjectError
_562:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_564
	call	_brl_blitz_NullObjectError
_564:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_566
	call	_brl_blitz_NullObjectError
_566:
	flds	12(%esi)
	fsubs	12(%ebx)
	fstps	20(%edi)
	movl	$_567,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-24(%ebp)
	movl	$_569,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_571
	call	_brl_blitz_NullObjectError
_571:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_574
	call	_brl_blitz_NullObjectError
_574:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_576
	call	_brl_blitz_NullObjectError
_576:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_578
	call	_brl_blitz_NullObjectError
_578:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_580
	call	_brl_blitz_NullObjectError
_580:
	flds	8(%esi)
	fsubs	8(%ebx)
	fstps	16(%edi)
	movl	$_581,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_583
	call	_brl_blitz_NullObjectError
_583:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_586
	call	_brl_blitz_NullObjectError
_586:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_588
	call	_brl_blitz_NullObjectError
_588:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_590
	call	_brl_blitz_NullObjectError
_590:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_592
	call	_brl_blitz_NullObjectError
_592:
	flds	12(%esi)
	fsubs	12(%ebx)
	fstps	20(%edi)
	movl	$_593,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_595
	call	_brl_blitz_NullObjectError
_595:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_597
	call	_brl_blitz_NullObjectError
_597:
	flds	28(%esi)
	flds	28(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_602
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_599
	call	_brl_blitz_NullObjectError
_599:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_601
	call	_brl_blitz_NullObjectError
_601:
	flds	32(%esi)
	flds	32(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_602:
	cmp	$0,%eax
	jne	_614
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_605
	call	_brl_blitz_NullObjectError
_605:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_607
	call	_brl_blitz_NullObjectError
_607:
	flds	28(%esi)
	flds	28(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_612
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_609
	call	_brl_blitz_NullObjectError
_609:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_611
	call	_brl_blitz_NullObjectError
_611:
	flds	32(%esi)
	flds	32(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_612:
_614:
	cmp	$0,%eax
	je	_616
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_618,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_617,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_1381
	fstps	-44(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_99
_616:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_632,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_620,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_622
	call	_brl_blitz_NullObjectError
_622:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_624
	call	_brl_blitz_NullObjectError
_624:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*56(%eax)
	fstps	-40(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	flds	-40(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-40(%ebp)
	flds	-40(%ebp)
	fstps	-28(%ebp)
	movl	$_626,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_628
	call	_brl_blitz_NullObjectError
_628:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_630
	call	_brl_blitz_NullObjectError
_630:
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*56(%eax)
	fstps	-36(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	flds	-36(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-36(%ebp)
	flds	-36(%ebp)
	fstps	-32(%ebp)
	calll	*_bbOnDebugLeaveScope
_619:
	movl	$_635,(%esp)
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
	je	_636
	flds	-12(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_636:
	cmp	$0,%eax
	je	_638
	flds	-16(%ebp)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
_638:
	cmp	$0,%eax
	je	_640
	flds	-16(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_640:
	cmp	$0,%eax
	je	_642
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_644,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_643,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-12(%ebp)
	fstps	-44(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_99
_642:
	movl	$_645,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_1382
	fstps	-44(%ebp)
	jmp	_99
_99:
	calll	*_bbOnDebugLeaveScope
	flds	-44(%ebp)
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
	movl	$_713,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_650,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_652
	call	_brl_blitz_NullObjectError
_652:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_654
	call	_brl_blitz_NullObjectError
_654:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_656
	call	_brl_blitz_NullObjectError
_656:
	flds	32(%ebx)
	fstps	8(%esp)
	flds	28(%esi)
	fstps	4(%esp)
	movl	%edi,(%esp)
	movl	(%edi),%eax
	calll	*68(%eax)
	movl	%eax,-12(%ebp)
	movl	$_658,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	$_bbNullObject,-24(%ebp)
	jne	_660
	call	_brl_blitz_NullObjectError
_660:
	movl	-8(%ebp),%eax
	movl	%eax,-36(%ebp)
	cmpl	$_bbNullObject,-36(%ebp)
	jne	_662
	call	_brl_blitz_NullObjectError
_662:
	movl	-8(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_664
	call	_brl_blitz_NullObjectError
_664:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_666
	call	_brl_blitz_NullObjectError
_666:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_668
	call	_brl_blitz_NullObjectError
_668:
	flds	48(%esi)
	fdivs	24(%ebx)
	fstps	8(%esp)
	movl	-36(%ebp),%eax
	flds	44(%eax)
	fdivs	24(%edi)
	fstps	4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	calll	*68(%eax)
	movl	%eax,-16(%ebp)
	movl	$_670,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_672,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_674
	call	_brl_blitz_NullObjectError
_674:
	flds	16(%ebx)
	fmuls	_1429
	fstps	16(%ebx)
	movl	$_676,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_678
	call	_brl_blitz_NullObjectError
_678:
	flds	20(%ebx)
	fmuls	_1430
	fstps	20(%ebx)
	movl	$_680,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_682
	call	_brl_blitz_NullObjectError
_682:
	movl	%ebx,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-52(%ebp)
	cmpl	$_bbNullObject,-52(%ebp)
	jne	_685
	call	_brl_blitz_NullObjectError
_685:
	movl	-8(%ebp),%eax
	movl	%eax,-44(%ebp)
	cmpl	$_bbNullObject,-44(%ebp)
	jne	_687
	call	_brl_blitz_NullObjectError
_687:
	movl	-12(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	$_bbNullObject,-32(%ebp)
	jne	_689
	call	_brl_blitz_NullObjectError
_689:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_691
	call	_brl_blitz_NullObjectError
_691:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_693
	call	_brl_blitz_NullObjectError
_693:
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_695
	call	_brl_blitz_NullObjectError
_695:
	movl	-52(%ebp),%eax
	flds	60(%eax)
	movl	-44(%ebp),%eax
	fmuls	60(%eax)
	movl	-32(%ebp),%eax
	fmuls	16(%eax)
	flds	56(%edi)
	fmuls	56(%esi)
	fmuls	16(%ebx)
	faddp	%st(0),%st(1)
	movl	-60(%ebp),%eax
	fstps	16(%eax)
	movl	$_696,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_698
	call	_brl_blitz_NullObjectError
_698:
	movl	%ebx,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	cmpl	$_bbNullObject,-48(%ebp)
	jne	_701
	call	_brl_blitz_NullObjectError
_701:
	movl	-8(%ebp),%eax
	movl	%eax,-40(%ebp)
	cmpl	$_bbNullObject,-40(%ebp)
	jne	_703
	call	_brl_blitz_NullObjectError
_703:
	movl	-12(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpl	$_bbNullObject,-28(%ebp)
	jne	_705
	call	_brl_blitz_NullObjectError
_705:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_707
	call	_brl_blitz_NullObjectError
_707:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_709
	call	_brl_blitz_NullObjectError
_709:
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_711
	call	_brl_blitz_NullObjectError
_711:
	movl	-48(%ebp),%eax
	flds	60(%eax)
	movl	-40(%ebp),%eax
	fmuls	60(%eax)
	movl	-28(%ebp),%eax
	fmuls	20(%eax)
	flds	56(%edi)
	fmuls	56(%esi)
	fmuls	20(%ebx)
	faddp	%st(0),%st(1)
	movl	-56(%ebp),%eax
	fstps	20(%eax)
	movl	$_712,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	jmp	_103
_103:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_project:
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
	movl	$_734,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_717,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_719
	call	_brl_blitz_NullObjectError
_719:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_721
	call	_brl_blitz_NullObjectError
_721:
	flds	16(%esi)
	fmuls	-8(%ebp)
	flds	20(%ebx)
	fmuls	-12(%ebp)
	faddp	%st(0),%st(1)
	fstps	-16(%ebp)
	movl	$_723,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_725,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_727
	call	_brl_blitz_NullObjectError
_727:
	flds	-16(%ebp)
	fmuls	-8(%ebp)
	fstps	16(%ebx)
	movl	$_729,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_731
	call	_brl_blitz_NullObjectError
_731:
	flds	-16(%ebp)
	fmuls	-12(%ebp)
	fstps	20(%ebx)
	movl	$_733,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	jmp	_108
_108:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_displaylength:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_757,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_736,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_738
	call	_brl_blitz_NullObjectError
_738:
	movl	8(%ebx),%eax
	movl	%eax,-16(%ebp)
	cmpl	$_bbNullObject,-16(%ebp)
	jne	_740
	call	_brl_blitz_NullObjectError
_740:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_742
	call	_brl_blitz_NullObjectError
_742:
	movl	8(%ebx),%eax
	movl	%eax,-12(%ebp)
	cmpl	$_bbNullObject,-12(%ebp)
	jne	_744
	call	_brl_blitz_NullObjectError
_744:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_746
	call	_brl_blitz_NullObjectError
_746:
	movl	8(%ebx),%eax
	movl	%eax,-8(%ebp)
	cmpl	$_bbNullObject,-8(%ebp)
	jne	_748
	call	_brl_blitz_NullObjectError
_748:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_750
	call	_brl_blitz_NullObjectError
_750:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_752
	call	_brl_blitz_NullObjectError
_752:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_754
	call	_brl_blitz_NullObjectError
_754:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_756
	call	_brl_blitz_NullObjectError
_756:
	movl	$1,16(%esp)
	flds	12(%esi)
	fadds	20(%ebx)
	fstps	12(%esp)
	movl	-8(%ebp),%eax
	flds	8(%eax)
	fadds	16(%edi)
	fstps	8(%esp)
	movl	-12(%ebp),%eax
	flds	12(%eax)
	fstps	4(%esp)
	movl	-16(%ebp),%eax
	flds	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	mov	$0,%ebx
	jmp	_111
_111:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$28,%esp
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
	movl	$_816,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Tgame,(%eax)
	movl	$4,4(%esp)
	movl	$_758,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,12(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	24(%eax)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	36(%eax)
	movl	-4(%ebp),%eax
	fldz
	fstps	40(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,44(%eax)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_815,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_763,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_765
	call	_brl_blitz_NullObjectError
_765:
	movl	8(%ebx),%ebx
	mov	$0,%esi
	cmpl	20(%ebx),%esi
	jb	_768
	call	_brl_blitz_ArrayBoundsError
_768:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_773
	movl	%eax,(%esp)
	call	_bbGCFree
_773:
	movl	%esi,24(%ebx)
	movl	$_774,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_776
	call	_brl_blitz_NullObjectError
_776:
	movl	8(%ebx),%ebx
	mov	$1,%esi
	cmpl	20(%ebx),%esi
	jb	_779
	call	_brl_blitz_ArrayBoundsError
_779:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_784
	movl	%eax,(%esp)
	call	_bbGCFree
_784:
	movl	%esi,24(%ebx)
	movl	$_785,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_787
	call	_brl_blitz_NullObjectError
_787:
	movl	8(%ebx),%ebx
	mov	$2,%esi
	cmpl	20(%ebx),%esi
	jb	_790
	call	_brl_blitz_ArrayBoundsError
_790:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_795
	movl	%eax,(%esp)
	call	_bbGCFree
_795:
	movl	%esi,24(%ebx)
	movl	$_796,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_798
	call	_brl_blitz_NullObjectError
_798:
	movl	8(%ebx),%ebx
	mov	$3,%esi
	cmpl	20(%ebx),%esi
	jb	_801
	call	_brl_blitz_ArrayBoundsError
_801:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_806
	movl	%eax,(%esp)
	call	_bbGCFree
_806:
	movl	%esi,24(%ebx)
	movl	$_807,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_809
	call	_brl_blitz_NullObjectError
_809:
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	44(%ebx),%eax
	decl	4(%eax)
	jnz	_814
	movl	%eax,(%esp)
	call	_bbGCFree
_814:
	movl	%esi,44(%ebx)
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_114
_114:
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
_117:
	movl	44(%ebx),%eax
	decl	4(%eax)
	jnz	_819
	movl	%eax,(%esp)
	call	_bbGCFree
_819:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_821
	movl	%eax,(%esp)
	call	_bbGCFree
_821:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_823
	movl	%eax,(%esp)
	call	_bbGCFree
_823:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_825
	movl	%eax,(%esp)
	call	_bbGCFree
_825:
	mov	$0,%eax
	jmp	_817
_817:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawAll:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	push	%esi
	sub	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_851,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_826,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-8(%ebp)
	movl	$0,-8(%ebp)
	jmp	_828
_9:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_837,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_829,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_831
	call	_brl_blitz_NullObjectError
_831:
	movl	8(%ebx),%esi
	movl	-8(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_834
	call	_brl_blitz_ArrayBoundsError
_834:
	movl	24(%esi,%ebx,4),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_836
	call	_brl_blitz_NullObjectError
_836:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*72(%eax)
	calll	*_bbOnDebugLeaveScope
_7:
	addl	$1,-8(%ebp)
_828:
	cmpl	$4,-8(%ebp)
	jl	_9
_8:
	movl	$_838,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_840
	call	_brl_blitz_NullObjectError
_840:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_842
	call	_brl_blitz_NullObjectError
_842:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_844
	call	_brl_blitz_NullObjectError
_844:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_846
	call	_brl_blitz_NullObjectError
_846:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_848
	call	_brl_blitz_NullObjectError
_848:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_850
	call	_brl_blitz_NullObjectError
_850:
	flds	_1490
	fstps	12(%esp)
	flds	_1491
	fstps	8(%esp)
	flds	12(%ebx)
	fsubs	_1492
	fstps	4(%esp)
	flds	8(%esi)
	fsubs	_1493
	fstps	(%esp)
	call	_brl_max2d_DrawRect
	mov	$0,%ebx
	jmp	_120
_120:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$24,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_runMe:
	push	%ebp
	mov	%esp,%ebp
	sub	$28,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$16,%esp
	movl	$_bbNullObject,-4(%ebp)
	movl	$0,-8(%ebp)
	fldz
	fstps	-12(%ebp)
	movl	$_bbNullObject,-16(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1155,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_853,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_855
	call	_brl_blitz_NullObjectError
_855:
	movl	44(%ebx),%eax
	movl	%eax,-4(%ebp)
	movl	$_857,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_859
	call	_brl_blitz_NullObjectError
_859:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_862
	call	_brl_blitz_NullObjectError
_862:
	flds	16(%ebx)
	fmuls	52(%esi)
	fstps	16(%ebx)
	movl	$_863,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_865
	call	_brl_blitz_NullObjectError
_865:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_868
	call	_brl_blitz_NullObjectError
_868:
	flds	20(%ebx)
	fmuls	52(%esi)
	fstps	20(%ebx)
	movl	$_869,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_871
	call	_brl_blitz_NullObjectError
_871:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_873
	call	_brl_blitz_NullObjectError
_873:
	flds	16(%esi)
	flds	36(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_874
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_881,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_875,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_877
	call	_brl_blitz_NullObjectError
_877:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_880
	call	_brl_blitz_NullObjectError
_880:
	flds	36(%ebx)
	fstps	16(%esi)
	calll	*_bbOnDebugLeaveScope
	jmp	_882
_874:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_896,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_883,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_885
	call	_brl_blitz_NullObjectError
_885:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_887
	call	_brl_blitz_NullObjectError
_887:
	flds	16(%esi)
	flds	36(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_888
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_895,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_889,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_891
	call	_brl_blitz_NullObjectError
_891:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_894
	call	_brl_blitz_NullObjectError
_894:
	flds	36(%ebx)
	fchs
	fstps	16(%esi)
	calll	*_bbOnDebugLeaveScope
_888:
	calll	*_bbOnDebugLeaveScope
_882:
	movl	$_897,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_899
	call	_brl_blitz_NullObjectError
_899:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_901
	call	_brl_blitz_NullObjectError
_901:
	flds	20(%esi)
	flds	36(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_902
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_909,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_903,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_905
	call	_brl_blitz_NullObjectError
_905:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_908
	call	_brl_blitz_NullObjectError
_908:
	flds	36(%ebx)
	fstps	20(%esi)
	calll	*_bbOnDebugLeaveScope
	jmp	_910
_902:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_924,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_911,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_913
	call	_brl_blitz_NullObjectError
_913:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_915
	call	_brl_blitz_NullObjectError
_915:
	flds	20(%esi)
	flds	36(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_916
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_923,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_917,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_919
	call	_brl_blitz_NullObjectError
_919:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_922
	call	_brl_blitz_NullObjectError
_922:
	flds	36(%ebx)
	fchs
	fstps	20(%esi)
	calll	*_bbOnDebugLeaveScope
_916:
	calll	*_bbOnDebugLeaveScope
_910:
	movl	$_925,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_updateObject
	movl	$_926,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_928
	call	_brl_blitz_NullObjectError
_928:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_930
	call	_brl_blitz_NullObjectError
_930:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_932
	call	_brl_blitz_NullObjectError
_932:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_934
	call	_brl_blitz_NullObjectError
_934:
	movl	44(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_936
	call	_brl_blitz_NullObjectError
_936:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_938
	call	_brl_blitz_NullObjectError
_938:
	flds	12(%ebx)
	fstps	(%esp)
	call	_bbStringFromFloat
	mov	%eax,%ebx
	movl	$_10,4(%esp)
	flds	8(%esi)
	fstps	(%esp)
	call	_bbStringFromFloat
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_standardio_Print
	movl	$_939,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_941
	call	_brl_blitz_NullObjectError
_941:
	flds	_1505
	fstps	24(%ebx)
	movl	$_943,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_945
	call	_brl_blitz_NullObjectError
_945:
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_950
	movl	%eax,(%esp)
	call	_bbGCFree
_950:
	movl	%esi,16(%ebx)
	movl	$_951,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-8(%ebp)
	movl	$0,-8(%ebp)
	jmp	_953
_13:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_985,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_954,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_956
	call	_brl_blitz_NullObjectError
_956:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_958
	call	_brl_blitz_NullObjectError
_958:
	movl	8(%ebx),%esi
	movl	-8(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_961
	call	_brl_blitz_ArrayBoundsError
_961:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,4(%esp)
	movl	%edi,(%esp)
	movl	(%edi),%eax
	calll	*60(%eax)
	fstps	-12(%ebp)
	movl	$_963,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_965
	call	_brl_blitz_NullObjectError
_965:
	flds	-12(%ebp)
	flds	24(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_966
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_984,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_967,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_969
	call	_brl_blitz_NullObjectError
_969:
	mov	%ebx,%edi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_972
	call	_brl_blitz_NullObjectError
_972:
	movl	8(%ebx),%esi
	movl	-8(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_975
	call	_brl_blitz_ArrayBoundsError
_975:
	movl	24(%esi,%ebx,4),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	16(%edi),%eax
	decl	4(%eax)
	jnz	_979
	movl	%eax,(%esp)
	call	_bbGCFree
_979:
	movl	%ebx,16(%edi)
	movl	$_980,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_982
	call	_brl_blitz_NullObjectError
_982:
	flds	-12(%ebp)
	fstps	24(%ebx)
	calll	*_bbOnDebugLeaveScope
_966:
	calll	*_bbOnDebugLeaveScope
_11:
	addl	$1,-8(%ebp)
_953:
	cmpl	$4,-8(%ebp)
	jl	_13
_12:
	movl	$_986,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_988
	call	_brl_blitz_NullObjectError
_988:
	cmpl	$_bbNullObject,16(%ebx)
	je	_989
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1062,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_990,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_992
	call	_brl_blitz_NullObjectError
_992:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_994
	call	_brl_blitz_NullObjectError
_994:
	movl	%ebx,-24(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_997
	call	_brl_blitz_NullObjectError
_997:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_999
	call	_brl_blitz_NullObjectError
_999:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1001
	call	_brl_blitz_NullObjectError
_1001:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1003
	call	_brl_blitz_NullObjectError
_1003:
	flds	8(%edi)
	flds	16(%esi)
	fmuls	24(%ebx)
	faddp	%st(0),%st(1)
	movl	-24(%ebp),%eax
	fstps	8(%eax)
	movl	$_1004,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1006
	call	_brl_blitz_NullObjectError
_1006:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1008
	call	_brl_blitz_NullObjectError
_1008:
	movl	%ebx,-20(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1011
	call	_brl_blitz_NullObjectError
_1011:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_1013
	call	_brl_blitz_NullObjectError
_1013:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1015
	call	_brl_blitz_NullObjectError
_1015:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1017
	call	_brl_blitz_NullObjectError
_1017:
	flds	12(%edi)
	flds	20(%esi)
	fmuls	24(%ebx)
	faddp	%st(0),%st(1)
	movl	-20(%ebp),%eax
	fstps	12(%eax)
	movl	$_1018,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1020
	call	_brl_blitz_NullObjectError
_1020:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1022
	call	_brl_blitz_NullObjectError
_1022:
	movl	16(%ebx),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*64(%eax)
	movl	%eax,-16(%ebp)
	movl	$_1024,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1026
	call	_brl_blitz_NullObjectError
_1026:
	mov	%ebx,%esi
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1029
	call	_brl_blitz_NullObjectError
_1029:
	flds	16(%ebx)
	fstps	16(%esi)
	movl	$_1030,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1032
	call	_brl_blitz_NullObjectError
_1032:
	mov	%ebx,%esi
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1035
	call	_brl_blitz_NullObjectError
_1035:
	flds	20(%ebx)
	fstps	20(%esi)
	movl	$_1036,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1038
	call	_brl_blitz_NullObjectError
_1038:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1040
	call	_brl_blitz_NullObjectError
_1040:
	mov	%ebx,%esi
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_1043
	call	_brl_blitz_NullObjectError
_1043:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1045
	call	_brl_blitz_NullObjectError
_1045:
	flds	8(%esi)
	flds	16(%edi)
	flds	_1506
	fsubs	24(%ebx)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	8(%esi)
	movl	$_1046,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1048
	call	_brl_blitz_NullObjectError
_1048:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1050
	call	_brl_blitz_NullObjectError
_1050:
	mov	%ebx,%esi
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_1053
	call	_brl_blitz_NullObjectError
_1053:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1055
	call	_brl_blitz_NullObjectError
_1055:
	flds	12(%esi)
	flds	20(%edi)
	flds	_1507
	fsubs	24(%ebx)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	12(%esi)
	movl	$_1056,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1058
	call	_brl_blitz_NullObjectError
_1058:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1061
	call	_brl_blitz_NullObjectError
_1061:
	flds	_1508
	fsubs	24(%ebx)
	fstps	24(%esi)
	calll	*_bbOnDebugLeaveScope
_989:
	movl	$_1064,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1066
	call	_brl_blitz_NullObjectError
_1066:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_1068
	call	_brl_blitz_NullObjectError
_1068:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1070
	call	_brl_blitz_NullObjectError
_1070:
	flds	8(%esi)
	movl	28(%ebx),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1071
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1080,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1072,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1074
	call	_brl_blitz_NullObjectError
_1074:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1076
	call	_brl_blitz_NullObjectError
_1076:
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_1079
	call	_brl_blitz_NullObjectError
_1079:
	flds	8(%ebx)
	movl	28(%esi),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	8(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_1081
_1071:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1097,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1082,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1084
	call	_brl_blitz_NullObjectError
_1084:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1086
	call	_brl_blitz_NullObjectError
_1086:
	flds	8(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1087
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1096,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1088,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1090
	call	_brl_blitz_NullObjectError
_1090:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1092
	call	_brl_blitz_NullObjectError
_1092:
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_1095
	call	_brl_blitz_NullObjectError
_1095:
	flds	8(%ebx)
	movl	28(%esi),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	faddp	%st(0),%st(1)
	fstps	8(%ebx)
	calll	*_bbOnDebugLeaveScope
_1087:
	calll	*_bbOnDebugLeaveScope
_1081:
	movl	$_1098,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1100
	call	_brl_blitz_NullObjectError
_1100:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_1102
	call	_brl_blitz_NullObjectError
_1102:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1104
	call	_brl_blitz_NullObjectError
_1104:
	flds	12(%esi)
	movl	32(%ebx),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1105
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1114,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1106,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1108
	call	_brl_blitz_NullObjectError
_1108:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1110
	call	_brl_blitz_NullObjectError
_1110:
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_1113
	call	_brl_blitz_NullObjectError
_1113:
	flds	12(%ebx)
	movl	32(%esi),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	12(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_1115
_1105:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1131,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1116,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1118
	call	_brl_blitz_NullObjectError
_1118:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1120
	call	_brl_blitz_NullObjectError
_1120:
	flds	12(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1121
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1130,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1122,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1124
	call	_brl_blitz_NullObjectError
_1124:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1126
	call	_brl_blitz_NullObjectError
_1126:
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_1129
	call	_brl_blitz_NullObjectError
_1129:
	flds	12(%ebx)
	movl	32(%esi),%eax
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	faddp	%st(0),%st(1)
	fstps	12(%ebx)
	calll	*_bbOnDebugLeaveScope
_1121:
	calll	*_bbOnDebugLeaveScope
_1115:
	movl	$_1132,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_drawAll
	movl	$_1133,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1135
	call	_brl_blitz_NullObjectError
_1135:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1138
	call	_brl_blitz_NullObjectError
_1138:
	movl	12(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_1142
	movl	%eax,(%esp)
	call	_bbGCFree
_1142:
	movl	%ebx,8(%esi)
	movl	$_1143,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1145
	call	_brl_blitz_NullObjectError
_1145:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1148
	call	_brl_blitz_NullObjectError
_1148:
	flds	16(%ebx)
	fdivs	72(%esi)
	fstps	16(%ebx)
	movl	$_1149,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1151
	call	_brl_blitz_NullObjectError
_1151:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1154
	call	_brl_blitz_NullObjectError
_1154:
	flds	20(%ebx)
	fdivs	72(%esi)
	fstps	20(%ebx)
	mov	$0,%ebx
	jmp	_122
_122:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_updateObject:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	fldz
	fstps	-8(%ebp)
	fldz
	fstps	-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1215,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1158,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_bbMilliSecs
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstps	-8(%ebp)
	movl	$_1160,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1162
	call	_brl_blitz_NullObjectError
_1162:
	flds	-8(%ebp)
	fsubs	68(%ebx)
	fdivs	_1615
	fstps	-12(%ebp)
	movl	$_1164,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1166
	call	_brl_blitz_NullObjectError
_1166:
	flds	16(%ebx)
	fmuls	-12(%ebp)
	fstps	16(%ebx)
	movl	$_1168,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1170
	call	_brl_blitz_NullObjectError
_1170:
	flds	20(%ebx)
	fmuls	-12(%ebp)
	fstps	20(%ebx)
	movl	$_1172,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1174
	call	_brl_blitz_NullObjectError
_1174:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1177
	call	_brl_blitz_NullObjectError
_1177:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1179
	call	_brl_blitz_NullObjectError
_1179:
	flds	20(%esi)
	flds	-12(%ebp)
	fmuls	40(%ebx)
	faddp	%st(0),%st(1)
	fstps	20(%edi)
	movl	$_1180,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1182
	call	_brl_blitz_NullObjectError
_1182:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1184
	call	_brl_blitz_NullObjectError
_1184:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1187
	call	_brl_blitz_NullObjectError
_1187:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_1189
	call	_brl_blitz_NullObjectError
_1189:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1191
	call	_brl_blitz_NullObjectError
_1191:
	flds	8(%esi)
	fadds	16(%ebx)
	fstps	8(%edi)
	movl	$_1192,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1194
	call	_brl_blitz_NullObjectError
_1194:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1196
	call	_brl_blitz_NullObjectError
_1196:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1199
	call	_brl_blitz_NullObjectError
_1199:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_1201
	call	_brl_blitz_NullObjectError
_1201:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1203
	call	_brl_blitz_NullObjectError
_1203:
	flds	12(%esi)
	fadds	20(%ebx)
	fstps	12(%edi)
	movl	$_1204,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1206
	call	_brl_blitz_NullObjectError
_1206:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1207,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1209
	call	_brl_blitz_NullObjectError
_1209:
	flds	-8(%ebp)
	fstps	68(%ebx)
	movl	$_1211,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1213
	call	_brl_blitz_NullObjectError
_1213:
	flds	-12(%ebp)
	fstps	72(%ebx)
	mov	$0,%ebx
	jmp	_125
_125:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_369:
	.long	0
_366:
	.asciz	"pointLine collision"
_367:
	.asciz	"game"
_368:
	.asciz	":Tgame"
	.align	4
_bb_game:
	.long	_bbNullObject
	.align	4
_365:
	.long	1
	.long	_366
	.long	4
	.long	_367
	.long	_368
	.long	_bb_game
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
_128:
	.asciz	"/Users/jesseperez/Desktop/roll_ball/pointLine collision.bmx"
	.align	4
_127:
	.long	_128
	.long	153
	.long	1
	.align	4
_130:
	.long	0
	.align	4
_132:
	.long	_128
	.long	154
	.long	1
	.align	4
_136:
	.long	_128
	.long	155
	.long	1
	.align	4
_140:
	.long	_128
	.long	156
	.long	1
	.align	4
_144:
	.long	_128
	.long	157
	.long	1
	.align	4
_1219:
	.long	0x41200000
	.align	4
_148:
	.long	_128
	.long	158
	.long	1
	.align	4
_1220:
	.long	0x3f000000
	.align	4
_152:
	.long	_128
	.long	161
	.long	1
	.align	4
_1221:
	.long	0x3f7d70a4
	.align	4
_158:
	.long	_128
	.long	162
	.long	1
	.align	4
_1222:
	.long	0x3f4ccccd
	.align	4
_164:
	.long	_128
	.long	163
	.long	1
	.align	4
_1223:
	.long	0x3f4ccccd
	.align	4
_170:
	.long	_128
	.long	164
	.long	1
	.align	4
_1224:
	.long	0x43160000
	.align	4
_178:
	.long	_128
	.long	165
	.long	1
	.align	4
_1225:
	.long	0x42c80000
	.align	4
_186:
	.long	_128
	.long	168
	.long	1
	.align	4
_192:
	.long	_128
	.long	169
	.long	1
	.align	4
_198:
	.long	_128
	.long	174
	.long	1
	.align	4
_1226:
	.long	0x42480000
	.align	4
_1227:
	.long	0x437a0000
	.align	4
_1228:
	.long	0x42480000
	.align	4
_1229:
	.long	0x42480000
	.align	4
_209:
	.long	_128
	.long	175
	.long	1
	.align	4
_218:
	.long	_128
	.long	176
	.long	1
	.align	4
_227:
	.long	_128
	.long	177
	.long	1
	.align	4
_1230:
	.long	0x43020000
	.align	4
_1231:
	.long	0x437a0000
	.align	4
_1232:
	.long	0x42480000
	.align	4
_1233:
	.long	0x437a0000
	.align	4
_238:
	.long	_128
	.long	178
	.long	1
	.align	4
_247:
	.long	_128
	.long	179
	.long	1
	.align	4
_256:
	.long	_128
	.long	180
	.long	1
	.align	4
_1234:
	.long	0x43020000
	.align	4
_1235:
	.long	0x42480000
	.align	4
_1236:
	.long	0x43020000
	.align	4
_1237:
	.long	0x437a0000
	.align	4
_267:
	.long	_128
	.long	181
	.long	1
	.align	4
_276:
	.long	_128
	.long	182
	.long	1
	.align	4
_285:
	.long	_128
	.long	183
	.long	1
	.align	4
_1238:
	.long	0x42480000
	.align	4
_1239:
	.long	0x42480000
	.align	4
_1240:
	.long	0x43020000
	.align	4
_1241:
	.long	0x42480000
	.align	4
_296:
	.long	_128
	.long	184
	.long	1
	.align	4
_305:
	.long	_128
	.long	185
	.long	1
	.align	4
_314:
	.long	_128
	.long	292
	.long	1
	.align	4
_322:
	.long	_128
	.long	293
	.long	1
	.align	4
_330:
	.long	_128
	.long	294
	.long	1
	.align	4
_338:
	.long	_128
	.long	295
	.long	1
	.align	4
_346:
	.long	_128
	.long	297
	.long	1
	.align	4
_347:
	.long	_128
	.long	298
	.long	1
	.align	4
_14:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	43,43,43,43,43,43
	.align	4
_360:
	.long	_128
	.long	303
	.long	1
	.align	4
_364:
	.long	3
	.long	0
	.long	0
	.align	4
_361:
	.long	_128
	.long	300
	.long	2
	.align	4
_362:
	.long	_128
	.long	301
	.long	2
	.align	4
_363:
	.long	_128
	.long	302
	.long	2
_373:
	.asciz	"Self"
	.align	4
_372:
	.long	1
	.long	_23
	.long	2
	.long	_373
	.long	_29
	.long	-4
	.long	0
	.align	4
_371:
	.long	3
	.long	0
	.long	0
	.align	4
_394:
	.long	1
	.long	_23
	.long	2
	.long	_373
	.long	_62
	.long	-4
	.long	0
	.align	4
_393:
	.long	3
	.long	0
	.long	0
	.align	4
_377:
	.long	_128
	.long	28
	.long	3
	.align	4
_385:
	.long	_128
	.long	29
	.long	3
_428:
	.asciz	"x1"
_429:
	.asciz	"y1"
_430:
	.asciz	"x2"
_431:
	.asciz	"y2"
	.align	4
_427:
	.long	1
	.long	_46
	.long	2
	.long	_428
	.long	_21
	.long	-4
	.long	2
	.long	_429
	.long	_21
	.long	-8
	.long	2
	.long	_430
	.long	_21
	.long	-12
	.long	2
	.long	_431
	.long	_21
	.long	-16
	.long	2
	.long	_59
	.long	_62
	.long	-20
	.long	0
	.align	4
_400:
	.long	_128
	.long	33
	.long	3
	.align	4
_402:
	.long	_128
	.long	34
	.long	3
	.align	4
_408:
	.long	_128
	.long	35
	.long	3
	.align	4
_414:
	.long	_128
	.long	36
	.long	3
	.align	4
_420:
	.long	_128
	.long	37
	.long	3
	.align	4
_426:
	.long	_128
	.long	38
	.long	3
	.align	4
_523:
	.long	1
	.long	_48
	.long	2
	.long	_373
	.long	_62
	.long	-4
	.long	0
	.align	4
_432:
	.long	_128
	.long	45
	.long	3
	.align	4
_444:
	.long	_128
	.long	46
	.long	3
	.align	4
_456:
	.long	_128
	.long	48
	.long	3
	.align	4
_468:
	.long	_128
	.long	50
	.long	3
	.align	4
_488:
	.long	3
	.long	0
	.long	0
	.align	4
_472:
	.long	_128
	.long	51
	.long	4
	.align	4
_480:
	.long	_128
	.long	52
	.long	4
	.align	4
_498:
	.long	3
	.long	0
	.long	0
	.align	4
_490:
	.long	_128
	.long	54
	.long	4
	.align	4
_494:
	.long	_128
	.long	55
	.long	4
	.align	4
_499:
	.long	_128
	.long	58
	.long	3
	.align	4
_505:
	.long	_128
	.long	59
	.long	3
	.align	4
_511:
	.long	_128
	.long	61
	.long	3
	.align	4
_517:
	.long	_128
	.long	62
	.long	3
_536:
	.asciz	"vb"
_537:
	.asciz	"pp"
	.align	4
_535:
	.long	1
	.long	_49
	.long	2
	.long	_373
	.long	_62
	.long	-4
	.long	2
	.long	_536
	.long	_62
	.long	-8
	.long	2
	.long	_537
	.long	_21
	.long	-12
	.long	0
	.align	4
_524:
	.long	_128
	.long	67
	.long	3
	.align	4
_534:
	.long	_128
	.long	68
	.long	3
_647:
	.asciz	"v2"
_633:
	.asciz	"t1"
_634:
	.asciz	"t2"
_648:
	.asciz	"v3a"
_649:
	.asciz	"v3b"
	.align	4
_646:
	.long	1
	.long	_51
	.long	2
	.long	_373
	.long	_62
	.long	-4
	.long	2
	.long	_647
	.long	_62
	.long	-8
	.long	2
	.long	_633
	.long	_21
	.long	-12
	.long	2
	.long	_634
	.long	_21
	.long	-16
	.long	2
	.long	_648
	.long	_62
	.long	-20
	.long	2
	.long	_649
	.long	_62
	.long	-24
	.long	0
	.align	4
_538:
	.long	_128
	.long	73
	.long	3
	.align	4
_541:
	.long	_128
	.long	75
	.long	3
	.align	4
_543:
	.long	_128
	.long	76
	.long	3
	.align	4
_555:
	.long	_128
	.long	77
	.long	3
	.align	4
_567:
	.long	_128
	.long	78
	.long	3
	.align	4
_569:
	.long	_128
	.long	79
	.long	3
	.align	4
_581:
	.long	_128
	.long	80
	.long	3
	.align	4
_593:
	.long	_128
	.long	83
	.long	3
	.align	4
_618:
	.long	3
	.long	0
	.long	0
	.align	4
_617:
	.long	_128
	.long	84
	.long	4
	.align	4
_1381:
	.long	0x49742400
	.align	4
_632:
	.long	3
	.long	0
	.long	2
	.long	_633
	.long	_21
	.long	-28
	.long	2
	.long	_634
	.long	_21
	.long	-32
	.long	0
	.align	4
_620:
	.long	_128
	.long	86
	.long	4
	.align	4
_626:
	.long	_128
	.long	87
	.long	4
	.align	4
_635:
	.long	_128
	.long	90
	.long	3
	.align	4
_644:
	.long	3
	.long	0
	.long	0
	.align	4
_643:
	.long	_128
	.long	91
	.long	4
	.align	4
_645:
	.long	_128
	.long	93
	.long	3
	.align	4
_1382:
	.long	0x49742400
_714:
	.asciz	"proj1"
_715:
	.asciz	"proj2"
_716:
	.asciz	"proj"
	.align	4
_713:
	.long	1
	.long	_52
	.long	2
	.long	_373
	.long	_62
	.long	-4
	.long	2
	.long	_647
	.long	_62
	.long	-8
	.long	2
	.long	_714
	.long	_62
	.long	-12
	.long	2
	.long	_715
	.long	_62
	.long	-16
	.long	2
	.long	_716
	.long	_62
	.long	-20
	.long	0
	.align	4
_650:
	.long	_128
	.long	99
	.long	3
	.align	4
_658:
	.long	_128
	.long	101
	.long	3
	.align	4
_670:
	.long	_128
	.long	102
	.long	3
	.align	4
_672:
	.long	_128
	.long	104
	.long	3
	.align	4
_1429:
	.long	0xbf800000
	.align	4
_676:
	.long	_128
	.long	105
	.long	3
	.align	4
_1430:
	.long	0xbf800000
	.align	4
_680:
	.long	_128
	.long	107
	.long	3
	.align	4
_696:
	.long	_128
	.long	108
	.long	3
	.align	4
_712:
	.long	_128
	.long	109
	.long	3
_735:
	.asciz	"dp"
	.align	4
_734:
	.long	1
	.long	_54
	.long	2
	.long	_373
	.long	_62
	.long	-4
	.long	2
	.long	_34
	.long	_21
	.long	-8
	.long	2
	.long	_35
	.long	_21
	.long	-12
	.long	2
	.long	_735
	.long	_21
	.long	-16
	.long	2
	.long	_716
	.long	_62
	.long	-20
	.long	0
	.align	4
_717:
	.long	_128
	.long	115
	.long	3
	.align	4
_723:
	.long	_128
	.long	116
	.long	3
	.align	4
_725:
	.long	_128
	.long	118
	.long	3
	.align	4
_729:
	.long	_128
	.long	119
	.long	3
	.align	4
_733:
	.long	_128
	.long	120
	.long	3
	.align	4
_757:
	.long	1
	.long	_56
	.long	2
	.long	_373
	.long	_62
	.long	-4
	.long	0
	.align	4
_736:
	.long	_128
	.long	124
	.long	3
	.align	4
_816:
	.long	1
	.long	_23
	.long	2
	.long	_373
	.long	_368
	.long	-4
	.long	0
_758:
	.asciz	":Tvector"
	.align	4
_815:
	.long	3
	.long	0
	.long	0
	.align	4
_763:
	.long	_128
	.long	142
	.long	3
	.align	4
_774:
	.long	_128
	.long	143
	.long	3
	.align	4
_785:
	.long	_128
	.long	144
	.long	3
	.align	4
_796:
	.long	_128
	.long	145
	.long	3
	.align	4
_807:
	.long	_128
	.long	146
	.long	3
_852:
	.asciz	"drawAll"
	.align	4
_851:
	.long	1
	.long	_852
	.long	2
	.long	_59
	.long	_62
	.long	-4
	.long	0
	.align	4
_826:
	.long	_128
	.long	189
	.long	2
	.align	4
_837:
	.long	3
	.long	0
	.long	2
	.long	_43
	.long	_43
	.long	-8
	.long	0
	.align	4
_829:
	.long	_128
	.long	190
	.long	3
	.align	4
_838:
	.long	_128
	.long	192
	.long	2
	.align	4
_1490:
	.long	0x40800000
	.align	4
_1491:
	.long	0x40800000
	.align	4
_1492:
	.long	0x40000000
	.align	4
_1493:
	.long	0x40000000
_1156:
	.asciz	"runMe"
_1157:
	.asciz	"ob"
	.align	4
_1155:
	.long	1
	.long	_1156
	.long	2
	.long	_1157
	.long	_62
	.long	-4
	.long	0
	.align	4
_853:
	.long	_128
	.long	200
	.long	2
	.align	4
_857:
	.long	_128
	.long	202
	.long	2
	.align	4
_863:
	.long	_128
	.long	203
	.long	2
	.align	4
_869:
	.long	_128
	.long	205
	.long	2
	.align	4
_881:
	.long	3
	.long	0
	.long	0
	.align	4
_875:
	.long	_128
	.long	206
	.long	3
	.align	4
_896:
	.long	3
	.long	0
	.long	0
	.align	4
_883:
	.long	_128
	.long	207
	.long	2
	.align	4
_895:
	.long	3
	.long	0
	.long	0
	.align	4
_889:
	.long	_128
	.long	208
	.long	3
	.align	4
_897:
	.long	_128
	.long	210
	.long	2
	.align	4
_909:
	.long	3
	.long	0
	.long	0
	.align	4
_903:
	.long	_128
	.long	211
	.long	3
	.align	4
_924:
	.long	3
	.long	0
	.long	0
	.align	4
_911:
	.long	_128
	.long	212
	.long	2
	.align	4
_923:
	.long	3
	.long	0
	.long	0
	.align	4
_917:
	.long	_128
	.long	213
	.long	3
	.align	4
_925:
	.long	_128
	.long	216
	.long	2
	.align	4
_926:
	.long	_128
	.long	217
	.long	2
	.align	4
_10:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	45,45,45,45,45,45,45
	.align	4
_939:
	.long	_128
	.long	219
	.long	2
	.align	4
_1505:
	.long	0x49742400
	.align	4
_943:
	.long	_128
	.long	221
	.long	2
	.align	4
_951:
	.long	_128
	.long	223
	.long	2
	.align	4
_985:
	.long	3
	.long	0
	.long	2
	.long	_43
	.long	_43
	.long	-8
	.long	2
	.long	_64
	.long	_21
	.long	-12
	.long	0
	.align	4
_954:
	.long	_128
	.long	224
	.long	3
	.align	4
_963:
	.long	_128
	.long	226
	.long	3
	.align	4
_984:
	.long	3
	.long	0
	.long	0
	.align	4
_967:
	.long	_128
	.long	228
	.long	4
	.align	4
_980:
	.long	_128
	.long	230
	.long	4
	.align	4
_986:
	.long	_128
	.long	234
	.long	2
_1063:
	.asciz	"newv"
	.align	4
_1062:
	.long	3
	.long	0
	.long	2
	.long	_1063
	.long	_62
	.long	-16
	.long	0
	.align	4
_990:
	.long	_128
	.long	236
	.long	3
	.align	4
_1004:
	.long	_128
	.long	237
	.long	3
	.align	4
_1018:
	.long	_128
	.long	239
	.long	3
	.align	4
_1024:
	.long	_128
	.long	241
	.long	3
	.align	4
_1030:
	.long	_128
	.long	242
	.long	3
	.align	4
_1036:
	.long	_128
	.long	244
	.long	3
	.align	4
_1506:
	.long	0x3f800000
	.align	4
_1046:
	.long	_128
	.long	245
	.long	3
	.align	4
_1507:
	.long	0x3f800000
	.align	4
_1056:
	.long	_128
	.long	247
	.long	3
	.align	4
_1508:
	.long	0x3f800000
	.align	4
_1064:
	.long	_128
	.long	250
	.long	2
	.align	4
_1080:
	.long	3
	.long	0
	.long	0
	.align	4
_1072:
	.long	_128
	.long	251
	.long	3
	.align	4
_1097:
	.long	3
	.long	0
	.long	0
	.align	4
_1082:
	.long	_128
	.long	252
	.long	2
	.align	4
_1096:
	.long	3
	.long	0
	.long	0
	.align	4
_1088:
	.long	_128
	.long	253
	.long	3
	.align	4
_1098:
	.long	_128
	.long	255
	.long	2
	.align	4
_1114:
	.long	3
	.long	0
	.long	0
	.align	4
_1106:
	.long	_128
	.long	256
	.long	3
	.align	4
_1131:
	.long	3
	.long	0
	.long	0
	.align	4
_1116:
	.long	_128
	.long	257
	.long	2
	.align	4
_1130:
	.long	3
	.long	0
	.long	0
	.align	4
_1122:
	.long	_128
	.long	258
	.long	3
	.align	4
_1132:
	.long	_128
	.long	261
	.long	2
	.align	4
_1133:
	.long	_128
	.long	263
	.long	2
	.align	4
_1143:
	.long	_128
	.long	265
	.long	2
	.align	4
_1149:
	.long	_128
	.long	266
	.long	2
_1216:
	.asciz	"updateObject"
_1217:
	.asciz	"thisTime"
_1218:
	.asciz	"time"
	.align	4
_1215:
	.long	1
	.long	_1216
	.long	2
	.long	_59
	.long	_62
	.long	-4
	.long	2
	.long	_1217
	.long	_21
	.long	-8
	.long	2
	.long	_1218
	.long	_21
	.long	-12
	.long	0
	.align	4
_1158:
	.long	_128
	.long	273
	.long	2
	.align	4
_1160:
	.long	_128
	.long	274
	.long	2
	.align	4
_1615:
	.long	0x42c80000
	.align	4
_1164:
	.long	_128
	.long	276
	.long	2
	.align	4
_1168:
	.long	_128
	.long	277
	.long	2
	.align	4
_1172:
	.long	_128
	.long	279
	.long	2
	.align	4
_1180:
	.long	_128
	.long	281
	.long	2
	.align	4
_1192:
	.long	_128
	.long	282
	.long	2
	.align	4
_1204:
	.long	_128
	.long	284
	.long	2
	.align	4
_1207:
	.long	_128
	.long	286
	.long	2
	.align	4
_1211:
	.long	_128
	.long	288
	.long	2
