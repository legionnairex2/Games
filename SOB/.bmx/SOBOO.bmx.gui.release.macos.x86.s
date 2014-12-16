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
	.reference	_bbStringClass
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
	sub	$20,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	cmpl	$0,_273
	je	_274
	mov	$0,%eax
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_274:
	movl	$1,_273
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
	movl	_179,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_180
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,__bb_TBackground_list
	orl	$1,_179
_180:
	movl	$_bb_TBackground,(%esp)
	call	_bbObjectRegisterType
	movl	_179,%eax
	and	$2,%eax
	cmp	$0,%eax
	jne	_182
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	movl	%eax,_bb_T_list
	orl	$2,_179
_182:
	movl	_179,%eax
	and	$4,%eax
	cmp	$0,%eax
	jne	_184
	movl	$-1,4(%esp)
	movl	$_7,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Background1
	orl	$4,_179
_184:
	movl	_179,%eax
	and	$8,%eax
	cmp	$0,%eax
	jne	_186
	movl	$-1,4(%esp)
	movl	$_8,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Background2
	orl	$8,_179
_186:
	movl	_179,%eax
	and	$16,%eax
	cmp	$0,%eax
	jne	_188
	movl	$-1,4(%esp)
	movl	$_9,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Background3
	orl	$16,_179
_188:
	movl	_179,%eax
	and	$32,%eax
	cmp	$0,%eax
	jne	_190
	movl	$-1,4(%esp)
	movl	$_10,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Background4
	orl	$32,_179
_190:
	movl	_179,%eax
	and	$64,%eax
	cmp	$0,%eax
	jne	_192
	movl	$-1,4(%esp)
	movl	$_11,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Background5
	orl	$64,_179
_192:
	movl	_179,%eax
	and	$128,%eax
	cmp	$0,%eax
	jne	_194
	movl	$-1,4(%esp)
	movl	$_12,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Background6
	orl	$128,_179
_194:
	movl	_179,%eax
	and	$256,%eax
	cmp	$0,%eax
	jne	_196
	movl	$-1,4(%esp)
	movl	$_13,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Cloud1
	orl	$256,_179
_196:
	movl	_179,%eax
	and	$512,%eax
	cmp	$0,%eax
	jne	_198
	movl	$-1,4(%esp)
	movl	$_14,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Cloud2
	orl	$512,_179
_198:
	movl	_179,%eax
	and	$1024,%eax
	cmp	$0,%eax
	jne	_200
	movl	$-1,4(%esp)
	movl	$_15,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Cloud3
	orl	$1024,_179
_200:
	movl	_179,%eax
	and	$2048,%eax
	cmp	$0,%eax
	jne	_202
	movl	$-1,4(%esp)
	movl	$_16,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Cloud4
	orl	$2048,_179
_202:
	movl	_179,%eax
	and	$4096,%eax
	cmp	$0,%eax
	jne	_204
	movl	$-1,4(%esp)
	movl	$_17,(%esp)
	call	_brl_max2d_LoadImage
	incl	4(%eax)
	movl	%eax,_bb_Tree
	orl	$4096,_179
_204:
	movl	_179,%eax
	and	$8192,%eax
	cmp	$0,%eax
	jne	_206
	movl	$-1,20(%esp)
	movl	$6,16(%esp)
	movl	$0,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_walkRightImg
	orl	$8192,_179
_206:
	movl	_179,%eax
	and	$16384,%eax
	cmp	$0,%eax
	jne	_208
	movl	$-1,20(%esp)
	movl	$6,16(%esp)
	movl	$6,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_walkLeftImg
	orl	$16384,_179
_208:
	movl	_179,%eax
	and	$32768,%eax
	cmp	$0,%eax
	jne	_210
	movl	$-1,20(%esp)
	movl	$4,16(%esp)
	movl	$12,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_turnLeftImg
	orl	$32768,_179
_210:
	movl	_179,%eax
	and	$65536,%eax
	cmp	$0,%eax
	jne	_212
	movl	$-1,20(%esp)
	movl	$4,16(%esp)
	movl	$16,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_turnRightImg
	orl	$65536,_179
_212:
	movl	_179,%eax
	and	$131072,%eax
	cmp	$0,%eax
	jne	_214
	movl	$-1,20(%esp)
	movl	$3,16(%esp)
	movl	$20,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_punchRightOutImg
	orl	$131072,_179
_214:
	movl	_179,%eax
	and	$262144,%eax
	cmp	$0,%eax
	jne	_216
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$23,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_punchRightInImg
	orl	$262144,_179
_216:
	movl	_179,%eax
	and	$524288,%eax
	cmp	$0,%eax
	jne	_218
	movl	$-1,20(%esp)
	movl	$1,16(%esp)
	movl	$22,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_punchrightImg
	orl	$524288,_179
_218:
	movl	_179,%eax
	and	$1048576,%eax
	cmp	$0,%eax
	jne	_220
	movl	$-1,20(%esp)
	movl	$3,16(%esp)
	movl	$25,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_punchLeftOutImg
	orl	$1048576,_179
_220:
	movl	_179,%eax
	and	$2097152,%eax
	cmp	$0,%eax
	jne	_222
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$28,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_punchLeftInImg
	orl	$2097152,_179
_222:
	movl	_179,%eax
	and	$4194304,%eax
	cmp	$0,%eax
	jne	_224
	movl	$-1,20(%esp)
	movl	$1,16(%esp)
	movl	$27,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_punchLeftImg
	orl	$4194304,_179
_224:
	movl	_179,%eax
	and	$8388608,%eax
	cmp	$0,%eax
	jne	_226
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$30,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_crouchRightDownImg
	orl	$8388608,_179
_226:
	movl	_179,%eax
	and	$16777216,%eax
	cmp	$0,%eax
	jne	_228
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$31,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_crouchRightUpImg
	orl	$16777216,_179
_228:
	movl	_179,%eax
	and	$33554432,%eax
	cmp	$0,%eax
	jne	_230
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$33,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_crouchleftDownImg
	orl	$33554432,_179
_230:
	movl	_179,%eax
	and	$67108864,%eax
	cmp	$0,%eax
	jne	_232
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$34,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_crouchleftUpImg
	orl	$67108864,_179
_232:
	movl	_179,%eax
	and	$134217728,%eax
	cmp	$0,%eax
	jne	_234
	movl	$-1,20(%esp)
	movl	$12,16(%esp)
	movl	$36,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_framesImg
	orl	$134217728,_179
_234:
	movl	_179,%eax
	and	$268435456,%eax
	cmp	$0,%eax
	jne	_236
	movl	$-1,20(%esp)
	movl	$6,16(%esp)
	movl	$48,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_walkrightgunImg
	orl	$268435456,_179
