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
	.reference	_bbEnd
	.reference	_bbFloatMod
	.reference	_bbFloatToInt
	.reference	_bbGCFree
	.reference	_bbMilliSecs
	.reference	_bbNullObject
	.reference	_bbObjectClass
	.reference	_bbObjectCompare
	.reference	_bbObjectCtor
	.reference	_bbObjectDowncast
	.reference	_bbObjectFree
	.reference	_bbObjectNew
	.reference	_bbObjectRegisterType
	.reference	_bbObjectReserved
	.reference	_bbObjectSendMessage
	.reference	_bbObjectToString
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
	.reference	_bbStringClass
	.reference	_brl_blitz_NullObjectError
	.reference	_brl_graphics_Flip
	.reference	_brl_graphics_Graphics
	.reference	_brl_graphics_GraphicsHeight
	.reference	_brl_graphics_GraphicsWidth
	.reference	_brl_linkedlist_TList
	.reference	_brl_max2d_Cls
	.reference	_brl_max2d_DrawImage
	.reference	_brl_max2d_LoadAnimImage
	.reference	_brl_max2d_LoadImage
	.reference	_brl_max2d_SetBlend
	.reference	_brl_max2d_SetScale
	.reference	_brl_max2d_SetViewport
	.reference	_brl_max2d_TileImage
	.reference	_brl_polledinput_KeyDown
	.reference	_brl_polledinput_MouseHit
	.globl	__bb_TBackground_Create
	.globl	__bb_TBackground_Delete
	.globl	__bb_TBackground_New
	.globl	__bb_TBackground_list
	.globl	__bb_TBackground_update
	.globl	__bb_TileRow_Create
	.globl	__bb_TileRow_Delete
	.globl	__bb_TileRow_New
	.globl	__bb_TileRow_display
	.globl	__bb_TileRow_update
	.globl	__bb_Tplayer_Create
	.globl	__bb_Tplayer_Delete
	.globl	__bb_Tplayer_New
	.globl	__bb_Tplayer_display
	.globl	__bb_Tplayer_update
	.globl	__bb_Tsprite_Create
	.globl	__bb_Tsprite_Delete
	.globl	__bb_Tsprite_New
	.globl	__bb_Tsprite_display
	.globl	__bb_Tsprite_reset
	.globl	__bb_Tsprite_update
	.globl	__bb_main
	.globl	_bb_Background1
	.globl	_bb_Background2
	.globl	_bb_Background3
	.globl	_bb_Background4
	.globl	_bb_Background5
	.globl	_bb_Background6
	.globl	_bb_Cloud1
	.globl	_bb_Cloud2
	.globl	_bb_Cloud3
	.globl	_bb_Cloud4
	.globl	_bb_TBackground
	.globl	_bb_T_list
	.globl	_bb_TileRow
	.globl	_bb_Tplayer
	.globl	_bb_Tree
	.globl	_bb_Tsprite
	.globl	_bb_crouchRightDownImg
	.globl	_bb_crouchRightUpImg
	.globl	_bb_crouchleftDownImg
	.globl	_bb_crouchleftUpImg
	.globl	_bb_framesImg
	.globl	_bb_knealingdowngunleftImg
	.globl	_bb_nealLeftpunchOutImg
	.globl	_bb_nealRightpunchinImg
	.globl	_bb_nealRightpunchoutImg
	.globl	_bb_nealleftpunchInImg
	.globl	_bb_punchLeftImg
	.globl	_bb_punchLeftInImg
	.globl	_bb_punchLeftOutImg
	.globl	_bb_punchRightInImg
	.globl	_bb_punchRightOutImg
	.globl	_bb_punchrightImg
	.globl	_bb_standingggunRightImg
	.globl	_bb_turnLeftImg
	.globl	_bb_turnLeftgun
	.globl	_bb_turnRightGun
	.globl	_bb_turnRightImg
	.globl	_bb_walkLeftImg
	.globl	_bb_walkRightImg
	.globl	_bb_walkleftgunImg
	.globl	_bb_walkrightgunImg
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	sub	$28,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$32,%esp
	cmpl	$0,_391
	je	_392
	mov	$0,%eax
	add	$32,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_392:
	movl	$1,_391
	movl	$_bbNullObject,-4(%ebp)
	fldz
	fstps	-8(%ebp)
	fldz
	fstps	-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	movl	$_bbNullObject,-24(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_349,(%esp)
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
	movl	$_bb_Tsprite,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_Tplayer,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_TileRow,(%esp)
	call	_bbObjectRegisterType
	movl	$_178,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_182
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,__bb_TBackground_list
	orl	$1,_181
_182:
	movl	$_bb_TBackground,(%esp)
	call	_bbObjectRegisterType
	movl	$_183,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$2,%eax
	cmp	$0,%eax
	jne	_185
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_T_list
	orl	$2,_181
_185:
	movl	$_186,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$4,%eax
	cmp	$0,%eax
	jne	_188
	movl	$-1,4(%esp)
	movl	$_7,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Background1
	orl	$4,_181
_188:
	movl	$_189,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$8,%eax
	cmp	$0,%eax
	jne	_191
	movl	$-1,4(%esp)
	movl	$_8,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Background2
	orl	$8,_181
_191:
	movl	$_192,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$16,%eax
	cmp	$0,%eax
	jne	_194
	movl	$-1,4(%esp)
	movl	$_9,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Background3
	orl	$16,_181
_194:
	movl	$_195,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$32,%eax
	cmp	$0,%eax
	jne	_197
	movl	$-1,4(%esp)
	movl	$_10,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Background4
	orl	$32,_181
_197:
	movl	$_198,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$64,%eax
	cmp	$0,%eax
	jne	_200
	movl	$-1,4(%esp)
	movl	$_11,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Background5
	orl	$64,_181
_200:
	movl	$_201,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$128,%eax
	cmp	$0,%eax
	jne	_203
	movl	$-1,4(%esp)
	movl	$_12,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Background6
	orl	$128,_181
_203:
	movl	$_204,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$256,%eax
	cmp	$0,%eax
	jne	_206
	movl	$-1,4(%esp)
	movl	$_13,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Cloud1
	orl	$256,_181
_206:
	movl	$_207,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$512,%eax
	cmp	$0,%eax
	jne	_209
	movl	$-1,4(%esp)
	movl	$_14,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Cloud2
	orl	$512,_181
_209:
	movl	$_210,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$1024,%eax
	cmp	$0,%eax
	jne	_212
	movl	$-1,4(%esp)
	movl	$_15,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Cloud3
	orl	$1024,_181
_212:
	movl	$_213,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$2048,%eax
	cmp	$0,%eax
	jne	_215
	movl	$-1,4(%esp)
	movl	$_16,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Cloud4
	orl	$2048,_181
_215:
	movl	$_216,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$4096,%eax
	cmp	$0,%eax
	jne	_218
	movl	$-1,4(%esp)
	movl	$_17,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Tree
	orl	$4096,_181
_218:
	movl	$_219,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$8192,%eax
	cmp	$0,%eax
	jne	_221
	movl	$-1,20(%esp)
	movl	$6,16(%esp)
	movl	$0,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_walkRightImg
	orl	$8192,_181
_221:
	movl	$_222,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$16384,%eax
	cmp	$0,%eax
	jne	_224
	movl	$-1,20(%esp)
	movl	$6,16(%esp)
	movl	$6,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_walkLeftImg
	orl	$16384,_181
_224:
	movl	$_225,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$32768,%eax
	cmp	$0,%eax
	jne	_227
	movl	$-1,20(%esp)
	movl	$4,16(%esp)
	movl	$12,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_turnLeftImg
	orl	$32768,_181
_227:
	movl	$_228,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$65536,%eax
	cmp	$0,%eax
	jne	_230
	movl	$-1,20(%esp)
	movl	$4,16(%esp)
	movl	$16,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_turnRightImg
	orl	$65536,_181
_230:
	movl	$_231,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$131072,%eax
	cmp	$0,%eax
	jne	_233
	movl	$-1,20(%esp)
	movl	$3,16(%esp)
	movl	$20,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_punchRightOutImg
	orl	$131072,_181
_233:
	movl	$_234,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$262144,%eax
	cmp	$0,%eax
	jne	_236
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$23,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_punchRightInImg
	orl	$262144,_181
_236:
	movl	$_237,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$524288,%eax
	cmp	$0,%eax
	jne	_239
	movl	$-1,20(%esp)
	movl	$1,16(%esp)
	movl	$22,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_punchrightImg
	orl	$524288,_181
_239:
	movl	$_240,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$1048576,%eax
	cmp	$0,%eax
	jne	_242
	movl	$-1,20(%esp)
	movl	$3,16(%esp)
	movl	$25,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_punchLeftOutImg
	orl	$1048576,_181
_242:
	movl	$_243,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$2097152,%eax
	cmp	$0,%eax
	jne	_245
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$28,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_punchLeftInImg
	orl	$2097152,_181
_245:
	movl	$_246,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$4194304,%eax
	cmp	$0,%eax
	jne	_248
	movl	$-1,20(%esp)
	movl	$1,16(%esp)
	movl	$27,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_punchLeftImg
	orl	$4194304,_181
_248:
	movl	$_249,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$8388608,%eax
	cmp	$0,%eax
	jne	_251
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$30,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_crouchRightDownImg
	orl	$8388608,_181
_251:
	movl	$_252,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$16777216,%eax
	cmp	$0,%eax
	jne	_254
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$31,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_crouchRightUpImg
	orl	$16777216,_181
_254:
	movl	$_255,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$33554432,%eax
	cmp	$0,%eax
	jne	_257
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$33,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_crouchleftDownImg
	orl	$33554432,_181
_257:
	movl	$_258,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$67108864,%eax
	cmp	$0,%eax
	jne	_260
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$34,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_crouchleftUpImg
	orl	$67108864,_181
_260:
	movl	$_261,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$134217728,%eax
	cmp	$0,%eax
	jne	_263
	movl	$-1,20(%esp)
	movl	$12,16(%esp)
	movl	$36,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_framesImg
	orl	$134217728,_181
_263:
	movl	$_264,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$268435456,%eax
	cmp	$0,%eax
	jne	_266
	movl	$-1,20(%esp)
	movl	$6,16(%esp)
	movl	$48,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_walkrightgunImg
	orl	$268435456,_181
_266:
	movl	$_267,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$536870912,%eax
	cmp	$0,%eax
	jne	_269
	movl	$-1,20(%esp)
	movl	$6,16(%esp)
	movl	$54,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_walkleftgunImg
	orl	$536870912,_181
_269:
	movl	$_270,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$1073741824,%eax
	cmp	$0,%eax
	jne	_272
	movl	$-1,20(%esp)
	movl	$4,16(%esp)
	movl	$60,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_turnLeftgun
	orl	$1073741824,_181
_272:
	movl	$_273,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_181,%eax
	and	$-2147483648,%eax
	cmp	$0,%eax
	jne	_275
	movl	$-1,20(%esp)
	movl	$4,16(%esp)
	movl	$64,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_turnRightGun
	orl	$-2147483648,_181
_275:
	movl	$_276,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_278,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_279
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$68,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_nealRightpunchoutImg
	orl	$1,_278
_279:
	movl	$_280,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_278,%eax
	and	$2,%eax
	cmp	$0,%eax
	jne	_282
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$69,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_nealRightpunchinImg
	orl	$2,_278
_282:
	movl	$_283,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_278,%eax
	and	$4,%eax
	cmp	$0,%eax
	jne	_285
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$71,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_nealLeftpunchOutImg
	orl	$4,_278
_285:
	movl	$_286,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_278,%eax
	and	$8,%eax
	cmp	$0,%eax
	jne	_288
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$72,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_nealleftpunchInImg
	orl	$8,_278
_288:
	movl	$_289,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_278,%eax
	and	$16,%eax
	cmp	$0,%eax
	jne	_291
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$74,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_standingggunRightImg
	orl	$16,_278
_291:
	movl	$_292,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_278,%eax
	and	$32,%eax
	cmp	$0,%eax
	jne	_294
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$76,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_knealingdowngunleftImg
	orl	$32,_278
_294:
	movl	$_295,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$_bbNullObject,_bb_knealingdowngunleftImg
	jne	_296
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_298,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_297,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_bbEnd
	calll	*_bbOnDebugLeaveScope
_296:
	movl	$_299,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$480,4(%esp)
	movl	$640,(%esp)
	call	_brl_graphics_Graphics
	movl	$_300,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$3,(%esp)
	call	_brl_max2d_SetBlend
	movl	$_301,(%esp)
	calll	*_bbOnDebugEnterStm
	calll	*_bb_TBackground+48
	movl	$_302,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_2493
	fstps	4(%esp)
	flds	_2494
	fstps	(%esp)
	calll	*_bb_Tplayer+48
	movl	%eax,-4(%ebp)
	movl	$_304,(%esp)
	calll	*_bbOnDebugEnterStm
_24:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_343,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_305,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_max2d_Cls
	movl	$_306,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$39,(%esp)
	call	_brl_polledinput_KeyDown
	mov	%eax,%ebx
	movl	$37,(%esp)
	call	_brl_polledinput_KeyDown
	sub	%eax,%ebx
	movl	%ebx,-28(%ebp)
	fildl	-28(%ebp)
	fstps	-8(%ebp)
	movl	$_308,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$40,(%esp)
	call	_brl_polledinput_KeyDown
	mov	%eax,%ebx
	movl	$88,(%esp)
	call	_brl_polledinput_KeyDown
	sub	%eax,%ebx
	movl	%ebx,-28(%ebp)
	fildl	-28(%ebp)
	fstps	-12(%ebp)
	movl	$_310,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$90,(%esp)
	call	_brl_polledinput_KeyDown
	movl	%eax,-16(%ebp)
	movl	$_312,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
	movl	-16(%ebp),%eax
	movl	%eax,12(%esp)
	lea	-12(%ebp),%eax
	movl	%eax,8(%esp)
	lea	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_315,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-8(%ebp)
	fstps	(%esp)
	calll	*_bb_TBackground+52
	movl	$_316,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	__bb_TBackground_list,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_318
	call	_brl_blitz_NullObjectError
_318:
	movl	$_bb_TileRow,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*76(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-20(%ebp)
	movl	$_320,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-24(%ebp)
	movl	__bb_TBackground_list,%edi
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_324
	call	_brl_blitz_NullObjectError
_324:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_25
_27:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_329
	call	_brl_blitz_NullObjectError
_329:
	movl	$_bb_TileRow,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-24(%ebp)
	cmpl	$_bbNullObject,-24(%ebp)
	je	_25
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_339,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_330,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	cmpl	%eax,-24(%ebp)
	jne	_331
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_335,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_332,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_334
	call	_brl_blitz_NullObjectError
_334:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	calll	*_bbOnDebugLeaveScope
_331:
	movl	$_336,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_338
	call	_brl_blitz_NullObjectError
_338:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	calll	*_bbOnDebugLeaveScope
_25:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_327
	call	_brl_blitz_NullObjectError
_327:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_27
_26:
	movl	$_342,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
	calll	*_bbOnDebugLeaveScope
_22:
	movl	$1,(%esp)
	call	_brl_polledinput_MouseHit
	cmp	$0,%eax
	je	_24
_23:
	mov	$0,%ebx
	jmp	_104
_104:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$32,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tsprite_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_395,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Tsprite,(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,24(%eax)
	movl	%ebp,4(%esp)
	movl	$_394,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_107
_107:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tsprite_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
_110:
	movl	24(%eax),%eax
	decl	4(%eax)
	jnz	_399
	movl	%eax,(%esp)
	call	_bbGCFree
_399:
	mov	$0,%eax
	jmp	_397
_397:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tsprite_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	push	%esi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_427,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_400,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tsprite,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_402,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_404
	call	_brl_blitz_NullObjectError
_404:
	movl	-16(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	$_406,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_408
	call	_brl_blitz_NullObjectError
_408:
	movl	-8(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	$_410,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_412
	call	_brl_blitz_NullObjectError
_412:
	call	_bbMilliSecs
	addl	-8(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	$_414,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_416
	call	_brl_blitz_NullObjectError
_416:
	movl	-12(%ebp),%eax
	movl	%eax,20(%ebx)
	movl	$_418,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_420
	call	_brl_blitz_NullObjectError
_420:
	movl	-4(%ebp),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_425
	movl	%eax,(%esp)
	call	_bbGCFree
_425:
	movl	%esi,24(%ebx)
	movl	$_426,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	jmp	_116
_116:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tsprite_reset:
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
	movl	$_444,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_429,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_431
	call	_brl_blitz_NullObjectError
_431:
	cmpl	$1,20(%ebx)
	jle	_432
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_443,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_433,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_435
	call	_brl_blitz_NullObjectError
_435:
	movl	$0,8(%ebx)
	movl	$_437,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_439
	call	_brl_blitz_NullObjectError
_439:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_442
	call	_brl_blitz_NullObjectError
_442:
	call	_bbMilliSecs
	addl	12(%ebx),%eax
	movl	%eax,16(%esi)
	calll	*_bbOnDebugLeaveScope
_432:
	mov	$0,%ebx
	jmp	_119
_119:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tsprite_update:
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
	movl	$_476,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_445,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_447
	call	_brl_blitz_NullObjectError
_447:
	cmpl	$1,20(%ebx)
	jle	_448
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_474,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_449,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_451
	call	_brl_blitz_NullObjectError
_451:
	call	_bbMilliSecs
	cmpl	16(%ebx),%eax
	jle	_452
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_473,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_453,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_455
	call	_brl_blitz_NullObjectError
_455:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_458
	call	_brl_blitz_NullObjectError
_458:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_460
	call	_brl_blitz_NullObjectError
_460:
	movl	8(%esi),%eax
	add	$1,%eax
	cdq
	idivl	20(%ebx)
	mov	%edx,%eax
	movl	%eax,8(%edi)
	movl	$_461,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_463
	call	_brl_blitz_NullObjectError
_463:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_466
	call	_brl_blitz_NullObjectError
_466:
	call	_bbMilliSecs
	addl	12(%ebx),%eax
	movl	%eax,16(%esi)
	movl	$_467,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_469
	call	_brl_blitz_NullObjectError
_469:
	cmpl	$0,8(%ebx)
	jne	_470
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_472,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_471,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$1,%ebx
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_122
_470:
	calll	*_bbOnDebugLeaveScope
_452:
	calll	*_bbOnDebugLeaveScope
_448:
	movl	$_475,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$0,%ebx
	jmp	_122
_122:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tsprite_display:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_484,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_477,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_2580
	fstps	4(%esp)
	flds	_2581
	fstps	(%esp)
	call	_brl_max2d_SetScale
	movl	$_478,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_480
	call	_brl_blitz_NullObjectError
_480:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_482
	call	_brl_blitz_NullObjectError
_482:
	movl	8(%ebx),%eax
	movl	%eax,12(%esp)
	flds	-12(%ebp)
	fstps	8(%esp)
	flds	-8(%ebp)
	fstps	4(%esp)
	movl	24(%esi),%eax
	movl	%eax,(%esp)
	call	_brl_max2d_DrawImage
	movl	$_483,(%esp)
	calll	*_bbOnDebugEnterStm
	fld1
	fstps	4(%esp)
	fld1
	fstps	(%esp)
	call	_brl_max2d_SetScale
	mov	$0,%ebx
	jmp	_127
_127:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tplayer_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_514,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Tplayer,(%eax)
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
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,32(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,36(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,40(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,44(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,48(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,52(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,56(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,60(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,64(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,68(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,72(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,76(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,80(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,84(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,88(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,92(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,96(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,100(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,104(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,108(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,112(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,116(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,120(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,124(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,128(%eax)
	movl	-4(%ebp),%eax
	movl	$0,132(%eax)
	movl	-4(%ebp),%eax
	movl	$0,136(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,140(%eax)
	movl	%ebp,4(%esp)
	movl	$_513,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_130
_130:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tplayer_Delete:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
_133:
	movl	140(%ebx),%eax
	decl	4(%eax)
	jnz	_517
	movl	%eax,(%esp)
	call	_bbGCFree
_517:
	movl	128(%ebx),%eax
	decl	4(%eax)
	jnz	_519
	movl	%eax,(%esp)
	call	_bbGCFree
_519:
	movl	124(%ebx),%eax
	decl	4(%eax)
	jnz	_521
	movl	%eax,(%esp)
	call	_bbGCFree
_521:
	movl	120(%ebx),%eax
	decl	4(%eax)
	jnz	_523
	movl	%eax,(%esp)
	call	_bbGCFree
_523:
	movl	116(%ebx),%eax
	decl	4(%eax)
	jnz	_525
	movl	%eax,(%esp)
	call	_bbGCFree
_525:
	movl	112(%ebx),%eax
	decl	4(%eax)
	jnz	_527
	movl	%eax,(%esp)
	call	_bbGCFree
_527:
	movl	108(%ebx),%eax
	decl	4(%eax)
	jnz	_529
	movl	%eax,(%esp)
	call	_bbGCFree
_529:
	movl	104(%ebx),%eax
	decl	4(%eax)
	jnz	_531
	movl	%eax,(%esp)
	call	_bbGCFree
_531:
	movl	100(%ebx),%eax
	decl	4(%eax)
	jnz	_533
	movl	%eax,(%esp)
	call	_bbGCFree
_533:
	movl	96(%ebx),%eax
	decl	4(%eax)
	jnz	_535
	movl	%eax,(%esp)
	call	_bbGCFree
_535:
	movl	92(%ebx),%eax
	decl	4(%eax)
	jnz	_537
	movl	%eax,(%esp)
	call	_bbGCFree
_537:
	movl	88(%ebx),%eax
	decl	4(%eax)
	jnz	_539
	movl	%eax,(%esp)
	call	_bbGCFree
_539:
	movl	84(%ebx),%eax
	decl	4(%eax)
	jnz	_541
	movl	%eax,(%esp)
	call	_bbGCFree
_541:
	movl	80(%ebx),%eax
	decl	4(%eax)
	jnz	_543
	movl	%eax,(%esp)
	call	_bbGCFree
_543:
	movl	76(%ebx),%eax
	decl	4(%eax)
	jnz	_545
	movl	%eax,(%esp)
	call	_bbGCFree
_545:
	movl	72(%ebx),%eax
	decl	4(%eax)
	jnz	_547
	movl	%eax,(%esp)
	call	_bbGCFree
_547:
	movl	68(%ebx),%eax
	decl	4(%eax)
	jnz	_549
	movl	%eax,(%esp)
	call	_bbGCFree
_549:
	movl	64(%ebx),%eax
	decl	4(%eax)
	jnz	_551
	movl	%eax,(%esp)
	call	_bbGCFree
_551:
	movl	60(%ebx),%eax
	decl	4(%eax)
	jnz	_553
	movl	%eax,(%esp)
	call	_bbGCFree
_553:
	movl	56(%ebx),%eax
	decl	4(%eax)
	jnz	_555
	movl	%eax,(%esp)
	call	_bbGCFree
_555:
	movl	52(%ebx),%eax
	decl	4(%eax)
	jnz	_557
	movl	%eax,(%esp)
	call	_bbGCFree
_557:
	movl	48(%ebx),%eax
	decl	4(%eax)
	jnz	_559
	movl	%eax,(%esp)
	call	_bbGCFree
_559:
	movl	44(%ebx),%eax
	decl	4(%eax)
	jnz	_561
	movl	%eax,(%esp)
	call	_bbGCFree
_561:
	movl	40(%ebx),%eax
	decl	4(%eax)
	jnz	_563
	movl	%eax,(%esp)
	call	_bbGCFree
_563:
	movl	36(%ebx),%eax
	decl	4(%eax)
	jnz	_565
	movl	%eax,(%esp)
	call	_bbGCFree
_565:
	movl	32(%ebx),%eax
	decl	4(%eax)
	jnz	_567
	movl	%eax,(%esp)
	call	_bbGCFree
_567:
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_569
	movl	%eax,(%esp)
	call	_bbGCFree
_569:
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_571
	movl	%eax,(%esp)
	call	_bbGCFree
_571:
	mov	$0,%eax
	jmp	_515
_515:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tplayer_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	sub	$20,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_805,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_572,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tplayer,(%esp)
	call	_bbObjectNew
	movl	%eax,-12(%ebp)
	movl	$_574,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_576
	call	_brl_blitz_NullObjectError
_576:
	flds	-4(%ebp)
	fstps	8(%ebx)
	movl	$_578,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_580
	call	_brl_blitz_NullObjectError
_580:
	flds	-8(%ebp)
	fstps	12(%ebx)
	movl	$_582,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_584
	call	_brl_blitz_NullObjectError
_584:
	flds	-8(%ebp)
	fstps	16(%ebx)
	movl	$_586,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_588
	call	_brl_blitz_NullObjectError
_588:
	movl	$0,12(%esp)
	movl	$6,8(%esp)
	movl	$100,4(%esp)
	movl	_bb_walkLeftImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_593
	movl	%eax,(%esp)
	call	_bbGCFree
_593:
	movl	%esi,24(%ebx)
	movl	$_594,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_596
	call	_brl_blitz_NullObjectError
_596:
	movl	$0,12(%esp)
	movl	$6,8(%esp)
	movl	$100,4(%esp)
	movl	_bb_walkRightImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_601
	movl	%eax,(%esp)
	call	_bbGCFree
_601:
	movl	%esi,28(%ebx)
	movl	$_602,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_604
	call	_brl_blitz_NullObjectError
_604:
	movl	$0,12(%esp)
	movl	$4,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_turnLeftImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	40(%ebx),%eax
	decl	4(%eax)
	jnz	_609
	movl	%eax,(%esp)
	call	_bbGCFree
_609:
	movl	%esi,40(%ebx)
	movl	$_610,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_612
	call	_brl_blitz_NullObjectError
_612:
	movl	$0,12(%esp)
	movl	$4,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_turnRightImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	44(%ebx),%eax
	decl	4(%eax)
	jnz	_617
	movl	%eax,(%esp)
	call	_bbGCFree
_617:
	movl	%esi,44(%ebx)
	movl	$_618,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_620
	call	_brl_blitz_NullObjectError
_620:
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$100,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	32(%ebx),%eax
	decl	4(%eax)
	jnz	_625
	movl	%eax,(%esp)
	call	_bbGCFree
_625:
	movl	%esi,32(%ebx)
	movl	$_626,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_628
	call	_brl_blitz_NullObjectError
_628:
	movl	$0,12(%esp)
	movl	$1,8(%esp)
	movl	$100,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	36(%ebx),%eax
	decl	4(%eax)
	jnz	_633
	movl	%eax,(%esp)
	call	_bbGCFree
_633:
	movl	%esi,36(%ebx)
	movl	$_634,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_636
	call	_brl_blitz_NullObjectError
_636:
	movl	$0,12(%esp)
	movl	$3,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_punchRightOutImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	48(%ebx),%eax
	decl	4(%eax)
	jnz	_641
	movl	%eax,(%esp)
	call	_bbGCFree
_641:
	movl	%esi,48(%ebx)
	movl	$_642,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_644
	call	_brl_blitz_NullObjectError
_644:
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_punchRightInImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	52(%ebx),%eax
	decl	4(%eax)
	jnz	_649
	movl	%eax,(%esp)
	call	_bbGCFree
_649:
	movl	%esi,52(%ebx)
	movl	$_650,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_652
	call	_brl_blitz_NullObjectError
_652:
	movl	$0,12(%esp)
	movl	$3,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_punchLeftOutImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	60(%ebx),%eax
	decl	4(%eax)
	jnz	_657
	movl	%eax,(%esp)
	call	_bbGCFree
_657:
	movl	%esi,60(%ebx)
	movl	$_658,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_660
	call	_brl_blitz_NullObjectError
_660:
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_punchLeftInImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	64(%ebx),%eax
	decl	4(%eax)
	jnz	_665
	movl	%eax,(%esp)
	call	_bbGCFree
_665:
	movl	%esi,64(%ebx)
	movl	$_666,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_668
	call	_brl_blitz_NullObjectError
_668:
	movl	$0,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_punchrightImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	56(%ebx),%eax
	decl	4(%eax)
	jnz	_673
	movl	%eax,(%esp)
	call	_bbGCFree
_673:
	movl	%esi,56(%ebx)
	movl	$_674,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_676
	call	_brl_blitz_NullObjectError
_676:
	movl	$0,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_punchLeftImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	68(%ebx),%eax
	decl	4(%eax)
	jnz	_681
	movl	%eax,(%esp)
	call	_bbGCFree
_681:
	movl	%esi,68(%ebx)
	movl	$_682,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_684
	call	_brl_blitz_NullObjectError
_684:
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_crouchRightDownImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	76(%ebx),%eax
	decl	4(%eax)
	jnz	_689
	movl	%eax,(%esp)
	call	_bbGCFree
_689:
	movl	%esi,76(%ebx)
	movl	$_690,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_692
	call	_brl_blitz_NullObjectError
_692:
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_crouchRightUpImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	80(%ebx),%eax
	decl	4(%eax)
	jnz	_697
	movl	%eax,(%esp)
	call	_bbGCFree
_697:
	movl	%esi,80(%ebx)
	movl	$_698,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_700
	call	_brl_blitz_NullObjectError
_700:
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_crouchleftDownImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	88(%ebx),%eax
	decl	4(%eax)
	jnz	_705
	movl	%eax,(%esp)
	call	_bbGCFree
_705:
	movl	%esi,88(%ebx)
	movl	$_706,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_708
	call	_brl_blitz_NullObjectError
_708:
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_crouchleftUpImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	92(%ebx),%eax
	decl	4(%eax)
	jnz	_713
	movl	%eax,(%esp)
	call	_bbGCFree
_713:
	movl	%esi,92(%ebx)
	movl	$_714,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_716
	call	_brl_blitz_NullObjectError
_716:
	movl	$3,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	96(%ebx),%eax
	decl	4(%eax)
	jnz	_721
	movl	%eax,(%esp)
	call	_bbGCFree
_721:
	movl	%esi,96(%ebx)
	movl	$_722,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_724
	call	_brl_blitz_NullObjectError
_724:
	movl	$2,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	84(%ebx),%eax
	decl	4(%eax)
	jnz	_729
	movl	%eax,(%esp)
	call	_bbGCFree
_729:
	movl	%esi,84(%ebx)
	movl	$_730,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_732
	call	_brl_blitz_NullObjectError
_732:
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_nealRightpunchoutImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	112(%ebx),%eax
	decl	4(%eax)
	jnz	_737
	movl	%eax,(%esp)
	call	_bbGCFree
_737:
	movl	%esi,112(%ebx)
	movl	$_738,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_740
	call	_brl_blitz_NullObjectError
_740:
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_nealRightpunchinImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	116(%ebx),%eax
	decl	4(%eax)
	jnz	_745
	movl	%eax,(%esp)
	call	_bbGCFree
_745:
	movl	%esi,116(%ebx)
	movl	$_746,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_748
	call	_brl_blitz_NullObjectError
_748:
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_nealLeftpunchOutImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	100(%ebx),%eax
	decl	4(%eax)
	jnz	_753
	movl	%eax,(%esp)
	call	_bbGCFree
_753:
	movl	%esi,100(%ebx)
	movl	$_754,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_756
	call	_brl_blitz_NullObjectError
_756:
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_nealleftpunchInImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	104(%ebx),%eax
	decl	4(%eax)
	jnz	_761
	movl	%eax,(%esp)
	call	_bbGCFree
_761:
	movl	%esi,104(%ebx)
	movl	$_762,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_764
	call	_brl_blitz_NullObjectError
_764:
	movl	$6,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	120(%ebx),%eax
	decl	4(%eax)
	jnz	_769
	movl	%eax,(%esp)
	call	_bbGCFree
_769:
	movl	%esi,120(%ebx)
	movl	$_770,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_772
	call	_brl_blitz_NullObjectError
_772:
	movl	$7,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	108(%ebx),%eax
	decl	4(%eax)
	jnz	_777
	movl	%eax,(%esp)
	call	_bbGCFree
_777:
	movl	%esi,108(%ebx)
	movl	$_778,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_780
	call	_brl_blitz_NullObjectError
_780:
	movl	$4,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	128(%ebx),%eax
	decl	4(%eax)
	jnz	_785
	movl	%eax,(%esp)
	call	_bbGCFree
_785:
	movl	%esi,128(%ebx)
	movl	$_786,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_788
	call	_brl_blitz_NullObjectError
_788:
	movl	$5,12(%esp)
	movl	$1,8(%esp)
	movl	$51,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	124(%ebx),%eax
	decl	4(%eax)
	jnz	_793
	movl	%eax,(%esp)
	call	_bbGCFree
_793:
	movl	%esi,124(%ebx)
	movl	$_794,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_796
	call	_brl_blitz_NullObjectError
_796:
	mov	%ebx,%esi
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_799
	call	_brl_blitz_NullObjectError
_799:
	movl	36(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_803
	movl	%eax,(%esp)
	call	_bbGCFree
_803:
	movl	%ebx,140(%esi)
	movl	$_804,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	jmp	_137
_137:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tplayer_update:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	push	%esi
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2349,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_807,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_809
	call	_brl_blitz_NullObjectError
_809:
	movl	140(%ebx),%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_814
	call	_brl_blitz_NullObjectError
_814:
	cmpl	32(%ebx),%esi
	je	_812
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_817
	call	_brl_blitz_NullObjectError
_817:
	cmpl	36(%ebx),%esi
	je	_815
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_820
	call	_brl_blitz_NullObjectError
_820:
	cmpl	40(%ebx),%esi
	je	_818
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_823
	call	_brl_blitz_NullObjectError
_823:
	cmpl	44(%ebx),%esi
	je	_821
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_826
	call	_brl_blitz_NullObjectError
_826:
	cmpl	24(%ebx),%esi
	je	_824
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_829
	call	_brl_blitz_NullObjectError
_829:
	cmpl	28(%ebx),%esi
	je	_827
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_832
	call	_brl_blitz_NullObjectError
_832:
	cmpl	48(%ebx),%esi
	je	_830
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_835
	call	_brl_blitz_NullObjectError
_835:
	cmpl	60(%ebx),%esi
	je	_833
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_838
	call	_brl_blitz_NullObjectError
_838:
	cmpl	56(%ebx),%esi
	je	_836
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_841
	call	_brl_blitz_NullObjectError
_841:
	cmpl	68(%ebx),%esi
	je	_839
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_844
	call	_brl_blitz_NullObjectError
_844:
	cmpl	52(%ebx),%esi
	je	_842
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_847
	call	_brl_blitz_NullObjectError
_847:
	cmpl	64(%ebx),%esi
	je	_845
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_850
	call	_brl_blitz_NullObjectError
_850:
	cmpl	76(%ebx),%esi
	je	_848
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_853
	call	_brl_blitz_NullObjectError
_853:
	cmpl	88(%ebx),%esi
	je	_851
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_856
	call	_brl_blitz_NullObjectError
_856:
	cmpl	84(%ebx),%esi
	je	_854
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_859
	call	_brl_blitz_NullObjectError
_859:
	cmpl	96(%ebx),%esi
	je	_857
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_862
	call	_brl_blitz_NullObjectError
_862:
	cmpl	80(%ebx),%esi
	je	_860
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_865
	call	_brl_blitz_NullObjectError
_865:
	cmpl	92(%ebx),%esi
	je	_863
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_868
	call	_brl_blitz_NullObjectError
_868:
	cmpl	112(%ebx),%esi
	je	_866
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_871
	call	_brl_blitz_NullObjectError
_871:
	cmpl	100(%ebx),%esi
	je	_869
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_874
	call	_brl_blitz_NullObjectError
_874:
	cmpl	120(%ebx),%esi
	je	_872
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_877
	call	_brl_blitz_NullObjectError
_877:
	cmpl	108(%ebx),%esi
	je	_875
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_880
	call	_brl_blitz_NullObjectError
_880:
	cmpl	116(%ebx),%esi
	je	_878
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_883
	call	_brl_blitz_NullObjectError
_883:
	cmpl	104(%ebx),%esi
	je	_881
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_886
	call	_brl_blitz_NullObjectError
_886:
	cmpl	124(%ebx),%esi
	je	_884
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_889
	call	_brl_blitz_NullObjectError
_889:
	cmpl	128(%ebx),%esi
	je	_887
	jmp	_811
_812:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1003,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_890,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	je	_891
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_912,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_892,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_894
	call	_brl_blitz_NullObjectError
_894:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_897
	call	_brl_blitz_NullObjectError
_897:
	movl	60(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_901
	movl	%eax,(%esp)
	call	_bbGCFree
_901:
	movl	%ebx,140(%esi)
	movl	$_902,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_904
	call	_brl_blitz_NullObjectError
_904:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_906
	call	_brl_blitz_NullObjectError
_906:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_907,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_909
	call	_brl_blitz_NullObjectError
_909:
	movl	$1,132(%ebx)
	movl	$_911,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_913
_891:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1002,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_914,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_915
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_932,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_916,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_918
	call	_brl_blitz_NullObjectError
_918:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_921
	call	_brl_blitz_NullObjectError
_921:
	movl	88(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_925
	movl	%eax,(%esp)
	call	_bbGCFree
_925:
	movl	%ebx,140(%esi)
	movl	$_926,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_928
	call	_brl_blitz_NullObjectError
_928:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_930
	call	_brl_blitz_NullObjectError
_930:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_931,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_933
_915:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1001,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_934,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	flds	(%eax)
	flds	_2624
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_935
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_959,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_936,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_938
	call	_brl_blitz_NullObjectError
_938:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_941
	call	_brl_blitz_NullObjectError
_941:
	movl	124(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_945
	movl	%eax,(%esp)
	call	_bbGCFree
_945:
	movl	%ebx,140(%esi)
	movl	$_946,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_948
	call	_brl_blitz_NullObjectError
_948:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_950
	call	_brl_blitz_NullObjectError
_950:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_951,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_953
	call	_brl_blitz_NullObjectError
_953:
	movl	$1,136(%ebx)
	movl	$_955,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_957
	call	_brl_blitz_NullObjectError
_957:
	fld1
	fstps	20(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_960
_935:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1000,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_961,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_962
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_979,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_963,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_965
	call	_brl_blitz_NullObjectError
_965:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_968
	call	_brl_blitz_NullObjectError
_968:
	movl	44(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_972
	movl	%eax,(%esp)
	call	_bbGCFree
_972:
	movl	%ebx,140(%esi)
	movl	$_973,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_975
	call	_brl_blitz_NullObjectError
_975:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_977
	call	_brl_blitz_NullObjectError
_977:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_978,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_980
_962:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_999,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_981,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	_2625
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_982
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_998,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_983,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_985
	call	_brl_blitz_NullObjectError
_985:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_988
	call	_brl_blitz_NullObjectError
_988:
	movl	24(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_992
	movl	%eax,(%esp)
	call	_bbGCFree
_992:
	movl	%ebx,140(%esi)
	movl	$_993,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_995
	call	_brl_blitz_NullObjectError
_995:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_997
	call	_brl_blitz_NullObjectError
_997:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_982:
	calll	*_bbOnDebugLeaveScope
_980:
	calll	*_bbOnDebugLeaveScope
_960:
	calll	*_bbOnDebugLeaveScope
_933:
	calll	*_bbOnDebugLeaveScope
_913:
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_815:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1112,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1004,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	je	_1005
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1026,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1006,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1008
	call	_brl_blitz_NullObjectError
_1008:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1011
	call	_brl_blitz_NullObjectError
_1011:
	movl	48(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1015
	movl	%eax,(%esp)
	call	_bbGCFree
_1015:
	movl	%ebx,140(%esi)
	movl	$_1016,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1018
	call	_brl_blitz_NullObjectError
_1018:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1020
	call	_brl_blitz_NullObjectError
_1020:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1021,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1023
	call	_brl_blitz_NullObjectError
_1023:
	movl	$1,132(%ebx)
	movl	$_1025,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1027
_1005:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1111,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1028,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1029
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1046,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1030,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1032
	call	_brl_blitz_NullObjectError
_1032:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1035
	call	_brl_blitz_NullObjectError
_1035:
	movl	76(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1039
	movl	%eax,(%esp)
	call	_bbGCFree
_1039:
	movl	%ebx,140(%esi)
	movl	$_1040,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1042
	call	_brl_blitz_NullObjectError
_1042:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1044
	call	_brl_blitz_NullObjectError
_1044:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1045,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1047
_1029:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1110,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1048,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	flds	(%eax)
	flds	_2626
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1049
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1073,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1050,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1052
	call	_brl_blitz_NullObjectError
_1052:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1055
	call	_brl_blitz_NullObjectError
_1055:
	movl	128(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1059
	movl	%eax,(%esp)
	call	_bbGCFree
_1059:
	movl	%ebx,140(%esi)
	movl	$_1060,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1062
	call	_brl_blitz_NullObjectError
_1062:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1064
	call	_brl_blitz_NullObjectError
_1064:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1065,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1067
	call	_brl_blitz_NullObjectError
_1067:
	movl	$1,136(%ebx)
	movl	$_1069,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1071
	call	_brl_blitz_NullObjectError
_1071:
	fld1
	fstps	20(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_1074
_1049:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1109,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1075,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	_2627
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1076
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1088,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1077,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1079
	call	_brl_blitz_NullObjectError
_1079:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1082
	call	_brl_blitz_NullObjectError
_1082:
	movl	40(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1086
	movl	%eax,(%esp)
	call	_bbGCFree
_1086:
	movl	%ebx,140(%esi)
	movl	$_1087,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1089
_1076:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1108,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1090,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1091
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1107,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1092,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1094
	call	_brl_blitz_NullObjectError
_1094:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1097
	call	_brl_blitz_NullObjectError
_1097:
	movl	28(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1101
	movl	%eax,(%esp)
	call	_bbGCFree
_1101:
	movl	%ebx,140(%esi)
	movl	$_1102,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1104
	call	_brl_blitz_NullObjectError
_1104:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1106
	call	_brl_blitz_NullObjectError
_1106:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_1091:
	calll	*_bbOnDebugLeaveScope
_1089:
	calll	*_bbOnDebugLeaveScope
_1074:
	calll	*_bbOnDebugLeaveScope
_1047:
	calll	*_bbOnDebugLeaveScope
_1027:
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_818:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1174,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1113,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1115
	call	_brl_blitz_NullObjectError
_1115:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1117
	call	_brl_blitz_NullObjectError
_1117:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_1118
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1170,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1119,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1120
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1137,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1121,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1123
	call	_brl_blitz_NullObjectError
_1123:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1126
	call	_brl_blitz_NullObjectError
_1126:
	movl	44(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1130
	movl	%eax,(%esp)
	call	_bbGCFree
_1130:
	movl	%ebx,140(%esi)
	movl	$_1131,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1133
	call	_brl_blitz_NullObjectError
_1133:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1135
	call	_brl_blitz_NullObjectError
_1135:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1136,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1138
_1120:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1169,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1139,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	_2628
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1140
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1156,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1141,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1143
	call	_brl_blitz_NullObjectError
_1143:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1146
	call	_brl_blitz_NullObjectError
_1146:
	movl	24(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1150
	movl	%eax,(%esp)
	call	_bbGCFree
_1150:
	movl	%ebx,140(%esi)
	movl	$_1151,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1153
	call	_brl_blitz_NullObjectError
_1153:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1155
	call	_brl_blitz_NullObjectError
_1155:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1157
_1140:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1168,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1158,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1160
	call	_brl_blitz_NullObjectError
_1160:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1163
	call	_brl_blitz_NullObjectError
_1163:
	movl	32(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1167
	movl	%eax,(%esp)
	call	_bbGCFree
_1167:
	movl	%ebx,140(%esi)
	calll	*_bbOnDebugLeaveScope
_1157:
	calll	*_bbOnDebugLeaveScope
_1138:
	calll	*_bbOnDebugLeaveScope
	jmp	_1171
_1118:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1173,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1172,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
_1171:
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_821:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1236,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1175,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1177
	call	_brl_blitz_NullObjectError
_1177:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1179
	call	_brl_blitz_NullObjectError
_1179:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_1180
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1232,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1181,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	_2629
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1182
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1199,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1183,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1185
	call	_brl_blitz_NullObjectError
_1185:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1188
	call	_brl_blitz_NullObjectError
_1188:
	movl	40(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1192
	movl	%eax,(%esp)
	call	_bbGCFree
_1192:
	movl	%ebx,140(%esi)
	movl	$_1193,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1195
	call	_brl_blitz_NullObjectError
_1195:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1197
	call	_brl_blitz_NullObjectError
_1197:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1198,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1200
_1182:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1231,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1201,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1202
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1218,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1203,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1205
	call	_brl_blitz_NullObjectError
_1205:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1208
	call	_brl_blitz_NullObjectError
_1208:
	movl	28(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1212
	movl	%eax,(%esp)
	call	_bbGCFree
_1212:
	movl	%ebx,140(%esi)
	movl	$_1213,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1215
	call	_brl_blitz_NullObjectError
_1215:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1217
	call	_brl_blitz_NullObjectError
_1217:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1219
_1202:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1230,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1220,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1222
	call	_brl_blitz_NullObjectError
_1222:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1225
	call	_brl_blitz_NullObjectError
_1225:
	movl	36(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1229
	movl	%eax,(%esp)
	call	_bbGCFree
_1229:
	movl	%ebx,140(%esi)
	calll	*_bbOnDebugLeaveScope
_1219:
	calll	*_bbOnDebugLeaveScope
_1200:
	calll	*_bbOnDebugLeaveScope
	jmp	_1233
_1180:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1235,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1234,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
_1233:
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_824:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1352,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1237,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	je	_1238
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1259,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1239,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1241
	call	_brl_blitz_NullObjectError
_1241:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1244
	call	_brl_blitz_NullObjectError
_1244:
	movl	60(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1248
	movl	%eax,(%esp)
	call	_bbGCFree
_1248:
	movl	%ebx,140(%esi)
	movl	$_1249,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1251
	call	_brl_blitz_NullObjectError
_1251:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1253
	call	_brl_blitz_NullObjectError
_1253:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1254,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1256
	call	_brl_blitz_NullObjectError
_1256:
	movl	$1,132(%ebx)
	movl	$_1258,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1260
_1238:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1351,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1261,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1262
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1279,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1263,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1265
	call	_brl_blitz_NullObjectError
_1265:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1268
	call	_brl_blitz_NullObjectError
_1268:
	movl	88(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1272
	movl	%eax,(%esp)
	call	_bbGCFree
_1272:
	movl	%ebx,140(%esi)
	movl	$_1273,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1275
	call	_brl_blitz_NullObjectError
_1275:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1277
	call	_brl_blitz_NullObjectError
_1277:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1278,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1280
_1262:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1350,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1281,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	flds	(%eax)
	flds	_2630
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1282
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1306,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1283,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1285
	call	_brl_blitz_NullObjectError
_1285:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1288
	call	_brl_blitz_NullObjectError
_1288:
	movl	124(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1292
	movl	%eax,(%esp)
	call	_bbGCFree
_1292:
	movl	%ebx,140(%esi)
	movl	$_1293,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1295
	call	_brl_blitz_NullObjectError
_1295:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1297
	call	_brl_blitz_NullObjectError
_1297:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1298,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1300
	call	_brl_blitz_NullObjectError
_1300:
	movl	$1,136(%ebx)
	movl	$_1302,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1304
	call	_brl_blitz_NullObjectError
_1304:
	fld1
	fstps	20(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_1307
_1282:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1349,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1308,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1309
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1326,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1310,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1312
	call	_brl_blitz_NullObjectError
_1312:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1315
	call	_brl_blitz_NullObjectError
_1315:
	movl	44(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1319
	movl	%eax,(%esp)
	call	_bbGCFree
_1319:
	movl	%ebx,140(%esi)
	movl	$_1320,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1322
	call	_brl_blitz_NullObjectError
_1322:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1324
	call	_brl_blitz_NullObjectError
_1324:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1325,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1327
_1309:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1348,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1328,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	_2631
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1329
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1335,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1330,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1332
	call	_brl_blitz_NullObjectError
_1332:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1334
	call	_brl_blitz_NullObjectError
_1334:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1336
_1329:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1347,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1337,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1339
	call	_brl_blitz_NullObjectError
_1339:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1342
	call	_brl_blitz_NullObjectError
_1342:
	movl	32(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1346
	movl	%eax,(%esp)
	call	_bbGCFree
_1346:
	movl	%ebx,140(%esi)
	calll	*_bbOnDebugLeaveScope
_1336:
	calll	*_bbOnDebugLeaveScope
_1327:
	calll	*_bbOnDebugLeaveScope
_1307:
	calll	*_bbOnDebugLeaveScope
_1280:
	calll	*_bbOnDebugLeaveScope
_1260:
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_827:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1468,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1353,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	je	_1354
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1375,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1355,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1357
	call	_brl_blitz_NullObjectError
_1357:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1360
	call	_brl_blitz_NullObjectError
_1360:
	movl	48(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1364
	movl	%eax,(%esp)
	call	_bbGCFree
_1364:
	movl	%ebx,140(%esi)
	movl	$_1365,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1367
	call	_brl_blitz_NullObjectError
_1367:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1369
	call	_brl_blitz_NullObjectError
_1369:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1370,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1372
	call	_brl_blitz_NullObjectError
_1372:
	movl	$1,132(%ebx)
	movl	$_1374,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1376
_1354:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1467,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1377,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1378
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1395,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1379,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1381
	call	_brl_blitz_NullObjectError
_1381:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1384
	call	_brl_blitz_NullObjectError
_1384:
	movl	76(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1388
	movl	%eax,(%esp)
	call	_bbGCFree
_1388:
	movl	%ebx,140(%esi)
	movl	$_1389,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1391
	call	_brl_blitz_NullObjectError
_1391:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1393
	call	_brl_blitz_NullObjectError
_1393:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1394,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1396
_1378:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1466,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1397,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	flds	(%eax)
	flds	_2632
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1398
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1422,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1399,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1401
	call	_brl_blitz_NullObjectError
_1401:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1404
	call	_brl_blitz_NullObjectError
_1404:
	movl	128(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1408
	movl	%eax,(%esp)
	call	_bbGCFree
_1408:
	movl	%ebx,140(%esi)
	movl	$_1409,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1411
	call	_brl_blitz_NullObjectError
_1411:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1413
	call	_brl_blitz_NullObjectError
_1413:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1414,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1416
	call	_brl_blitz_NullObjectError
_1416:
	movl	$1,136(%ebx)
	movl	$_1418,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1420
	call	_brl_blitz_NullObjectError
_1420:
	fld1
	fstps	20(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_1423
_1398:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1465,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1424,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	_2633
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1425
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1442,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1426,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1428
	call	_brl_blitz_NullObjectError
_1428:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1431
	call	_brl_blitz_NullObjectError
_1431:
	movl	40(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1435
	movl	%eax,(%esp)
	call	_bbGCFree
_1435:
	movl	%ebx,140(%esi)
	movl	$_1436,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1438
	call	_brl_blitz_NullObjectError
_1438:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1440
	call	_brl_blitz_NullObjectError
_1440:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1441,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1443
_1425:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1464,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1444,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1445
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1451,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1446,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1448
	call	_brl_blitz_NullObjectError
_1448:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1450
	call	_brl_blitz_NullObjectError
_1450:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1452
_1445:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1463,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1453,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1455
	call	_brl_blitz_NullObjectError
_1455:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1458
	call	_brl_blitz_NullObjectError
_1458:
	movl	36(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1462
	movl	%eax,(%esp)
	call	_bbGCFree
_1462:
	movl	%ebx,140(%esi)
	calll	*_bbOnDebugLeaveScope
_1452:
	calll	*_bbOnDebugLeaveScope
_1443:
	calll	*_bbOnDebugLeaveScope
_1423:
	calll	*_bbOnDebugLeaveScope
_1396:
	calll	*_bbOnDebugLeaveScope
_1376:
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_830:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1492,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1469,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1471
	call	_brl_blitz_NullObjectError
_1471:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1473
	call	_brl_blitz_NullObjectError
_1473:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_1474
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1490,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1475,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1477
	call	_brl_blitz_NullObjectError
_1477:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1480
	call	_brl_blitz_NullObjectError
_1480:
	movl	56(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1484
	movl	%eax,(%esp)
	call	_bbGCFree
_1484:
	movl	%ebx,140(%esi)
	movl	$_1485,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1487
	call	_brl_blitz_NullObjectError
_1487:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1489
	call	_brl_blitz_NullObjectError
_1489:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_1474:
	movl	$_1491,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_833:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1516,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1493,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1495
	call	_brl_blitz_NullObjectError
_1495:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1497
	call	_brl_blitz_NullObjectError
_1497:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_1498
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1514,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1499,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1501
	call	_brl_blitz_NullObjectError
_1501:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1504
	call	_brl_blitz_NullObjectError
_1504:
	movl	68(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1508
	movl	%eax,(%esp)
	call	_bbGCFree
_1508:
	movl	%ebx,140(%esi)
	movl	$_1509,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1511
	call	_brl_blitz_NullObjectError
_1511:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1513
	call	_brl_blitz_NullObjectError
_1513:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_1498:
	movl	$_1515,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_836:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1545,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1517,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	jne	_1518
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1543,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1519,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1521
	call	_brl_blitz_NullObjectError
_1521:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1524
	call	_brl_blitz_NullObjectError
_1524:
	movl	52(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1528
	movl	%eax,(%esp)
	call	_bbGCFree
_1528:
	movl	%ebx,140(%esi)
	movl	$_1529,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1531
	call	_brl_blitz_NullObjectError
_1531:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1533
	call	_brl_blitz_NullObjectError
_1533:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1534,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1536
	call	_brl_blitz_NullObjectError
_1536:
	cmpl	$0,132(%ebx)
	je	_1537
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1542,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1538,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1540
	call	_brl_blitz_NullObjectError
_1540:
	movl	$0,132(%ebx)
	calll	*_bbOnDebugLeaveScope
_1537:
	calll	*_bbOnDebugLeaveScope
_1518:
	movl	$_1544,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_839:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1574,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1546,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	jne	_1547
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1572,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1548,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1550
	call	_brl_blitz_NullObjectError
_1550:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1553
	call	_brl_blitz_NullObjectError
_1553:
	movl	64(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1557
	movl	%eax,(%esp)
	call	_bbGCFree
_1557:
	movl	%ebx,140(%esi)
	movl	$_1558,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1560
	call	_brl_blitz_NullObjectError
_1560:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1562
	call	_brl_blitz_NullObjectError
_1562:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1563,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1565
	call	_brl_blitz_NullObjectError
_1565:
	cmpl	$0,132(%ebx)
	je	_1566
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1571,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1567,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1569
	call	_brl_blitz_NullObjectError
_1569:
	movl	$0,132(%ebx)
	calll	*_bbOnDebugLeaveScope
_1566:
	calll	*_bbOnDebugLeaveScope
_1547:
	movl	$_1573,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_842:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1657,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1575,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1577
	call	_brl_blitz_NullObjectError
_1577:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1579
	call	_brl_blitz_NullObjectError
_1579:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_1580
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1653,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1581,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	je	_1582
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1599,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1583,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1585
	call	_brl_blitz_NullObjectError
_1585:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1588
	call	_brl_blitz_NullObjectError
_1588:
	movl	48(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1592
	movl	%eax,(%esp)
	call	_bbGCFree
_1592:
	movl	%ebx,140(%esi)
	movl	$_1593,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1595
	call	_brl_blitz_NullObjectError
_1595:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1597
	call	_brl_blitz_NullObjectError
_1597:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1598,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1600
_1582:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1652,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1601,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	_2634
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1602
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1619,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1603,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1605
	call	_brl_blitz_NullObjectError
_1605:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1608
	call	_brl_blitz_NullObjectError
_1608:
	movl	40(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1612
	movl	%eax,(%esp)
	call	_bbGCFree
_1612:
	movl	%ebx,140(%esi)
	movl	$_1613,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1615
	call	_brl_blitz_NullObjectError
_1615:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1617
	call	_brl_blitz_NullObjectError
_1617:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1618,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1620
_1602:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1651,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1621,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1622
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1638,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1623,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1625
	call	_brl_blitz_NullObjectError
_1625:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1628
	call	_brl_blitz_NullObjectError
_1628:
	movl	28(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1632
	movl	%eax,(%esp)
	call	_bbGCFree
_1632:
	movl	%ebx,140(%esi)
	movl	$_1633,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1635
	call	_brl_blitz_NullObjectError
_1635:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1637
	call	_brl_blitz_NullObjectError
_1637:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1639
_1622:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1650,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1640,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1642
	call	_brl_blitz_NullObjectError
_1642:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1645
	call	_brl_blitz_NullObjectError
_1645:
	movl	36(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1649
	movl	%eax,(%esp)
	call	_bbGCFree
_1649:
	movl	%ebx,140(%esi)
	calll	*_bbOnDebugLeaveScope
_1639:
	calll	*_bbOnDebugLeaveScope
_1620:
	calll	*_bbOnDebugLeaveScope
_1600:
	calll	*_bbOnDebugLeaveScope
	jmp	_1654
_1580:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1656,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1655,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
_1654:
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_845:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1740,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1658,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1660
	call	_brl_blitz_NullObjectError
_1660:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1662
	call	_brl_blitz_NullObjectError
_1662:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_1663
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1736,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1664,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	je	_1665
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1682,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1666,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1668
	call	_brl_blitz_NullObjectError
_1668:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1671
	call	_brl_blitz_NullObjectError
_1671:
	movl	60(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1675
	movl	%eax,(%esp)
	call	_bbGCFree
_1675:
	movl	%ebx,140(%esi)
	movl	$_1676,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1678
	call	_brl_blitz_NullObjectError
_1678:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1680
	call	_brl_blitz_NullObjectError
_1680:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1681,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1683
_1665:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1735,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1684,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1685
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1702,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1686,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1688
	call	_brl_blitz_NullObjectError
_1688:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1691
	call	_brl_blitz_NullObjectError
_1691:
	movl	44(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1695
	movl	%eax,(%esp)
	call	_bbGCFree
_1695:
	movl	%ebx,140(%esi)
	movl	$_1696,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1698
	call	_brl_blitz_NullObjectError
_1698:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1700
	call	_brl_blitz_NullObjectError
_1700:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1701,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1703
_1685:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1734,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1704,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	_2635
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1705
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1721,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1706,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1708
	call	_brl_blitz_NullObjectError
_1708:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1711
	call	_brl_blitz_NullObjectError
_1711:
	movl	24(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1715
	movl	%eax,(%esp)
	call	_bbGCFree
_1715:
	movl	%ebx,140(%esi)
	movl	$_1716,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1718
	call	_brl_blitz_NullObjectError
_1718:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1720
	call	_brl_blitz_NullObjectError
_1720:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1722
_1705:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1733,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1723,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1725
	call	_brl_blitz_NullObjectError
_1725:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1728
	call	_brl_blitz_NullObjectError
_1728:
	movl	32(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1732
	movl	%eax,(%esp)
	call	_bbGCFree
_1732:
	movl	%ebx,140(%esi)
	calll	*_bbOnDebugLeaveScope
_1722:
	calll	*_bbOnDebugLeaveScope
_1703:
	calll	*_bbOnDebugLeaveScope
_1683:
	calll	*_bbOnDebugLeaveScope
	jmp	_1737
_1663:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1739,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1738,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
_1737:
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_848:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1764,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1741,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1743
	call	_brl_blitz_NullObjectError
_1743:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1745
	call	_brl_blitz_NullObjectError
_1745:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_1746
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1762,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1747,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1749
	call	_brl_blitz_NullObjectError
_1749:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1752
	call	_brl_blitz_NullObjectError
_1752:
	movl	84(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1756
	movl	%eax,(%esp)
	call	_bbGCFree
_1756:
	movl	%ebx,140(%esi)
	movl	$_1757,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1759
	call	_brl_blitz_NullObjectError
_1759:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1761
	call	_brl_blitz_NullObjectError
_1761:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_1746:
	movl	$_1763,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_851:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1788,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1765,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1767
	call	_brl_blitz_NullObjectError
_1767:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1769
	call	_brl_blitz_NullObjectError
_1769:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_1770
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1786,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1771,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1773
	call	_brl_blitz_NullObjectError
_1773:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1776
	call	_brl_blitz_NullObjectError
_1776:
	movl	96(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1780
	movl	%eax,(%esp)
	call	_bbGCFree
_1780:
	movl	%ebx,140(%esi)
	movl	$_1781,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1783
	call	_brl_blitz_NullObjectError
_1783:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1785
	call	_brl_blitz_NullObjectError
_1785:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_1770:
	movl	$_1787,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_854:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1832,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1789,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	je	_1790
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1810,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1791,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1793
	call	_brl_blitz_NullObjectError
_1793:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1796
	call	_brl_blitz_NullObjectError
_1796:
	movl	112(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1800
	movl	%eax,(%esp)
	call	_bbGCFree
_1800:
	movl	%ebx,140(%esi)
	movl	$_1801,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1803
	call	_brl_blitz_NullObjectError
_1803:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1805
	call	_brl_blitz_NullObjectError
_1805:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_1806,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1808
	call	_brl_blitz_NullObjectError
_1808:
	movl	$1,132(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_1811
_1790:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1830,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1812,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1813
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1829,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1814,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1816
	call	_brl_blitz_NullObjectError
_1816:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1819
	call	_brl_blitz_NullObjectError
_1819:
	movl	80(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1823
	movl	%eax,(%esp)
	call	_bbGCFree
_1823:
	movl	%ebx,140(%esi)
	movl	$_1824,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1826
	call	_brl_blitz_NullObjectError
_1826:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1828
	call	_brl_blitz_NullObjectError
_1828:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_1813:
	calll	*_bbOnDebugLeaveScope
_1811:
	movl	$_1831,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_857:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1872,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1833,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	je	_1834
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1850,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1835,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1837
	call	_brl_blitz_NullObjectError
_1837:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1840
	call	_brl_blitz_NullObjectError
_1840:
	movl	100(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1844
	movl	%eax,(%esp)
	call	_bbGCFree
_1844:
	movl	%ebx,140(%esi)
	movl	$_1845,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1847
	call	_brl_blitz_NullObjectError
_1847:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1849
	call	_brl_blitz_NullObjectError
_1849:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_1851
_1834:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1870,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1852,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_1853
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1869,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1854,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1856
	call	_brl_blitz_NullObjectError
_1856:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1859
	call	_brl_blitz_NullObjectError
_1859:
	movl	92(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1863
	movl	%eax,(%esp)
	call	_bbGCFree
_1863:
	movl	%ebx,140(%esi)
	movl	$_1864,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1866
	call	_brl_blitz_NullObjectError
_1866:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1868
	call	_brl_blitz_NullObjectError
_1868:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_1853:
	calll	*_bbOnDebugLeaveScope
_1851:
	movl	$_1871,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_860:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1896,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1873,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1875
	call	_brl_blitz_NullObjectError
_1875:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1877
	call	_brl_blitz_NullObjectError
_1877:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_1878
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1894,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1879,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1881
	call	_brl_blitz_NullObjectError
_1881:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1884
	call	_brl_blitz_NullObjectError
_1884:
	movl	36(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1888
	movl	%eax,(%esp)
	call	_bbGCFree
_1888:
	movl	%ebx,140(%esi)
	movl	$_1889,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1891
	call	_brl_blitz_NullObjectError
_1891:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1893
	call	_brl_blitz_NullObjectError
_1893:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_1878:
	movl	$_1895,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_863:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1920,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1897,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1899
	call	_brl_blitz_NullObjectError
_1899:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1901
	call	_brl_blitz_NullObjectError
_1901:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_1902
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1918,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1903,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1905
	call	_brl_blitz_NullObjectError
_1905:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1908
	call	_brl_blitz_NullObjectError
_1908:
	movl	32(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1912
	movl	%eax,(%esp)
	call	_bbGCFree
_1912:
	movl	%ebx,140(%esi)
	movl	$_1913,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1915
	call	_brl_blitz_NullObjectError
_1915:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1917
	call	_brl_blitz_NullObjectError
_1917:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_1902:
	movl	$_1919,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_866:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1944,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1921,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1923
	call	_brl_blitz_NullObjectError
_1923:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1925
	call	_brl_blitz_NullObjectError
_1925:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_1926
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1942,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1927,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1929
	call	_brl_blitz_NullObjectError
_1929:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1932
	call	_brl_blitz_NullObjectError
_1932:
	movl	120(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1936
	movl	%eax,(%esp)
	call	_bbGCFree
_1936:
	movl	%ebx,140(%esi)
	movl	$_1937,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1939
	call	_brl_blitz_NullObjectError
_1939:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1941
	call	_brl_blitz_NullObjectError
_1941:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_1926:
	movl	$_1943,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_869:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1968,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1945,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1947
	call	_brl_blitz_NullObjectError
_1947:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1949
	call	_brl_blitz_NullObjectError
_1949:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_1950
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1966,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1951,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1953
	call	_brl_blitz_NullObjectError
_1953:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1956
	call	_brl_blitz_NullObjectError
_1956:
	movl	108(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1960
	movl	%eax,(%esp)
	call	_bbGCFree
_1960:
	movl	%ebx,140(%esi)
	movl	$_1961,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1963
	call	_brl_blitz_NullObjectError
_1963:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1965
	call	_brl_blitz_NullObjectError
_1965:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_1950:
	movl	$_1967,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_872:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1999,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1969,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	je	_1970
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1980,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1971,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1973
	call	_brl_blitz_NullObjectError
_1973:
	cmpl	$0,132(%ebx)
	je	_1974
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1979,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1975,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1977
	call	_brl_blitz_NullObjectError
_1977:
	movl	$0,132(%ebx)
	calll	*_bbOnDebugLeaveScope
_1974:
	calll	*_bbOnDebugLeaveScope
	jmp	_1981
_1970:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_1997,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_1982,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1984
	call	_brl_blitz_NullObjectError
_1984:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1987
	call	_brl_blitz_NullObjectError
_1987:
	movl	116(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_1991
	movl	%eax,(%esp)
	call	_bbGCFree
_1991:
	movl	%ebx,140(%esi)
	movl	$_1992,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1994
	call	_brl_blitz_NullObjectError
_1994:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1996
	call	_brl_blitz_NullObjectError
_1996:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_1981:
	movl	$_1998,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_875:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2028,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2000,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-16(%ebp)
	jne	_2001
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2026,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2002,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2004
	call	_brl_blitz_NullObjectError
_2004:
	cmpl	$0,132(%ebx)
	je	_2005
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2010,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2006,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2008
	call	_brl_blitz_NullObjectError
_2008:
	movl	$0,132(%ebx)
	calll	*_bbOnDebugLeaveScope
_2005:
	movl	$_2011,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2013
	call	_brl_blitz_NullObjectError
_2013:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2016
	call	_brl_blitz_NullObjectError
_2016:
	movl	104(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_2020
	movl	%eax,(%esp)
	call	_bbGCFree
_2020:
	movl	%ebx,140(%esi)
	movl	$_2021,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2023
	call	_brl_blitz_NullObjectError
_2023:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2025
	call	_brl_blitz_NullObjectError
_2025:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_2001:
	movl	$_2027,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_878:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2052,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2029,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2031
	call	_brl_blitz_NullObjectError
_2031:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2033
	call	_brl_blitz_NullObjectError
_2033:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_2034
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2050,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2035,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2037
	call	_brl_blitz_NullObjectError
_2037:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2040
	call	_brl_blitz_NullObjectError
_2040:
	movl	84(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_2044
	movl	%eax,(%esp)
	call	_bbGCFree
_2044:
	movl	%ebx,140(%esi)
	movl	$_2045,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2047
	call	_brl_blitz_NullObjectError
_2047:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2049
	call	_brl_blitz_NullObjectError
_2049:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_2034:
	movl	$_2051,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_881:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2076,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2053,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2055
	call	_brl_blitz_NullObjectError
_2055:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2057
	call	_brl_blitz_NullObjectError
_2057:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_2058
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2074,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2059,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2061
	call	_brl_blitz_NullObjectError
_2061:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2064
	call	_brl_blitz_NullObjectError
_2064:
	movl	96(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_2068
	movl	%eax,(%esp)
	call	_bbGCFree
_2068:
	movl	%ebx,140(%esi)
	movl	$_2069,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2071
	call	_brl_blitz_NullObjectError
_2071:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2073
	call	_brl_blitz_NullObjectError
_2073:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_2058:
	movl	$_2075,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	fldz
	fstps	(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_884:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2212,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2077,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2079
	call	_brl_blitz_NullObjectError
_2079:
	cmpl	$0,136(%ebx)
	je	_2080
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2107,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2081,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	flds	(%eax)
	flds	_2636
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_2082
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2100,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2083,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2085
	call	_brl_blitz_NullObjectError
_2085:
	flds	20(%ebx)
	fadds	_2637
	fstps	20(%ebx)
	movl	$_2087,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2089
	call	_brl_blitz_NullObjectError
_2089:
	flds	20(%ebx)
	flds	_2638
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_2090
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2099,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2091,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2093
	call	_brl_blitz_NullObjectError
_2093:
	flds	_2639
	fstps	20(%ebx)
	movl	$_2095,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2097
	call	_brl_blitz_NullObjectError
_2097:
	movl	$0,136(%ebx)
	calll	*_bbOnDebugLeaveScope
_2090:
	calll	*_bbOnDebugLeaveScope
	jmp	_2101
_2082:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2106,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2102,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2104
	call	_brl_blitz_NullObjectError
_2104:
	movl	$0,136(%ebx)
	calll	*_bbOnDebugLeaveScope
_2101:
	calll	*_bbOnDebugLeaveScope
	jmp	_2108
_2080:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2113,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2109,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2111
	call	_brl_blitz_NullObjectError
_2111:
	flds	20(%ebx)
	fsubs	_2640
	fstps	20(%ebx)
	calll	*_bbOnDebugLeaveScope
_2108:
	movl	$_2114,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2116
	call	_brl_blitz_NullObjectError
_2116:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_2119
	call	_brl_blitz_NullObjectError
_2119:
	flds	12(%ebx)
	fsubs	20(%esi)
	fstps	12(%ebx)
	movl	$_2120,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_2122
	call	_brl_blitz_NullObjectError
_2122:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2124
	call	_brl_blitz_NullObjectError
_2124:
	flds	12(%esi)
	flds	16(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_2125
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2191,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2126,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	_2641
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_2127
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2143,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2128,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2130
	call	_brl_blitz_NullObjectError
_2130:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2133
	call	_brl_blitz_NullObjectError
_2133:
	movl	24(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_2137
	movl	%eax,(%esp)
	call	_bbGCFree
_2137:
	movl	%ebx,140(%esi)
	movl	$_2138,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2140
	call	_brl_blitz_NullObjectError
_2140:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2142
	call	_brl_blitz_NullObjectError
_2142:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_2144
_2127:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2180,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2145,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_2146
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2162,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2147,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2149
	call	_brl_blitz_NullObjectError
_2149:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2152
	call	_brl_blitz_NullObjectError
_2152:
	movl	28(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_2156
	movl	%eax,(%esp)
	call	_bbGCFree
_2156:
	movl	%ebx,140(%esi)
	movl	$_2157,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2159
	call	_brl_blitz_NullObjectError
_2159:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2161
	call	_brl_blitz_NullObjectError
_2161:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_2163
_2146:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2179,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2164,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2166
	call	_brl_blitz_NullObjectError
_2166:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2169
	call	_brl_blitz_NullObjectError
_2169:
	movl	32(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_2173
	movl	%eax,(%esp)
	call	_bbGCFree
_2173:
	movl	%ebx,140(%esi)
	movl	$_2174,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2176
	call	_brl_blitz_NullObjectError
_2176:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2178
	call	_brl_blitz_NullObjectError
_2178:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_2163:
	calll	*_bbOnDebugLeaveScope
_2144:
	movl	$_2181,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2183
	call	_brl_blitz_NullObjectError
_2183:
	fldz
	fstps	20(%ebx)
	movl	$_2185,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2187
	call	_brl_blitz_NullObjectError
_2187:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_2190
	call	_brl_blitz_NullObjectError
_2190:
	flds	16(%esi)
	fstps	12(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_2192
_2125:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2211,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2193,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_2194
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2210,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2195,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2197
	call	_brl_blitz_NullObjectError
_2197:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2200
	call	_brl_blitz_NullObjectError
_2200:
	movl	128(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_2204
	movl	%eax,(%esp)
	call	_bbGCFree
_2204:
	movl	%ebx,140(%esi)
	movl	$_2205,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2207
	call	_brl_blitz_NullObjectError
_2207:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2209
	call	_brl_blitz_NullObjectError
_2209:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_2194:
	calll	*_bbOnDebugLeaveScope
_2192:
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_887:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2348,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2213,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2215
	call	_brl_blitz_NullObjectError
_2215:
	cmpl	$0,136(%ebx)
	je	_2216
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2243,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2217,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	flds	(%eax)
	flds	_2642
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_2218
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2236,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2219,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2221
	call	_brl_blitz_NullObjectError
_2221:
	flds	20(%ebx)
	fadds	_2643
	fstps	20(%ebx)
	movl	$_2223,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2225
	call	_brl_blitz_NullObjectError
_2225:
	flds	20(%ebx)
	flds	_2644
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_2226
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2235,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2227,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2229
	call	_brl_blitz_NullObjectError
_2229:
	flds	_2645
	fstps	20(%ebx)
	movl	$_2231,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2233
	call	_brl_blitz_NullObjectError
_2233:
	movl	$0,136(%ebx)
	calll	*_bbOnDebugLeaveScope
_2226:
	calll	*_bbOnDebugLeaveScope
	jmp	_2237
_2218:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2242,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2238,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2240
	call	_brl_blitz_NullObjectError
_2240:
	movl	$0,136(%ebx)
	calll	*_bbOnDebugLeaveScope
_2237:
	calll	*_bbOnDebugLeaveScope
	jmp	_2244
_2216:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2249,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2245,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2247
	call	_brl_blitz_NullObjectError
_2247:
	flds	20(%ebx)
	fsubs	_2646
	fstps	20(%ebx)
	calll	*_bbOnDebugLeaveScope
_2244:
	movl	$_2250,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2252
	call	_brl_blitz_NullObjectError
_2252:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_2255
	call	_brl_blitz_NullObjectError
_2255:
	flds	12(%ebx)
	fsubs	20(%esi)
	fstps	12(%ebx)
	movl	$_2256,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_2258
	call	_brl_blitz_NullObjectError
_2258:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2260
	call	_brl_blitz_NullObjectError
_2260:
	flds	12(%esi)
	flds	16(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_2261
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2327,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2262,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_2263
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2279,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2264,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2266
	call	_brl_blitz_NullObjectError
_2266:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2269
	call	_brl_blitz_NullObjectError
_2269:
	movl	28(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_2273
	movl	%eax,(%esp)
	call	_bbGCFree
_2273:
	movl	%ebx,140(%esi)
	movl	$_2274,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2276
	call	_brl_blitz_NullObjectError
_2276:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2278
	call	_brl_blitz_NullObjectError
_2278:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_2280
_2263:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2316,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2281,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	_2647
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_2282
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2298,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2283,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2285
	call	_brl_blitz_NullObjectError
_2285:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2288
	call	_brl_blitz_NullObjectError
_2288:
	movl	24(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_2292
	movl	%eax,(%esp)
	call	_bbGCFree
_2292:
	movl	%ebx,140(%esi)
	movl	$_2293,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2295
	call	_brl_blitz_NullObjectError
_2295:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2297
	call	_brl_blitz_NullObjectError
_2297:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
	jmp	_2299
_2282:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2315,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2300,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2302
	call	_brl_blitz_NullObjectError
_2302:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2305
	call	_brl_blitz_NullObjectError
_2305:
	movl	36(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_2309
	movl	%eax,(%esp)
	call	_bbGCFree
_2309:
	movl	%ebx,140(%esi)
	movl	$_2310,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2312
	call	_brl_blitz_NullObjectError
_2312:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2314
	call	_brl_blitz_NullObjectError
_2314:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_2299:
	calll	*_bbOnDebugLeaveScope
_2280:
	movl	$_2317,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2319
	call	_brl_blitz_NullObjectError
_2319:
	fldz
	fstps	20(%ebx)
	movl	$_2321,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2323
	call	_brl_blitz_NullObjectError
_2323:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_2326
	call	_brl_blitz_NullObjectError
_2326:
	flds	16(%esi)
	fstps	12(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_2328
_2261:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2347,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2329,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	flds	(%eax)
	flds	_2648
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_2330
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2346,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2331,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2333
	call	_brl_blitz_NullObjectError
_2333:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2336
	call	_brl_blitz_NullObjectError
_2336:
	movl	124(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_2340
	movl	%eax,(%esp)
	call	_bbGCFree
_2340:
	movl	%ebx,140(%esi)
	movl	$_2341,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2343
	call	_brl_blitz_NullObjectError
_2343:
	movl	140(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2345
	call	_brl_blitz_NullObjectError
_2345:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_2330:
	calll	*_bbOnDebugLeaveScope
_2328:
	calll	*_bbOnDebugLeaveScope
	jmp	_811
_811:
	mov	$0,%ebx
	jmp	_143
_143:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tplayer_display:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2359,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2350,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2352
	call	_brl_blitz_NullObjectError
_2352:
	movl	140(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_2354
	call	_brl_blitz_NullObjectError
_2354:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_2356
	call	_brl_blitz_NullObjectError
_2356:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2358
	call	_brl_blitz_NullObjectError
_2358:
	flds	12(%ebx)
	fstps	8(%esp)
	flds	8(%esi)
	fstps	4(%esp)
	movl	%edi,(%esp)
	movl	(%edi),%eax
	calll	*60(%eax)
	mov	$0,%ebx
	jmp	_146
_146:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TileRow_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_2370,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_TileRow,(%eax)
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
	movl	-4(%ebp),%eax
	fldz
	fstps	24(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	movl	-4(%ebp),%eax
	movl	$0,36(%eax)
	movl	%ebp,4(%esp)
	movl	$_2369,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2361,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2363
	call	_brl_blitz_NullObjectError
_2363:
	call	_brl_graphics_GraphicsWidth
	movl	%eax,32(%ebx)
	movl	$_2365,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2367
	call	_brl_blitz_NullObjectError
_2367:
	call	_brl_graphics_GraphicsHeight
	movl	%eax,36(%ebx)
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
__bb_TileRow_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
_152:
	movl	28(%eax),%eax
	decl	4(%eax)
	jnz	_2373
	movl	%eax,(%esp)
	call	_bbGCFree
_2373:
	mov	$0,%eax
	jmp	_2371
_2371:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TileRow_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	push	%ebx
	push	%esi
	sub	$8,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	flds	16(%ebp)
	fstps	-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2409,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2374,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_TileRow,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_2376,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2378
	call	_brl_blitz_NullObjectError
_2378:
	flds	-4(%ebp)
	fstps	8(%ebx)
	movl	$_2380,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2382
	call	_brl_blitz_NullObjectError
_2382:
	flds	-8(%ebp)
	fstps	12(%ebx)
	movl	$_2384,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2386
	call	_brl_blitz_NullObjectError
_2386:
	mov	%ebx,%esi
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2389
	call	_brl_blitz_NullObjectError
_2389:
	movl	32(%ebx),%eax
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	fstps	16(%esi)
	movl	$_2390,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2392
	call	_brl_blitz_NullObjectError
_2392:
	mov	%ebx,%esi
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2395
	call	_brl_blitz_NullObjectError
_2395:
	movl	12(%ebx),%eax
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	fstps	20(%esi)
	movl	$_2396,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2398
	call	_brl_blitz_NullObjectError
_2398:
	flds	-12(%ebp)
	fstps	24(%ebx)
	movl	$_2400,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2402
	call	_brl_blitz_NullObjectError
_2402:
	movl	-16(%ebp),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_2407
	movl	%eax,(%esp)
	call	_bbGCFree
_2407:
	movl	%esi,28(%ebx)
	movl	$_2408,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	jmp	_158
_158:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TileRow_update:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	flds	12(%ebp)
	fstps	-8(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2422,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2410,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2412
	call	_brl_blitz_NullObjectError
_2412:
	movl	%ebx,-12(%ebp)
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_2415
	call	_brl_blitz_NullObjectError
_2415:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_2417
	call	_brl_blitz_NullObjectError
_2417:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2419
	call	_brl_blitz_NullObjectError
_2419:
	movl	28(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2421
	call	_brl_blitz_NullObjectError
_2421:
	movl	8(%ebx),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	8(%esp)
	flds	8(%edi)
	flds	24(%esi)
	fmuls	-8(%ebp)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatMod
	movl	-12(%ebp),%eax
	fstps	8(%eax)
	mov	$0,%ebx
	jmp	_162
_162:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TileRow_display:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2438,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2423,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_2425
	call	_brl_blitz_NullObjectError
_2425:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_2427
	call	_brl_blitz_NullObjectError
_2427:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2429
	call	_brl_blitz_NullObjectError
_2429:
	flds	20(%ebx)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,12(%esp)
	flds	16(%esi)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,8(%esp)
	flds	12(%edi)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,4(%esp)
	movl	$0,(%esp)
	call	_brl_max2d_SetViewport
	movl	$_2430,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_2432
	call	_brl_blitz_NullObjectError
_2432:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_2434
	call	_brl_blitz_NullObjectError
_2434:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2436
	call	_brl_blitz_NullObjectError
_2436:
	movl	$0,12(%esp)
	flds	12(%ebx)
	fstps	8(%esp)
	flds	8(%esi)
	fstps	4(%esp)
	movl	28(%edi),%eax
	movl	%eax,(%esp)
	call	_brl_max2d_TileImage
	movl	$_2437,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_graphics_GraphicsHeight
	movl	%eax,12(%esp)
	call	_brl_graphics_GraphicsWidth
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	call	_brl_max2d_SetViewport
	mov	$0,%ebx
	jmp	_165
_165:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TBackground_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_2440,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_TBackground,(%eax)
	movl	%ebp,4(%esp)
	movl	$_2439,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_168
_168:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TBackground_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
_171:
	mov	$0,%eax
	jmp	_2442
_2442:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TBackground_Create:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2476,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2443,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	__bb_TBackground_list,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2445
	call	_brl_blitz_NullObjectError
_2445:
	movl	_bb_Background1,%eax
	movl	%eax,12(%esp)
	fldz
	fstps	8(%esp)
	fldz
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_2446,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	__bb_TBackground_list,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2448
	call	_brl_blitz_NullObjectError
_2448:
	movl	_bb_Background2,%eax
	movl	%eax,12(%esp)
	flds	_3123
	fstps	8(%esp)
	flds	_3124
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_2449,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	__bb_TBackground_list,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2451
	call	_brl_blitz_NullObjectError
_2451:
	movl	_bb_Background3,%eax
	movl	%eax,12(%esp)
	flds	_3125
	fstps	8(%esp)
	flds	_3126
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_2452,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	__bb_TBackground_list,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2454
	call	_brl_blitz_NullObjectError
_2454:
	movl	_bb_Background4,%eax
	movl	%eax,12(%esp)
	flds	_3127
	fstps	8(%esp)
	flds	_3128
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_2455,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	__bb_TBackground_list,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2457
	call	_brl_blitz_NullObjectError
_2457:
	movl	_bb_Background5,%eax
	movl	%eax,12(%esp)
	flds	_3129
	fstps	8(%esp)
	flds	_3130
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_2458,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	__bb_TBackground_list,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2460
	call	_brl_blitz_NullObjectError
_2460:
	movl	_bb_Cloud4,%eax
	movl	%eax,12(%esp)
	flds	_3131
	fstps	8(%esp)
	flds	_3132
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_2461,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	__bb_TBackground_list,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2463
	call	_brl_blitz_NullObjectError
_2463:
	movl	_bb_Cloud3,%eax
	movl	%eax,12(%esp)
	flds	_3133
	fstps	8(%esp)
	flds	_3134
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_2464,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	__bb_TBackground_list,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2466
	call	_brl_blitz_NullObjectError
_2466:
	movl	_bb_Cloud2,%eax
	movl	%eax,12(%esp)
	flds	_3135
	fstps	8(%esp)
	flds	_3136
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_2467,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	__bb_TBackground_list,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2469
	call	_brl_blitz_NullObjectError
_2469:
	movl	_bb_Cloud1,%eax
	movl	%eax,12(%esp)
	flds	_3137
	fstps	8(%esp)
	fldz
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_2470,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	__bb_TBackground_list,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2472
	call	_brl_blitz_NullObjectError
_2472:
	movl	_bb_Tree,%eax
	movl	%eax,12(%esp)
	flds	_3138
	fstps	8(%esp)
	flds	_3139
	fstps	4(%esp)
	flds	_3140
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	$_2473,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	__bb_TBackground_list,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2475
	call	_brl_blitz_NullObjectError
_2475:
	movl	_bb_Background6,%eax
	movl	%eax,12(%esp)
	flds	_3141
	fstps	8(%esp)
	flds	_3142
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	mov	$_bbNullObject,%ebx
	jmp	_173
_173:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TBackground_update:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$20,%esp
	flds	8(%ebp)
	fstps	-4(%ebp)
	movl	$_bbNullObject,-8(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2492,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2477,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-8(%ebp)
	movl	__bb_TBackground_list,%edi
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2481
	call	_brl_blitz_NullObjectError
_2481:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_19
_21:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2486
	call	_brl_blitz_NullObjectError
_2486:
	movl	$_bb_TileRow,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-8(%ebp)
	cmpl	$_bbNullObject,-8(%ebp)
	je	_19
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_2490,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_2487,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2489
	call	_brl_blitz_NullObjectError
_2489:
	flds	-4(%ebp)
	fstps	4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	calll	*_bbOnDebugLeaveScope
_19:
	mov	%esi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_2484
	call	_brl_blitz_NullObjectError
_2484:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_21
_20:
	mov	$0,%ebx
	jmp	_176
_176:
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
_391:
	.long	0
_350:
	.asciz	"SOBOO"
_351:
	.asciz	"T_list"
_352:
	.asciz	":brl.linkedlist.TList"
	.align	4
_bb_T_list:
	.long	_bbNullObject
_353:
	.asciz	"Background1"
_36:
	.asciz	":brl.max2d.TImage"
	.align	4
_bb_Background1:
	.long	_bbNullObject
_354:
	.asciz	"Background2"
	.align	4
_bb_Background2:
	.long	_bbNullObject
_355:
	.asciz	"Background3"
	.align	4
_bb_Background3:
	.long	_bbNullObject
_356:
	.asciz	"Background4"
	.align	4
_bb_Background4:
	.long	_bbNullObject
_357:
	.asciz	"Background5"
	.align	4
_bb_Background5:
	.long	_bbNullObject
_358:
	.asciz	"Background6"
	.align	4
_bb_Background6:
	.long	_bbNullObject
_359:
	.asciz	"Cloud1"
	.align	4
_bb_Cloud1:
	.long	_bbNullObject
_360:
	.asciz	"Cloud2"
	.align	4
_bb_Cloud2:
	.long	_bbNullObject
_361:
	.asciz	"Cloud3"
	.align	4
_bb_Cloud3:
	.long	_bbNullObject
_362:
	.asciz	"Cloud4"
	.align	4
_bb_Cloud4:
	.long	_bbNullObject
_363:
	.asciz	"Tree"
	.align	4
_bb_Tree:
	.long	_bbNullObject
_364:
	.asciz	"walkRightImg"
	.align	4
_bb_walkRightImg:
	.long	_bbNullObject
_365:
	.asciz	"walkLeftImg"
	.align	4
_bb_walkLeftImg:
	.long	_bbNullObject
_366:
	.asciz	"turnLeftImg"
	.align	4
_bb_turnLeftImg:
	.long	_bbNullObject
_367:
	.asciz	"turnRightImg"
	.align	4
_bb_turnRightImg:
	.long	_bbNullObject
_368:
	.asciz	"punchRightOutImg"
	.align	4
_bb_punchRightOutImg:
	.long	_bbNullObject
_369:
	.asciz	"punchRightInImg"
	.align	4
_bb_punchRightInImg:
	.long	_bbNullObject
_370:
	.asciz	"punchrightImg"
	.align	4
_bb_punchrightImg:
	.long	_bbNullObject
_371:
	.asciz	"punchLeftOutImg"
	.align	4
_bb_punchLeftOutImg:
	.long	_bbNullObject
_372:
	.asciz	"punchLeftInImg"
	.align	4
_bb_punchLeftInImg:
	.long	_bbNullObject
_373:
	.asciz	"punchLeftImg"
	.align	4
_bb_punchLeftImg:
	.long	_bbNullObject
_374:
	.asciz	"crouchRightDownImg"
	.align	4
_bb_crouchRightDownImg:
	.long	_bbNullObject
_375:
	.asciz	"crouchRightUpImg"
	.align	4
_bb_crouchRightUpImg:
	.long	_bbNullObject
_376:
	.asciz	"crouchleftDownImg"
	.align	4
_bb_crouchleftDownImg:
	.long	_bbNullObject
_377:
	.asciz	"crouchleftUpImg"
	.align	4
_bb_crouchleftUpImg:
	.long	_bbNullObject
_378:
	.asciz	"framesImg"
	.align	4
_bb_framesImg:
	.long	_bbNullObject
_379:
	.asciz	"walkrightgunImg"
	.align	4
_bb_walkrightgunImg:
	.long	_bbNullObject
_380:
	.asciz	"walkleftgunImg"
	.align	4
_bb_walkleftgunImg:
	.long	_bbNullObject
_381:
	.asciz	"turnLeftgun"
	.align	4
_bb_turnLeftgun:
	.long	_bbNullObject
_382:
	.asciz	"turnRightGun"
	.align	4
_bb_turnRightGun:
	.long	_bbNullObject
_383:
	.asciz	"nealRightpunchoutImg"
	.align	4
_bb_nealRightpunchoutImg:
	.long	_bbNullObject
_384:
	.asciz	"nealRightpunchinImg"
	.align	4
_bb_nealRightpunchinImg:
	.long	_bbNullObject
_385:
	.asciz	"nealLeftpunchOutImg"
	.align	4
_bb_nealLeftpunchOutImg:
	.long	_bbNullObject
_386:
	.asciz	"nealleftpunchInImg"
	.align	4
_bb_nealleftpunchInImg:
	.long	_bbNullObject
_387:
	.asciz	"standingggunRightImg"
	.align	4
_bb_standingggunRightImg:
	.long	_bbNullObject
_388:
	.asciz	"knealingdowngunleftImg"
	.align	4
_bb_knealingdowngunleftImg:
	.long	_bbNullObject
_389:
	.asciz	"player"
_390:
	.asciz	":Tplayer"
	.align	4
_349:
	.long	1
	.long	_350
	.long	4
	.long	_351
	.long	_352
	.long	_bb_T_list
	.long	4
	.long	_353
	.long	_36
	.long	_bb_Background1
	.long	4
	.long	_354
	.long	_36
	.long	_bb_Background2
	.long	4
	.long	_355
	.long	_36
	.long	_bb_Background3
	.long	4
	.long	_356
	.long	_36
	.long	_bb_Background4
	.long	4
	.long	_357
	.long	_36
	.long	_bb_Background5
	.long	4
	.long	_358
	.long	_36
	.long	_bb_Background6
	.long	4
	.long	_359
	.long	_36
	.long	_bb_Cloud1
	.long	4
	.long	_360
	.long	_36
	.long	_bb_Cloud2
	.long	4
	.long	_361
	.long	_36
	.long	_bb_Cloud3
	.long	4
	.long	_362
	.long	_36
	.long	_bb_Cloud4
	.long	4
	.long	_363
	.long	_36
	.long	_bb_Tree
	.long	4
	.long	_364
	.long	_36
	.long	_bb_walkRightImg
	.long	4
	.long	_365
	.long	_36
	.long	_bb_walkLeftImg
	.long	4
	.long	_366
	.long	_36
	.long	_bb_turnLeftImg
	.long	4
	.long	_367
	.long	_36
	.long	_bb_turnRightImg
	.long	4
	.long	_368
	.long	_36
	.long	_bb_punchRightOutImg
	.long	4
	.long	_369
	.long	_36
	.long	_bb_punchRightInImg
	.long	4
	.long	_370
	.long	_36
	.long	_bb_punchrightImg
	.long	4
	.long	_371
	.long	_36
	.long	_bb_punchLeftOutImg
	.long	4
	.long	_372
	.long	_36
	.long	_bb_punchLeftInImg
	.long	4
	.long	_373
	.long	_36
	.long	_bb_punchLeftImg
	.long	4
	.long	_374
	.long	_36
	.long	_bb_crouchRightDownImg
	.long	4
	.long	_375
	.long	_36
	.long	_bb_crouchRightUpImg
	.long	4
	.long	_376
	.long	_36
	.long	_bb_crouchleftDownImg
	.long	4
	.long	_377
	.long	_36
	.long	_bb_crouchleftUpImg
	.long	4
	.long	_378
	.long	_36
	.long	_bb_framesImg
	.long	4
	.long	_379
	.long	_36
	.long	_bb_walkrightgunImg
	.long	4
	.long	_380
	.long	_36
	.long	_bb_walkleftgunImg
	.long	4
	.long	_381
	.long	_36
	.long	_bb_turnLeftgun
	.long	4
	.long	_382
	.long	_36
	.long	_bb_turnRightGun
	.long	4
	.long	_383
	.long	_36
	.long	_bb_nealRightpunchoutImg
	.long	4
	.long	_384
	.long	_36
	.long	_bb_nealRightpunchinImg
	.long	4
	.long	_385
	.long	_36
	.long	_bb_nealLeftpunchOutImg
	.long	4
	.long	_386
	.long	_36
	.long	_bb_nealleftpunchInImg
	.long	4
	.long	_387
	.long	_36
	.long	_bb_standingggunRightImg
	.long	4
	.long	_388
	.long	_36
	.long	_bb_knealingdowngunleftImg
	.long	2
	.long	_389
	.long	_390
	.long	-4
	.long	0
_29:
	.asciz	"Tsprite"
_30:
	.asciz	"frame"
_31:
	.asciz	"i"
_32:
	.asciz	"wait"
_33:
	.asciz	"rate"
_34:
	.asciz	"count"
_35:
	.asciz	"image"
_37:
	.asciz	"New"
_38:
	.asciz	"()i"
_39:
	.asciz	"Delete"
_40:
	.asciz	"Create"
_41:
	.asciz	"(:brl.max2d.TImage,i,i,i):Tsprite"
_42:
	.asciz	"reset"
_43:
	.asciz	"update"
_44:
	.asciz	"display"
_45:
	.asciz	"(f,f)i"
	.align	4
_28:
	.long	2
	.long	_29
	.long	3
	.long	_30
	.long	_31
	.long	8
	.long	3
	.long	_32
	.long	_31
	.long	12
	.long	3
	.long	_33
	.long	_31
	.long	16
	.long	3
	.long	_34
	.long	_31
	.long	20
	.long	3
	.long	_35
	.long	_36
	.long	24
	.long	6
	.long	_37
	.long	_38
	.long	16
	.long	6
	.long	_39
	.long	_38
	.long	20
	.long	7
	.long	_40
	.long	_41
	.long	48
	.long	6
	.long	_42
	.long	_38
	.long	52
	.long	6
	.long	_43
	.long	_38
	.long	56
	.long	6
	.long	_44
	.long	_45
	.long	60
	.long	0
	.align	4
_bb_Tsprite:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_28
	.long	28
	.long	__bb_Tsprite_New
	.long	__bb_Tsprite_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Tsprite_Create
	.long	__bb_Tsprite_reset
	.long	__bb_Tsprite_update
	.long	__bb_Tsprite_display
_47:
	.asciz	"Tplayer"
_48:
	.asciz	"MOVEL"
	.align	4
_49:
	.long	_bbStringClass
	.long	2147483646
	.long	2
	.short	45,49
_50:
	.asciz	"MOVER"
	.align	4
_51:
	.long	_bbStringClass
	.long	2147483646
	.long	1
	.short	49
_52:
	.asciz	"MOVED"
_53:
	.asciz	"MOVEJ"
_54:
	.asciz	"x"
_55:
	.asciz	"f"
_56:
	.asciz	"y"
_57:
	.asciz	"posy"
_58:
	.asciz	"speedy"
_59:
	.asciz	"walkL"
_60:
	.asciz	":Tsprite"
_61:
	.asciz	"walkR"
_62:
	.asciz	"standL"
_63:
	.asciz	"standR"
_64:
	.asciz	"turnL"
_65:
	.asciz	"TurnR"
_66:
	.asciz	"PunchRO"
_67:
	.asciz	"PunchRI"
_68:
	.asciz	"punchR"
_69:
	.asciz	"punchLO"
_70:
	.asciz	"punchLI"
_71:
	.asciz	"punchL"
_72:
	.asciz	"punchInL"
_73:
	.asciz	"crouchDR"
_74:
	.asciz	"crouchUR"
_75:
	.asciz	"knealedR"
_76:
	.asciz	"crouchDL"
_77:
	.asciz	"crouchUL"
_78:
	.asciz	"knealedL"
_79:
	.asciz	"knealpunchLO"
_80:
	.asciz	"knealPunchLI"
_81:
	.asciz	"knealPunchL"
_82:
	.asciz	"knealPunchRO"
_83:
	.asciz	"knealPunchRI"
_84:
	.asciz	"knealPunchR"
_85:
	.asciz	"jumpL"
_86:
	.asciz	"jumpR"
_87:
	.asciz	"punch"
_88:
	.asciz	"jump"
_89:
	.asciz	"animation"
_90:
	.asciz	"(f,f):Tplayer"
_91:
	.asciz	"(*f,*f,i)i"
	.align	4
_46:
	.long	2
	.long	_47
	.long	1
	.long	_48
	.long	_31
	.long	_49
	.long	1
	.long	_50
	.long	_31
	.long	_51
	.long	1
	.long	_52
	.long	_31
	.long	_51
	.long	1
	.long	_53
	.long	_31
	.long	_49
	.long	3
	.long	_54
	.long	_55
	.long	8
	.long	3
	.long	_56
	.long	_55
	.long	12
	.long	3
	.long	_57
	.long	_55
	.long	16
	.long	3
	.long	_58
	.long	_55
	.long	20
	.long	3
	.long	_59
	.long	_60
	.long	24
	.long	3
	.long	_61
	.long	_60
	.long	28
	.long	3
	.long	_62
	.long	_60
	.long	32
	.long	3
	.long	_63
	.long	_60
	.long	36
	.long	3
	.long	_64
	.long	_60
	.long	40
	.long	3
	.long	_65
	.long	_60
	.long	44
	.long	3
	.long	_66
	.long	_60
	.long	48
	.long	3
	.long	_67
	.long	_60
	.long	52
	.long	3
	.long	_68
	.long	_60
	.long	56
	.long	3
	.long	_69
	.long	_60
	.long	60
	.long	3
	.long	_70
	.long	_60
	.long	64
	.long	3
	.long	_71
	.long	_60
	.long	68
	.long	3
	.long	_72
	.long	_60
	.long	72
	.long	3
	.long	_73
	.long	_60
	.long	76
	.long	3
	.long	_74
	.long	_60
	.long	80
	.long	3
	.long	_75
	.long	_60
	.long	84
	.long	3
	.long	_76
	.long	_60
	.long	88
	.long	3
	.long	_77
	.long	_60
	.long	92
	.long	3
	.long	_78
	.long	_60
	.long	96
	.long	3
	.long	_79
	.long	_60
	.long	100
	.long	3
	.long	_80
	.long	_60
	.long	104
	.long	3
	.long	_81
	.long	_60
	.long	108
	.long	3
	.long	_82
	.long	_60
	.long	112
	.long	3
	.long	_83
	.long	_60
	.long	116
	.long	3
	.long	_84
	.long	_60
	.long	120
	.long	3
	.long	_85
	.long	_60
	.long	124
	.long	3
	.long	_86
	.long	_60
	.long	128
	.long	3
	.long	_87
	.long	_31
	.long	132
	.long	3
	.long	_88
	.long	_31
	.long	136
	.long	3
	.long	_89
	.long	_60
	.long	140
	.long	6
	.long	_37
	.long	_38
	.long	16
	.long	6
	.long	_39
	.long	_38
	.long	20
	.long	7
	.long	_40
	.long	_90
	.long	48
	.long	6
	.long	_43
	.long	_91
	.long	52
	.long	6
	.long	_44
	.long	_38
	.long	56
	.long	0
	.align	4
_bb_Tplayer:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_46
	.long	144
	.long	__bb_Tplayer_New
	.long	__bb_Tplayer_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Tplayer_Create
	.long	__bb_Tplayer_update
	.long	__bb_Tplayer_display
_93:
	.asciz	"TileRow"
_94:
	.asciz	"vw"
_95:
	.asciz	"vh"
_96:
	.asciz	"speed"
_97:
	.asciz	"gw"
_98:
	.asciz	"gh"
_99:
	.asciz	"(f,f,f,:brl.max2d.TImage):TileRow"
_100:
	.asciz	"(f)i"
	.align	4
_92:
	.long	2
	.long	_93
	.long	3
	.long	_54
	.long	_55
	.long	8
	.long	3
	.long	_56
	.long	_55
	.long	12
	.long	3
	.long	_94
	.long	_55
	.long	16
	.long	3
	.long	_95
	.long	_55
	.long	20
	.long	3
	.long	_96
	.long	_55
	.long	24
	.long	3
	.long	_35
	.long	_36
	.long	28
	.long	3
	.long	_97
	.long	_31
	.long	32
	.long	3
	.long	_98
	.long	_31
	.long	36
	.long	6
	.long	_37
	.long	_38
	.long	16
	.long	6
	.long	_39
	.long	_38
	.long	20
	.long	7
	.long	_40
	.long	_99
	.long	48
	.long	6
	.long	_43
	.long	_100
	.long	52
	.long	6
	.long	_44
	.long	_38
	.long	56
	.long	0
	.align	4
_bb_TileRow:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_92
	.long	40
	.long	__bb_TileRow_New
	.long	__bb_TileRow_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_TileRow_Create
	.long	__bb_TileRow_update
	.long	__bb_TileRow_display
_179:
	.asciz	"/Users/jesseperez/Desktop/programming/blitzmax/SOB/SOBOO.bmx"
	.align	4
_178:
	.long	_179
	.long	478
	.long	6
	.align	4
_181:
	.long	0
	.align	4
__bb_TBackground_list:
	.long	_bbNullObject
_102:
	.asciz	"TBackground"
_103:
	.asciz	"():TbackGround"
	.align	4
_101:
	.long	2
	.long	_102
	.long	6
	.long	_37
	.long	_38
	.long	16
	.long	6
	.long	_39
	.long	_38
	.long	20
	.long	7
	.long	_40
	.long	_103
	.long	48
	.long	7
	.long	_43
	.long	_100
	.long	52
	.long	0
	.align	4
_bb_TBackground:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_101
	.long	8
	.long	__bb_TBackground_New
	.long	__bb_TBackground_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_TBackground_Create
	.long	__bb_TBackground_update
	.align	4
_183:
	.long	_179
	.long	4
	.long	1
	.align	4
_186:
	.long	_179
	.long	6
	.long	1
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	109,101,100,105,97,92,115,107,121,46,112,110,103
	.align	4
_189:
	.long	_179
	.long	7
	.long	1
	.align	4
_8:
	.long	_bbStringClass
	.long	2147483647
	.long	19
	.short	109,101,100,105,97,92,109,111,117,110,116,97,105,110,115,46
	.short	112,110,103
	.align	4
_192:
	.long	_179
	.long	8
	.long	1
	.align	4
_9:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	109,101,100,105,97,92,115,111,105,108,49,46,112,110,103
	.align	4
_195:
	.long	_179
	.long	9
	.long	1
	.align	4
_10:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	109,101,100,105,97,92,115,111,105,108,50,46,112,110,103
	.align	4
_198:
	.long	_179
	.long	10
	.long	1
	.align	4
_11:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	109,101,100,105,97,92,115,111,105,108,51,46,112,110,103
	.align	4
_201:
	.long	_179
	.long	11
	.long	1
	.align	4
_12:
	.long	_bbStringClass
	.long	2147483647
	.long	17
	.short	109,101,100,105,97,92,98,97,114,114,105,101,114,46,112,110
	.short	103
	.align	4
_204:
	.long	_179
	.long	14
	.long	1
	.align	4
_13:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	109,101,100,105,97,92,99,108,111,117,100,49,46,112,110,103
	.align	4
_207:
	.long	_179
	.long	15
	.long	1
	.align	4
_14:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	109,101,100,105,97,92,99,108,111,117,100,50,46,112,110,103
	.align	4
_210:
	.long	_179
	.long	16
	.long	1
	.align	4
_15:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	109,101,100,105,97,92,99,108,111,117,100,51,46,112,110,103
	.align	4
_213:
	.long	_179
	.long	17
	.long	1
	.align	4
_16:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	109,101,100,105,97,92,99,108,111,117,100,52,46,112,110,103
	.align	4
_216:
	.long	_179
	.long	19
	.long	1
	.align	4
_17:
	.long	_bbStringClass
	.long	2147483647
	.long	20
	.short	109,101,100,105,97,92,115,99,114,111,108,108,116,114,101,101
	.short	46,112,110,103
	.align	4
_219:
	.long	_179
	.long	21
	.long	1
	.align	4
_18:
	.long	_bbStringClass
	.long	2147483647
	.long	19
	.short	109,101,100,105,97,92,115,111,98,115,112,114,105,116,101,46
	.short	112,110,103
	.align	4
_222:
	.long	_179
	.long	22
	.long	1
	.align	4
_225:
	.long	_179
	.long	23
	.long	1
	.align	4
_228:
	.long	_179
	.long	24
	.long	1
	.align	4
_231:
	.long	_179
	.long	25
	.long	1
	.align	4
_234:
	.long	_179
	.long	26
	.long	1
	.align	4
_237:
	.long	_179
	.long	27
	.long	1
	.align	4
_240:
	.long	_179
	.long	28
	.long	1
	.align	4
_243:
	.long	_179
	.long	29
	.long	1
	.align	4
_246:
	.long	_179
	.long	30
	.long	1
	.align	4
_249:
	.long	_179
	.long	31
	.long	1
	.align	4
_252:
	.long	_179
	.long	32
	.long	1
	.align	4
_255:
	.long	_179
	.long	33
	.long	1
	.align	4
_258:
	.long	_179
	.long	34
	.long	1
	.align	4
_261:
	.long	_179
	.long	35
	.long	1
	.align	4
_264:
	.long	_179
	.long	36
	.long	1
	.align	4
_267:
	.long	_179
	.long	37
	.long	1
	.align	4
_270:
	.long	_179
	.long	38
	.long	1
	.align	4
_273:
	.long	_179
	.long	39
	.long	1
	.align	4
_276:
	.long	_179
	.long	40
	.long	1
	.align	4
_278:
	.long	0
	.align	4
_280:
	.long	_179
	.long	41
	.long	1
	.align	4
_283:
	.long	_179
	.long	42
	.long	1
	.align	4
_286:
	.long	_179
	.long	43
	.long	1
	.align	4
_289:
	.long	_179
	.long	44
	.long	1
	.align	4
_292:
	.long	_179
	.long	45
	.long	1
	.align	4
_295:
	.long	_179
	.long	47
	.long	1
	.align	4
_298:
	.long	3
	.long	0
	.long	0
	.align	4
_297:
	.long	_179
	.long	47
	.long	34
	.align	4
_299:
	.long	_179
	.long	505
	.long	1
	.align	4
_300:
	.long	_179
	.long	506
	.long	1
	.align	4
_301:
	.long	_179
	.long	508
	.long	1
	.align	4
_302:
	.long	_179
	.long	509
	.long	1
	.align	4
_2493:
	.long	0x43b40000
	.align	4
_2494:
	.long	0x43960000
	.align	4
_304:
	.long	_179
	.long	526
	.long	1
_344:
	.asciz	"dirx"
_345:
	.asciz	"diry"
_346:
	.asciz	"action"
_347:
	.asciz	"temp"
_348:
	.asciz	":tileRow"
	.align	4
_343:
	.long	3
	.long	0
	.long	2
	.long	_344
	.long	_55
	.long	-8
	.long	2
	.long	_345
	.long	_55
	.long	-12
	.long	2
	.long	_346
	.long	_31
	.long	-16
	.long	2
	.long	_347
	.long	_348
	.long	-20
	.long	0
	.align	4
_305:
	.long	_179
	.long	512
	.long	7
	.align	4
_306:
	.long	_179
	.long	513
	.long	2
	.align	4
_308:
	.long	_179
	.long	514
	.long	2
	.align	4
_310:
	.long	_179
	.long	515
	.long	2
	.align	4
_312:
	.long	_179
	.long	516
	.long	2
	.align	4
_315:
	.long	_179
	.long	517
	.long	6
	.align	4
_316:
	.long	_179
	.long	518
	.long	2
	.align	4
_320:
	.long	_179
	.long	519
	.long	2
_340:
	.asciz	"t"
_341:
	.asciz	":TileRow"
	.align	4
_339:
	.long	3
	.long	0
	.long	2
	.long	_340
	.long	_341
	.long	-24
	.long	0
	.align	4
_330:
	.long	_179
	.long	520
	.long	3
	.align	4
_335:
	.long	3
	.long	0
	.long	0
	.align	4
_332:
	.long	_179
	.long	521
	.long	4
	.align	4
_336:
	.long	_179
	.long	523
	.long	3
	.align	4
_342:
	.long	_179
	.long	525
	.long	6
_396:
	.asciz	"Self"
	.align	4
_395:
	.long	1
	.long	_37
	.long	2
	.long	_396
	.long	_60
	.long	-4
	.long	0
	.align	4
_394:
	.long	3
	.long	0
	.long	0
_428:
	.asciz	"s"
	.align	4
_427:
	.long	1
	.long	_40
	.long	2
	.long	_35
	.long	_36
	.long	-4
	.long	2
	.long	_32
	.long	_31
	.long	-8
	.long	2
	.long	_34
	.long	_31
	.long	-12
	.long	2
	.long	_30
	.long	_31
	.long	-16
	.long	2
	.long	_428
	.long	_60
	.long	-20
	.long	0
	.align	4
_400:
	.long	_179
	.long	57
	.long	3
	.align	4
_402:
	.long	_179
	.long	58
	.long	3
	.align	4
_406:
	.long	_179
	.long	59
	.long	3
	.align	4
_410:
	.long	_179
	.long	60
	.long	3
	.align	4
_414:
	.long	_179
	.long	61
	.long	3
	.align	4
_418:
	.long	_179
	.long	62
	.long	3
	.align	4
_426:
	.long	_179
	.long	63
	.long	3
	.align	4
_444:
	.long	1
	.long	_42
	.long	2
	.long	_396
	.long	_60
	.long	-4
	.long	0
	.align	4
_429:
	.long	_179
	.long	67
	.long	3
	.align	4
_443:
	.long	3
	.long	0
	.long	0
	.align	4
_433:
	.long	_179
	.long	68
	.long	4
	.align	4
_437:
	.long	_179
	.long	69
	.long	4
	.align	4
_476:
	.long	1
	.long	_43
	.long	2
	.long	_396
	.long	_60
	.long	-4
	.long	0
	.align	4
_445:
	.long	_179
	.long	74
	.long	3
	.align	4
_474:
	.long	3
	.long	0
	.long	0
	.align	4
_449:
	.long	_179
	.long	75
	.long	4
	.align	4
_473:
	.long	3
	.long	0
	.long	0
	.align	4
_453:
	.long	_179
	.long	76
	.long	5
	.align	4
_461:
	.long	_179
	.long	77
	.long	5
	.align	4
_467:
	.long	_179
	.long	78
	.long	5
	.align	4
_472:
	.long	3
	.long	0
	.long	0
	.align	4
_471:
	.long	_179
	.long	78
	.long	18
	.align	4
_475:
	.long	_179
	.long	81
	.long	3
	.align	4
_484:
	.long	1
	.long	_44
	.long	2
	.long	_396
	.long	_60
	.long	-4
	.long	2
	.long	_54
	.long	_55
	.long	-8
	.long	2
	.long	_56
	.long	_55
	.long	-12
	.long	0
	.align	4
_477:
	.long	_179
	.long	85
	.long	3
	.align	4
_2580:
	.long	0x40000000
	.align	4
_2581:
	.long	0x40000000
	.align	4
_478:
	.long	_179
	.long	86
	.long	3
	.align	4
_483:
	.long	_179
	.long	87
	.long	3
	.align	4
_514:
	.long	1
	.long	_37
	.long	2
	.long	_396
	.long	_390
	.long	-4
	.long	0
	.align	4
_513:
	.long	3
	.long	0
	.long	0
_806:
	.asciz	"p"
	.align	4
_805:
	.long	1
	.long	_40
	.long	2
	.long	_54
	.long	_55
	.long	-4
	.long	2
	.long	_56
	.long	_55
	.long	-8
	.long	2
	.long	_806
	.long	_390
	.long	-12
	.long	0
	.align	4
_572:
	.long	_179
	.long	136
	.long	3
	.align	4
_574:
	.long	_179
	.long	137
	.long	3
	.align	4
_578:
	.long	_179
	.long	138
	.long	3
	.align	4
_582:
	.long	_179
	.long	139
	.long	3
	.align	4
_586:
	.long	_179
	.long	140
	.long	3
	.align	4
_594:
	.long	_179
	.long	141
	.long	3
	.align	4
_602:
	.long	_179
	.long	142
	.long	3
	.align	4
_610:
	.long	_179
	.long	143
	.long	3
	.align	4
_618:
	.long	_179
	.long	144
	.long	3
	.align	4
_626:
	.long	_179
	.long	145
	.long	3
	.align	4
_634:
	.long	_179
	.long	146
	.long	3
	.align	4
_642:
	.long	_179
	.long	147
	.long	3
	.align	4
_650:
	.long	_179
	.long	148
	.long	3
	.align	4
_658:
	.long	_179
	.long	149
	.long	3
	.align	4
_666:
	.long	_179
	.long	150
	.long	3
	.align	4
_674:
	.long	_179
	.long	151
	.long	3
	.align	4
_682:
	.long	_179
	.long	152
	.long	3
	.align	4
_690:
	.long	_179
	.long	153
	.long	3
	.align	4
_698:
	.long	_179
	.long	154
	.long	3
	.align	4
_706:
	.long	_179
	.long	155
	.long	3
	.align	4
_714:
	.long	_179
	.long	156
	.long	3
	.align	4
_722:
	.long	_179
	.long	157
	.long	3
	.align	4
_730:
	.long	_179
	.long	158
	.long	3
	.align	4
_738:
	.long	_179
	.long	159
	.long	3
	.align	4
_746:
	.long	_179
	.long	160
	.long	3
	.align	4
_754:
	.long	_179
	.long	161
	.long	3
	.align	4
_762:
	.long	_179
	.long	162
	.long	3
	.align	4
_770:
	.long	_179
	.long	163
	.long	3
	.align	4
_778:
	.long	_179
	.long	164
	.long	3
	.align	4
_786:
	.long	_179
	.long	165
	.long	3
	.align	4
_794:
	.long	_179
	.long	167
	.long	3
	.align	4
_804:
	.long	_179
	.long	168
	.long	3
	.align	4
_2349:
	.long	1
	.long	_43
	.long	2
	.long	_396
	.long	_390
	.long	-4
	.long	5
	.long	_344
	.long	_55
	.long	-8
	.long	5
	.long	_345
	.long	_55
	.long	-12
	.long	2
	.long	_346
	.long	_31
	.long	-16
	.long	0
	.align	4
_807:
	.long	_179
	.long	172
	.long	3
	.align	4
_1003:
	.long	3
	.long	0
	.long	0
	.align	4
_890:
	.long	_179
	.long	174
	.long	5
	.align	4
_912:
	.long	3
	.long	0
	.long	0
	.align	4
_892:
	.long	_179
	.long	175
	.long	6
	.align	4
_902:
	.long	_179
	.long	175
	.long	26
	.align	4
_907:
	.long	_179
	.long	175
	.long	44
	.align	4
_911:
	.long	_179
	.long	175
	.long	58
	.align	4
_1002:
	.long	3
	.long	0
	.long	0
	.align	4
_914:
	.long	_179
	.long	176
	.long	5
	.align	4
_932:
	.long	3
	.long	0
	.long	0
	.align	4
_916:
	.long	_179
	.long	177
	.long	6
	.align	4
_926:
	.long	_179
	.long	177
	.long	27
	.align	4
_931:
	.long	_179
	.long	177
	.long	45
	.align	4
_1001:
	.long	3
	.long	0
	.long	0
	.align	4
_934:
	.long	_179
	.long	178
	.long	5
	.align	4
_2624:
	.long	0xbf800000
	.align	4
_959:
	.long	3
	.long	0
	.long	0
	.align	4
_936:
	.long	_179
	.long	179
	.long	6
	.align	4
_946:
	.long	_179
	.long	179
	.long	24
	.align	4
_951:
	.long	_179
	.long	179
	.long	42
	.align	4
_955:
	.long	_179
	.long	179
	.long	54
	.align	4
_1000:
	.long	3
	.long	0
	.long	0
	.align	4
_961:
	.long	_179
	.long	180
	.long	5
	.align	4
_979:
	.long	3
	.long	0
	.long	0
	.align	4
_963:
	.long	_179
	.long	181
	.long	6
	.align	4
_973:
	.long	_179
	.long	181
	.long	24
	.align	4
_978:
	.long	_179
	.long	181
	.long	42
	.align	4
_999:
	.long	3
	.long	0
	.long	0
	.align	4
_981:
	.long	_179
	.long	182
	.long	5
	.align	4
_2625:
	.long	0xbf800000
	.align	4
_998:
	.long	3
	.long	0
	.long	0
	.align	4
_983:
	.long	_179
	.long	183
	.long	6
	.align	4
_993:
	.long	_179
	.long	183
	.long	24
	.align	4
_1112:
	.long	3
	.long	0
	.long	0
	.align	4
_1004:
	.long	_179
	.long	186
	.long	5
	.align	4
_1026:
	.long	3
	.long	0
	.long	0
	.align	4
_1006:
	.long	_179
	.long	187
	.long	6
	.align	4
_1016:
	.long	_179
	.long	187
	.long	26
	.align	4
_1021:
	.long	_179
	.long	187
	.long	44
	.align	4
_1025:
	.long	_179
	.long	187
	.long	57
	.align	4
_1111:
	.long	3
	.long	0
	.long	0
	.align	4
_1028:
	.long	_179
	.long	188
	.long	5
	.align	4
_1046:
	.long	3
	.long	0
	.long	0
	.align	4
_1030:
	.long	_179
	.long	189
	.long	6
	.align	4
_1040:
	.long	_179
	.long	189
	.long	27
	.align	4
_1045:
	.long	_179
	.long	189
	.long	45
	.align	4
_1110:
	.long	3
	.long	0
	.long	0
	.align	4
_1048:
	.long	_179
	.long	190
	.long	5
	.align	4
_2626:
	.long	0xbf800000
	.align	4
_1073:
	.long	3
	.long	0
	.long	0
	.align	4
_1050:
	.long	_179
	.long	191
	.long	6
	.align	4
_1060:
	.long	_179
	.long	191
	.long	24
	.align	4
_1065:
	.long	_179
	.long	191
	.long	42
	.align	4
_1069:
	.long	_179
	.long	191
	.long	54
	.align	4
_1109:
	.long	3
	.long	0
	.long	0
	.align	4
_1075:
	.long	_179
	.long	192
	.long	5
	.align	4
_2627:
	.long	0xbf800000
	.align	4
_1088:
	.long	3
	.long	0
	.long	0
	.align	4
_1077:
	.long	_179
	.long	193
	.long	6
	.align	4
_1087:
	.long	_179
	.long	193
	.long	24
	.align	4
_1108:
	.long	3
	.long	0
	.long	0
	.align	4
_1090:
	.long	_179
	.long	194
	.long	5
	.align	4
_1107:
	.long	3
	.long	0
	.long	0
	.align	4
_1092:
	.long	_179
	.long	195
	.long	6
	.align	4
_1102:
	.long	_179
	.long	195
	.long	24
	.align	4
_1174:
	.long	3
	.long	0
	.long	0
	.align	4
_1113:
	.long	_179
	.long	198
	.long	5
	.align	4
_1170:
	.long	3
	.long	0
	.long	0
	.align	4
_1119:
	.long	_179
	.long	199
	.long	6
	.align	4
_1137:
	.long	3
	.long	0
	.long	0
	.align	4
_1121:
	.long	_179
	.long	200
	.long	7
	.align	4
_1131:
	.long	_179
	.long	200
	.long	25
	.align	4
_1136:
	.long	_179
	.long	200
	.long	43
	.align	4
_1169:
	.long	3
	.long	0
	.long	0
	.align	4
_1139:
	.long	_179
	.long	201
	.long	6
	.align	4
_2628:
	.long	0xbf800000
	.align	4
_1156:
	.long	3
	.long	0
	.long	0
	.align	4
_1141:
	.long	_179
	.long	202
	.long	7
	.align	4
_1151:
	.long	_179
	.long	202
	.long	25
	.align	4
_1168:
	.long	3
	.long	0
	.long	0
	.align	4
_1158:
	.long	_179
	.long	204
	.long	7
	.align	4
_1173:
	.long	3
	.long	0
	.long	0
	.align	4
_1172:
	.long	_179
	.long	207
	.long	6
	.align	4
_1236:
	.long	3
	.long	0
	.long	0
	.align	4
_1175:
	.long	_179
	.long	210
	.long	5
	.align	4
_1232:
	.long	3
	.long	0
	.long	0
	.align	4
_1181:
	.long	_179
	.long	211
	.long	6
	.align	4
_2629:
	.long	0xbf800000
	.align	4
_1199:
	.long	3
	.long	0
	.long	0
	.align	4
_1183:
	.long	_179
	.long	212
	.long	7
	.align	4
_1193:
	.long	_179
	.long	212
	.long	25
	.align	4
_1198:
	.long	_179
	.long	213
	.long	7
	.align	4
_1231:
	.long	3
	.long	0
	.long	0
	.align	4
_1201:
	.long	_179
	.long	214
	.long	6
	.align	4
_1218:
	.long	3
	.long	0
	.long	0
	.align	4
_1203:
	.long	_179
	.long	215
	.long	7
	.align	4
_1213:
	.long	_179
	.long	215
	.long	25
	.align	4
_1230:
	.long	3
	.long	0
	.long	0
	.align	4
_1220:
	.long	_179
	.long	217
	.long	7
	.align	4
_1235:
	.long	3
	.long	0
	.long	0
	.align	4
_1234:
	.long	_179
	.long	220
	.long	6
	.align	4
_1352:
	.long	3
	.long	0
	.long	0
	.align	4
_1237:
	.long	_179
	.long	223
	.long	5
	.align	4
_1259:
	.long	3
	.long	0
	.long	0
	.align	4
_1239:
	.long	_179
	.long	224
	.long	6
	.align	4
_1249:
	.long	_179
	.long	224
	.long	26
	.align	4
_1254:
	.long	_179
	.long	224
	.long	44
	.align	4
_1258:
	.long	_179
	.long	225
	.long	6
	.align	4
_1351:
	.long	3
	.long	0
	.long	0
	.align	4
_1261:
	.long	_179
	.long	226
	.long	5
	.align	4
_1279:
	.long	3
	.long	0
	.long	0
	.align	4
_1263:
	.long	_179
	.long	227
	.long	6
	.align	4
_1273:
	.long	_179
	.long	227
	.long	27
	.align	4
_1278:
	.long	_179
	.long	227
	.long	45
	.align	4
_1350:
	.long	3
	.long	0
	.long	0
	.align	4
_1281:
	.long	_179
	.long	228
	.long	5
	.align	4
_2630:
	.long	0xbf800000
	.align	4
_1306:
	.long	3
	.long	0
	.long	0
	.align	4
_1283:
	.long	_179
	.long	229
	.long	6
	.align	4
_1293:
	.long	_179
	.long	229
	.long	24
	.align	4
_1298:
	.long	_179
	.long	229
	.long	42
	.align	4
_1302:
	.long	_179
	.long	229
	.long	52
	.align	4
_1349:
	.long	3
	.long	0
	.long	0
	.align	4
_1308:
	.long	_179
	.long	230
	.long	5
	.align	4
_1326:
	.long	3
	.long	0
	.long	0
	.align	4
_1310:
	.long	_179
	.long	231
	.long	6
	.align	4
_1320:
	.long	_179
	.long	231
	.long	24
	.align	4
_1325:
	.long	_179
	.long	231
	.long	42
	.align	4
_1348:
	.long	3
	.long	0
	.long	0
	.align	4
_1328:
	.long	_179
	.long	232
	.long	5
	.align	4
_2631:
	.long	0xbf800000
	.align	4
_1335:
	.long	3
	.long	0
	.long	0
	.align	4
_1330:
	.long	_179
	.long	233
	.long	6
	.align	4
_1347:
	.long	3
	.long	0
	.long	0
	.align	4
_1337:
	.long	_179
	.long	235
	.long	6
	.align	4
_1468:
	.long	3
	.long	0
	.long	0
	.align	4
_1353:
	.long	_179
	.long	238
	.long	5
	.align	4
_1375:
	.long	3
	.long	0
	.long	0
	.align	4
_1355:
	.long	_179
	.long	239
	.long	6
	.align	4
_1365:
	.long	_179
	.long	239
	.long	26
	.align	4
_1370:
	.long	_179
	.long	239
	.long	44
	.align	4
_1374:
	.long	_179
	.long	239
	.long	58
	.align	4
_1467:
	.long	3
	.long	0
	.long	0
	.align	4
_1377:
	.long	_179
	.long	240
	.long	5
	.align	4
_1395:
	.long	3
	.long	0
	.long	0
	.align	4
_1379:
	.long	_179
	.long	241
	.long	6
	.align	4
_1389:
	.long	_179
	.long	241
	.long	27
	.align	4
_1394:
	.long	_179
	.long	241
	.long	45
	.align	4
_1466:
	.long	3
	.long	0
	.long	0
	.align	4
_1397:
	.long	_179
	.long	242
	.long	5
	.align	4
_2632:
	.long	0xbf800000
	.align	4
_1422:
	.long	3
	.long	0
	.long	0
	.align	4
_1399:
	.long	_179
	.long	243
	.long	6
	.align	4
_1409:
	.long	_179
	.long	243
	.long	24
	.align	4
_1414:
	.long	_179
	.long	243
	.long	42
	.align	4
_1418:
	.long	_179
	.long	243
	.long	54
	.align	4
_1465:
	.long	3
	.long	0
	.long	0
	.align	4
_1424:
	.long	_179
	.long	244
	.long	5
	.align	4
_2633:
	.long	0xbf800000
	.align	4
_1442:
	.long	3
	.long	0
	.long	0
	.align	4
_1426:
	.long	_179
	.long	245
	.long	6
	.align	4
_1436:
	.long	_179
	.long	245
	.long	24
	.align	4
_1441:
	.long	_179
	.long	245
	.long	42
	.align	4
_1464:
	.long	3
	.long	0
	.long	0
	.align	4
_1444:
	.long	_179
	.long	246
	.long	5
	.align	4
_1451:
	.long	3
	.long	0
	.long	0
	.align	4
_1446:
	.long	_179
	.long	247
	.long	6
	.align	4
_1463:
	.long	3
	.long	0
	.long	0
	.align	4
_1453:
	.long	_179
	.long	249
	.long	6
	.align	4
_1492:
	.long	3
	.long	0
	.long	0
	.align	4
_1469:
	.long	_179
	.long	252
	.long	5
	.align	4
_1490:
	.long	3
	.long	0
	.long	0
	.align	4
_1475:
	.long	_179
	.long	252
	.long	32
	.align	4
_1485:
	.long	_179
	.long	252
	.long	51
	.align	4
_1491:
	.long	_179
	.long	253
	.long	5
	.align	4
_1516:
	.long	3
	.long	0
	.long	0
	.align	4
_1493:
	.long	_179
	.long	255
	.long	5
	.align	4
_1514:
	.long	3
	.long	0
	.long	0
	.align	4
_1499:
	.long	_179
	.long	255
	.long	32
	.align	4
_1509:
	.long	_179
	.long	255
	.long	51
	.align	4
_1515:
	.long	_179
	.long	256
	.long	5
	.align	4
_1545:
	.long	3
	.long	0
	.long	0
	.align	4
_1517:
	.long	_179
	.long	258
	.long	5
	.align	4
_1543:
	.long	3
	.long	0
	.long	0
	.align	4
_1519:
	.long	_179
	.long	259
	.long	6
	.align	4
_1529:
	.long	_179
	.long	259
	.long	26
	.align	4
_1534:
	.long	_179
	.long	260
	.long	6
	.align	4
_1542:
	.long	3
	.long	0
	.long	0
	.align	4
_1538:
	.long	_179
	.long	263
	.long	7
	.align	4
_1544:
	.long	_179
	.long	266
	.long	5
	.align	4
_1574:
	.long	3
	.long	0
	.long	0
	.align	4
_1546:
	.long	_179
	.long	268
	.long	5
	.align	4
_1572:
	.long	3
	.long	0
	.long	0
	.align	4
_1548:
	.long	_179
	.long	269
	.long	6
	.align	4
_1558:
	.long	_179
	.long	269
	.long	26
	.align	4
_1563:
	.long	_179
	.long	270
	.long	6
	.align	4
_1571:
	.long	3
	.long	0
	.long	0
	.align	4
_1567:
	.long	_179
	.long	273
	.long	7
	.align	4
_1573:
	.long	_179
	.long	276
	.long	5
	.align	4
_1657:
	.long	3
	.long	0
	.long	0
	.align	4
_1575:
	.long	_179
	.long	278
	.long	5
	.align	4
_1653:
	.long	3
	.long	0
	.long	0
	.align	4
_1581:
	.long	_179
	.long	279
	.long	6
	.align	4
_1599:
	.long	3
	.long	0
	.long	0
	.align	4
_1583:
	.long	_179
	.long	280
	.long	7
	.align	4
_1593:
	.long	_179
	.long	280
	.long	27
	.align	4
_1598:
	.long	_179
	.long	280
	.long	45
	.align	4
_1652:
	.long	3
	.long	0
	.long	0
	.align	4
_1601:
	.long	_179
	.long	281
	.long	6
	.align	4
_2634:
	.long	0xbf800000
	.align	4
_1619:
	.long	3
	.long	0
	.long	0
	.align	4
_1603:
	.long	_179
	.long	282
	.long	7
	.align	4
_1613:
	.long	_179
	.long	282
	.long	25
	.align	4
_1618:
	.long	_179
	.long	282
	.long	43
	.align	4
_1651:
	.long	3
	.long	0
	.long	0
	.align	4
_1621:
	.long	_179
	.long	283
	.long	6
	.align	4
_1638:
	.long	3
	.long	0
	.long	0
	.align	4
_1623:
	.long	_179
	.long	284
	.long	7
	.align	4
_1633:
	.long	_179
	.long	284
	.long	25
	.align	4
_1650:
	.long	3
	.long	0
	.long	0
	.align	4
_1640:
	.long	_179
	.long	286
	.long	7
	.align	4
_1656:
	.long	3
	.long	0
	.long	0
	.align	4
_1655:
	.long	_179
	.long	289
	.long	6
	.align	4
_1740:
	.long	3
	.long	0
	.long	0
	.align	4
_1658:
	.long	_179
	.long	292
	.long	5
	.align	4
_1736:
	.long	3
	.long	0
	.long	0
	.align	4
_1664:
	.long	_179
	.long	293
	.long	6
	.align	4
_1682:
	.long	3
	.long	0
	.long	0
	.align	4
_1666:
	.long	_179
	.long	294
	.long	7
	.align	4
_1676:
	.long	_179
	.long	294
	.long	27
	.align	4
_1681:
	.long	_179
	.long	294
	.long	45
	.align	4
_1735:
	.long	3
	.long	0
	.long	0
	.align	4
_1684:
	.long	_179
	.long	295
	.long	6
	.align	4
_1702:
	.long	3
	.long	0
	.long	0
	.align	4
_1686:
	.long	_179
	.long	296
	.long	7
	.align	4
_1696:
	.long	_179
	.long	296
	.long	25
	.align	4
_1701:
	.long	_179
	.long	296
	.long	43
	.align	4
_1734:
	.long	3
	.long	0
	.long	0
	.align	4
_1704:
	.long	_179
	.long	297
	.long	6
	.align	4
_2635:
	.long	0xbf800000
	.align	4
_1721:
	.long	3
	.long	0
	.long	0
	.align	4
_1706:
	.long	_179
	.long	298
	.long	7
	.align	4
_1716:
	.long	_179
	.long	298
	.long	25
	.align	4
_1733:
	.long	3
	.long	0
	.long	0
	.align	4
_1723:
	.long	_179
	.long	300
	.long	7
	.align	4
_1739:
	.long	3
	.long	0
	.long	0
	.align	4
_1738:
	.long	_179
	.long	303
	.long	6
	.align	4
_1764:
	.long	3
	.long	0
	.long	0
	.align	4
_1741:
	.long	_179
	.long	306
	.long	5
	.align	4
_1762:
	.long	3
	.long	0
	.long	0
	.align	4
_1747:
	.long	_179
	.long	306
	.long	32
	.align	4
_1757:
	.long	_179
	.long	306
	.long	53
	.align	4
_1763:
	.long	_179
	.long	307
	.long	5
	.align	4
_1788:
	.long	3
	.long	0
	.long	0
	.align	4
_1765:
	.long	_179
	.long	310
	.long	5
	.align	4
_1786:
	.long	3
	.long	0
	.long	0
	.align	4
_1771:
	.long	_179
	.long	310
	.long	32
	.align	4
_1781:
	.long	_179
	.long	310
	.long	53
	.align	4
_1787:
	.long	_179
	.long	311
	.long	5
	.align	4
_1832:
	.long	3
	.long	0
	.long	0
	.align	4
_1789:
	.long	_179
	.long	313
	.long	5
	.align	4
_1810:
	.long	3
	.long	0
	.long	0
	.align	4
_1791:
	.long	_179
	.long	314
	.long	6
	.align	4
_1801:
	.long	_179
	.long	314
	.long	31
	.align	4
_1806:
	.long	_179
	.long	314
	.long	49
	.align	4
_1830:
	.long	3
	.long	0
	.long	0
	.align	4
_1812:
	.long	_179
	.long	315
	.long	5
	.align	4
_1829:
	.long	3
	.long	0
	.long	0
	.align	4
_1814:
	.long	_179
	.long	316
	.long	6
	.align	4
_1824:
	.long	_179
	.long	316
	.long	27
	.align	4
_1831:
	.long	_179
	.long	318
	.long	5
	.align	4
_1872:
	.long	3
	.long	0
	.long	0
	.align	4
_1833:
	.long	_179
	.long	320
	.long	5
	.align	4
_1850:
	.long	3
	.long	0
	.long	0
	.align	4
_1835:
	.long	_179
	.long	321
	.long	6
	.align	4
_1845:
	.long	_179
	.long	321
	.long	32
	.align	4
_1870:
	.long	3
	.long	0
	.long	0
	.align	4
_1852:
	.long	_179
	.long	322
	.long	5
	.align	4
_1869:
	.long	3
	.long	0
	.long	0
	.align	4
_1854:
	.long	_179
	.long	323
	.long	6
	.align	4
_1864:
	.long	_179
	.long	323
	.long	28
	.align	4
_1871:
	.long	_179
	.long	325
	.long	5
	.align	4
_1896:
	.long	3
	.long	0
	.long	0
	.align	4
_1873:
	.long	_179
	.long	328
	.long	5
	.align	4
_1894:
	.long	3
	.long	0
	.long	0
	.align	4
_1879:
	.long	_179
	.long	328
	.long	32
	.align	4
_1889:
	.long	_179
	.long	328
	.long	51
	.align	4
_1895:
	.long	_179
	.long	329
	.long	5
	.align	4
_1920:
	.long	3
	.long	0
	.long	0
	.align	4
_1897:
	.long	_179
	.long	331
	.long	5
	.align	4
_1918:
	.long	3
	.long	0
	.long	0
	.align	4
_1903:
	.long	_179
	.long	331
	.long	32
	.align	4
_1913:
	.long	_179
	.long	331
	.long	51
	.align	4
_1919:
	.long	_179
	.long	332
	.long	5
	.align	4
_1944:
	.long	3
	.long	0
	.long	0
	.align	4
_1921:
	.long	_179
	.long	334
	.long	5
	.align	4
_1942:
	.long	3
	.long	0
	.long	0
	.align	4
_1927:
	.long	_179
	.long	334
	.long	32
	.align	4
_1937:
	.long	_179
	.long	334
	.long	56
	.align	4
_1943:
	.long	_179
	.long	335
	.long	5
	.align	4
_1968:
	.long	3
	.long	0
	.long	0
	.align	4
_1945:
	.long	_179
	.long	337
	.long	5
	.align	4
_1966:
	.long	3
	.long	0
	.long	0
	.align	4
_1951:
	.long	_179
	.long	337
	.long	32
	.align	4
_1961:
	.long	_179
	.long	337
	.long	56
	.align	4
_1967:
	.long	_179
	.long	338
	.long	5
	.align	4
_1999:
	.long	3
	.long	0
	.long	0
	.align	4
_1969:
	.long	_179
	.long	340
	.long	5
	.align	4
_1980:
	.long	3
	.long	0
	.long	0
	.align	4
_1971:
	.long	_179
	.long	341
	.long	6
	.align	4
_1979:
	.long	3
	.long	0
	.long	0
	.align	4
_1975:
	.long	_179
	.long	343
	.long	7
	.align	4
_1997:
	.long	3
	.long	0
	.long	0
	.align	4
_1982:
	.long	_179
	.long	346
	.long	6
	.align	4
_1992:
	.long	_179
	.long	346
	.long	31
	.align	4
_1998:
	.long	_179
	.long	348
	.long	5
	.align	4
_2028:
	.long	3
	.long	0
	.long	0
	.align	4
_2000:
	.long	_179
	.long	350
	.long	5
	.align	4
_2026:
	.long	3
	.long	0
	.long	0
	.align	4
_2002:
	.long	_179
	.long	351
	.long	6
	.align	4
_2010:
	.long	3
	.long	0
	.long	0
	.align	4
_2006:
	.long	_179
	.long	353
	.long	7
	.align	4
_2011:
	.long	_179
	.long	355
	.long	6
	.align	4
_2021:
	.long	_179
	.long	355
	.long	31
	.align	4
_2027:
	.long	_179
	.long	357
	.long	5
	.align	4
_2052:
	.long	3
	.long	0
	.long	0
	.align	4
_2029:
	.long	_179
	.long	359
	.long	5
	.align	4
_2050:
	.long	3
	.long	0
	.long	0
	.align	4
_2035:
	.long	_179
	.long	359
	.long	32
	.align	4
_2045:
	.long	_179
	.long	359
	.long	53
	.align	4
_2051:
	.long	_179
	.long	360
	.long	5
	.align	4
_2076:
	.long	3
	.long	0
	.long	0
	.align	4
_2053:
	.long	_179
	.long	362
	.long	5
	.align	4
_2074:
	.long	3
	.long	0
	.long	0
	.align	4
_2059:
	.long	_179
	.long	362
	.long	32
	.align	4
_2069:
	.long	_179
	.long	362
	.long	53
	.align	4
_2075:
	.long	_179
	.long	363
	.long	5
	.align	4
_2212:
	.long	3
	.long	0
	.long	0
	.align	4
_2077:
	.long	_179
	.long	365
	.long	5
	.align	4
_2107:
	.long	3
	.long	0
	.long	0
	.align	4
_2081:
	.long	_179
	.long	366
	.long	6
	.align	4
_2636:
	.long	0xbf800000
	.align	4
_2100:
	.long	3
	.long	0
	.long	0
	.align	4
_2083:
	.long	_179
	.long	367
	.long	7
	.align	4
_2637:
	.long	0x3f400000
	.align	4
_2087:
	.long	_179
	.long	368
	.long	7
	.align	4
_2638:
	.long	0x40c00000
	.align	4
_2099:
	.long	3
	.long	0
	.long	0
	.align	4
_2091:
	.long	_179
	.long	368
	.long	20
	.align	4
_2639:
	.long	0x40c00000
	.align	4
_2095:
	.long	_179
	.long	368
	.long	31
	.align	4
_2106:
	.long	3
	.long	0
	.long	0
	.align	4
_2102:
	.long	_179
	.long	370
	.long	7
	.align	4
_2113:
	.long	3
	.long	0
	.long	0
	.align	4
_2109:
	.long	_179
	.long	373
	.long	6
	.align	4
_2640:
	.long	0x3e4ccccd
	.align	4
_2114:
	.long	_179
	.long	375
	.long	5
	.align	4
_2120:
	.long	_179
	.long	376
	.long	5
	.align	4
_2191:
	.long	3
	.long	0
	.long	0
	.align	4
_2126:
	.long	_179
	.long	377
	.long	6
	.align	4
_2641:
	.long	0xbf800000
	.align	4
_2143:
	.long	3
	.long	0
	.long	0
	.align	4
_2128:
	.long	_179
	.long	378
	.long	7
	.align	4
_2138:
	.long	_179
	.long	379
	.long	7
	.align	4
_2180:
	.long	3
	.long	0
	.long	0
	.align	4
_2145:
	.long	_179
	.long	380
	.long	6
	.align	4
_2162:
	.long	3
	.long	0
	.long	0
	.align	4
_2147:
	.long	_179
	.long	381
	.long	7
	.align	4
_2157:
	.long	_179
	.long	382
	.long	7
	.align	4
_2179:
	.long	3
	.long	0
	.long	0
	.align	4
_2164:
	.long	_179
	.long	384
	.long	7
	.align	4
_2174:
	.long	_179
	.long	385
	.long	7
	.align	4
_2181:
	.long	_179
	.long	387
	.long	6
	.align	4
_2185:
	.long	_179
	.long	388
	.long	6
	.align	4
_2211:
	.long	3
	.long	0
	.long	0
	.align	4
_2193:
	.long	_179
	.long	389
	.long	5
	.align	4
_2210:
	.long	3
	.long	0
	.long	0
	.align	4
_2195:
	.long	_179
	.long	390
	.long	6
	.align	4
_2205:
	.long	_179
	.long	391
	.long	6
	.align	4
_2348:
	.long	3
	.long	0
	.long	0
	.align	4
_2213:
	.long	_179
	.long	395
	.long	5
	.align	4
_2243:
	.long	3
	.long	0
	.long	0
	.align	4
_2217:
	.long	_179
	.long	396
	.long	6
	.align	4
_2642:
	.long	0xbf800000
	.align	4
_2236:
	.long	3
	.long	0
	.long	0
	.align	4
_2219:
	.long	_179
	.long	397
	.long	7
	.align	4
_2643:
	.long	0x3f400000
	.align	4
_2223:
	.long	_179
	.long	398
	.long	7
	.align	4
_2644:
	.long	0x40c00000
	.align	4
_2235:
	.long	3
	.long	0
	.long	0
	.align	4
_2227:
	.long	_179
	.long	398
	.long	19
	.align	4
_2645:
	.long	0x40c00000
	.align	4
_2231:
	.long	_179
	.long	398
	.long	30
	.align	4
_2242:
	.long	3
	.long	0
	.long	0
	.align	4
_2238:
	.long	_179
	.long	400
	.long	7
	.align	4
_2249:
	.long	3
	.long	0
	.long	0
	.align	4
_2245:
	.long	_179
	.long	403
	.long	6
	.align	4
_2646:
	.long	0x3e4ccccd
	.align	4
_2250:
	.long	_179
	.long	405
	.long	5
	.align	4
_2256:
	.long	_179
	.long	406
	.long	5
	.align	4
_2327:
	.long	3
	.long	0
	.long	0
	.align	4
_2262:
	.long	_179
	.long	407
	.long	6
	.align	4
_2279:
	.long	3
	.long	0
	.long	0
	.align	4
_2264:
	.long	_179
	.long	408
	.long	7
	.align	4
_2274:
	.long	_179
	.long	409
	.long	7
	.align	4
_2316:
	.long	3
	.long	0
	.long	0
	.align	4
_2281:
	.long	_179
	.long	410
	.long	6
	.align	4
_2647:
	.long	0xbf800000
	.align	4
_2298:
	.long	3
	.long	0
	.long	0
	.align	4
_2283:
	.long	_179
	.long	411
	.long	7
	.align	4
_2293:
	.long	_179
	.long	412
	.long	7
	.align	4
_2315:
	.long	3
	.long	0
	.long	0
	.align	4
_2300:
	.long	_179
	.long	414
	.long	7
	.align	4
_2310:
	.long	_179
	.long	415
	.long	7
	.align	4
_2317:
	.long	_179
	.long	417
	.long	6
	.align	4
_2321:
	.long	_179
	.long	418
	.long	6
	.align	4
_2347:
	.long	3
	.long	0
	.long	0
	.align	4
_2329:
	.long	_179
	.long	419
	.long	5
	.align	4
_2648:
	.long	0xbf800000
	.align	4
_2346:
	.long	3
	.long	0
	.long	0
	.align	4
_2331:
	.long	_179
	.long	420
	.long	6
	.align	4
_2341:
	.long	_179
	.long	421
	.long	6
	.align	4
_2359:
	.long	1
	.long	_44
	.long	2
	.long	_396
	.long	_390
	.long	-4
	.long	0
	.align	4
_2350:
	.long	_179
	.long	429
	.long	3
	.align	4
_2370:
	.long	1
	.long	_37
	.long	2
	.long	_396
	.long	_341
	.long	-4
	.long	0
	.align	4
_2369:
	.long	3
	.long	0
	.long	0
	.align	4
_2361:
	.long	_179
	.long	446
	.long	3
	.align	4
_2365:
	.long	_179
	.long	447
	.long	3
	.align	4
_2409:
	.long	1
	.long	_40
	.long	2
	.long	_54
	.long	_55
	.long	-4
	.long	2
	.long	_56
	.long	_55
	.long	-8
	.long	2
	.long	_96
	.long	_55
	.long	-12
	.long	2
	.long	_35
	.long	_36
	.long	-16
	.long	2
	.long	_340
	.long	_341
	.long	-20
	.long	0
	.align	4
_2374:
	.long	_179
	.long	451
	.long	3
	.align	4
_2376:
	.long	_179
	.long	452
	.long	3
	.align	4
_2380:
	.long	_179
	.long	453
	.long	3
	.align	4
_2384:
	.long	_179
	.long	454
	.long	3
	.align	4
_2390:
	.long	_179
	.long	455
	.long	3
	.align	4
_2396:
	.long	_179
	.long	456
	.long	3
	.align	4
_2400:
	.long	_179
	.long	457
	.long	3
	.align	4
_2408:
	.long	_179
	.long	458
	.long	3
	.align	4
_2422:
	.long	1
	.long	_43
	.long	2
	.long	_396
	.long	_341
	.long	-4
	.long	2
	.long	_344
	.long	_55
	.long	-8
	.long	0
	.align	4
_2410:
	.long	_179
	.long	462
	.long	3
	.align	4
_2438:
	.long	1
	.long	_44
	.long	2
	.long	_396
	.long	_341
	.long	-4
	.long	0
	.align	4
_2423:
	.long	_179
	.long	466
	.long	3
	.align	4
_2430:
	.long	_179
	.long	467
	.long	3
	.align	4
_2437:
	.long	_179
	.long	468
	.long	3
_2441:
	.asciz	":TBackground"
	.align	4
_2440:
	.long	1
	.long	_37
	.long	2
	.long	_396
	.long	_2441
	.long	-4
	.long	0
	.align	4
_2439:
	.long	3
	.long	0
	.long	0
	.align	4
_2476:
	.long	1
	.long	_40
	.long	0
	.align	4
_2443:
	.long	_179
	.long	481
	.long	3
	.align	4
_2446:
	.long	_179
	.long	482
	.long	9
	.align	4
_3123:
	.long	0xbfc00000
	.align	4
_3124:
	.long	0x43480000
	.align	4
_2449:
	.long	_179
	.long	483
	.long	3
	.align	4
_3125:
	.long	0xc0000000
	.align	4
_3126:
	.long	0x43d20000
	.align	4
_2452:
	.long	_179
	.long	484
	.long	3
	.align	4
_3127:
	.long	0xc0400000
	.align	4
_3128:
	.long	0x43d70000
	.align	4
_2455:
	.long	_179
	.long	485
	.long	3
	.align	4
_3129:
	.long	0xc0a00000
	.align	4
_3130:
	.long	0x43e10000
	.align	4
_2458:
	.long	_179
	.long	486
	.long	4
	.align	4
_3131:
	.long	0xbf800000
	.align	4
_3132:
	.long	0x430c0000
	.align	4
_2461:
	.long	_179
	.long	487
	.long	3
	.align	4
_3133:
	.long	0xc0000000
	.align	4
_3134:
	.long	0x42c80000
	.align	4
_2464:
	.long	_179
	.long	488
	.long	3
	.align	4
_3135:
	.long	0xc0400000
	.align	4
_3136:
	.long	0x42700000
	.align	4
_2467:
	.long	_179
	.long	489
	.long	3
	.align	4
_3137:
	.long	0xc0800000
	.align	4
_2470:
	.long	_179
	.long	490
	.long	3
	.align	4
_3138:
	.long	0xc0400000
	.align	4
_3139:
	.long	0x43340000
	.align	4
_3140:
	.long	0x43480000
	.align	4
_2473:
	.long	_179
	.long	491
	.long	8
	.align	4
_3141:
	.long	0xc0c00000
	.align	4
_3142:
	.long	0x43dc0000
	.align	4
_2492:
	.long	1
	.long	_43
	.long	2
	.long	_344
	.long	_55
	.long	-4
	.long	0
	.align	4
_2477:
	.long	_179
	.long	496
	.long	3
_2491:
	.asciz	":Tilerow"
	.align	4
_2490:
	.long	3
	.long	0
	.long	2
	.long	_340
	.long	_2491
	.long	-8
	.long	0
	.align	4
_2487:
	.long	_179
	.long	497
	.long	4