_236:
	movl	_179,%eax
	and	$536870912,%eax
	cmp	$0,%eax
	jne	_238
	movl	$-1,20(%esp)
	movl	$6,16(%esp)
	movl	$54,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_walkleftgunImg
	orl	$536870912,_179
_238:
	movl	_179,%eax
	and	$1073741824,%eax
	cmp	$0,%eax
	jne	_240
	movl	$-1,20(%esp)
	movl	$4,16(%esp)
	movl	$60,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_turnLeftgun
	orl	$1073741824,_179
_240:
	movl	_179,%eax
	and	$-2147483648,%eax
	cmp	$0,%eax
	jne	_242
	movl	$-1,20(%esp)
	movl	$4,16(%esp)
	movl	$64,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_turnRightGun
	orl	$-2147483648,_179
_242:
	movl	_244,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_245
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$68,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_nealRightpunchoutImg
	orl	$1,_244
_245:
	movl	_244,%eax
	and	$2,%eax
	cmp	$0,%eax
	jne	_247
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$69,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_nealRightpunchinImg
	orl	$2,_244
_247:
	movl	_244,%eax
	and	$4,%eax
	cmp	$0,%eax
	jne	_249
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$71,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_nealLeftpunchOutImg
	orl	$4,_244
_249:
	movl	_244,%eax
	and	$8,%eax
	cmp	$0,%eax
	jne	_251
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$72,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_nealleftpunchInImg
	orl	$8,_244
_251:
	movl	_244,%eax
	and	$16,%eax
	cmp	$0,%eax
	jne	_253
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$74,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_standingggunRightImg
	orl	$16,_244
_253:
	movl	_244,%eax
	and	$32,%eax
	cmp	$0,%eax
	jne	_255
	movl	$-1,20(%esp)
	movl	$2,16(%esp)
	movl	$76,12(%esp)
	movl	$56,8(%esp)
	movl	$60,4(%esp)
	movl	$_18,(%esp)
	call	_brl_max2d_LoadAnimImage
	incl	4(%eax)
	movl	%eax,_bb_knealingdowngunleftImg
	orl	$32,_244
_255:
	cmpl	$_bbNullObject,_bb_knealingdowngunleftImg
	jne	_256
	call	_bbEnd
_256:
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$480,4(%esp)
	movl	$640,(%esp)
	call	_brl_graphics_Graphics
	movl	$3,(%esp)
	call	_brl_max2d_SetBlend
	calll	*_bb_TBackground+48
	flds	_963
	fstps	4(%esp)
	flds	_964
	fstps	(%esp)
	calll	*_bb_Tplayer+48
	movl	%eax,-16(%ebp)
_24:
	call	_brl_max2d_Cls
	movl	$39,(%esp)
	call	_brl_polledinput_KeyDown
	mov	%eax,%ebx
	movl	$37,(%esp)
	call	_brl_polledinput_KeyDown
	sub	%eax,%ebx
	movl	%ebx,-20(%ebp)
	fildl	-20(%ebp)
	fstps	-4(%ebp)
	movl	$40,(%esp)
	call	_brl_polledinput_KeyDown
	mov	%eax,%ebx
	movl	$88,(%esp)
	call	_brl_polledinput_KeyDown
	sub	%eax,%ebx
	movl	%ebx,-20(%ebp)
	fildl	-20(%ebp)
	fstps	-8(%ebp)
	movl	$90,(%esp)
	call	_brl_polledinput_KeyDown
	movl	-16(%ebp),%edx
	movl	%eax,12(%esp)
	lea	-8(%ebp),%eax
	movl	%eax,8(%esp)
	lea	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	(%edx),%eax
	calll	*52(%eax)
	flds	-4(%ebp)
	fstps	(%esp)
	calll	*_bb_TBackground+52
	movl	__bb_TBackground_list,%eax
	movl	$_bb_TileRow,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*76(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-12(%ebp)
	movl	__bb_TBackground_list,%esi
	mov	%esi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	mov	%eax,%edi
	jmp	_25
_27:
	mov	%edi,%eax
	movl	$_bb_TileRow,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	mov	%eax,%ebx
	cmp	$_bbNullObject,%ebx
	je	_25
	cmpl	-12(%ebp),%ebx
	jne	_270
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
_270:
	mov	%ebx,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
_25:
	mov	%edi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_27
_26:
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
_22:
	movl	$1,(%esp)
	call	_brl_polledinput_MouseHit
	cmp	$0,%eax
	je	_24
_23:
	mov	$0,%eax
	jmp	_104
_104:
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tsprite_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_Tsprite,(%ebx)
	movl	$0,8(%ebx)
	movl	$0,12(%ebx)
	movl	$0,16(%ebx)
	movl	$0,20(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,24(%ebx)
	mov	$0,%eax
	jmp	_107
_107:
	add	$4,%esp
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
	jnz	_278
	movl	%eax,(%esp)
	call	_bbGCFree
_278:
	mov	$0,%eax
	jmp	_276
_276:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tsprite_Create:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	$_bb_Tsprite,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	movl	20(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	%esi,12(%ebx)
	call	_bbMilliSecs
	add	%esi,%eax
	movl	%eax,16(%ebx)
	movl	16(%ebp),%eax
	movl	%eax,20(%ebx)
	mov	%edi,%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_283
	movl	%eax,(%esp)
	call	_bbGCFree
_283:
	movl	%esi,24(%ebx)
	mov	%ebx,%eax
	jmp	_116
_116:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tsprite_reset:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	cmpl	$1,20(%ebx)
	jle	_284
	movl	$0,8(%ebx)
	call	_bbMilliSecs
	addl	12(%ebx),%eax
	movl	%eax,16(%ebx)
_284:
	mov	$0,%eax
	jmp	_119
_119:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tsprite_update:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	cmpl	$1,20(%ebx)
	jle	_285
	call	_bbMilliSecs
	cmpl	16(%ebx),%eax
	jle	_286
	movl	8(%ebx),%eax
	add	$1,%eax
	cdq
	idivl	20(%ebx)
	movl	%edx,8(%ebx)
	call	_bbMilliSecs
	addl	12(%ebx),%eax
	movl	%eax,16(%ebx)
	cmpl	$0,8(%ebx)
	jne	_287
	mov	$1,%eax
	jmp	_122
_287:
_286:
_285:
	mov	$0,%eax
	jmp	_122
_122:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tsprite_display:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%ebx
	flds	_1025
	fstps	4(%esp)
	flds	_1026
	fstps	(%esp)
	call	_brl_max2d_SetScale
	movl	8(%ebx),%eax
	movl	%eax,12(%esp)
	flds	16(%ebp)
	fstps	8(%esp)
	flds	12(%ebp)
	fstps	4(%esp)
	movl	24(%ebx),%eax
	movl	%eax,(%esp)
	call	_brl_max2d_DrawImage
	fld1
	fstps	4(%esp)
	fld1
	fstps	(%esp)
	call	_brl_max2d_SetScale
	mov	$0,%eax
	jmp	_127
_127:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tplayer_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_Tplayer,(%ebx)
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
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,32(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,36(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,40(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,44(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,48(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,52(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,56(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,60(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,64(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,68(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,72(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,76(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,80(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,84(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,88(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,92(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,96(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,100(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,104(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,108(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,112(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,116(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,120(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,124(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,128(%ebx)
	movl	$0,132(%ebx)
	movl	$0,136(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,140(%ebx)
	mov	$0,%eax
	jmp	_130
_130:
	add	$4,%esp
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
	jnz	_318
	movl	%eax,(%esp)
	call	_bbGCFree
_318:
	movl	128(%ebx),%eax
	decl	4(%eax)
	jnz	_320
	movl	%eax,(%esp)
	call	_bbGCFree
_320:
	movl	124(%ebx),%eax
	decl	4(%eax)
	jnz	_322
	movl	%eax,(%esp)
	call	_bbGCFree
_322:
	movl	120(%ebx),%eax
	decl	4(%eax)
	jnz	_324
	movl	%eax,(%esp)
	call	_bbGCFree
_324:
	movl	116(%ebx),%eax
	decl	4(%eax)
	jnz	_326
	movl	%eax,(%esp)
	call	_bbGCFree
_326:
	movl	112(%ebx),%eax
	decl	4(%eax)
	jnz	_328
	movl	%eax,(%esp)
	call	_bbGCFree
_328:
	movl	108(%ebx),%eax
	decl	4(%eax)
	jnz	_330
	movl	%eax,(%esp)
	call	_bbGCFree
_330:
	movl	104(%ebx),%eax
	decl	4(%eax)
	jnz	_332
	movl	%eax,(%esp)
	call	_bbGCFree
_332:
	movl	100(%ebx),%eax
	decl	4(%eax)
	jnz	_334
	movl	%eax,(%esp)
	call	_bbGCFree
_334:
	movl	96(%ebx),%eax
	decl	4(%eax)
	jnz	_336
	movl	%eax,(%esp)
	call	_bbGCFree
_336:
	movl	92(%ebx),%eax
	decl	4(%eax)
	jnz	_338
	movl	%eax,(%esp)
	call	_bbGCFree
_338:
	movl	88(%ebx),%eax
	decl	4(%eax)
	jnz	_340
	movl	%eax,(%esp)
	call	_bbGCFree
_340:
	movl	84(%ebx),%eax
	decl	4(%eax)
	jnz	_342
	movl	%eax,(%esp)
	call	_bbGCFree
_342:
	movl	80(%ebx),%eax
	decl	4(%eax)
	jnz	_344
	movl	%eax,(%esp)
	call	_bbGCFree
_344:
	movl	76(%ebx),%eax
	decl	4(%eax)
	jnz	_346
	movl	%eax,(%esp)
	call	_bbGCFree
_346:
	movl	72(%ebx),%eax
	decl	4(%eax)
	jnz	_348
	movl	%eax,(%esp)
	call	_bbGCFree
_348:
	movl	68(%ebx),%eax
	decl	4(%eax)
	jnz	_350
	movl	%eax,(%esp)
	call	_bbGCFree
_350:
	movl	64(%ebx),%eax
	decl	4(%eax)
	jnz	_352
	movl	%eax,(%esp)
	call	_bbGCFree
_352:
	movl	60(%ebx),%eax
	decl	4(%eax)
	jnz	_354
	movl	%eax,(%esp)
	call	_bbGCFree
_354:
	movl	56(%ebx),%eax
	decl	4(%eax)
	jnz	_356
	movl	%eax,(%esp)
	call	_bbGCFree
_356:
	movl	52(%ebx),%eax
	decl	4(%eax)
	jnz	_358
	movl	%eax,(%esp)
	call	_bbGCFree
_358:
	movl	48(%ebx),%eax
	decl	4(%eax)
	jnz	_360
	movl	%eax,(%esp)
	call	_bbGCFree
_360:
	movl	44(%ebx),%eax
	decl	4(%eax)
	jnz	_362
	movl	%eax,(%esp)
	call	_bbGCFree
_362:
	movl	40(%ebx),%eax
	decl	4(%eax)
	jnz	_364
	movl	%eax,(%esp)
	call	_bbGCFree
_364:
	movl	36(%ebx),%eax
	decl	4(%eax)
	jnz	_366
	movl	%eax,(%esp)
	call	_bbGCFree
_366:
	movl	32(%ebx),%eax
	decl	4(%eax)
	jnz	_368
	movl	%eax,(%esp)
	call	_bbGCFree
_368:
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_370
	movl	%eax,(%esp)
	call	_bbGCFree
_370:
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_372
	movl	%eax,(%esp)
	call	_bbGCFree
_372:
	mov	$0,%eax
	jmp	_316
_316:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tplayer_Create:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	sub	$16,%esp
	movl	$_bb_Tplayer,(%esp)
	call	_bbObjectNew
	mov	%eax,%esi
	flds	8(%ebp)
	fstps	8(%esi)
	flds	12(%ebp)
	fstps	12(%esi)
	flds	12(%ebp)
	fstps	16(%esi)
	movl	$0,12(%esp)
	movl	$6,8(%esp)
	movl	$100,4(%esp)
	movl	_bb_walkLeftImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	24(%esi),%eax
	decl	4(%eax)
	jnz	_377
	movl	%eax,(%esp)
	call	_bbGCFree
_377:
	movl	%ebx,24(%esi)
	movl	$0,12(%esp)
	movl	$6,8(%esp)
	movl	$100,4(%esp)
	movl	_bb_walkRightImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	28(%esi),%eax
	decl	4(%eax)
	jnz	_381
	movl	%eax,(%esp)
	call	_bbGCFree
_381:
	movl	%ebx,28(%esi)
	movl	$0,12(%esp)
	movl	$4,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_turnLeftImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	40(%esi),%eax
	decl	4(%eax)
	jnz	_385
	movl	%eax,(%esp)
	call	_bbGCFree
_385:
	movl	%ebx,40(%esi)
	movl	$0,12(%esp)
	movl	$4,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_turnRightImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	44(%esi),%eax
	decl	4(%eax)
	jnz	_389
	movl	%eax,(%esp)
	call	_bbGCFree
_389:
	movl	%ebx,44(%esi)
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$100,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	32(%esi),%eax
	decl	4(%eax)
	jnz	_393
	movl	%eax,(%esp)
	call	_bbGCFree
_393:
	movl	%ebx,32(%esi)
	movl	$0,12(%esp)
	movl	$1,8(%esp)
	movl	$100,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	36(%esi),%eax
	decl	4(%eax)
	jnz	_397
	movl	%eax,(%esp)
	call	_bbGCFree
_397:
	movl	%ebx,36(%esi)
	movl	$0,12(%esp)
	movl	$3,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_punchRightOutImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	48(%esi),%eax
	decl	4(%eax)
	jnz	_401
	movl	%eax,(%esp)
	call	_bbGCFree
_401:
	movl	%ebx,48(%esi)
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_punchRightInImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	52(%esi),%eax
	decl	4(%eax)
	jnz	_405
	movl	%eax,(%esp)
	call	_bbGCFree
_405:
	movl	%ebx,52(%esi)
	movl	$0,12(%esp)
	movl	$3,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_punchLeftOutImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	60(%esi),%eax
	decl	4(%eax)
	jnz	_409
	movl	%eax,(%esp)
	call	_bbGCFree
_409:
	movl	%ebx,60(%esi)
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_punchLeftInImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	64(%esi),%eax
	decl	4(%eax)
	jnz	_413
	movl	%eax,(%esp)
	call	_bbGCFree
_413:
	movl	%ebx,64(%esi)
	movl	$0,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_punchrightImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	56(%esi),%eax
	decl	4(%eax)
	jnz	_417
	movl	%eax,(%esp)
	call	_bbGCFree
_417:
	movl	%ebx,56(%esi)
	movl	$0,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_punchLeftImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	68(%esi),%eax
	decl	4(%eax)
	jnz	_421
	movl	%eax,(%esp)
	call	_bbGCFree
_421:
	movl	%ebx,68(%esi)
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_crouchRightDownImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	76(%esi),%eax
	decl	4(%eax)
	jnz	_425
	movl	%eax,(%esp)
	call	_bbGCFree
_425:
	movl	%ebx,76(%esi)
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_crouchRightUpImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	80(%esi),%eax
	decl	4(%eax)
	jnz	_429
	movl	%eax,(%esp)
	call	_bbGCFree
_429:
	movl	%ebx,80(%esi)
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_crouchleftDownImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	88(%esi),%eax
	decl	4(%eax)
	jnz	_433
	movl	%eax,(%esp)
	call	_bbGCFree
_433:
	movl	%ebx,88(%esi)
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_crouchleftUpImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	92(%esi),%eax
	decl	4(%eax)
	jnz	_437
	movl	%eax,(%esp)
	call	_bbGCFree
_437:
	movl	%ebx,92(%esi)
	movl	$3,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	96(%esi),%eax
	decl	4(%eax)
	jnz	_441
	movl	%eax,(%esp)
	call	_bbGCFree
_441:
	movl	%ebx,96(%esi)
	movl	$2,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	84(%esi),%eax
	decl	4(%eax)
	jnz	_445
	movl	%eax,(%esp)
	call	_bbGCFree
_445:
	movl	%ebx,84(%esi)
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_nealRightpunchoutImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	112(%esi),%eax
	decl	4(%eax)
	jnz	_449
	movl	%eax,(%esp)
	call	_bbGCFree
_449:
	movl	%ebx,112(%esi)
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_nealRightpunchinImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	116(%esi),%eax
	decl	4(%eax)
	jnz	_453
	movl	%eax,(%esp)
	call	_bbGCFree
_453:
	movl	%ebx,116(%esi)
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_nealLeftpunchOutImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	100(%esi),%eax
	decl	4(%eax)
	jnz	_457
	movl	%eax,(%esp)
	call	_bbGCFree
_457:
	movl	%ebx,100(%esi)
	movl	$0,12(%esp)
	movl	$2,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_nealleftpunchInImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	104(%esi),%eax
	decl	4(%eax)
	jnz	_461
	movl	%eax,(%esp)
	call	_bbGCFree
_461:
	movl	%ebx,104(%esi)
	movl	$6,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	120(%esi),%eax
	decl	4(%eax)
	jnz	_465
	movl	%eax,(%esp)
	call	_bbGCFree
_465:
	movl	%ebx,120(%esi)
	movl	$7,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	108(%esi),%eax
	decl	4(%eax)
	jnz	_469
	movl	%eax,(%esp)
	call	_bbGCFree
_469:
	movl	%ebx,108(%esi)
	movl	$4,12(%esp)
	movl	$1,8(%esp)
	movl	$50,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	128(%esi),%eax
	decl	4(%eax)
	jnz	_473
	movl	%eax,(%esp)
	call	_bbGCFree
_473:
	movl	%ebx,128(%esi)
	movl	$5,12(%esp)
	movl	$1,8(%esp)
	movl	$51,4(%esp)
	movl	_bb_framesImg,%eax
	movl	%eax,(%esp)
	calll	*_bb_Tsprite+48
	incl	4(%eax)
	mov	%eax,%ebx
	movl	124(%esi),%eax
	decl	4(%eax)
	jnz	_477
	movl	%eax,(%esp)
	call	_bbGCFree
_477:
	movl	%ebx,124(%esi)
	movl	36(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_481
	movl	%eax,(%esp)
	call	_bbGCFree
_481:
	movl	%ebx,140(%esi)
	mov	%esi,%eax
	jmp	_137
_137:
	add	$16,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tplayer_update:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%esi
	movl	12(%ebp),%edi
	movl	16(%ebp),%edx
	movl	20(%ebp),%ebx
	movl	140(%esi),%eax
	cmpl	32(%esi),%eax
	je	_484
	cmpl	36(%esi),%eax
	je	_485
	cmpl	40(%esi),%eax
	je	_486
	cmpl	44(%esi),%eax
	je	_487
	cmpl	24(%esi),%eax
	je	_488
	cmpl	28(%esi),%eax
	je	_489
	cmpl	48(%esi),%eax
	je	_490
	cmpl	60(%esi),%eax
	je	_491
	cmpl	56(%esi),%eax
	je	_492
	cmpl	68(%esi),%eax
	je	_493
	cmpl	52(%esi),%eax
	je	_494
	cmpl	64(%esi),%eax
	je	_495
	cmpl	76(%esi),%eax
	je	_496
	cmpl	88(%esi),%eax
	je	_497
	cmpl	84(%esi),%eax
	je	_498
	cmpl	96(%esi),%eax
	je	_499
	cmpl	80(%esi),%eax
	je	_500
	cmpl	92(%esi),%eax
	je	_501
	cmpl	112(%esi),%eax
	je	_502
	cmpl	100(%esi),%eax
	je	_503
	cmpl	120(%esi),%eax
	je	_504
	cmpl	108(%esi),%eax
	je	_505
	cmpl	116(%esi),%eax
	je	_506
	cmpl	104(%esi),%eax
	je	_507
	cmpl	124(%esi),%eax
	je	_508
	cmpl	128(%esi),%eax
	je	_509
	jmp	_483
_484:
	cmp	$0,%ebx
	je	_510
	movl	60(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_514
	movl	%eax,(%esp)
	call	_bbGCFree
_514:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$1,132(%esi)
	fldz
	fstps	(%edi)
	jmp	_516
_510:
	flds	(%edx)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_517
	movl	88(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_521
	movl	%eax,(%esp)
	call	_bbGCFree
_521:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_523
_517:
	flds	(%edx)
	flds	_1036
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_524
	movl	124(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_528
	movl	%eax,(%esp)
	call	_bbGCFree
_528:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$1,136(%esi)
	fld1
	fstps	20(%esi)
	jmp	_530
_524:
	flds	(%edi)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_531
	movl	44(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_535
	movl	%eax,(%esp)
	call	_bbGCFree
_535:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_537
_531:
	flds	(%edi)
	flds	_1037
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_538
	movl	24(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_542
	movl	%eax,(%esp)
	call	_bbGCFree
_542:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_538:
_537:
_530:
_523:
_516:
	jmp	_483
_485:
	cmp	$0,%ebx
	je	_544
	movl	48(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_548
	movl	%eax,(%esp)
	call	_bbGCFree
_548:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$1,132(%esi)
	fldz
	fstps	(%edi)
	jmp	_550
_544:
	flds	(%edx)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_551
	movl	76(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_555
	movl	%eax,(%esp)
	call	_bbGCFree
_555:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_557
_551:
	flds	(%edx)
	flds	_1038
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_558
	movl	128(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_562
	movl	%eax,(%esp)
	call	_bbGCFree
_562:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$1,136(%esi)
	fld1
	fstps	20(%esi)
	jmp	_564
_558:
	flds	(%edi)
	flds	_1039
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_565
	movl	40(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_569
	movl	%eax,(%esp)
	call	_bbGCFree
_569:
	movl	%ebx,140(%esi)
	fldz
	fstps	(%edi)
	jmp	_570
_565:
	flds	(%edi)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_571
	movl	28(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_575
	movl	%eax,(%esp)
	call	_bbGCFree
_575:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_571:
_570:
_564:
_557:
_550:
	jmp	_483
_486:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_578
	flds	(%edi)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_579
	movl	44(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_583
	movl	%eax,(%esp)
	call	_bbGCFree
_583:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_585
_579:
	flds	(%edi)
	flds	_1040
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_586
	movl	24(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_590
	movl	%eax,(%esp)
	call	_bbGCFree
_590:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	jmp	_592
_586:
	movl	32(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_596
	movl	%eax,(%esp)
	call	_bbGCFree
_596:
	movl	%ebx,140(%esi)
_592:
_585:
	jmp	_597
_578:
	fldz
	fstps	(%edi)
_597:
	jmp	_483
_487:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_599
	flds	(%edi)
	flds	_1041
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_600
	movl	40(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_604
	movl	%eax,(%esp)
	call	_bbGCFree
_604:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_606
_600:
	flds	(%edi)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_607
	movl	28(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_611
	movl	%eax,(%esp)
	call	_bbGCFree
_611:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	jmp	_613
_607:
	movl	36(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_617
	movl	%eax,(%esp)
	call	_bbGCFree
_617:
	movl	%ebx,140(%esi)
_613:
_606:
	jmp	_618
_599:
	fldz
	fstps	(%edi)
_618:
	jmp	_483
_488:
	cmp	$0,%ebx
	je	_619
	movl	60(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_623
	movl	%eax,(%esp)
	call	_bbGCFree
_623:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$1,132(%esi)
	fldz
	fstps	(%edi)
	jmp	_625
_619:
	flds	(%edx)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_626
	movl	88(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_630
	movl	%eax,(%esp)
	call	_bbGCFree
_630:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_632
_626:
	flds	(%edx)
	flds	_1042
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_633
	movl	124(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_637
	movl	%eax,(%esp)
	call	_bbGCFree
_637:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$1,136(%esi)
	fld1
	fstps	20(%esi)
	jmp	_639
_633:
	flds	(%edi)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_640
	movl	44(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_644
	movl	%eax,(%esp)
	call	_bbGCFree
_644:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_646
_640:
	flds	(%edi)
	flds	_1043
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_647
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	jmp	_649
_647:
	movl	32(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_653
	movl	%eax,(%esp)
	call	_bbGCFree
_653:
	movl	%ebx,140(%esi)
_649:
_646:
_639:
_632:
_625:
	jmp	_483
_489:
	cmp	$0,%ebx
	je	_654
	movl	48(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_658
	movl	%eax,(%esp)
	call	_bbGCFree
_658:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$1,132(%esi)
	fldz
	fstps	(%edi)
	jmp	_660
_654:
	flds	(%edx)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_661
	movl	76(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_665
	movl	%eax,(%esp)
	call	_bbGCFree
_665:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_667
_661:
	flds	(%edx)
	flds	_1044
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_668
	movl	128(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_672
	movl	%eax,(%esp)
	call	_bbGCFree
_672:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$1,136(%esi)
	fld1
	fstps	20(%esi)
	jmp	_674
_668:
	flds	(%edi)
	flds	_1045
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_675
	movl	40(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_679
	movl	%eax,(%esp)
	call	_bbGCFree
_679:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_681
_675:
	flds	(%edi)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_682
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	jmp	_684
_682:
	movl	36(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_688
	movl	%eax,(%esp)
	call	_bbGCFree
_688:
	movl	%ebx,140(%esi)
_684:
_681:
_674:
_667:
_660:
	jmp	_483
_490:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_690
	movl	56(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_694
	movl	%eax,(%esp)
	call	_bbGCFree
_694:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_690:
	fldz
	fstps	(%edi)
	jmp	_483
_491:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_697
	movl	68(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_701
	movl	%eax,(%esp)
	call	_bbGCFree
_701:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_697:
	fldz
	fstps	(%edi)
	jmp	_483
_492:
	cmp	$0,%ebx
	jne	_703
	movl	52(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_707
	movl	%eax,(%esp)
	call	_bbGCFree
_707:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	cmpl	$0,132(%esi)
	je	_709
	movl	$0,132(%esi)
_709:
_703:
	fldz
	fstps	(%edi)
	jmp	_483
_493:
	cmp	$0,%ebx
	jne	_710
	movl	64(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_714
	movl	%eax,(%esp)
	call	_bbGCFree
_714:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	cmpl	$0,132(%esi)
	je	_716
	movl	$0,132(%esi)
_716:
_710:
	fldz
	fstps	(%edi)
	jmp	_483
_494:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_718
	cmp	$0,%ebx
	je	_719
	movl	48(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_723
	movl	%eax,(%esp)
	call	_bbGCFree
_723:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_725
_719:
	flds	(%edi)
	flds	_1046
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_726
	movl	40(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_730
	movl	%eax,(%esp)
	call	_bbGCFree
_730:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_732
_726:
	flds	(%edi)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_733
	movl	28(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_737
	movl	%eax,(%esp)
	call	_bbGCFree
_737:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	jmp	_739
_733:
	movl	36(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_743
	movl	%eax,(%esp)
	call	_bbGCFree
_743:
	movl	%ebx,140(%esi)
_739:
_732:
_725:
	jmp	_744
_718:
	fldz
	fstps	(%edi)
_744:
	jmp	_483
_495:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_746
	cmp	$0,%ebx
	je	_747
	movl	60(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_751
	movl	%eax,(%esp)
	call	_bbGCFree
_751:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_753
_747:
	flds	(%edi)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_754
	movl	44(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_758
	movl	%eax,(%esp)
	call	_bbGCFree
_758:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	fldz
	fstps	(%edi)
	jmp	_760
_754:
	flds	(%edi)
	flds	_1047
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_761
	movl	24(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_765
	movl	%eax,(%esp)
	call	_bbGCFree
_765:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	jmp	_767
_761:
	movl	32(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_771
	movl	%eax,(%esp)
	call	_bbGCFree
_771:
	movl	%ebx,140(%esi)
_767:
_760:
_753:
	jmp	_772
_746:
	fldz
	fstps	(%edi)
_772:
	jmp	_483
_496:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_774
	movl	84(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_778
	movl	%eax,(%esp)
	call	_bbGCFree
_778:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_774:
	fldz
	fstps	(%edi)
	jmp	_483
_497:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_781
	movl	96(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_785
	movl	%eax,(%esp)
	call	_bbGCFree
_785:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_781:
	fldz
	fstps	(%edi)
	jmp	_483
_498:
	cmp	$0,%ebx
	je	_787
	movl	112(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_791
	movl	%eax,(%esp)
	call	_bbGCFree
_791:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$1,132(%esi)
	jmp	_793
_787:
	flds	(%edx)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_794
	movl	80(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_798
	movl	%eax,(%esp)
	call	_bbGCFree
_798:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_794:
_793:
	fldz
	fstps	(%edi)
	jmp	_483
_499:
	cmp	$0,%ebx
	je	_800
	movl	100(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_804
	movl	%eax,(%esp)
	call	_bbGCFree
_804:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	jmp	_806
_800:
	flds	(%edx)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_807
	movl	92(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_811
	movl	%eax,(%esp)
	call	_bbGCFree
_811:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_807:
_806:
	fldz
	fstps	(%edi)
	jmp	_483
_500:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_814
	movl	36(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_818
	movl	%eax,(%esp)
	call	_bbGCFree
_818:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_814:
	fldz
	fstps	(%edi)
	jmp	_483
_501:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_821
	movl	32(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_825
	movl	%eax,(%esp)
	call	_bbGCFree
_825:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_821:
	fldz
	fstps	(%edi)
	jmp	_483
_502:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_828
	movl	120(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_832
	movl	%eax,(%esp)
	call	_bbGCFree
_832:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_828:
	fldz
	fstps	(%edi)
	jmp	_483
_503:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_835
	movl	108(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_839
	movl	%eax,(%esp)
	call	_bbGCFree
_839:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_835:
	fldz
	fstps	(%edi)
	jmp	_483
_504:
	cmp	$0,%ebx
	je	_841
	cmpl	$0,132(%esi)
	je	_842
	movl	$0,132(%esi)
_842:
	jmp	_843
_841:
	movl	116(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_847
	movl	%eax,(%esp)
	call	_bbGCFree
_847:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_843:
	fldz
	fstps	(%edi)
	jmp	_483
_505:
	cmp	$0,%ebx
	jne	_849
	cmpl	$0,132(%esi)
	je	_850
	movl	$0,132(%esi)
_850:
	movl	104(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_854
	movl	%eax,(%esp)
	call	_bbGCFree
_854:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_849:
	fldz
	fstps	(%edi)
	jmp	_483
_506:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_857
	movl	84(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_861
	movl	%eax,(%esp)
	call	_bbGCFree
_861:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_857:
	fldz
	fstps	(%edi)
	jmp	_483
_507:
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*56(%eax)
	cmp	$0,%eax
	je	_864
	movl	96(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_868
	movl	%eax,(%esp)
	call	_bbGCFree
_868:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_864:
	fldz
	fstps	(%edi)
	jmp	_483
_508:
	cmpl	$0,136(%esi)
	je	_870
	flds	(%edx)
	flds	_1048
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_871
	flds	20(%esi)
	fadds	_1049
	fstps	20(%esi)
	flds	20(%esi)
	flds	_1050
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_872
	flds	_1051
	fstps	20(%esi)
	movl	$0,136(%esi)
_872:
	jmp	_873
_871:
	movl	$0,136(%esi)
_873:
	jmp	_874
_870:
	flds	20(%esi)
	fsubs	_1052
	fstps	20(%esi)
_874:
	flds	12(%esi)
	fsubs	20(%esi)
	fstps	12(%esi)
	flds	12(%esi)
	flds	16(%esi)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_875
	flds	(%edi)
	flds	_1053
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_876
	movl	24(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_880
	movl	%eax,(%esp)
	call	_bbGCFree
_880:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	jmp	_882
_876:
	flds	(%edi)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_883
	movl	28(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_887
	movl	%eax,(%esp)
	call	_bbGCFree
_887:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	jmp	_889
_883:
	movl	32(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_893
	movl	%eax,(%esp)
	call	_bbGCFree
_893:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_889:
_882:
	fldz
	fstps	20(%esi)
	flds	16(%esi)
	fstps	12(%esi)
	jmp	_895
_875:
	flds	(%edi)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_896
	movl	128(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_900
	movl	%eax,(%esp)
	call	_bbGCFree
_900:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_896:
_895:
	jmp	_483
_509:
	cmpl	$0,136(%esi)
	je	_902
	flds	(%edx)
	flds	_1054
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_903
	flds	20(%esi)
	fadds	_1055
	fstps	20(%esi)
	flds	20(%esi)
	flds	_1056
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_904
	flds	_1057
	fstps	20(%esi)
	movl	$0,136(%esi)
_904:
	jmp	_905
_903:
	movl	$0,136(%esi)
_905:
	jmp	_906
_902:
	flds	20(%esi)
	fsubs	_1058
	fstps	20(%esi)
_906:
	flds	12(%esi)
	fsubs	20(%esi)
	fstps	12(%esi)
	flds	12(%esi)
	flds	16(%esi)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setb	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_907
	flds	(%edi)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_908
	movl	28(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_912
	movl	%eax,(%esp)
	call	_bbGCFree
_912:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	jmp	_914
_908:
	flds	(%edi)
	flds	_1059
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_915
	movl	24(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_919
	movl	%eax,(%esp)
	call	_bbGCFree
_919:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	jmp	_921
_915:
	movl	36(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_925
	movl	%eax,(%esp)
	call	_bbGCFree
_925:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_921:
_914:
	fldz
	fstps	20(%esi)
	flds	16(%esi)
	fstps	12(%esi)
	jmp	_927
_907:
	flds	(%edi)
	flds	_1060
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_928
	movl	124(%esi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	140(%esi),%eax
	decl	4(%eax)
	jnz	_932
	movl	%eax,(%esp)
	call	_bbGCFree
_932:
	movl	%ebx,140(%esi)
	movl	140(%esi),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_928:
_927:
	jmp	_483
_483:
	mov	$0,%eax
	jmp	_143
_143:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tplayer_display:
	push	%ebp
	mov	%esp,%ebp
	sub	$24,%esp
	movl	8(%ebp),%edx
	movl	140(%edx),%eax
	flds	12(%edx)
	fstps	8(%esp)
	flds	8(%edx)
	fstps	4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*60(%eax)
	mov	$0,%eax
	jmp	_146
_146:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TileRow_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_TileRow,(%ebx)
	fldz
	fstps	8(%ebx)
	fldz
	fstps	12(%ebx)
	fldz
	fstps	16(%ebx)
	fldz
	fstps	20(%ebx)
	fldz
	fstps	24(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,28(%ebx)
	movl	$0,32(%ebx)
	movl	$0,36(%ebx)
	call	_brl_graphics_GraphicsWidth
	movl	%eax,32(%ebx)
	call	_brl_graphics_GraphicsHeight
	movl	%eax,36(%ebx)
	mov	$0,%eax
	jmp	_149
_149:
	add	$4,%esp
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
	jnz	_938
	movl	%eax,(%esp)
	call	_bbGCFree
_938:
	mov	$0,%eax
	jmp	_936
_936:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TileRow_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	sub	$12,%esp
	movl	20(%ebp),%esi
	movl	$_bb_TileRow,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	flds	8(%ebp)
	fstps	8(%ebx)
	flds	12(%ebp)
	fstps	12(%ebx)
	movl	32(%ebx),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fstps	16(%ebx)
	movl	12(%esi),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fstps	20(%ebx)
	flds	16(%ebp)
	fstps	24(%ebx)
	mov	%esi,%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_943
	movl	%eax,(%esp)
	call	_bbGCFree
_943:
	movl	%esi,28(%ebx)
	mov	%ebx,%eax
	jmp	_158
_158:
	add	$12,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TileRow_update:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%ebx
	flds	12(%ebp)
	movl	28(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fstpl	8(%esp)
	flds	8(%ebx)
	flds	24(%ebx)
	fmulp	%st(0),%st(2)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbFloatMod
	fstps	8(%ebx)
	mov	$0,%eax
	jmp	_162
_162:
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TileRow_display:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%ebx
	flds	20(%ebx)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,12(%esp)
	flds	16(%ebx)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,8(%esp)
	flds	12(%ebx)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,4(%esp)
	movl	$0,(%esp)
	call	_brl_max2d_SetViewport
	movl	$0,12(%esp)
	flds	12(%ebx)
	fstps	8(%esp)
	flds	8(%ebx)
	fstps	4(%esp)
	movl	28(%ebx),%eax
	movl	%eax,(%esp)
	call	_brl_max2d_TileImage
	call	_brl_graphics_GraphicsHeight
	movl	%eax,12(%esp)
	call	_brl_graphics_GraphicsWidth
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	call	_brl_max2d_SetViewport
	mov	$0,%eax
	jmp	_165
_165:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TBackground_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_TBackground,(%ebx)
	mov	$0,%eax
	jmp	_168
_168:
	add	$4,%esp
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
	jmp	_944
_944:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TBackground_Create:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	__bb_TBackground_list,%ebx
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
	movl	__bb_TBackground_list,%ebx
	movl	_bb_Background2,%eax
	movl	%eax,12(%esp)
	flds	_1176
	fstps	8(%esp)
	flds	_1177
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	__bb_TBackground_list,%ebx
	movl	_bb_Background3,%eax
	movl	%eax,12(%esp)
	flds	_1178
	fstps	8(%esp)
	flds	_1179
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	__bb_TBackground_list,%ebx
	movl	_bb_Background4,%eax
	movl	%eax,12(%esp)
	flds	_1180
	fstps	8(%esp)
	flds	_1181
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	__bb_TBackground_list,%ebx
	movl	_bb_Background5,%eax
	movl	%eax,12(%esp)
	flds	_1182
	fstps	8(%esp)
	flds	_1183
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	__bb_TBackground_list,%ebx
	movl	_bb_Cloud4,%eax
	movl	%eax,12(%esp)
	flds	_1184
	fstps	8(%esp)
	flds	_1185
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	__bb_TBackground_list,%ebx
	movl	_bb_Cloud3,%eax
	movl	%eax,12(%esp)
	flds	_1186
	fstps	8(%esp)
	flds	_1187
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	__bb_TBackground_list,%ebx
	movl	_bb_Cloud2,%eax
	movl	%eax,12(%esp)
	flds	_1188
	fstps	8(%esp)
	flds	_1189
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	__bb_TBackground_list,%ebx
	movl	_bb_Cloud1,%eax
	movl	%eax,12(%esp)
	flds	_1190
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
	movl	__bb_TBackground_list,%ebx
	movl	_bb_Tree,%eax
	movl	%eax,12(%esp)
	flds	_1191
	fstps	8(%esp)
	flds	_1192
	fstps	4(%esp)
	flds	_1193
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	movl	__bb_TBackground_list,%ebx
	movl	_bb_Background6,%eax
	movl	%eax,12(%esp)
	flds	_1194
	fstps	8(%esp)
	flds	_1195
	fstps	4(%esp)
	fldz
	fstps	(%esp)
	calll	*_bb_TileRow+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	mov	$_bbNullObject,%eax
	jmp	_173
_173:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TBackground_update:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	sub	$16,%esp
	movl	__bb_TBackground_list,%ebx
	mov	%ebx,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*140(%eax)
	mov	%eax,%esi
	jmp	_19
_21:
	mov	%esi,%eax
	movl	$_bb_TileRow,4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	cmp	$_bbNullObject,%eax
	je	_19
	flds	8(%ebp)
	fstps	4(%esp)
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
_19:
	mov	%esi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_21
_20:
	mov	$0,%eax
	jmp	_176
_176:
	add	$16,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_273:
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
_36:
	.asciz	":brl.max2d.TImage"
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
	.align	4
_179:
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
_bb_T_list:
	.long	_bbNullObject
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	109,101,100,105,97,92,115,107,121,46,112,110,103
	.align	4
_bb_Background1:
	.long	_bbNullObject
	.align	4
_8:
	.long	_bbStringClass
	.long	2147483647
	.long	19
	.short	109,101,100,105,97,92,109,111,117,110,116,97,105,110,115,46
	.short	112,110,103
	.align	4
_bb_Background2:
	.long	_bbNullObject
	.align	4
_9:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	109,101,100,105,97,92,115,111,105,108,49,46,112,110,103
	.align	4
_bb_Background3:
	.long	_bbNullObject
	.align	4
_10:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	109,101,100,105,97,92,115,111,105,108,50,46,112,110,103
	.align	4
_bb_Background4:
	.long	_bbNullObject
	.align	4
_11:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	109,101,100,105,97,92,115,111,105,108,51,46,112,110,103
	.align	4
_bb_Background5:
	.long	_bbNullObject
	.align	4
_12:
	.long	_bbStringClass
	.long	2147483647
	.long	17
	.short	109,101,100,105,97,92,98,97,114,114,105,101,114,46,98,109
	.short	112
	.align	4
_bb_Background6:
	.long	_bbNullObject
	.align	4
_13:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	109,101,100,105,97,92,99,108,111,117,100,49,46,112,110,103
	.align	4
_bb_Cloud1:
	.long	_bbNullObject
	.align	4
_14:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	109,101,100,105,97,92,99,108,111,117,100,50,46,112,110,103
	.align	4
_bb_Cloud2:
	.long	_bbNullObject
	.align	4
_15:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	109,101,100,105,97,92,99,108,111,117,100,51,46,112,110,103
	.align	4
_bb_Cloud3:
	.long	_bbNullObject
	.align	4
_16:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	109,101,100,105,97,92,99,108,111,117,100,52,46,112,110,103
	.align	4
_bb_Cloud4:
	.long	_bbNullObject
	.align	4
_17:
	.long	_bbStringClass
	.long	2147483647
	.long	20
	.short	109,101,100,105,97,92,115,99,114,111,108,108,116,114,101,101
	.short	46,112,110,103
	.align	4
_bb_Tree:
	.long	_bbNullObject
	.align	4
_18:
	.long	_bbStringClass
	.long	2147483647
	.long	19
	.short	109,101,100,105,97,92,115,111,98,115,112,114,105,116,101,46
	.short	112,110,103
	.align	4
_bb_walkRightImg:
	.long	_bbNullObject
	.align	4
_bb_walkLeftImg:
	.long	_bbNullObject
	.align	4
_bb_turnLeftImg:
	.long	_bbNullObject
	.align	4
_bb_turnRightImg:
	.long	_bbNullObject
	.align	4
_bb_punchRightOutImg:
	.long	_bbNullObject
	.align	4
_bb_punchRightInImg:
	.long	_bbNullObject
	.align	4
_bb_punchrightImg:
	.long	_bbNullObject
	.align	4
_bb_punchLeftOutImg:
	.long	_bbNullObject
	.align	4
_bb_punchLeftInImg:
	.long	_bbNullObject
	.align	4
_bb_punchLeftImg:
	.long	_bbNullObject
	.align	4
_bb_crouchRightDownImg:
	.long	_bbNullObject
	.align	4
_bb_crouchRightUpImg:
	.long	_bbNullObject
	.align	4
_bb_crouchleftDownImg:
	.long	_bbNullObject
	.align	4
_bb_crouchleftUpImg:
	.long	_bbNullObject
	.align	4
_bb_framesImg:
	.long	_bbNullObject
	.align	4
_bb_walkrightgunImg:
	.long	_bbNullObject
	.align	4
_bb_walkleftgunImg:
	.long	_bbNullObject
	.align	4
_bb_turnLeftgun:
	.long	_bbNullObject
	.align	4
_bb_turnRightGun:
	.long	_bbNullObject
	.align	4
_244:
	.long	0
	.align	4
_bb_nealRightpunchoutImg:
	.long	_bbNullObject
	.align	4
_bb_nealRightpunchinImg:
	.long	_bbNullObject
	.align	4
_bb_nealLeftpunchOutImg:
	.long	_bbNullObject
	.align	4
_bb_nealleftpunchInImg:
	.long	_bbNullObject
	.align	4
_bb_standingggunRightImg:
	.long	_bbNullObject
	.align	4
_bb_knealingdowngunleftImg:
	.long	_bbNullObject
	.align	4
_963:
	.long	0x43b40000
	.align	4
_964:
	.long	0x43960000
	.align	4
_1025:
	.long	0x40000000
	.align	4
_1026:
	.long	0x40000000
	.align	4
_1036:
	.long	0xbf800000
	.align	4
_1037:
	.long	0xbf800000
	.align	4
_1038:
	.long	0xbf800000
	.align	4
_1039:
	.long	0xbf800000
	.align	4
_1040:
	.long	0xbf800000
	.align	4
_1041:
	.long	0xbf800000
	.align	4
_1042:
	.long	0xbf800000
	.align	4
_1043:
	.long	0xbf800000
	.align	4
_1044:
	.long	0xbf800000
	.align	4
_1045:
	.long	0xbf800000
	.align	4
_1046:
	.long	0xbf800000
	.align	4
_1047:
	.long	0xbf800000
	.align	4
_1048:
	.long	0xbf800000
	.align	4
_1049:
	.long	0x3f400000
	.align	4
_1050:
	.long	0x40c00000
	.align	4
_1051:
	.long	0x40c00000
	.align	4
_1052:
	.long	0x3e4ccccd
	.align	4
_1053:
	.long	0xbf800000
	.align	4
_1054:
	.long	0xbf800000
	.align	4
_1055:
	.long	0x3f400000
	.align	4
_1056:
	.long	0x40c00000
	.align	4
_1057:
	.long	0x40c00000
	.align	4
_1058:
	.long	0x3e4ccccd
	.align	4
_1059:
	.long	0xbf800000
	.align	4
_1060:
	.long	0xbf800000
	.align	4
_1176:
	.long	0xbfc00000
	.align	4
_1177:
	.long	0x43480000
	.align	4
_1178:
	.long	0xc0000000
	.align	4
_1179:
	.long	0x43d20000
	.align	4
_1180:
	.long	0xc0400000
	.align	4
_1181:
	.long	0x43d70000
	.align	4
_1182:
	.long	0xc0a00000
	.align	4
_1183:
	.long	0x43e10000
	.align	4
_1184:
	.long	0xbf800000
	.align	4
_1185:
	.long	0x430c0000
	.align	4
_1186:
	.long	0xc0000000
	.align	4
_1187:
	.long	0x42c80000
	.align	4
_1188:
	.long	0xc0400000
	.align	4
_1189:
	.long	0x42700000
	.align	4
_1190:
	.long	0xc0800000
	.align	4
_1191:
	.long	0xc0400000
	.align	4
_1192:
	.long	0x43340000
	.align	4
_1193:
	.long	0x43480000
	.align	4
_1194:
	.long	0xc0c00000
	.align	4
_1195:
	.long	0x43dc0000
