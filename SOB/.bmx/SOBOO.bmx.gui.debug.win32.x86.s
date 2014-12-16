	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_d3d9max2d_d3d9max2d
	extrn	___bb_data_data
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_macos_macos
	extrn	___bb_map_map
	extrn	___bb_maxlua_maxlua
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_threads_threads
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbEnd
	extrn	_bbFloatMod
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbMilliSecs
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_brl_blitz_NullMethodError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_graphics_GraphicsHeight
	extrn	_brl_graphics_GraphicsWidth
	extrn	_brl_linkedlist_TList
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_LoadAnimImage
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetScale
	extrn	_brl_max2d_SetViewport
	extrn	_brl_max2d_TileImage
	extrn	_brl_polledinput_KeyDown
	extrn	_brl_polledinput_MouseHit
	public	__bb_TBackground_Create
	public	__bb_TBackground_Delete
	public	__bb_TBackground_New
	public	__bb_TBackground_display
	public	__bb_TBackground_list
	public	__bb_TBackground_update
	public	__bb_TileRow_Create
	public	__bb_TileRow_Delete
	public	__bb_TileRow_New
	public	__bb_TileRow_display
	public	__bb_TileRow_update
	public	__bb_Tilebase_Delete
	public	__bb_Tilebase_New
	public	__bb_Tplayer_Create
	public	__bb_Tplayer_Delete
	public	__bb_Tplayer_New
	public	__bb_Tplayer_display
	public	__bb_Tplayer_update
	public	__bb_Tsprite_Create
	public	__bb_Tsprite_Delete
	public	__bb_Tsprite_New
	public	__bb_Tsprite_display
	public	__bb_Tsprite_reset
	public	__bb_Tsprite_update
	public	__bb_main
	public	__bb_tileRotate_Create
	public	__bb_tileRotate_Delete
	public	__bb_tileRotate_New
	public	__bb_tileRotate_display
	public	__bb_tileRotate_update
	public	_bb_Background1
	public	_bb_Background2
	public	_bb_Background3
	public	_bb_Background4
	public	_bb_Background5
	public	_bb_Background6
	public	_bb_Cloud1
	public	_bb_Cloud2
	public	_bb_Cloud3
	public	_bb_Cloud4
	public	_bb_TBackground
	public	_bb_T_list
	public	_bb_TileRow
	public	_bb_Tilebase
	public	_bb_Tplayer
	public	_bb_Tree
	public	_bb_Tsprite
	public	_bb_crouchRightDownImg
	public	_bb_crouchRightUpImg
	public	_bb_crouchleftDownImg
	public	_bb_crouchleftUpImg
	public	_bb_framesImg
	public	_bb_knealingdowngunleftImg
	public	_bb_nealLeftpunchOutImg
	public	_bb_nealRightpunchinImg
	public	_bb_nealRightpunchoutImg
	public	_bb_nealleftpunchInImg
	public	_bb_punchLeftImg
	public	_bb_punchLeftInImg
	public	_bb_punchLeftOutImg
	public	_bb_punchRightInImg
	public	_bb_punchRightOutImg
	public	_bb_punchrightImg
	public	_bb_standingggunRightImg
	public	_bb_tileRotate
	public	_bb_turnLeftImg
	public	_bb_turnLeftgun
	public	_bb_turnRightGun
	public	_bb_turnRightImg
	public	_bb_walkLeftImg
	public	_bb_walkRightImg
	public	_bb_walkleftgunImg
	public	_bb_walkrightgunImg
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	cmp	dword [_414],0
	je	_415
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_415:
	mov	dword [_414],1
	mov	dword [ebp-4],_bbNullObject
	fldz
	fstp	dword [ebp-8]
	fldz
	fstp	dword [ebp-12]
	mov	dword [ebp-16],0
	push	ebp
	push	_372
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
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
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
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
	push	_bb_Tsprite
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tplayer
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_Tilebase
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TileRow
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_tileRotate
	call	_bbObjectRegisterType
	add	esp,4
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,1
	cmp	eax,0
	jne	_229
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TBackground_list],eax
	or	dword [_228],1
_229:
	push	_bb_TBackground
	call	_bbObjectRegisterType
	add	esp,4
	push	_230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,2
	cmp	eax,0
	jne	_232
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_T_list],eax
	or	dword [_228],2
_232:
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,4
	cmp	eax,0
	jne	_235
	push	-1
	push	_22
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Background1],eax
	or	dword [_228],4
_235:
	push	_236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,8
	cmp	eax,0
	jne	_238
	push	-1
	push	_23
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Background2],eax
	or	dword [_228],8
_238:
	push	_239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,16
	cmp	eax,0
	jne	_241
	push	-1
	push	_24
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Background3],eax
	or	dword [_228],16
_241:
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,32
	cmp	eax,0
	jne	_244
	push	-1
	push	_25
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Background4],eax
	or	dword [_228],32
_244:
	push	_245
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,64
	cmp	eax,0
	jne	_247
	push	-1
	push	_26
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Background5],eax
	or	dword [_228],64
_247:
	push	_248
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,128
	cmp	eax,0
	jne	_250
	push	-1
	push	_27
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Background6],eax
	or	dword [_228],128
_250:
	push	_251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,256
	cmp	eax,0
	jne	_253
	push	-1
	push	_28
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Cloud1],eax
	or	dword [_228],256
_253:
	push	_254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,512
	cmp	eax,0
	jne	_256
	push	-1
	push	_29
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Cloud2],eax
	or	dword [_228],512
_256:
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,1024
	cmp	eax,0
	jne	_259
	push	-1
	push	_30
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Cloud3],eax
	or	dword [_228],1024
_259:
	push	_260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,2048
	cmp	eax,0
	jne	_262
	push	-1
	push	_31
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Cloud4],eax
	or	dword [_228],2048
_262:
	push	_263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,4096
	cmp	eax,0
	jne	_265
	push	-1
	push	_32
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Tree],eax
	or	dword [_228],4096
_265:
	push	_266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,8192
	cmp	eax,0
	jne	_268
	push	-1
	push	6
	push	0
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_walkRightImg],eax
	or	dword [_228],8192
_268:
	push	_269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,16384
	cmp	eax,0
	jne	_271
	push	-1
	push	6
	push	6
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_walkLeftImg],eax
	or	dword [_228],16384
_271:
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,32768
	cmp	eax,0
	jne	_274
	push	-1
	push	4
	push	12
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_turnLeftImg],eax
	or	dword [_228],32768
_274:
	push	_275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,65536
	cmp	eax,0
	jne	_277
	push	-1
	push	4
	push	16
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_turnRightImg],eax
	or	dword [_228],65536
_277:
	push	_278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,131072
	cmp	eax,0
	jne	_280
	push	-1
	push	3
	push	20
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_punchRightOutImg],eax
	or	dword [_228],131072
_280:
	push	_281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,262144
	cmp	eax,0
	jne	_283
	push	-1
	push	2
	push	23
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_punchRightInImg],eax
	or	dword [_228],262144
_283:
	push	_284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,524288
	cmp	eax,0
	jne	_286
	push	-1
	push	1
	push	22
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_punchrightImg],eax
	or	dword [_228],524288
_286:
	push	_287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,1048576
	cmp	eax,0
	jne	_289
	push	-1
	push	3
	push	25
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_punchLeftOutImg],eax
	or	dword [_228],1048576
_289:
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,2097152
	cmp	eax,0
	jne	_292
	push	-1
	push	2
	push	28
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_punchLeftInImg],eax
	or	dword [_228],2097152
_292:
	push	_293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,4194304
	cmp	eax,0
	jne	_295
	push	-1
	push	1
	push	27
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_punchLeftImg],eax
	or	dword [_228],4194304
_295:
	push	_296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,8388608
	cmp	eax,0
	jne	_298
	push	-1
	push	2
	push	30
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_crouchRightDownImg],eax
	or	dword [_228],8388608
_298:
	push	_299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,16777216
	cmp	eax,0
	jne	_301
	push	-1
	push	2
	push	31
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_crouchRightUpImg],eax
	or	dword [_228],16777216
_301:
	push	_302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,33554432
	cmp	eax,0
	jne	_304
	push	-1
	push	2
	push	33
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_crouchleftDownImg],eax
	or	dword [_228],33554432
_304:
	push	_305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,67108864
	cmp	eax,0
	jne	_307
	push	-1
	push	2
	push	34
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_crouchleftUpImg],eax
	or	dword [_228],67108864
_307:
	push	_308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,134217728
	cmp	eax,0
	jne	_310
	push	-1
	push	12
	push	36
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_framesImg],eax
	or	dword [_228],134217728
_310:
	push	_311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,268435456
	cmp	eax,0
	jne	_313
	push	-1
	push	6
	push	48
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_walkrightgunImg],eax
	or	dword [_228],268435456
_313:
	push	_314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,536870912
	cmp	eax,0
	jne	_316
	push	-1
	push	6
	push	54
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_walkleftgunImg],eax
	or	dword [_228],536870912
_316:
	push	_317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,1073741824
	cmp	eax,0
	jne	_319
	push	-1
	push	4
	push	60
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_turnLeftgun],eax
	or	dword [_228],1073741824
_319:
	push	_320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_228]
	and	eax,-2147483648
	cmp	eax,0
	jne	_322
	push	-1
	push	4
	push	64
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_turnRightGun],eax
	or	dword [_228],-2147483648
_322:
	push	_323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_325]
	and	eax,1
	cmp	eax,0
	jne	_326
	push	-1
	push	2
	push	68
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_nealRightpunchoutImg],eax
	or	dword [_325],1
_326:
	push	_327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_325]
	and	eax,2
	cmp	eax,0
	jne	_329
	push	-1
	push	2
	push	69
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_nealRightpunchinImg],eax
	or	dword [_325],2
_329:
	push	_330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_325]
	and	eax,4
	cmp	eax,0
	jne	_332
	push	-1
	push	2
	push	71
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_nealLeftpunchOutImg],eax
	or	dword [_325],4
_332:
	push	_333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_325]
	and	eax,8
	cmp	eax,0
	jne	_335
	push	-1
	push	2
	push	72
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_nealleftpunchInImg],eax
	or	dword [_325],8
_335:
	push	_336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_325]
	and	eax,16
	cmp	eax,0
	jne	_338
	push	-1
	push	2
	push	74
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_standingggunRightImg],eax
	or	dword [_325],16
_338:
	push	_339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_325]
	and	eax,32
	cmp	eax,0
	jne	_341
	push	-1
	push	2
	push	76
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_knealingdowngunleftImg],eax
	or	dword [_325],32
_341:
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_knealingdowngunleftImg],_bbNullObject
	jne	_343
	push	ebp
	push	_345
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
_343:
	push	_346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	480
	push	640
	call	_brl_graphics_Graphics
	add	esp,20
	push	_347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TBackground+48]
	push	_349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1135869952
	push	1133903872
	call	dword [_bb_Tplayer+48]
	add	esp,8
	mov	dword [ebp-4],eax
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_42:
	push	ebp
	push	_368
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	39
	call	_brl_polledinput_KeyDown
	add	esp,4
	mov	ebx,eax
	push	37
	call	_brl_polledinput_KeyDown
	add	esp,4
	sub	ebx,eax
	mov	dword [ebp+-20],ebx
	fild	dword [ebp+-20]
	fstp	dword [ebp-8]
	push	_355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	40
	call	_brl_polledinput_KeyDown
	add	esp,4
	mov	ebx,eax
	push	88
	call	_brl_polledinput_KeyDown
	add	esp,4
	sub	ebx,eax
	mov	dword [ebp+-20],ebx
	fild	dword [ebp+-20]
	fstp	dword [ebp-12]
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	90
	call	_brl_polledinput_KeyDown
	add	esp,4
	mov	dword [ebp-16],eax
	push	_359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_361
	call	_brl_blitz_NullObjectError
_361:
	push	dword [ebp-16]
	lea	eax,dword [ebp-12]
	push	eax
	lea	eax,dword [ebp-8]
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,16
	push	_362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	dword [_bb_TBackground+52]
	add	esp,4
	push	_363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TBackground+56]
	push	_364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_366
	call	_brl_blitz_NullObjectError
_366:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_367
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_40:
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	cmp	eax,0
	je	_42
_41:
	mov	ebx,0
	jmp	_124
_124:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsprite_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_418
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tsprite
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	push	ebp
	push	_417
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_127
_127:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsprite_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_130:
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_422
	push	eax
	call	_bbGCFree
	add	esp,4
_422:
	mov	eax,0
	jmp	_420
_420:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsprite_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbNullObject
	push	ebp
	push	_450
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Tsprite
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_427
	call	_brl_blitz_NullObjectError
_427:
	mov	eax,dword [ebp-16]
	mov	dword [ebx+8],eax
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_431
	call	_brl_blitz_NullObjectError
_431:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+12],eax
	push	_433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_435
	call	_brl_blitz_NullObjectError
_435:
	call	_bbMilliSecs
	add	eax,dword [ebp-8]
	mov	dword [ebx+16],eax
	push	_437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_439
	call	_brl_blitz_NullObjectError
_439:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+20],eax
	push	_441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_443
	call	_brl_blitz_NullObjectError
_443:
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_448
	push	eax
	call	_bbGCFree
	add	esp,4
_448:
	mov	dword [esi+24],ebx
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_136
_136:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsprite_reset:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_467
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_454
	call	_brl_blitz_NullObjectError
_454:
	cmp	dword [ebx+20],1
	jle	_455
	push	ebp
	push	_466
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_458
	call	_brl_blitz_NullObjectError
_458:
	mov	dword [ebx+8],0
	push	_460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_462
	call	_brl_blitz_NullObjectError
_462:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_465
	call	_brl_blitz_NullObjectError
_465:
	call	_bbMilliSecs
	add	eax,dword [esi+12]
	mov	dword [ebx+16],eax
	call	dword [_bbOnDebugLeaveScope]
_455:
	mov	ebx,0
	jmp	_139
_139:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsprite_update:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_499
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_470
	call	_brl_blitz_NullObjectError
_470:
	cmp	dword [ebx+20],1
	jle	_471
	mov	eax,ebp
	push	eax
	push	_497
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_474
	call	_brl_blitz_NullObjectError
_474:
	call	_bbMilliSecs
	cmp	eax,dword [ebx+16]
	jle	_475
	mov	eax,ebp
	push	eax
	push	_496
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_478
	call	_brl_blitz_NullObjectError
_478:
	mov	edi,ebx
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_481
	call	_brl_blitz_NullObjectError
_481:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_483
	call	_brl_blitz_NullObjectError
_483:
	mov	eax,dword [esi+8]
	add	eax,1
	cdq
	idiv	dword [ebx+20]
	mov	eax,edx
	mov	dword [edi+8],eax
	push	_484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_486
	call	_brl_blitz_NullObjectError
_486:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_489
	call	_brl_blitz_NullObjectError
_489:
	call	_bbMilliSecs
	add	eax,dword [ebx+12]
	mov	dword [esi+16],eax
	push	_490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_492
	call	_brl_blitz_NullObjectError
_492:
	cmp	dword [ebx+8],0
	jne	_493
	mov	eax,ebp
	push	eax
	push	_495
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_142
_493:
	call	dword [_bbOnDebugLeaveScope]
_475:
	call	dword [_bbOnDebugLeaveScope]
_471:
	push	_498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_142
_142:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsprite_display:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	push	ebp
	push	_507
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1073741824
	push	1073741824
	call	_brl_max2d_SetScale
	add	esp,8
	push	_501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_503
	call	_brl_blitz_NullObjectError
_503:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_505
	call	_brl_blitz_NullObjectError
_505:
	push	dword [ebx+8]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [esi+24]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_506
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	mov	ebx,0
	jmp	_147
_147:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_537
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tplayer
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+44],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+48],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+56],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+60],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+64],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+68],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+72],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+76],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+80],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+84],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+88],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+92],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+96],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+100],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+104],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+108],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+112],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+116],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+120],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+124],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+128],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+132],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+136],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+140],edx
	push	ebp
	push	_536
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_150
_150:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_153:
	mov	eax,dword [ebx+140]
	dec	dword [eax+4]
	jnz	_540
	push	eax
	call	_bbGCFree
	add	esp,4
_540:
	mov	eax,dword [ebx+128]
	dec	dword [eax+4]
	jnz	_542
	push	eax
	call	_bbGCFree
	add	esp,4
_542:
	mov	eax,dword [ebx+124]
	dec	dword [eax+4]
	jnz	_544
	push	eax
	call	_bbGCFree
	add	esp,4
_544:
	mov	eax,dword [ebx+120]
	dec	dword [eax+4]
	jnz	_546
	push	eax
	call	_bbGCFree
	add	esp,4
_546:
	mov	eax,dword [ebx+116]
	dec	dword [eax+4]
	jnz	_548
	push	eax
	call	_bbGCFree
	add	esp,4
_548:
	mov	eax,dword [ebx+112]
	dec	dword [eax+4]
	jnz	_550
	push	eax
	call	_bbGCFree
	add	esp,4
_550:
	mov	eax,dword [ebx+108]
	dec	dword [eax+4]
	jnz	_552
	push	eax
	call	_bbGCFree
	add	esp,4
_552:
	mov	eax,dword [ebx+104]
	dec	dword [eax+4]
	jnz	_554
	push	eax
	call	_bbGCFree
	add	esp,4
_554:
	mov	eax,dword [ebx+100]
	dec	dword [eax+4]
	jnz	_556
	push	eax
	call	_bbGCFree
	add	esp,4
_556:
	mov	eax,dword [ebx+96]
	dec	dword [eax+4]
	jnz	_558
	push	eax
	call	_bbGCFree
	add	esp,4
_558:
	mov	eax,dword [ebx+92]
	dec	dword [eax+4]
	jnz	_560
	push	eax
	call	_bbGCFree
	add	esp,4
_560:
	mov	eax,dword [ebx+88]
	dec	dword [eax+4]
	jnz	_562
	push	eax
	call	_bbGCFree
	add	esp,4
_562:
	mov	eax,dword [ebx+84]
	dec	dword [eax+4]
	jnz	_564
	push	eax
	call	_bbGCFree
	add	esp,4
_564:
	mov	eax,dword [ebx+80]
	dec	dword [eax+4]
	jnz	_566
	push	eax
	call	_bbGCFree
	add	esp,4
_566:
	mov	eax,dword [ebx+76]
	dec	dword [eax+4]
	jnz	_568
	push	eax
	call	_bbGCFree
	add	esp,4
_568:
	mov	eax,dword [ebx+72]
	dec	dword [eax+4]
	jnz	_570
	push	eax
	call	_bbGCFree
	add	esp,4
_570:
	mov	eax,dword [ebx+68]
	dec	dword [eax+4]
	jnz	_572
	push	eax
	call	_bbGCFree
	add	esp,4
_572:
	mov	eax,dword [ebx+64]
	dec	dword [eax+4]
	jnz	_574
	push	eax
	call	_bbGCFree
	add	esp,4
_574:
	mov	eax,dword [ebx+60]
	dec	dword [eax+4]
	jnz	_576
	push	eax
	call	_bbGCFree
	add	esp,4
_576:
	mov	eax,dword [ebx+56]
	dec	dword [eax+4]
	jnz	_578
	push	eax
	call	_bbGCFree
	add	esp,4
_578:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_580
	push	eax
	call	_bbGCFree
	add	esp,4
_580:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_582
	push	eax
	call	_bbGCFree
	add	esp,4
_582:
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_584
	push	eax
	call	_bbGCFree
	add	esp,4
_584:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_586
	push	eax
	call	_bbGCFree
	add	esp,4
_586:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_588
	push	eax
	call	_bbGCFree
	add	esp,4
_588:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_590
	push	eax
	call	_bbGCFree
	add	esp,4
_590:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_592
	push	eax
	call	_bbGCFree
	add	esp,4
_592:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_594
	push	eax
	call	_bbGCFree
	add	esp,4
_594:
	mov	eax,0
	jmp	_538
_538:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	mov	dword [ebp-12],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_828
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_Tplayer
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_599
	call	_brl_blitz_NullObjectError
_599:
	fld	dword [ebp-4]
	fstp	dword [ebx+8]
	push	_601
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_603
	call	_brl_blitz_NullObjectError
_603:
	fld	dword [ebp-8]
	fstp	dword [ebx+12]
	push	_605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_607
	call	_brl_blitz_NullObjectError
_607:
	fld	dword [ebp-8]
	fstp	dword [ebx+16]
	push	_609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_611
	call	_brl_blitz_NullObjectError
_611:
	push	0
	push	6
	push	100
	push	dword [_bb_walkLeftImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_616
	push	eax
	call	_bbGCFree
	add	esp,4
_616:
	mov	dword [esi+24],ebx
	push	_617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_619
	call	_brl_blitz_NullObjectError
_619:
	push	0
	push	6
	push	100
	push	dword [_bb_walkRightImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_624
	push	eax
	call	_bbGCFree
	add	esp,4
_624:
	mov	dword [esi+28],ebx
	push	_625
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_627
	call	_brl_blitz_NullObjectError
_627:
	push	0
	push	4
	push	50
	push	dword [_bb_turnLeftImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_632
	push	eax
	call	_bbGCFree
	add	esp,4
_632:
	mov	dword [esi+40],ebx
	push	_633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_635
	call	_brl_blitz_NullObjectError
_635:
	push	0
	push	4
	push	50
	push	dword [_bb_turnRightImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_640
	push	eax
	call	_bbGCFree
	add	esp,4
_640:
	mov	dword [esi+44],ebx
	push	_641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_643
	call	_brl_blitz_NullObjectError
_643:
	push	1
	push	1
	push	100
	push	dword [_bb_framesImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_648
	push	eax
	call	_bbGCFree
	add	esp,4
_648:
	mov	dword [esi+32],ebx
	push	_649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_651
	call	_brl_blitz_NullObjectError
_651:
	push	0
	push	1
	push	100
	push	dword [_bb_framesImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_656
	push	eax
	call	_bbGCFree
	add	esp,4
_656:
	mov	dword [esi+36],ebx
	push	_657
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_659
	call	_brl_blitz_NullObjectError
_659:
	push	0
	push	3
	push	50
	push	dword [_bb_punchRightOutImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+48]
	dec	dword [eax+4]
	jnz	_664
	push	eax
	call	_bbGCFree
	add	esp,4
_664:
	mov	dword [esi+48],ebx
	push	_665
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_667
	call	_brl_blitz_NullObjectError
_667:
	push	0
	push	2
	push	50
	push	dword [_bb_punchRightInImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+52]
	dec	dword [eax+4]
	jnz	_672
	push	eax
	call	_bbGCFree
	add	esp,4
_672:
	mov	dword [esi+52],ebx
	push	_673
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_675
	call	_brl_blitz_NullObjectError
_675:
	push	0
	push	3
	push	50
	push	dword [_bb_punchLeftOutImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+60]
	dec	dword [eax+4]
	jnz	_680
	push	eax
	call	_bbGCFree
	add	esp,4
_680:
	mov	dword [esi+60],ebx
	push	_681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_683
	call	_brl_blitz_NullObjectError
_683:
	push	0
	push	2
	push	50
	push	dword [_bb_punchLeftInImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+64]
	dec	dword [eax+4]
	jnz	_688
	push	eax
	call	_bbGCFree
	add	esp,4
_688:
	mov	dword [esi+64],ebx
	push	_689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_691
	call	_brl_blitz_NullObjectError
_691:
	push	0
	push	1
	push	50
	push	dword [_bb_punchrightImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+56]
	dec	dword [eax+4]
	jnz	_696
	push	eax
	call	_bbGCFree
	add	esp,4
_696:
	mov	dword [esi+56],ebx
	push	_697
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_699
	call	_brl_blitz_NullObjectError
_699:
	push	0
	push	1
	push	50
	push	dword [_bb_punchLeftImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+68]
	dec	dword [eax+4]
	jnz	_704
	push	eax
	call	_bbGCFree
	add	esp,4
_704:
	mov	dword [esi+68],ebx
	push	_705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_707
	call	_brl_blitz_NullObjectError
_707:
	push	0
	push	2
	push	50
	push	dword [_bb_crouchRightDownImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+76]
	dec	dword [eax+4]
	jnz	_712
	push	eax
	call	_bbGCFree
	add	esp,4
_712:
	mov	dword [esi+76],ebx
	push	_713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_715
	call	_brl_blitz_NullObjectError
_715:
	push	0
	push	2
	push	50
	push	dword [_bb_crouchRightUpImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+80]
	dec	dword [eax+4]
	jnz	_720
	push	eax
	call	_bbGCFree
	add	esp,4
_720:
	mov	dword [esi+80],ebx
	push	_721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_723
	call	_brl_blitz_NullObjectError
_723:
	push	0
	push	2
	push	50
	push	dword [_bb_crouchleftDownImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+88]
	dec	dword [eax+4]
	jnz	_728
	push	eax
	call	_bbGCFree
	add	esp,4
_728:
	mov	dword [esi+88],ebx
	push	_729
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_731
	call	_brl_blitz_NullObjectError
_731:
	push	0
	push	2
	push	50
	push	dword [_bb_crouchleftUpImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+92]
	dec	dword [eax+4]
	jnz	_736
	push	eax
	call	_bbGCFree
	add	esp,4
_736:
	mov	dword [esi+92],ebx
	push	_737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_739
	call	_brl_blitz_NullObjectError
_739:
	push	3
	push	1
	push	50
	push	dword [_bb_framesImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+96]
	dec	dword [eax+4]
	jnz	_744
	push	eax
	call	_bbGCFree
	add	esp,4
_744:
	mov	dword [esi+96],ebx
	push	_745
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_747
	call	_brl_blitz_NullObjectError
_747:
	push	2
	push	1
	push	50
	push	dword [_bb_framesImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+84]
	dec	dword [eax+4]
	jnz	_752
	push	eax
	call	_bbGCFree
	add	esp,4
_752:
	mov	dword [esi+84],ebx
	push	_753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_755
	call	_brl_blitz_NullObjectError
_755:
	push	0
	push	2
	push	50
	push	dword [_bb_nealRightpunchoutImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+112]
	dec	dword [eax+4]
	jnz	_760
	push	eax
	call	_bbGCFree
	add	esp,4
_760:
	mov	dword [esi+112],ebx
	push	_761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_763
	call	_brl_blitz_NullObjectError
_763:
	push	0
	push	2
	push	50
	push	dword [_bb_nealRightpunchinImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+116]
	dec	dword [eax+4]
	jnz	_768
	push	eax
	call	_bbGCFree
	add	esp,4
_768:
	mov	dword [esi+116],ebx
	push	_769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_771
	call	_brl_blitz_NullObjectError
_771:
	push	0
	push	2
	push	50
	push	dword [_bb_nealLeftpunchOutImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+100]
	dec	dword [eax+4]
	jnz	_776
	push	eax
	call	_bbGCFree
	add	esp,4
_776:
	mov	dword [esi+100],ebx
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_779
	call	_brl_blitz_NullObjectError
_779:
	push	0
	push	2
	push	50
	push	dword [_bb_nealleftpunchInImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+104]
	dec	dword [eax+4]
	jnz	_784
	push	eax
	call	_bbGCFree
	add	esp,4
_784:
	mov	dword [esi+104],ebx
	push	_785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_787
	call	_brl_blitz_NullObjectError
_787:
	push	6
	push	1
	push	50
	push	dword [_bb_framesImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+120]
	dec	dword [eax+4]
	jnz	_792
	push	eax
	call	_bbGCFree
	add	esp,4
_792:
	mov	dword [esi+120],ebx
	push	_793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_795
	call	_brl_blitz_NullObjectError
_795:
	push	7
	push	1
	push	50
	push	dword [_bb_framesImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+108]
	dec	dword [eax+4]
	jnz	_800
	push	eax
	call	_bbGCFree
	add	esp,4
_800:
	mov	dword [esi+108],ebx
	push	_801
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_803
	call	_brl_blitz_NullObjectError
_803:
	push	4
	push	1
	push	50
	push	dword [_bb_framesImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+128]
	dec	dword [eax+4]
	jnz	_808
	push	eax
	call	_bbGCFree
	add	esp,4
_808:
	mov	dword [esi+128],ebx
	push	_809
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_811
	call	_brl_blitz_NullObjectError
_811:
	push	5
	push	1
	push	51
	push	dword [_bb_framesImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+124]
	dec	dword [eax+4]
	jnz	_816
	push	eax
	call	_bbGCFree
	add	esp,4
_816:
	mov	dword [esi+124],ebx
	push	_817
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_819
	call	_brl_blitz_NullObjectError
_819:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_822
	call	_brl_blitz_NullObjectError
_822:
	mov	ebx,dword [ebx+36]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_826
	push	eax
	call	_bbGCFree
	add	esp,4
_826:
	mov	dword [esi+140],ebx
	push	_827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_157
_157:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_update:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,ebp
	push	eax
	push	_2372
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_830
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_832
	call	_brl_blitz_NullObjectError
_832:
	mov	ebx,dword [ebx+140]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_837
	call	_brl_blitz_NullObjectError
_837:
	cmp	ebx,dword [esi+32]
	je	_835
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_840
	call	_brl_blitz_NullObjectError
_840:
	cmp	ebx,dword [esi+36]
	je	_838
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_843
	call	_brl_blitz_NullObjectError
_843:
	cmp	ebx,dword [esi+40]
	je	_841
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_846
	call	_brl_blitz_NullObjectError
_846:
	cmp	ebx,dword [esi+44]
	je	_844
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_849
	call	_brl_blitz_NullObjectError
_849:
	cmp	ebx,dword [esi+24]
	je	_847
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_852
	call	_brl_blitz_NullObjectError
_852:
	cmp	ebx,dword [esi+28]
	je	_850
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_855
	call	_brl_blitz_NullObjectError
_855:
	cmp	ebx,dword [esi+48]
	je	_853
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_858
	call	_brl_blitz_NullObjectError
_858:
	cmp	ebx,dword [esi+60]
	je	_856
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_861
	call	_brl_blitz_NullObjectError
_861:
	cmp	ebx,dword [esi+56]
	je	_859
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_864
	call	_brl_blitz_NullObjectError
_864:
	cmp	ebx,dword [esi+68]
	je	_862
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_867
	call	_brl_blitz_NullObjectError
_867:
	cmp	ebx,dword [esi+52]
	je	_865
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_870
	call	_brl_blitz_NullObjectError
_870:
	cmp	ebx,dword [esi+64]
	je	_868
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_873
	call	_brl_blitz_NullObjectError
_873:
	cmp	ebx,dword [esi+76]
	je	_871
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_876
	call	_brl_blitz_NullObjectError
_876:
	cmp	ebx,dword [esi+88]
	je	_874
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_879
	call	_brl_blitz_NullObjectError
_879:
	cmp	ebx,dword [esi+84]
	je	_877
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_882
	call	_brl_blitz_NullObjectError
_882:
	cmp	ebx,dword [esi+96]
	je	_880
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_885
	call	_brl_blitz_NullObjectError
_885:
	cmp	ebx,dword [esi+80]
	je	_883
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_888
	call	_brl_blitz_NullObjectError
_888:
	cmp	ebx,dword [esi+92]
	je	_886
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_891
	call	_brl_blitz_NullObjectError
_891:
	cmp	ebx,dword [esi+112]
	je	_889
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_894
	call	_brl_blitz_NullObjectError
_894:
	cmp	ebx,dword [esi+100]
	je	_892
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_897
	call	_brl_blitz_NullObjectError
_897:
	cmp	ebx,dword [esi+120]
	je	_895
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_900
	call	_brl_blitz_NullObjectError
_900:
	cmp	ebx,dword [esi+108]
	je	_898
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_903
	call	_brl_blitz_NullObjectError
_903:
	cmp	ebx,dword [esi+116]
	je	_901
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_906
	call	_brl_blitz_NullObjectError
_906:
	cmp	ebx,dword [esi+104]
	je	_904
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_909
	call	_brl_blitz_NullObjectError
_909:
	cmp	ebx,dword [esi+124]
	je	_907
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_912
	call	_brl_blitz_NullObjectError
_912:
	cmp	ebx,dword [esi+128]
	je	_910
	jmp	_834
_835:
	mov	eax,ebp
	push	eax
	push	_1026
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_913
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	je	_914
	mov	eax,ebp
	push	eax
	push	_935
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_917
	call	_brl_blitz_NullObjectError
_917:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_920
	call	_brl_blitz_NullObjectError
_920:
	mov	ebx,dword [ebx+60]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_924
	push	eax
	call	_bbGCFree
	add	esp,4
_924:
	mov	dword [esi+140],ebx
	push	_925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_927
	call	_brl_blitz_NullObjectError
_927:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_929
	call	_brl_blitz_NullObjectError
_929:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_930
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_932
	call	_brl_blitz_NullObjectError
_932:
	mov	dword [ebx+132],1
	push	_934
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_936
_914:
	mov	eax,ebp
	push	eax
	push	_1025
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_938
	mov	eax,ebp
	push	eax
	push	_955
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_939
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_941
	call	_brl_blitz_NullObjectError
_941:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_944
	call	_brl_blitz_NullObjectError
_944:
	mov	ebx,dword [ebx+88]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_948
	push	eax
	call	_bbGCFree
	add	esp,4
_948:
	mov	dword [esi+140],ebx
	push	_949
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_951
	call	_brl_blitz_NullObjectError
_951:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_953
	call	_brl_blitz_NullObjectError
_953:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_954
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_956
_938:
	mov	eax,ebp
	push	eax
	push	_1024
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_957
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fld	dword [_2740]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_958
	mov	eax,ebp
	push	eax
	push	_982
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_959
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_961
	call	_brl_blitz_NullObjectError
_961:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_964
	call	_brl_blitz_NullObjectError
_964:
	mov	ebx,dword [ebx+124]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_968
	push	eax
	call	_bbGCFree
	add	esp,4
_968:
	mov	dword [esi+140],ebx
	push	_969
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_971
	call	_brl_blitz_NullObjectError
_971:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_973
	call	_brl_blitz_NullObjectError
_973:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_974
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_976
	call	_brl_blitz_NullObjectError
_976:
	mov	dword [ebx+136],1
	push	_978
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_980
	call	_brl_blitz_NullObjectError
_980:
	fld1
	fstp	dword [ebx+20]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_983
_958:
	mov	eax,ebp
	push	eax
	push	_1023
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_984
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_985
	mov	eax,ebp
	push	eax
	push	_1002
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_986
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_988
	call	_brl_blitz_NullObjectError
_988:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_991
	call	_brl_blitz_NullObjectError
_991:
	mov	ebx,dword [ebx+44]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_995
	push	eax
	call	_bbGCFree
	add	esp,4
_995:
	mov	dword [esi+140],ebx
	push	_996
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_998
	call	_brl_blitz_NullObjectError
_998:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1000
	call	_brl_blitz_NullObjectError
_1000:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1001
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1003
_985:
	mov	eax,ebp
	push	eax
	push	_1022
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld	dword [_2741]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1005
	mov	eax,ebp
	push	eax
	push	_1021
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1008
	call	_brl_blitz_NullObjectError
_1008:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1011
	call	_brl_blitz_NullObjectError
_1011:
	mov	ebx,dword [ebx+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1015
	push	eax
	call	_bbGCFree
	add	esp,4
_1015:
	mov	dword [esi+140],ebx
	push	_1016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1018
	call	_brl_blitz_NullObjectError
_1018:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1020
	call	_brl_blitz_NullObjectError
_1020:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1005:
	call	dword [_bbOnDebugLeaveScope]
_1003:
	call	dword [_bbOnDebugLeaveScope]
_983:
	call	dword [_bbOnDebugLeaveScope]
_956:
	call	dword [_bbOnDebugLeaveScope]
_936:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_838:
	mov	eax,ebp
	push	eax
	push	_1135
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1027
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	je	_1028
	mov	eax,ebp
	push	eax
	push	_1049
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1031
	call	_brl_blitz_NullObjectError
_1031:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1034
	call	_brl_blitz_NullObjectError
_1034:
	mov	ebx,dword [ebx+48]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1038
	push	eax
	call	_bbGCFree
	add	esp,4
_1038:
	mov	dword [esi+140],ebx
	push	_1039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1041
	call	_brl_blitz_NullObjectError
_1041:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1043
	call	_brl_blitz_NullObjectError
_1043:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1044
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1046
	call	_brl_blitz_NullObjectError
_1046:
	mov	dword [ebx+132],1
	push	_1048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1050
_1028:
	mov	eax,ebp
	push	eax
	push	_1134
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1052
	mov	eax,ebp
	push	eax
	push	_1069
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1055
	call	_brl_blitz_NullObjectError
_1055:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1058
	call	_brl_blitz_NullObjectError
_1058:
	mov	ebx,dword [ebx+76]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1062
	push	eax
	call	_bbGCFree
	add	esp,4
_1062:
	mov	dword [esi+140],ebx
	push	_1063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1065
	call	_brl_blitz_NullObjectError
_1065:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1067
	call	_brl_blitz_NullObjectError
_1067:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1068
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1070
_1052:
	mov	eax,ebp
	push	eax
	push	_1133
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fld	dword [_2742]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1072
	mov	eax,ebp
	push	eax
	push	_1096
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1073
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1075
	call	_brl_blitz_NullObjectError
_1075:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1078
	call	_brl_blitz_NullObjectError
_1078:
	mov	ebx,dword [ebx+128]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1082
	push	eax
	call	_bbGCFree
	add	esp,4
_1082:
	mov	dword [esi+140],ebx
	push	_1083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1085
	call	_brl_blitz_NullObjectError
_1085:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1087
	call	_brl_blitz_NullObjectError
_1087:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1088
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1090
	call	_brl_blitz_NullObjectError
_1090:
	mov	dword [ebx+136],1
	push	_1092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1094
	call	_brl_blitz_NullObjectError
_1094:
	fld1
	fstp	dword [ebx+20]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1097
_1072:
	mov	eax,ebp
	push	eax
	push	_1132
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1098
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld	dword [_2743]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1099
	mov	eax,ebp
	push	eax
	push	_1111
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1102
	call	_brl_blitz_NullObjectError
_1102:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1105
	call	_brl_blitz_NullObjectError
_1105:
	mov	ebx,dword [ebx+40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1109
	push	eax
	call	_bbGCFree
	add	esp,4
_1109:
	mov	dword [esi+140],ebx
	push	_1110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1112
_1099:
	mov	eax,ebp
	push	eax
	push	_1131
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1114
	mov	eax,ebp
	push	eax
	push	_1130
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1117
	call	_brl_blitz_NullObjectError
_1117:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1120
	call	_brl_blitz_NullObjectError
_1120:
	mov	ebx,dword [ebx+28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1124
	push	eax
	call	_bbGCFree
	add	esp,4
_1124:
	mov	dword [esi+140],ebx
	push	_1125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1127
	call	_brl_blitz_NullObjectError
_1127:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1129
	call	_brl_blitz_NullObjectError
_1129:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1114:
	call	dword [_bbOnDebugLeaveScope]
_1112:
	call	dword [_bbOnDebugLeaveScope]
_1097:
	call	dword [_bbOnDebugLeaveScope]
_1070:
	call	dword [_bbOnDebugLeaveScope]
_1050:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_841:
	mov	eax,ebp
	push	eax
	push	_1197
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1138
	call	_brl_blitz_NullObjectError
_1138:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1140
	call	_brl_blitz_NullObjectError
_1140:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1141
	mov	eax,ebp
	push	eax
	push	_1193
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1143
	mov	eax,ebp
	push	eax
	push	_1160
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1146
	call	_brl_blitz_NullObjectError
_1146:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1149
	call	_brl_blitz_NullObjectError
_1149:
	mov	ebx,dword [ebx+44]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1153
	push	eax
	call	_bbGCFree
	add	esp,4
_1153:
	mov	dword [esi+140],ebx
	push	_1154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1156
	call	_brl_blitz_NullObjectError
_1156:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1158
	call	_brl_blitz_NullObjectError
_1158:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1161
_1143:
	mov	eax,ebp
	push	eax
	push	_1192
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld	dword [_2744]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1163
	mov	eax,ebp
	push	eax
	push	_1179
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1166
	call	_brl_blitz_NullObjectError
_1166:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1169
	call	_brl_blitz_NullObjectError
_1169:
	mov	ebx,dword [ebx+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1173
	push	eax
	call	_bbGCFree
	add	esp,4
_1173:
	mov	dword [esi+140],ebx
	push	_1174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1176
	call	_brl_blitz_NullObjectError
_1176:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1178
	call	_brl_blitz_NullObjectError
_1178:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1180
_1163:
	mov	eax,ebp
	push	eax
	push	_1191
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1183
	call	_brl_blitz_NullObjectError
_1183:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1186
	call	_brl_blitz_NullObjectError
_1186:
	mov	ebx,dword [ebx+32]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1190
	push	eax
	call	_bbGCFree
	add	esp,4
_1190:
	mov	dword [esi+140],ebx
	call	dword [_bbOnDebugLeaveScope]
_1180:
	call	dword [_bbOnDebugLeaveScope]
_1161:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1194
_1141:
	mov	eax,ebp
	push	eax
	push	_1196
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
_1194:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_844:
	mov	eax,ebp
	push	eax
	push	_1259
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1200
	call	_brl_blitz_NullObjectError
_1200:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1202
	call	_brl_blitz_NullObjectError
_1202:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1203
	mov	eax,ebp
	push	eax
	push	_1255
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld	dword [_2745]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1205
	mov	eax,ebp
	push	eax
	push	_1222
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1208
	call	_brl_blitz_NullObjectError
_1208:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1211
	call	_brl_blitz_NullObjectError
_1211:
	mov	ebx,dword [ebx+40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1215
	push	eax
	call	_bbGCFree
	add	esp,4
_1215:
	mov	dword [esi+140],ebx
	push	_1216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1218
	call	_brl_blitz_NullObjectError
_1218:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1220
	call	_brl_blitz_NullObjectError
_1220:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1223
_1205:
	mov	eax,ebp
	push	eax
	push	_1254
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1225
	mov	eax,ebp
	push	eax
	push	_1241
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1228
	call	_brl_blitz_NullObjectError
_1228:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1231
	call	_brl_blitz_NullObjectError
_1231:
	mov	ebx,dword [ebx+28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1235
	push	eax
	call	_bbGCFree
	add	esp,4
_1235:
	mov	dword [esi+140],ebx
	push	_1236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1238
	call	_brl_blitz_NullObjectError
_1238:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1240
	call	_brl_blitz_NullObjectError
_1240:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1242
_1225:
	mov	eax,ebp
	push	eax
	push	_1253
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1245
	call	_brl_blitz_NullObjectError
_1245:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1248
	call	_brl_blitz_NullObjectError
_1248:
	mov	ebx,dword [ebx+36]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1252
	push	eax
	call	_bbGCFree
	add	esp,4
_1252:
	mov	dword [esi+140],ebx
	call	dword [_bbOnDebugLeaveScope]
_1242:
	call	dword [_bbOnDebugLeaveScope]
_1223:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1256
_1203:
	mov	eax,ebp
	push	eax
	push	_1258
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
_1256:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_847:
	mov	eax,ebp
	push	eax
	push	_1375
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	je	_1261
	mov	eax,ebp
	push	eax
	push	_1282
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1262
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1264
	call	_brl_blitz_NullObjectError
_1264:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1267
	call	_brl_blitz_NullObjectError
_1267:
	mov	ebx,dword [ebx+60]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1271
	push	eax
	call	_bbGCFree
	add	esp,4
_1271:
	mov	dword [esi+140],ebx
	push	_1272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1274
	call	_brl_blitz_NullObjectError
_1274:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1276
	call	_brl_blitz_NullObjectError
_1276:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1279
	call	_brl_blitz_NullObjectError
_1279:
	mov	dword [ebx+132],1
	push	_1281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1283
_1261:
	mov	eax,ebp
	push	eax
	push	_1374
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1285
	mov	eax,ebp
	push	eax
	push	_1302
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1288
	call	_brl_blitz_NullObjectError
_1288:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1291
	call	_brl_blitz_NullObjectError
_1291:
	mov	ebx,dword [ebx+88]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1295
	push	eax
	call	_bbGCFree
	add	esp,4
_1295:
	mov	dword [esi+140],ebx
	push	_1296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1298
	call	_brl_blitz_NullObjectError
_1298:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1300
	call	_brl_blitz_NullObjectError
_1300:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1303
_1285:
	mov	eax,ebp
	push	eax
	push	_1373
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fld	dword [_2746]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1305
	mov	eax,ebp
	push	eax
	push	_1329
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1308
	call	_brl_blitz_NullObjectError
_1308:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1311
	call	_brl_blitz_NullObjectError
_1311:
	mov	ebx,dword [ebx+124]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1315
	push	eax
	call	_bbGCFree
	add	esp,4
_1315:
	mov	dword [esi+140],ebx
	push	_1316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1318
	call	_brl_blitz_NullObjectError
_1318:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1320
	call	_brl_blitz_NullObjectError
_1320:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1323
	call	_brl_blitz_NullObjectError
_1323:
	mov	dword [ebx+136],1
	push	_1325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1327
	call	_brl_blitz_NullObjectError
_1327:
	fld1
	fstp	dword [ebx+20]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1330
_1305:
	mov	eax,ebp
	push	eax
	push	_1372
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1332
	mov	eax,ebp
	push	eax
	push	_1349
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1335
	call	_brl_blitz_NullObjectError
_1335:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1338
	call	_brl_blitz_NullObjectError
_1338:
	mov	ebx,dword [ebx+44]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1342
	push	eax
	call	_bbGCFree
	add	esp,4
_1342:
	mov	dword [esi+140],ebx
	push	_1343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1345
	call	_brl_blitz_NullObjectError
_1345:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1347
	call	_brl_blitz_NullObjectError
_1347:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1350
_1332:
	mov	eax,ebp
	push	eax
	push	_1371
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld	dword [_2747]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1352
	mov	eax,ebp
	push	eax
	push	_1358
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1355
	call	_brl_blitz_NullObjectError
_1355:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1357
	call	_brl_blitz_NullObjectError
_1357:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1359
_1352:
	mov	eax,ebp
	push	eax
	push	_1370
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1362
	call	_brl_blitz_NullObjectError
_1362:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1365
	call	_brl_blitz_NullObjectError
_1365:
	mov	ebx,dword [ebx+32]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1369
	push	eax
	call	_bbGCFree
	add	esp,4
_1369:
	mov	dword [esi+140],ebx
	call	dword [_bbOnDebugLeaveScope]
_1359:
	call	dword [_bbOnDebugLeaveScope]
_1350:
	call	dword [_bbOnDebugLeaveScope]
_1330:
	call	dword [_bbOnDebugLeaveScope]
_1303:
	call	dword [_bbOnDebugLeaveScope]
_1283:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_850:
	mov	eax,ebp
	push	eax
	push	_1491
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	je	_1377
	mov	eax,ebp
	push	eax
	push	_1398
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1380
	call	_brl_blitz_NullObjectError
_1380:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1383
	call	_brl_blitz_NullObjectError
_1383:
	mov	ebx,dword [ebx+48]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1387
	push	eax
	call	_bbGCFree
	add	esp,4
_1387:
	mov	dword [esi+140],ebx
	push	_1388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1390
	call	_brl_blitz_NullObjectError
_1390:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1392
	call	_brl_blitz_NullObjectError
_1392:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1395
	call	_brl_blitz_NullObjectError
_1395:
	mov	dword [ebx+132],1
	push	_1397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1399
_1377:
	mov	eax,ebp
	push	eax
	push	_1490
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1401
	mov	eax,ebp
	push	eax
	push	_1418
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1404
	call	_brl_blitz_NullObjectError
_1404:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1407
	call	_brl_blitz_NullObjectError
_1407:
	mov	ebx,dword [ebx+76]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1411
	push	eax
	call	_bbGCFree
	add	esp,4
_1411:
	mov	dword [esi+140],ebx
	push	_1412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1414
	call	_brl_blitz_NullObjectError
_1414:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1416
	call	_brl_blitz_NullObjectError
_1416:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1419
_1401:
	mov	eax,ebp
	push	eax
	push	_1489
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fld	dword [_2748]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1421
	mov	eax,ebp
	push	eax
	push	_1445
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1422
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1424
	call	_brl_blitz_NullObjectError
_1424:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1427
	call	_brl_blitz_NullObjectError
_1427:
	mov	ebx,dword [ebx+128]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1431
	push	eax
	call	_bbGCFree
	add	esp,4
_1431:
	mov	dword [esi+140],ebx
	push	_1432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1434
	call	_brl_blitz_NullObjectError
_1434:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1436
	call	_brl_blitz_NullObjectError
_1436:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1439
	call	_brl_blitz_NullObjectError
_1439:
	mov	dword [ebx+136],1
	push	_1441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1443
	call	_brl_blitz_NullObjectError
_1443:
	fld1
	fstp	dword [ebx+20]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1446
_1421:
	mov	eax,ebp
	push	eax
	push	_1488
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld	dword [_2749]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1448
	mov	eax,ebp
	push	eax
	push	_1465
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1451
	call	_brl_blitz_NullObjectError
_1451:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1454
	call	_brl_blitz_NullObjectError
_1454:
	mov	ebx,dword [ebx+40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1458
	push	eax
	call	_bbGCFree
	add	esp,4
_1458:
	mov	dword [esi+140],ebx
	push	_1459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1461
	call	_brl_blitz_NullObjectError
_1461:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1463
	call	_brl_blitz_NullObjectError
_1463:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1466
_1448:
	mov	eax,ebp
	push	eax
	push	_1487
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1468
	mov	eax,ebp
	push	eax
	push	_1474
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1471
	call	_brl_blitz_NullObjectError
_1471:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1473
	call	_brl_blitz_NullObjectError
_1473:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1475
_1468:
	mov	eax,ebp
	push	eax
	push	_1486
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1478
	call	_brl_blitz_NullObjectError
_1478:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1481
	call	_brl_blitz_NullObjectError
_1481:
	mov	ebx,dword [ebx+36]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1485
	push	eax
	call	_bbGCFree
	add	esp,4
_1485:
	mov	dword [esi+140],ebx
	call	dword [_bbOnDebugLeaveScope]
_1475:
	call	dword [_bbOnDebugLeaveScope]
_1466:
	call	dword [_bbOnDebugLeaveScope]
_1446:
	call	dword [_bbOnDebugLeaveScope]
_1419:
	call	dword [_bbOnDebugLeaveScope]
_1399:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_853:
	mov	eax,ebp
	push	eax
	push	_1515
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1494
	call	_brl_blitz_NullObjectError
_1494:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1496
	call	_brl_blitz_NullObjectError
_1496:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1497
	mov	eax,ebp
	push	eax
	push	_1513
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1500
	call	_brl_blitz_NullObjectError
_1500:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1503
	call	_brl_blitz_NullObjectError
_1503:
	mov	ebx,dword [ebx+56]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1507
	push	eax
	call	_bbGCFree
	add	esp,4
_1507:
	mov	dword [esi+140],ebx
	push	_1508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1510
	call	_brl_blitz_NullObjectError
_1510:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1512
	call	_brl_blitz_NullObjectError
_1512:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1497:
	push	_1514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_856:
	mov	eax,ebp
	push	eax
	push	_1539
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1518
	call	_brl_blitz_NullObjectError
_1518:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1520
	call	_brl_blitz_NullObjectError
_1520:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1521
	mov	eax,ebp
	push	eax
	push	_1537
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1524
	call	_brl_blitz_NullObjectError
_1524:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1527
	call	_brl_blitz_NullObjectError
_1527:
	mov	ebx,dword [ebx+68]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1531
	push	eax
	call	_bbGCFree
	add	esp,4
_1531:
	mov	dword [esi+140],ebx
	push	_1532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1534
	call	_brl_blitz_NullObjectError
_1534:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1536
	call	_brl_blitz_NullObjectError
_1536:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1521:
	push	_1538
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_859:
	mov	eax,ebp
	push	eax
	push	_1568
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	jne	_1541
	mov	eax,ebp
	push	eax
	push	_1566
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1544
	call	_brl_blitz_NullObjectError
_1544:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1547
	call	_brl_blitz_NullObjectError
_1547:
	mov	ebx,dword [ebx+52]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1551
	push	eax
	call	_bbGCFree
	add	esp,4
_1551:
	mov	dword [esi+140],ebx
	push	_1552
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1554
	call	_brl_blitz_NullObjectError
_1554:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1556
	call	_brl_blitz_NullObjectError
_1556:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1559
	call	_brl_blitz_NullObjectError
_1559:
	cmp	dword [ebx+132],0
	je	_1560
	mov	eax,ebp
	push	eax
	push	_1565
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1563
	call	_brl_blitz_NullObjectError
_1563:
	mov	dword [ebx+132],0
	call	dword [_bbOnDebugLeaveScope]
_1560:
	call	dword [_bbOnDebugLeaveScope]
_1541:
	push	_1567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_862:
	mov	eax,ebp
	push	eax
	push	_1597
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	jne	_1570
	mov	eax,ebp
	push	eax
	push	_1595
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1573
	call	_brl_blitz_NullObjectError
_1573:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1576
	call	_brl_blitz_NullObjectError
_1576:
	mov	ebx,dword [ebx+64]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1580
	push	eax
	call	_bbGCFree
	add	esp,4
_1580:
	mov	dword [esi+140],ebx
	push	_1581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1583
	call	_brl_blitz_NullObjectError
_1583:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1585
	call	_brl_blitz_NullObjectError
_1585:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1588
	call	_brl_blitz_NullObjectError
_1588:
	cmp	dword [ebx+132],0
	je	_1589
	mov	eax,ebp
	push	eax
	push	_1594
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1592
	call	_brl_blitz_NullObjectError
_1592:
	mov	dword [ebx+132],0
	call	dword [_bbOnDebugLeaveScope]
_1589:
	call	dword [_bbOnDebugLeaveScope]
_1570:
	push	_1596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_865:
	mov	eax,ebp
	push	eax
	push	_1680
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1600
	call	_brl_blitz_NullObjectError
_1600:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1602
	call	_brl_blitz_NullObjectError
_1602:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1603
	mov	eax,ebp
	push	eax
	push	_1676
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	je	_1605
	mov	eax,ebp
	push	eax
	push	_1622
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1608
	call	_brl_blitz_NullObjectError
_1608:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1611
	call	_brl_blitz_NullObjectError
_1611:
	mov	ebx,dword [ebx+48]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1615
	push	eax
	call	_bbGCFree
	add	esp,4
_1615:
	mov	dword [esi+140],ebx
	push	_1616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1618
	call	_brl_blitz_NullObjectError
_1618:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1620
	call	_brl_blitz_NullObjectError
_1620:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1623
_1605:
	mov	eax,ebp
	push	eax
	push	_1675
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld	dword [_2750]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1625
	mov	eax,ebp
	push	eax
	push	_1642
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1628
	call	_brl_blitz_NullObjectError
_1628:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1631
	call	_brl_blitz_NullObjectError
_1631:
	mov	ebx,dword [ebx+40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1635
	push	eax
	call	_bbGCFree
	add	esp,4
_1635:
	mov	dword [esi+140],ebx
	push	_1636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1638
	call	_brl_blitz_NullObjectError
_1638:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1640
	call	_brl_blitz_NullObjectError
_1640:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1643
_1625:
	mov	eax,ebp
	push	eax
	push	_1674
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1645
	mov	eax,ebp
	push	eax
	push	_1661
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1648
	call	_brl_blitz_NullObjectError
_1648:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1651
	call	_brl_blitz_NullObjectError
_1651:
	mov	ebx,dword [ebx+28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1655
	push	eax
	call	_bbGCFree
	add	esp,4
_1655:
	mov	dword [esi+140],ebx
	push	_1656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1658
	call	_brl_blitz_NullObjectError
_1658:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1660
	call	_brl_blitz_NullObjectError
_1660:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1662
_1645:
	mov	eax,ebp
	push	eax
	push	_1673
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1665
	call	_brl_blitz_NullObjectError
_1665:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1668
	call	_brl_blitz_NullObjectError
_1668:
	mov	ebx,dword [ebx+36]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1672
	push	eax
	call	_bbGCFree
	add	esp,4
_1672:
	mov	dword [esi+140],ebx
	call	dword [_bbOnDebugLeaveScope]
_1662:
	call	dword [_bbOnDebugLeaveScope]
_1643:
	call	dword [_bbOnDebugLeaveScope]
_1623:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1677
_1603:
	mov	eax,ebp
	push	eax
	push	_1679
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1678
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
_1677:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_868:
	mov	eax,ebp
	push	eax
	push	_1763
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1683
	call	_brl_blitz_NullObjectError
_1683:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1685
	call	_brl_blitz_NullObjectError
_1685:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1686
	mov	eax,ebp
	push	eax
	push	_1759
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	je	_1688
	mov	eax,ebp
	push	eax
	push	_1705
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1691
	call	_brl_blitz_NullObjectError
_1691:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1694
	call	_brl_blitz_NullObjectError
_1694:
	mov	ebx,dword [ebx+60]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1698
	push	eax
	call	_bbGCFree
	add	esp,4
_1698:
	mov	dword [esi+140],ebx
	push	_1699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1701
	call	_brl_blitz_NullObjectError
_1701:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1703
	call	_brl_blitz_NullObjectError
_1703:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1706
_1688:
	mov	eax,ebp
	push	eax
	push	_1758
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1708
	mov	eax,ebp
	push	eax
	push	_1725
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1709
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1711
	call	_brl_blitz_NullObjectError
_1711:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1714
	call	_brl_blitz_NullObjectError
_1714:
	mov	ebx,dword [ebx+44]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1718
	push	eax
	call	_bbGCFree
	add	esp,4
_1718:
	mov	dword [esi+140],ebx
	push	_1719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1721
	call	_brl_blitz_NullObjectError
_1721:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1723
	call	_brl_blitz_NullObjectError
_1723:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1726
_1708:
	mov	eax,ebp
	push	eax
	push	_1757
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld	dword [_2751]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1728
	mov	eax,ebp
	push	eax
	push	_1744
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1729
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1731
	call	_brl_blitz_NullObjectError
_1731:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1734
	call	_brl_blitz_NullObjectError
_1734:
	mov	ebx,dword [ebx+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1738
	push	eax
	call	_bbGCFree
	add	esp,4
_1738:
	mov	dword [esi+140],ebx
	push	_1739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1741
	call	_brl_blitz_NullObjectError
_1741:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1743
	call	_brl_blitz_NullObjectError
_1743:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1745
_1728:
	mov	eax,ebp
	push	eax
	push	_1756
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1748
	call	_brl_blitz_NullObjectError
_1748:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1751
	call	_brl_blitz_NullObjectError
_1751:
	mov	ebx,dword [ebx+32]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1755
	push	eax
	call	_bbGCFree
	add	esp,4
_1755:
	mov	dword [esi+140],ebx
	call	dword [_bbOnDebugLeaveScope]
_1745:
	call	dword [_bbOnDebugLeaveScope]
_1726:
	call	dword [_bbOnDebugLeaveScope]
_1706:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1760
_1686:
	mov	eax,ebp
	push	eax
	push	_1762
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
_1760:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_871:
	mov	eax,ebp
	push	eax
	push	_1787
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1766
	call	_brl_blitz_NullObjectError
_1766:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1768
	call	_brl_blitz_NullObjectError
_1768:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1769
	mov	eax,ebp
	push	eax
	push	_1785
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1772
	call	_brl_blitz_NullObjectError
_1772:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1775
	call	_brl_blitz_NullObjectError
_1775:
	mov	ebx,dword [ebx+84]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1779
	push	eax
	call	_bbGCFree
	add	esp,4
_1779:
	mov	dword [esi+140],ebx
	push	_1780
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1782
	call	_brl_blitz_NullObjectError
_1782:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1784
	call	_brl_blitz_NullObjectError
_1784:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1769:
	push	_1786
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_874:
	mov	eax,ebp
	push	eax
	push	_1811
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1790
	call	_brl_blitz_NullObjectError
_1790:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1792
	call	_brl_blitz_NullObjectError
_1792:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1793
	mov	eax,ebp
	push	eax
	push	_1809
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1794
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1796
	call	_brl_blitz_NullObjectError
_1796:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1799
	call	_brl_blitz_NullObjectError
_1799:
	mov	ebx,dword [ebx+96]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1803
	push	eax
	call	_bbGCFree
	add	esp,4
_1803:
	mov	dword [esi+140],ebx
	push	_1804
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1806
	call	_brl_blitz_NullObjectError
_1806:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1808
	call	_brl_blitz_NullObjectError
_1808:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1793:
	push	_1810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_877:
	mov	eax,ebp
	push	eax
	push	_1855
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	je	_1813
	mov	eax,ebp
	push	eax
	push	_1833
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1816
	call	_brl_blitz_NullObjectError
_1816:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1819
	call	_brl_blitz_NullObjectError
_1819:
	mov	ebx,dword [ebx+112]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1823
	push	eax
	call	_bbGCFree
	add	esp,4
_1823:
	mov	dword [esi+140],ebx
	push	_1824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1826
	call	_brl_blitz_NullObjectError
_1826:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1828
	call	_brl_blitz_NullObjectError
_1828:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1829
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1831
	call	_brl_blitz_NullObjectError
_1831:
	mov	dword [ebx+132],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1834
_1813:
	mov	eax,ebp
	push	eax
	push	_1853
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1835
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1836
	mov	eax,ebp
	push	eax
	push	_1852
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1839
	call	_brl_blitz_NullObjectError
_1839:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1842
	call	_brl_blitz_NullObjectError
_1842:
	mov	ebx,dword [ebx+80]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1846
	push	eax
	call	_bbGCFree
	add	esp,4
_1846:
	mov	dword [esi+140],ebx
	push	_1847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1849
	call	_brl_blitz_NullObjectError
_1849:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1851
	call	_brl_blitz_NullObjectError
_1851:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1836:
	call	dword [_bbOnDebugLeaveScope]
_1834:
	push	_1854
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_880:
	mov	eax,ebp
	push	eax
	push	_1895
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	je	_1857
	mov	eax,ebp
	push	eax
	push	_1873
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1860
	call	_brl_blitz_NullObjectError
_1860:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1863
	call	_brl_blitz_NullObjectError
_1863:
	mov	ebx,dword [ebx+100]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1867
	push	eax
	call	_bbGCFree
	add	esp,4
_1867:
	mov	dword [esi+140],ebx
	push	_1868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1870
	call	_brl_blitz_NullObjectError
_1870:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1872
	call	_brl_blitz_NullObjectError
_1872:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1874
_1857:
	mov	eax,ebp
	push	eax
	push	_1893
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1875
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_1876
	mov	eax,ebp
	push	eax
	push	_1892
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1877
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1879
	call	_brl_blitz_NullObjectError
_1879:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1882
	call	_brl_blitz_NullObjectError
_1882:
	mov	ebx,dword [ebx+92]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1886
	push	eax
	call	_bbGCFree
	add	esp,4
_1886:
	mov	dword [esi+140],ebx
	push	_1887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1889
	call	_brl_blitz_NullObjectError
_1889:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1891
	call	_brl_blitz_NullObjectError
_1891:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1876:
	call	dword [_bbOnDebugLeaveScope]
_1874:
	push	_1894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_883:
	mov	eax,ebp
	push	eax
	push	_1919
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1896
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1898
	call	_brl_blitz_NullObjectError
_1898:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1900
	call	_brl_blitz_NullObjectError
_1900:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1901
	mov	eax,ebp
	push	eax
	push	_1917
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1904
	call	_brl_blitz_NullObjectError
_1904:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1907
	call	_brl_blitz_NullObjectError
_1907:
	mov	ebx,dword [ebx+36]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1911
	push	eax
	call	_bbGCFree
	add	esp,4
_1911:
	mov	dword [esi+140],ebx
	push	_1912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1914
	call	_brl_blitz_NullObjectError
_1914:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1916
	call	_brl_blitz_NullObjectError
_1916:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1901:
	push	_1918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_886:
	mov	eax,ebp
	push	eax
	push	_1943
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1922
	call	_brl_blitz_NullObjectError
_1922:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1924
	call	_brl_blitz_NullObjectError
_1924:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1925
	mov	eax,ebp
	push	eax
	push	_1941
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1926
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1928
	call	_brl_blitz_NullObjectError
_1928:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1931
	call	_brl_blitz_NullObjectError
_1931:
	mov	ebx,dword [ebx+32]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1935
	push	eax
	call	_bbGCFree
	add	esp,4
_1935:
	mov	dword [esi+140],ebx
	push	_1936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1938
	call	_brl_blitz_NullObjectError
_1938:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1940
	call	_brl_blitz_NullObjectError
_1940:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1925:
	push	_1942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_889:
	mov	eax,ebp
	push	eax
	push	_1967
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1944
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1946
	call	_brl_blitz_NullObjectError
_1946:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1948
	call	_brl_blitz_NullObjectError
_1948:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1949
	mov	eax,ebp
	push	eax
	push	_1965
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1950
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1952
	call	_brl_blitz_NullObjectError
_1952:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1955
	call	_brl_blitz_NullObjectError
_1955:
	mov	ebx,dword [ebx+120]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1959
	push	eax
	call	_bbGCFree
	add	esp,4
_1959:
	mov	dword [esi+140],ebx
	push	_1960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1962
	call	_brl_blitz_NullObjectError
_1962:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1964
	call	_brl_blitz_NullObjectError
_1964:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1949:
	push	_1966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_892:
	mov	eax,ebp
	push	eax
	push	_1991
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1968
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1970
	call	_brl_blitz_NullObjectError
_1970:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1972
	call	_brl_blitz_NullObjectError
_1972:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_1973
	mov	eax,ebp
	push	eax
	push	_1989
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1974
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1976
	call	_brl_blitz_NullObjectError
_1976:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1979
	call	_brl_blitz_NullObjectError
_1979:
	mov	ebx,dword [ebx+108]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_1983
	push	eax
	call	_bbGCFree
	add	esp,4
_1983:
	mov	dword [esi+140],ebx
	push	_1984
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1986
	call	_brl_blitz_NullObjectError
_1986:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_1988
	call	_brl_blitz_NullObjectError
_1988:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_1973:
	push	_1990
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_895:
	mov	eax,ebp
	push	eax
	push	_2022
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1992
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	je	_1993
	mov	eax,ebp
	push	eax
	push	_2003
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1996
	call	_brl_blitz_NullObjectError
_1996:
	cmp	dword [ebx+132],0
	je	_1997
	mov	eax,ebp
	push	eax
	push	_2002
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1998
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2000
	call	_brl_blitz_NullObjectError
_2000:
	mov	dword [ebx+132],0
	call	dword [_bbOnDebugLeaveScope]
_1997:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2004
_1993:
	mov	eax,ebp
	push	eax
	push	_2020
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2005
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2007
	call	_brl_blitz_NullObjectError
_2007:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2010
	call	_brl_blitz_NullObjectError
_2010:
	mov	ebx,dword [ebx+116]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_2014
	push	eax
	call	_bbGCFree
	add	esp,4
_2014:
	mov	dword [esi+140],ebx
	push	_2015
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2017
	call	_brl_blitz_NullObjectError
_2017:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2019
	call	_brl_blitz_NullObjectError
_2019:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2004:
	push	_2021
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_898:
	mov	eax,ebp
	push	eax
	push	_2051
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2023
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	jne	_2024
	mov	eax,ebp
	push	eax
	push	_2049
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2025
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2027
	call	_brl_blitz_NullObjectError
_2027:
	cmp	dword [ebx+132],0
	je	_2028
	mov	eax,ebp
	push	eax
	push	_2033
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2031
	call	_brl_blitz_NullObjectError
_2031:
	mov	dword [ebx+132],0
	call	dword [_bbOnDebugLeaveScope]
_2028:
	push	_2034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2036
	call	_brl_blitz_NullObjectError
_2036:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2039
	call	_brl_blitz_NullObjectError
_2039:
	mov	ebx,dword [ebx+104]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_2043
	push	eax
	call	_bbGCFree
	add	esp,4
_2043:
	mov	dword [esi+140],ebx
	push	_2044
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2046
	call	_brl_blitz_NullObjectError
_2046:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2048
	call	_brl_blitz_NullObjectError
_2048:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2024:
	push	_2050
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_901:
	mov	eax,ebp
	push	eax
	push	_2075
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2054
	call	_brl_blitz_NullObjectError
_2054:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2056
	call	_brl_blitz_NullObjectError
_2056:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_2057
	mov	eax,ebp
	push	eax
	push	_2073
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2060
	call	_brl_blitz_NullObjectError
_2060:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2063
	call	_brl_blitz_NullObjectError
_2063:
	mov	ebx,dword [ebx+84]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_2067
	push	eax
	call	_bbGCFree
	add	esp,4
_2067:
	mov	dword [esi+140],ebx
	push	_2068
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2070
	call	_brl_blitz_NullObjectError
_2070:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2072
	call	_brl_blitz_NullObjectError
_2072:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2057:
	push	_2074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_904:
	mov	eax,ebp
	push	eax
	push	_2099
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2076
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2078
	call	_brl_blitz_NullObjectError
_2078:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2080
	call	_brl_blitz_NullObjectError
_2080:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_2081
	mov	eax,ebp
	push	eax
	push	_2097
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2084
	call	_brl_blitz_NullObjectError
_2084:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2087
	call	_brl_blitz_NullObjectError
_2087:
	mov	ebx,dword [ebx+96]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_2091
	push	eax
	call	_bbGCFree
	add	esp,4
_2091:
	mov	dword [esi+140],ebx
	push	_2092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2094
	call	_brl_blitz_NullObjectError
_2094:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2096
	call	_brl_blitz_NullObjectError
_2096:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2081:
	push	_2098
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fldz
	fstp	dword [eax]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_907:
	mov	eax,ebp
	push	eax
	push	_2235
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2102
	call	_brl_blitz_NullObjectError
_2102:
	cmp	dword [ebx+136],0
	je	_2103
	mov	eax,ebp
	push	eax
	push	_2130
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fld	dword [_2752]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_2105
	mov	eax,ebp
	push	eax
	push	_2123
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2108
	call	_brl_blitz_NullObjectError
_2108:
	fld	dword [ebx+20]
	fadd	dword [_2753]
	fstp	dword [ebx+20]
	push	_2110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2112
	call	_brl_blitz_NullObjectError
_2112:
	fld	dword [ebx+20]
	fld	dword [_2754]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_2113
	mov	eax,ebp
	push	eax
	push	_2122
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2116
	call	_brl_blitz_NullObjectError
_2116:
	fld	dword [_2755]
	fstp	dword [ebx+20]
	push	_2118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2120
	call	_brl_blitz_NullObjectError
_2120:
	mov	dword [ebx+136],0
	call	dword [_bbOnDebugLeaveScope]
_2113:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2124
_2105:
	mov	eax,ebp
	push	eax
	push	_2129
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2127
	call	_brl_blitz_NullObjectError
_2127:
	mov	dword [ebx+136],0
	call	dword [_bbOnDebugLeaveScope]
_2124:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2131
_2103:
	mov	eax,ebp
	push	eax
	push	_2136
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2134
	call	_brl_blitz_NullObjectError
_2134:
	fld	dword [ebx+20]
	fsub	dword [_2756]
	fstp	dword [ebx+20]
	call	dword [_bbOnDebugLeaveScope]
_2131:
	push	_2137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2139
	call	_brl_blitz_NullObjectError
_2139:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2142
	call	_brl_blitz_NullObjectError
_2142:
	fld	dword [ebx+12]
	fsub	dword [esi+20]
	fstp	dword [ebx+12]
	push	_2143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2145
	call	_brl_blitz_NullObjectError
_2145:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2147
	call	_brl_blitz_NullObjectError
_2147:
	fld	dword [esi+12]
	fld	dword [ebx+16]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_2148
	mov	eax,ebp
	push	eax
	push	_2214
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld	dword [_2757]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_2150
	mov	eax,ebp
	push	eax
	push	_2166
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2153
	call	_brl_blitz_NullObjectError
_2153:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2156
	call	_brl_blitz_NullObjectError
_2156:
	mov	ebx,dword [ebx+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_2160
	push	eax
	call	_bbGCFree
	add	esp,4
_2160:
	mov	dword [esi+140],ebx
	push	_2161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2163
	call	_brl_blitz_NullObjectError
_2163:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2165
	call	_brl_blitz_NullObjectError
_2165:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2167
_2150:
	mov	eax,ebp
	push	eax
	push	_2203
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_2169
	mov	eax,ebp
	push	eax
	push	_2185
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2172
	call	_brl_blitz_NullObjectError
_2172:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2175
	call	_brl_blitz_NullObjectError
_2175:
	mov	ebx,dword [ebx+28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_2179
	push	eax
	call	_bbGCFree
	add	esp,4
_2179:
	mov	dword [esi+140],ebx
	push	_2180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2182
	call	_brl_blitz_NullObjectError
_2182:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2184
	call	_brl_blitz_NullObjectError
_2184:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2186
_2169:
	mov	eax,ebp
	push	eax
	push	_2202
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2189
	call	_brl_blitz_NullObjectError
_2189:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2192
	call	_brl_blitz_NullObjectError
_2192:
	mov	ebx,dword [ebx+32]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_2196
	push	eax
	call	_bbGCFree
	add	esp,4
_2196:
	mov	dword [esi+140],ebx
	push	_2197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2199
	call	_brl_blitz_NullObjectError
_2199:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2201
	call	_brl_blitz_NullObjectError
_2201:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2186:
	call	dword [_bbOnDebugLeaveScope]
_2167:
	push	_2204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2206
	call	_brl_blitz_NullObjectError
_2206:
	fldz
	fstp	dword [ebx+20]
	push	_2208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2210
	call	_brl_blitz_NullObjectError
_2210:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2213
	call	_brl_blitz_NullObjectError
_2213:
	fld	dword [esi+16]
	fstp	dword [ebx+12]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2215
_2148:
	mov	eax,ebp
	push	eax
	push	_2234
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_2217
	mov	eax,ebp
	push	eax
	push	_2233
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2220
	call	_brl_blitz_NullObjectError
_2220:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2223
	call	_brl_blitz_NullObjectError
_2223:
	mov	ebx,dword [ebx+128]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_2227
	push	eax
	call	_bbGCFree
	add	esp,4
_2227:
	mov	dword [esi+140],ebx
	push	_2228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2230
	call	_brl_blitz_NullObjectError
_2230:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2232
	call	_brl_blitz_NullObjectError
_2232:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2217:
	call	dword [_bbOnDebugLeaveScope]
_2215:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_910:
	mov	eax,ebp
	push	eax
	push	_2371
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2238
	call	_brl_blitz_NullObjectError
_2238:
	cmp	dword [ebx+136],0
	je	_2239
	mov	eax,ebp
	push	eax
	push	_2266
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	fld	dword [eax]
	fld	dword [_2758]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_2241
	mov	eax,ebp
	push	eax
	push	_2259
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2244
	call	_brl_blitz_NullObjectError
_2244:
	fld	dword [ebx+20]
	fadd	dword [_2759]
	fstp	dword [ebx+20]
	push	_2246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2248
	call	_brl_blitz_NullObjectError
_2248:
	fld	dword [ebx+20]
	fld	dword [_2760]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_2249
	mov	eax,ebp
	push	eax
	push	_2258
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2252
	call	_brl_blitz_NullObjectError
_2252:
	fld	dword [_2761]
	fstp	dword [ebx+20]
	push	_2254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2256
	call	_brl_blitz_NullObjectError
_2256:
	mov	dword [ebx+136],0
	call	dword [_bbOnDebugLeaveScope]
_2249:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2260
_2241:
	mov	eax,ebp
	push	eax
	push	_2265
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2261
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2263
	call	_brl_blitz_NullObjectError
_2263:
	mov	dword [ebx+136],0
	call	dword [_bbOnDebugLeaveScope]
_2260:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2267
_2239:
	mov	eax,ebp
	push	eax
	push	_2272
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2270
	call	_brl_blitz_NullObjectError
_2270:
	fld	dword [ebx+20]
	fsub	dword [_2762]
	fstp	dword [ebx+20]
	call	dword [_bbOnDebugLeaveScope]
_2267:
	push	_2273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2275
	call	_brl_blitz_NullObjectError
_2275:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2278
	call	_brl_blitz_NullObjectError
_2278:
	fld	dword [ebx+12]
	fsub	dword [esi+20]
	fstp	dword [ebx+12]
	push	_2279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2281
	call	_brl_blitz_NullObjectError
_2281:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2283
	call	_brl_blitz_NullObjectError
_2283:
	fld	dword [esi+12]
	fld	dword [ebx+16]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_2284
	mov	eax,ebp
	push	eax
	push	_2350
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_2286
	mov	eax,ebp
	push	eax
	push	_2302
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2289
	call	_brl_blitz_NullObjectError
_2289:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2292
	call	_brl_blitz_NullObjectError
_2292:
	mov	ebx,dword [ebx+28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_2296
	push	eax
	call	_bbGCFree
	add	esp,4
_2296:
	mov	dword [esi+140],ebx
	push	_2297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2299
	call	_brl_blitz_NullObjectError
_2299:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2301
	call	_brl_blitz_NullObjectError
_2301:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2303
_2286:
	mov	eax,ebp
	push	eax
	push	_2339
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld	dword [_2763]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_2305
	mov	eax,ebp
	push	eax
	push	_2321
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2308
	call	_brl_blitz_NullObjectError
_2308:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2311
	call	_brl_blitz_NullObjectError
_2311:
	mov	ebx,dword [ebx+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_2315
	push	eax
	call	_bbGCFree
	add	esp,4
_2315:
	mov	dword [esi+140],ebx
	push	_2316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2318
	call	_brl_blitz_NullObjectError
_2318:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2320
	call	_brl_blitz_NullObjectError
_2320:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2322
_2305:
	mov	eax,ebp
	push	eax
	push	_2338
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2325
	call	_brl_blitz_NullObjectError
_2325:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2328
	call	_brl_blitz_NullObjectError
_2328:
	mov	ebx,dword [ebx+36]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_2332
	push	eax
	call	_bbGCFree
	add	esp,4
_2332:
	mov	dword [esi+140],ebx
	push	_2333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2335
	call	_brl_blitz_NullObjectError
_2335:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2337
	call	_brl_blitz_NullObjectError
_2337:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2322:
	call	dword [_bbOnDebugLeaveScope]
_2303:
	push	_2340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2342
	call	_brl_blitz_NullObjectError
_2342:
	fldz
	fstp	dword [ebx+20]
	push	_2344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2346
	call	_brl_blitz_NullObjectError
_2346:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2349
	call	_brl_blitz_NullObjectError
_2349:
	fld	dword [esi+16]
	fstp	dword [ebx+12]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2351
_2284:
	mov	eax,ebp
	push	eax
	push	_2370
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	fld	dword [eax]
	fld	dword [_2764]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_2353
	mov	eax,ebp
	push	eax
	push	_2369
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2356
	call	_brl_blitz_NullObjectError
_2356:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2359
	call	_brl_blitz_NullObjectError
_2359:
	mov	ebx,dword [ebx+124]
	inc	dword [ebx+4]
	mov	eax,dword [esi+140]
	dec	dword [eax+4]
	jnz	_2363
	push	eax
	call	_bbGCFree
	add	esp,4
_2363:
	mov	dword [esi+140],ebx
	push	_2364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2366
	call	_brl_blitz_NullObjectError
_2366:
	mov	ebx,dword [ebx+140]
	cmp	ebx,_bbNullObject
	jne	_2368
	call	_brl_blitz_NullObjectError
_2368:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2353:
	call	dword [_bbOnDebugLeaveScope]
_2351:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_834
_834:
	mov	ebx,0
	jmp	_163
_163:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_display:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_2382
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2375
	call	_brl_blitz_NullObjectError
_2375:
	mov	edi,dword [ebx+140]
	cmp	edi,_bbNullObject
	jne	_2377
	call	_brl_blitz_NullObjectError
_2377:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2379
	call	_brl_blitz_NullObjectError
_2379:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2381
	call	_brl_blitz_NullObjectError
_2381:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+60]
	add	esp,12
	mov	ebx,0
	jmp	_166
_166:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tilebase_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2393
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_Tilebase
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+20]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+24]
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],0
	push	ebp
	push	_2392
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2386
	call	_brl_blitz_NullObjectError
_2386:
	call	_brl_graphics_GraphicsWidth
	mov	dword [ebx+32],eax
	push	_2388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2390
	call	_brl_blitz_NullObjectError
_2390:
	call	_brl_graphics_GraphicsHeight
	mov	dword [ebx+36],eax
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_169
_169:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tilebase_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_172:
	mov	eax,dword [eax+28]
	dec	dword [eax+4]
	jnz	_2397
	push	eax
	call	_bbGCFree
	add	esp,4
_2397:
	mov	eax,0
	jmp	_2395
_2395:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TileRow_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2399
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_Tilebase_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TileRow
	push	ebp
	push	_2398
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_175
_175:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TileRow_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_178:
	mov	dword [eax],_bb_Tilebase
	push	eax
	call	__bb_Tilebase_Delete
	add	esp,4
	mov	eax,0
	jmp	_2401
_2401:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TileRow_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbNullObject
	push	ebp
	push	_2437
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TileRow
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_2404
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2406
	call	_brl_blitz_NullObjectError
_2406:
	fld	dword [ebp-4]
	fstp	dword [ebx+8]
	push	_2408
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2410
	call	_brl_blitz_NullObjectError
_2410:
	fld	dword [ebp-8]
	fstp	dword [ebx+12]
	push	_2412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2414
	call	_brl_blitz_NullObjectError
_2414:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2417
	call	_brl_blitz_NullObjectError
_2417:
	mov	eax,dword [esi+32]
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	fstp	dword [ebx+16]
	push	_2418
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2420
	call	_brl_blitz_NullObjectError
_2420:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2423
	call	_brl_blitz_NullObjectError
_2423:
	mov	eax,dword [esi+12]
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	fstp	dword [ebx+20]
	push	_2424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2426
	call	_brl_blitz_NullObjectError
_2426:
	fld	dword [ebp-12]
	fstp	dword [ebx+24]
	push	_2428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2430
	call	_brl_blitz_NullObjectError
_2430:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_2435
	push	eax
	call	_bbGCFree
	add	esp,4
_2435:
	mov	dword [esi+28],ebx
	push	_2436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_184
_184:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TileRow_update:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	mov	eax,ebp
	push	eax
	push	_2451
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2441
	call	_brl_blitz_NullObjectError
_2441:
	mov	dword [ebp-12],ebx
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_2444
	call	_brl_blitz_NullObjectError
_2444:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2446
	call	_brl_blitz_NullObjectError
_2446:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2448
	call	_brl_blitz_NullObjectError
_2448:
	mov	esi,dword [esi+28]
	cmp	esi,_bbNullObject
	jne	_2450
	call	_brl_blitz_NullObjectError
_2450:
	mov	eax,dword [esi+8]
	mov	dword [ebp+-16],eax
	fild	dword [ebp+-16]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [edi+8]
	fld	dword [ebx+24]
	fmul	dword [ebp-8]
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatMod
	add	esp,16
	mov	eax,dword [ebp-12]
	fstp	dword [eax+8]
	mov	ebx,0
	jmp	_188
_188:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TileRow_display:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_2467
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_2454
	call	_brl_blitz_NullObjectError
_2454:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2456
	call	_brl_blitz_NullObjectError
_2456:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2458
	call	_brl_blitz_NullObjectError
_2458:
	fld	dword [ebx+20]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [esi+16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [edi+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	0
	call	_brl_max2d_SetViewport
	add	esp,16
	push	_2459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_2461
	call	_brl_blitz_NullObjectError
_2461:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2463
	call	_brl_blitz_NullObjectError
_2463:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2465
	call	_brl_blitz_NullObjectError
_2465:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+28]
	call	_brl_max2d_TileImage
	add	esp,16
	push	_2466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_graphics_GraphicsHeight
	push	eax
	call	_brl_graphics_GraphicsWidth
	push	eax
	push	0
	push	0
	call	_brl_max2d_SetViewport
	add	esp,16
	mov	ebx,0
	jmp	_191
_191:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_tileRotate_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2469
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_Tilebase_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_tileRotate
	push	ebp
	push	_2468
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_194
_194:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_tileRotate_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_197:
	mov	dword [eax],_bb_Tilebase
	push	eax
	call	__bb_Tilebase_Delete
	add	esp,4
	mov	eax,0
	jmp	_2471
_2471:
	mov	esp,ebp
	pop	ebp
	ret
__bb_tileRotate_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbNullObject
	push	ebp
	push	_2495
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_tileRotate
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_2474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2476
	call	_brl_blitz_NullObjectError
_2476:
	fld	dword [ebp-4]
	fstp	dword [ebx+8]
	push	_2478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2480
	call	_brl_blitz_NullObjectError
_2480:
	fld	dword [ebp-8]
	fstp	dword [ebx+12]
	push	_2482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2484
	call	_brl_blitz_NullObjectError
_2484:
	fld	dword [ebp-12]
	fstp	dword [ebx+24]
	push	_2486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2488
	call	_brl_blitz_NullObjectError
_2488:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_2493
	push	eax
	call	_bbGCFree
	add	esp,4
_2493:
	mov	dword [esi+28],ebx
	push	_2494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_203
_203:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_tileRotate_update:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	mov	eax,ebp
	push	eax
	push	_2543
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2499
	call	_brl_blitz_NullObjectError
_2499:
	mov	edi,ebx
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2502
	call	_brl_blitz_NullObjectError
_2502:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2504
	call	_brl_blitz_NullObjectError
_2504:
	fld	dword [esi+8]
	fld	dword [ebx+24]
	fmul	dword [ebp-8]
	faddp	st1,st0
	fstp	dword [edi+8]
	push	_2505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2507
	call	_brl_blitz_NullObjectError
_2507:
	fld	dword [ebx+24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_2512
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2509
	call	_brl_blitz_NullObjectError
_2509:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2511
	call	_brl_blitz_NullObjectError
_2511:
	fld	dword [esi+8]
	mov	eax,dword [ebx+32]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_2512:
	cmp	eax,0
	je	_2514
	mov	eax,ebp
	push	eax
	push	_2523
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2517
	call	_brl_blitz_NullObjectError
_2517:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2520
	call	_brl_blitz_NullObjectError
_2520:
	mov	esi,dword [esi+28]
	cmp	esi,_bbNullObject
	jne	_2522
	call	_brl_blitz_NullObjectError
_2522:
	mov	eax,dword [esi+8]
	neg	eax
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fstp	dword [ebx+8]
	call	dword [_bbOnDebugLeaveScope]
_2514:
	push	_2524
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2526
	call	_brl_blitz_NullObjectError
_2526:
	fld	dword [ebx+24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	je	_2533
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2528
	call	_brl_blitz_NullObjectError
_2528:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2530
	call	_brl_blitz_NullObjectError
_2530:
	mov	esi,dword [esi+28]
	cmp	esi,_bbNullObject
	jne	_2532
	call	_brl_blitz_NullObjectError
_2532:
	fld	dword [ebx+8]
	mov	eax,dword [esi+8]
	neg	eax
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_2533:
	cmp	eax,0
	je	_2535
	mov	eax,ebp
	push	eax
	push	_2542
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2538
	call	_brl_blitz_NullObjectError
_2538:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2541
	call	_brl_blitz_NullObjectError
_2541:
	mov	eax,dword [esi+32]
	mov	dword [ebp+-12],eax
	fild	dword [ebp+-12]
	fstp	dword [ebx+8]
	call	dword [_bbOnDebugLeaveScope]
_2535:
	mov	ebx,0
	jmp	_207
_207:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_tileRotate_display:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_2551
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_2546
	call	_brl_blitz_NullObjectError
_2546:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2548
	call	_brl_blitz_NullObjectError
_2548:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2550
	call	_brl_blitz_NullObjectError
_2550:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+28]
	call	_brl_max2d_DrawImage
	add	esp,16
	mov	ebx,0
	jmp	_210
_210:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBackground_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2553
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TBackground
	push	ebp
	push	_2552
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_213
_213:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBackground_Delete:
	push	ebp
	mov	ebp,esp
_216:
	mov	eax,0
	jmp	_2555
_2555:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBackground_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_2589
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2556
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBackground_list]
	cmp	ebx,_bbNullObject
	jne	_2558
	call	_brl_blitz_NullObjectError
_2558:
	push	dword [_bb_Background1]
	push	-2147483648
	push	0
	push	0
	call	dword [_bb_TileRow+56]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2559
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBackground_list]
	cmp	ebx,_bbNullObject
	jne	_2561
	call	_brl_blitz_NullObjectError
_2561:
	push	dword [_bb_Background2]
	push	-1077936128
	push	1128792064
	push	0
	call	dword [_bb_TileRow+56]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2562
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBackground_list]
	cmp	ebx,_bbNullObject
	jne	_2564
	call	_brl_blitz_NullObjectError
_2564:
	push	dword [_bb_Background3]
	push	-1073741824
	push	1137836032
	push	0
	call	dword [_bb_TileRow+56]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBackground_list]
	cmp	ebx,_bbNullObject
	jne	_2567
	call	_brl_blitz_NullObjectError
_2567:
	push	dword [_bb_Background4]
	push	-1069547520
	push	1138163712
	push	0
	call	dword [_bb_TileRow+56]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2568
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBackground_list]
	cmp	ebx,_bbNullObject
	jne	_2570
	call	_brl_blitz_NullObjectError
_2570:
	push	dword [_bb_Background5]
	push	-1063256064
	push	1138819072
	push	0
	call	dword [_bb_TileRow+56]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBackground_list]
	cmp	ebx,_bbNullObject
	jne	_2573
	call	_brl_blitz_NullObjectError
_2573:
	push	dword [_bb_Background6]
	push	-1061158912
	push	1138491392
	push	0
	call	dword [_bb_TileRow+56]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBackground_list]
	cmp	ebx,_bbNullObject
	jne	_2576
	call	_brl_blitz_NullObjectError
_2576:
	push	dword [_bb_Cloud4]
	push	-1082130432
	push	1124859904
	push	0
	call	dword [_bb_TileRow+56]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBackground_list]
	cmp	ebx,_bbNullObject
	jne	_2579
	call	_brl_blitz_NullObjectError
_2579:
	push	dword [_bb_Cloud3]
	push	-1073741824
	push	1120403456
	push	0
	call	dword [_bb_TileRow+56]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBackground_list]
	cmp	ebx,_bbNullObject
	jne	_2582
	call	_brl_blitz_NullObjectError
_2582:
	push	dword [_bb_Cloud2]
	push	-1069547520
	push	1114636288
	push	0
	call	dword [_bb_TileRow+56]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBackground_list]
	cmp	ebx,_bbNullObject
	jne	_2585
	call	_brl_blitz_NullObjectError
_2585:
	push	dword [_bb_Cloud1]
	push	-1065353216
	push	0
	push	0
	call	dword [_bb_TileRow+56]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TBackground_list]
	cmp	ebx,_bbNullObject
	jne	_2588
	call	_brl_blitz_NullObjectError
_2588:
	push	dword [_bb_Tree]
	push	-1069547520
	push	1127481344
	push	1128792064
	call	dword [_bb_TileRow+56]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_bbNullObject
	jmp	_218
_218:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBackground_update:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	mov	dword [ebp-8],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_2604
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	edi,dword [__bb_TBackground_list]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2594
	call	_brl_blitz_NullObjectError
_2594:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_34
_36:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2599
	call	_brl_blitz_NullObjectError
_2599:
	push	_bb_Tilebase
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	je	_34
	mov	eax,ebp
	push	eax
	push	_2603
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2602
	call	_brl_blitz_NullObjectError
_2602:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_34:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2597
	call	_brl_blitz_NullObjectError
_2597:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_36
_35:
	mov	ebx,0
	jmp	_221
_221:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBackground_display:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_2619
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [__bb_TBackground_list]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2609
	call	_brl_blitz_NullObjectError
_2609:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_37
_39:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2614
	call	_brl_blitz_NullObjectError
_2614:
	push	_bb_Tilebase
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_37
	mov	eax,ebp
	push	eax
	push	_2618
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2617
	call	_brl_blitz_NullObjectError
_2617:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_37:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2612
	call	_brl_blitz_NullObjectError
_2612:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_39
_38:
	mov	ebx,0
	jmp	_223
_223:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_414:
	dd	0
_373:
	db	"SOBOO",0
_374:
	db	"T_list",0
_375:
	db	":brl.linkedlist.TList",0
	align	4
_bb_T_list:
	dd	_bbNullObject
_376:
	db	"Background1",0
_51:
	db	":brl.max2d.TImage",0
	align	4
_bb_Background1:
	dd	_bbNullObject
_377:
	db	"Background2",0
	align	4
_bb_Background2:
	dd	_bbNullObject
_378:
	db	"Background3",0
	align	4
_bb_Background3:
	dd	_bbNullObject
_379:
	db	"Background4",0
	align	4
_bb_Background4:
	dd	_bbNullObject
_380:
	db	"Background5",0
	align	4
_bb_Background5:
	dd	_bbNullObject
_381:
	db	"Background6",0
	align	4
_bb_Background6:
	dd	_bbNullObject
_382:
	db	"Cloud1",0
	align	4
_bb_Cloud1:
	dd	_bbNullObject
_383:
	db	"Cloud2",0
	align	4
_bb_Cloud2:
	dd	_bbNullObject
_384:
	db	"Cloud3",0
	align	4
_bb_Cloud3:
	dd	_bbNullObject
_385:
	db	"Cloud4",0
	align	4
_bb_Cloud4:
	dd	_bbNullObject
_386:
	db	"Tree",0
	align	4
_bb_Tree:
	dd	_bbNullObject
_387:
	db	"walkRightImg",0
	align	4
_bb_walkRightImg:
	dd	_bbNullObject
_388:
	db	"walkLeftImg",0
	align	4
_bb_walkLeftImg:
	dd	_bbNullObject
_389:
	db	"turnLeftImg",0
	align	4
_bb_turnLeftImg:
	dd	_bbNullObject
_390:
	db	"turnRightImg",0
	align	4
_bb_turnRightImg:
	dd	_bbNullObject
_391:
	db	"punchRightOutImg",0
	align	4
_bb_punchRightOutImg:
	dd	_bbNullObject
_392:
	db	"punchRightInImg",0
	align	4
_bb_punchRightInImg:
	dd	_bbNullObject
_393:
	db	"punchrightImg",0
	align	4
_bb_punchrightImg:
	dd	_bbNullObject
_394:
	db	"punchLeftOutImg",0
	align	4
_bb_punchLeftOutImg:
	dd	_bbNullObject
_395:
	db	"punchLeftInImg",0
	align	4
_bb_punchLeftInImg:
	dd	_bbNullObject
_396:
	db	"punchLeftImg",0
	align	4
_bb_punchLeftImg:
	dd	_bbNullObject
_397:
	db	"crouchRightDownImg",0
	align	4
_bb_crouchRightDownImg:
	dd	_bbNullObject
_398:
	db	"crouchRightUpImg",0
	align	4
_bb_crouchRightUpImg:
	dd	_bbNullObject
_399:
	db	"crouchleftDownImg",0
	align	4
_bb_crouchleftDownImg:
	dd	_bbNullObject
_400:
	db	"crouchleftUpImg",0
	align	4
_bb_crouchleftUpImg:
	dd	_bbNullObject
_401:
	db	"framesImg",0
	align	4
_bb_framesImg:
	dd	_bbNullObject
_402:
	db	"walkrightgunImg",0
	align	4
_bb_walkrightgunImg:
	dd	_bbNullObject
_403:
	db	"walkleftgunImg",0
	align	4
_bb_walkleftgunImg:
	dd	_bbNullObject
_404:
	db	"turnLeftgun",0
	align	4
_bb_turnLeftgun:
	dd	_bbNullObject
_405:
	db	"turnRightGun",0
	align	4
_bb_turnRightGun:
	dd	_bbNullObject
_406:
	db	"nealRightpunchoutImg",0
	align	4
_bb_nealRightpunchoutImg:
	dd	_bbNullObject
_407:
	db	"nealRightpunchinImg",0
	align	4
_bb_nealRightpunchinImg:
	dd	_bbNullObject
_408:
	db	"nealLeftpunchOutImg",0
	align	4
_bb_nealLeftpunchOutImg:
	dd	_bbNullObject
_409:
	db	"nealleftpunchInImg",0
	align	4
_bb_nealleftpunchInImg:
	dd	_bbNullObject
_410:
	db	"standingggunRightImg",0
	align	4
_bb_standingggunRightImg:
	dd	_bbNullObject
_411:
	db	"knealingdowngunleftImg",0
	align	4
_bb_knealingdowngunleftImg:
	dd	_bbNullObject
_412:
	db	"player",0
_413:
	db	":Tplayer",0
	align	4
_372:
	dd	1
	dd	_373
	dd	4
	dd	_374
	dd	_375
	dd	_bb_T_list
	dd	4
	dd	_376
	dd	_51
	dd	_bb_Background1
	dd	4
	dd	_377
	dd	_51
	dd	_bb_Background2
	dd	4
	dd	_378
	dd	_51
	dd	_bb_Background3
	dd	4
	dd	_379
	dd	_51
	dd	_bb_Background4
	dd	4
	dd	_380
	dd	_51
	dd	_bb_Background5
	dd	4
	dd	_381
	dd	_51
	dd	_bb_Background6
	dd	4
	dd	_382
	dd	_51
	dd	_bb_Cloud1
	dd	4
	dd	_383
	dd	_51
	dd	_bb_Cloud2
	dd	4
	dd	_384
	dd	_51
	dd	_bb_Cloud3
	dd	4
	dd	_385
	dd	_51
	dd	_bb_Cloud4
	dd	4
	dd	_386
	dd	_51
	dd	_bb_Tree
	dd	4
	dd	_387
	dd	_51
	dd	_bb_walkRightImg
	dd	4
	dd	_388
	dd	_51
	dd	_bb_walkLeftImg
	dd	4
	dd	_389
	dd	_51
	dd	_bb_turnLeftImg
	dd	4
	dd	_390
	dd	_51
	dd	_bb_turnRightImg
	dd	4
	dd	_391
	dd	_51
	dd	_bb_punchRightOutImg
	dd	4
	dd	_392
	dd	_51
	dd	_bb_punchRightInImg
	dd	4
	dd	_393
	dd	_51
	dd	_bb_punchrightImg
	dd	4
	dd	_394
	dd	_51
	dd	_bb_punchLeftOutImg
	dd	4
	dd	_395
	dd	_51
	dd	_bb_punchLeftInImg
	dd	4
	dd	_396
	dd	_51
	dd	_bb_punchLeftImg
	dd	4
	dd	_397
	dd	_51
	dd	_bb_crouchRightDownImg
	dd	4
	dd	_398
	dd	_51
	dd	_bb_crouchRightUpImg
	dd	4
	dd	_399
	dd	_51
	dd	_bb_crouchleftDownImg
	dd	4
	dd	_400
	dd	_51
	dd	_bb_crouchleftUpImg
	dd	4
	dd	_401
	dd	_51
	dd	_bb_framesImg
	dd	4
	dd	_402
	dd	_51
	dd	_bb_walkrightgunImg
	dd	4
	dd	_403
	dd	_51
	dd	_bb_walkleftgunImg
	dd	4
	dd	_404
	dd	_51
	dd	_bb_turnLeftgun
	dd	4
	dd	_405
	dd	_51
	dd	_bb_turnRightGun
	dd	4
	dd	_406
	dd	_51
	dd	_bb_nealRightpunchoutImg
	dd	4
	dd	_407
	dd	_51
	dd	_bb_nealRightpunchinImg
	dd	4
	dd	_408
	dd	_51
	dd	_bb_nealLeftpunchOutImg
	dd	4
	dd	_409
	dd	_51
	dd	_bb_nealleftpunchInImg
	dd	4
	dd	_410
	dd	_51
	dd	_bb_standingggunRightImg
	dd	4
	dd	_411
	dd	_51
	dd	_bb_knealingdowngunleftImg
	dd	2
	dd	_412
	dd	_413
	dd	-4
	dd	0
_44:
	db	"Tsprite",0
_45:
	db	"frame",0
_46:
	db	"i",0
_47:
	db	"wait",0
_48:
	db	"rate",0
_49:
	db	"count",0
_50:
	db	"image",0
_52:
	db	"New",0
_53:
	db	"()i",0
_54:
	db	"Delete",0
_55:
	db	"Create",0
_56:
	db	"(:brl.max2d.TImage,i,i,i):Tsprite",0
_57:
	db	"reset",0
_58:
	db	"update",0
_59:
	db	"display",0
_60:
	db	"(f,f)i",0
	align	4
_43:
	dd	2
	dd	_44
	dd	3
	dd	_45
	dd	_46
	dd	8
	dd	3
	dd	_47
	dd	_46
	dd	12
	dd	3
	dd	_48
	dd	_46
	dd	16
	dd	3
	dd	_49
	dd	_46
	dd	20
	dd	3
	dd	_50
	dd	_51
	dd	24
	dd	6
	dd	_52
	dd	_53
	dd	16
	dd	6
	dd	_54
	dd	_53
	dd	20
	dd	7
	dd	_55
	dd	_56
	dd	48
	dd	6
	dd	_57
	dd	_53
	dd	52
	dd	6
	dd	_58
	dd	_53
	dd	56
	dd	6
	dd	_59
	dd	_60
	dd	60
	dd	0
	align	4
_bb_Tsprite:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_43
	dd	28
	dd	__bb_Tsprite_New
	dd	__bb_Tsprite_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_Tsprite_Create
	dd	__bb_Tsprite_reset
	dd	__bb_Tsprite_update
	dd	__bb_Tsprite_display
_62:
	db	"Tplayer",0
_63:
	db	"MOVEL",0
	align	4
_64:
	dd	_bbStringClass
	dd	2147483646
	dd	2
	dw	45,49
_65:
	db	"MOVER",0
	align	4
_66:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	49
_67:
	db	"MOVED",0
_68:
	db	"MOVEJ",0
_69:
	db	"x",0
_70:
	db	"f",0
_71:
	db	"y",0
_72:
	db	"posy",0
_73:
	db	"speedy",0
_74:
	db	"walkL",0
_75:
	db	":Tsprite",0
_76:
	db	"walkR",0
_77:
	db	"standL",0
_78:
	db	"standR",0
_79:
	db	"turnL",0
_80:
	db	"TurnR",0
_81:
	db	"PunchRO",0
_82:
	db	"PunchRI",0
_83:
	db	"punchR",0
_84:
	db	"punchLO",0
_85:
	db	"punchLI",0
_86:
	db	"punchL",0
_87:
	db	"punchInL",0
_88:
	db	"crouchDR",0
_89:
	db	"crouchUR",0
_90:
	db	"knealedR",0
_91:
	db	"crouchDL",0
_92:
	db	"crouchUL",0
_93:
	db	"knealedL",0
_94:
	db	"knealpunchLO",0
_95:
	db	"knealPunchLI",0
_96:
	db	"knealPunchL",0
_97:
	db	"knealPunchRO",0
_98:
	db	"knealPunchRI",0
_99:
	db	"knealPunchR",0
_100:
	db	"jumpL",0
_101:
	db	"jumpR",0
_102:
	db	"punch",0
_103:
	db	"jump",0
_104:
	db	"animation",0
_105:
	db	"(f,f):Tplayer",0
_106:
	db	"(*f,*f,i)i",0
	align	4
_61:
	dd	2
	dd	_62
	dd	1
	dd	_63
	dd	_46
	dd	_64
	dd	1
	dd	_65
	dd	_46
	dd	_66
	dd	1
	dd	_67
	dd	_46
	dd	_66
	dd	1
	dd	_68
	dd	_46
	dd	_64
	dd	3
	dd	_69
	dd	_70
	dd	8
	dd	3
	dd	_71
	dd	_70
	dd	12
	dd	3
	dd	_72
	dd	_70
	dd	16
	dd	3
	dd	_73
	dd	_70
	dd	20
	dd	3
	dd	_74
	dd	_75
	dd	24
	dd	3
	dd	_76
	dd	_75
	dd	28
	dd	3
	dd	_77
	dd	_75
	dd	32
	dd	3
	dd	_78
	dd	_75
	dd	36
	dd	3
	dd	_79
	dd	_75
	dd	40
	dd	3
	dd	_80
	dd	_75
	dd	44
	dd	3
	dd	_81
	dd	_75
	dd	48
	dd	3
	dd	_82
	dd	_75
	dd	52
	dd	3
	dd	_83
	dd	_75
	dd	56
	dd	3
	dd	_84
	dd	_75
	dd	60
	dd	3
	dd	_85
	dd	_75
	dd	64
	dd	3
	dd	_86
	dd	_75
	dd	68
	dd	3
	dd	_87
	dd	_75
	dd	72
	dd	3
	dd	_88
	dd	_75
	dd	76
	dd	3
	dd	_89
	dd	_75
	dd	80
	dd	3
	dd	_90
	dd	_75
	dd	84
	dd	3
	dd	_91
	dd	_75
	dd	88
	dd	3
	dd	_92
	dd	_75
	dd	92
	dd	3
	dd	_93
	dd	_75
	dd	96
	dd	3
	dd	_94
	dd	_75
	dd	100
	dd	3
	dd	_95
	dd	_75
	dd	104
	dd	3
	dd	_96
	dd	_75
	dd	108
	dd	3
	dd	_97
	dd	_75
	dd	112
	dd	3
	dd	_98
	dd	_75
	dd	116
	dd	3
	dd	_99
	dd	_75
	dd	120
	dd	3
	dd	_100
	dd	_75
	dd	124
	dd	3
	dd	_101
	dd	_75
	dd	128
	dd	3
	dd	_102
	dd	_46
	dd	132
	dd	3
	dd	_103
	dd	_46
	dd	136
	dd	3
	dd	_104
	dd	_75
	dd	140
	dd	6
	dd	_52
	dd	_53
	dd	16
	dd	6
	dd	_54
	dd	_53
	dd	20
	dd	7
	dd	_55
	dd	_105
	dd	48
	dd	6
	dd	_58
	dd	_106
	dd	52
	dd	6
	dd	_59
	dd	_53
	dd	56
	dd	0
	align	4
_bb_Tplayer:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_61
	dd	144
	dd	__bb_Tplayer_New
	dd	__bb_Tplayer_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_Tplayer_Create
	dd	__bb_Tplayer_update
	dd	__bb_Tplayer_display
_108:
	db	"Tilebase",0
_109:
	db	"vw",0
_110:
	db	"vh",0
_111:
	db	"speed",0
_112:
	db	"gw",0
_113:
	db	"gh",0
_114:
	db	"(f)i",0
	align	4
_107:
	dd	2
	dd	_108
	dd	3
	dd	_69
	dd	_70
	dd	8
	dd	3
	dd	_71
	dd	_70
	dd	12
	dd	3
	dd	_109
	dd	_70
	dd	16
	dd	3
	dd	_110
	dd	_70
	dd	20
	dd	3
	dd	_111
	dd	_70
	dd	24
	dd	3
	dd	_50
	dd	_51
	dd	28
	dd	3
	dd	_112
	dd	_46
	dd	32
	dd	3
	dd	_113
	dd	_46
	dd	36
	dd	6
	dd	_52
	dd	_53
	dd	16
	dd	6
	dd	_54
	dd	_53
	dd	20
	dd	6
	dd	_58
	dd	_114
	dd	48
	dd	6
	dd	_59
	dd	_53
	dd	52
	dd	0
	align	4
_bb_Tilebase:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_107
	dd	40
	dd	__bb_Tilebase_New
	dd	__bb_Tilebase_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_brl_blitz_NullMethodError
	dd	_brl_blitz_NullMethodError
_116:
	db	"TileRow",0
_117:
	db	"(f,f,f,:brl.max2d.TImage):TileRow",0
	align	4
_115:
	dd	2
	dd	_116
	dd	6
	dd	_52
	dd	_53
	dd	16
	dd	6
	dd	_54
	dd	_53
	dd	20
	dd	7
	dd	_55
	dd	_117
	dd	56
	dd	6
	dd	_58
	dd	_114
	dd	48
	dd	6
	dd	_59
	dd	_53
	dd	52
	dd	0
	align	4
_bb_TileRow:
	dd	_bb_Tilebase
	dd	_bbObjectFree
	dd	_115
	dd	40
	dd	__bb_TileRow_New
	dd	__bb_TileRow_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TileRow_update
	dd	__bb_TileRow_display
	dd	__bb_TileRow_Create
_119:
	db	"tileRotate",0
_120:
	db	"(f,f,f,:brl.max2d.TImage):TileRotate",0
	align	4
_118:
	dd	2
	dd	_119
	dd	6
	dd	_52
	dd	_53
	dd	16
	dd	6
	dd	_54
	dd	_53
	dd	20
	dd	7
	dd	_55
	dd	_120
	dd	56
	dd	6
	dd	_58
	dd	_114
	dd	48
	dd	6
	dd	_59
	dd	_53
	dd	52
	dd	0
	align	4
_bb_tileRotate:
	dd	_bb_Tilebase
	dd	_bbObjectFree
	dd	_118
	dd	40
	dd	__bb_tileRotate_New
	dd	__bb_tileRotate_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_tileRotate_update
	dd	__bb_tileRotate_display
	dd	__bb_tileRotate_Create
_226:
	db	"C:/Users/Jesus/Desktop/SOB/SOBOO.bmx",0
	align	4
_225:
	dd	_226
	dd	500
	dd	6
	align	4
_228:
	dd	0
	align	4
__bb_TBackground_list:
	dd	_bbNullObject
_122:
	db	"TBackground",0
_123:
	db	"():TbackGround",0
	align	4
_121:
	dd	2
	dd	_122
	dd	6
	dd	_52
	dd	_53
	dd	16
	dd	6
	dd	_54
	dd	_53
	dd	20
	dd	7
	dd	_55
	dd	_123
	dd	48
	dd	7
	dd	_58
	dd	_114
	dd	52
	dd	7
	dd	_59
	dd	_53
	dd	56
	dd	0
	align	4
_bb_TBackground:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_121
	dd	8
	dd	__bb_TBackground_New
	dd	__bb_TBackground_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TBackground_Create
	dd	__bb_TBackground_update
	dd	__bb_TBackground_display
	align	4
_230:
	dd	_226
	dd	4
	dd	1
	align	4
_233:
	dd	_226
	dd	6
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,92,98,103,100,49,95,99,105,101,108,46
	dw	112,110,103
	align	4
_236:
	dd	_226
	dd	7
	dd	1
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	109,101,100,105,97,92,98,103,100,50,95,109,111,110,116,97
	dw	103,110,101,115,46,80,78,71
	align	4
_239:
	dd	_226
	dd	8
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,92,98,103,100,51,95,115,111,108,49,46
	dw	112,110,103
	align	4
_242:
	dd	_226
	dd	9
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,92,98,103,100,52,95,115,111,108,50,46
	dw	112,110,103
	align	4
_245:
	dd	_226
	dd	10
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,92,98,103,100,53,95,115,111,108,51,46
	dw	112,110,103
	align	4
_248:
	dd	_226
	dd	11
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	109,101,100,105,97,92,115,112,114,105,116,101,95,98,97,114
	dw	114,105,101,114,101,46,98,109,112
	align	4
_251:
	dd	_226
	dd	14
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	109,101,100,105,97,92,115,112,114,105,116,101,95,110,117,97
	dw	103,101,115,49,46,98,109,112
	align	4
_254:
	dd	_226
	dd	15
	dd	1
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	109,101,100,105,97,92,115,112,114,105,116,101,95,110,117,97
	dw	103,101,115,50,46,98,109,112
	align	4
_257:
	dd	_226
	dd	16
	dd	1
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	109,101,100,105,97,92,115,112,114,105,116,101,95,110,117,97
	dw	103,101,115,51,46,98,109,112
	align	4
_260:
	dd	_226
	dd	17
	dd	1
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	109,101,100,105,97,92,115,112,114,105,116,101,95,110,117,97
	dw	103,101,115,52,46,98,109,112
	align	4
_263:
	dd	_226
	dd	19
	dd	1
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	109,101,100,105,97,92,115,99,114,111,108,108,116,114,101,101
	dw	46,112,110,103
	align	4
_266:
	dd	_226
	dd	21
	dd	1
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,92,115,111,98,115,112,114,105,116,101,46
	dw	112,110,103
	align	4
_269:
	dd	_226
	dd	22
	dd	1
	align	4
_272:
	dd	_226
	dd	23
	dd	1
	align	4
_275:
	dd	_226
	dd	24
	dd	1
	align	4
_278:
	dd	_226
	dd	25
	dd	1
	align	4
_281:
	dd	_226
	dd	26
	dd	1
	align	4
_284:
	dd	_226
	dd	27
	dd	1
	align	4
_287:
	dd	_226
	dd	28
	dd	1
	align	4
_290:
	dd	_226
	dd	29
	dd	1
	align	4
_293:
	dd	_226
	dd	30
	dd	1
	align	4
_296:
	dd	_226
	dd	31
	dd	1
	align	4
_299:
	dd	_226
	dd	32
	dd	1
	align	4
_302:
	dd	_226
	dd	33
	dd	1
	align	4
_305:
	dd	_226
	dd	34
	dd	1
	align	4
_308:
	dd	_226
	dd	35
	dd	1
	align	4
_311:
	dd	_226
	dd	36
	dd	1
	align	4
_314:
	dd	_226
	dd	37
	dd	1
	align	4
_317:
	dd	_226
	dd	38
	dd	1
	align	4
_320:
	dd	_226
	dd	39
	dd	1
	align	4
_323:
	dd	_226
	dd	40
	dd	1
	align	4
_325:
	dd	0
	align	4
_327:
	dd	_226
	dd	41
	dd	1
	align	4
_330:
	dd	_226
	dd	42
	dd	1
	align	4
_333:
	dd	_226
	dd	43
	dd	1
	align	4
_336:
	dd	_226
	dd	44
	dd	1
	align	4
_339:
	dd	_226
	dd	45
	dd	1
	align	4
_342:
	dd	_226
	dd	47
	dd	1
	align	4
_345:
	dd	3
	dd	0
	dd	0
	align	4
_344:
	dd	_226
	dd	47
	dd	34
	align	4
_346:
	dd	_226
	dd	533
	dd	1
	align	4
_347:
	dd	_226
	dd	534
	dd	1
	align	4
_348:
	dd	_226
	dd	536
	dd	1
	align	4
_349:
	dd	_226
	dd	537
	dd	1
	align	4
_351:
	dd	_226
	dd	549
	dd	1
_369:
	db	"dirx",0
_370:
	db	"diry",0
_371:
	db	"action",0
	align	4
_368:
	dd	3
	dd	0
	dd	2
	dd	_369
	dd	_70
	dd	-8
	dd	2
	dd	_370
	dd	_70
	dd	-12
	dd	2
	dd	_371
	dd	_46
	dd	-16
	dd	0
	align	4
_352:
	dd	_226
	dd	540
	dd	7
	align	4
_353:
	dd	_226
	dd	541
	dd	2
	align	4
_355:
	dd	_226
	dd	542
	dd	2
	align	4
_357:
	dd	_226
	dd	543
	dd	2
	align	4
_359:
	dd	_226
	dd	544
	dd	2
	align	4
_362:
	dd	_226
	dd	545
	dd	7
	align	4
_363:
	dd	_226
	dd	546
	dd	2
	align	4
_364:
	dd	_226
	dd	547
	dd	2
	align	4
_367:
	dd	_226
	dd	548
	dd	6
_419:
	db	"Self",0
	align	4
_418:
	dd	1
	dd	_52
	dd	2
	dd	_419
	dd	_75
	dd	-4
	dd	0
	align	4
_417:
	dd	3
	dd	0
	dd	0
_451:
	db	"s",0
	align	4
_450:
	dd	1
	dd	_55
	dd	2
	dd	_50
	dd	_51
	dd	-4
	dd	2
	dd	_47
	dd	_46
	dd	-8
	dd	2
	dd	_49
	dd	_46
	dd	-12
	dd	2
	dd	_45
	dd	_46
	dd	-16
	dd	2
	dd	_451
	dd	_75
	dd	-20
	dd	0
	align	4
_423:
	dd	_226
	dd	58
	dd	3
	align	4
_425:
	dd	_226
	dd	59
	dd	3
	align	4
_429:
	dd	_226
	dd	60
	dd	3
	align	4
_433:
	dd	_226
	dd	61
	dd	3
	align	4
_437:
	dd	_226
	dd	62
	dd	3
	align	4
_441:
	dd	_226
	dd	63
	dd	3
	align	4
_449:
	dd	_226
	dd	64
	dd	3
	align	4
_467:
	dd	1
	dd	_57
	dd	2
	dd	_419
	dd	_75
	dd	-4
	dd	0
	align	4
_452:
	dd	_226
	dd	68
	dd	3
	align	4
_466:
	dd	3
	dd	0
	dd	0
	align	4
_456:
	dd	_226
	dd	69
	dd	4
	align	4
_460:
	dd	_226
	dd	70
	dd	4
	align	4
_499:
	dd	1
	dd	_58
	dd	2
	dd	_419
	dd	_75
	dd	-4
	dd	0
	align	4
_468:
	dd	_226
	dd	75
	dd	3
	align	4
_497:
	dd	3
	dd	0
	dd	0
	align	4
_472:
	dd	_226
	dd	76
	dd	4
	align	4
_496:
	dd	3
	dd	0
	dd	0
	align	4
_476:
	dd	_226
	dd	77
	dd	5
	align	4
_484:
	dd	_226
	dd	78
	dd	5
	align	4
_490:
	dd	_226
	dd	79
	dd	5
	align	4
_495:
	dd	3
	dd	0
	dd	0
	align	4
_494:
	dd	_226
	dd	79
	dd	18
	align	4
_498:
	dd	_226
	dd	82
	dd	3
	align	4
_507:
	dd	1
	dd	_59
	dd	2
	dd	_419
	dd	_75
	dd	-4
	dd	2
	dd	_69
	dd	_70
	dd	-8
	dd	2
	dd	_71
	dd	_70
	dd	-12
	dd	0
	align	4
_500:
	dd	_226
	dd	86
	dd	3
	align	4
_501:
	dd	_226
	dd	87
	dd	3
	align	4
_506:
	dd	_226
	dd	88
	dd	3
	align	4
_537:
	dd	1
	dd	_52
	dd	2
	dd	_419
	dd	_413
	dd	-4
	dd	0
	align	4
_536:
	dd	3
	dd	0
	dd	0
_829:
	db	"p",0
	align	4
_828:
	dd	1
	dd	_55
	dd	2
	dd	_69
	dd	_70
	dd	-4
	dd	2
	dd	_71
	dd	_70
	dd	-8
	dd	2
	dd	_829
	dd	_413
	dd	-12
	dd	0
	align	4
_595:
	dd	_226
	dd	136
	dd	3
	align	4
_597:
	dd	_226
	dd	137
	dd	3
	align	4
_601:
	dd	_226
	dd	138
	dd	3
	align	4
_605:
	dd	_226
	dd	139
	dd	3
	align	4
_609:
	dd	_226
	dd	140
	dd	3
	align	4
_617:
	dd	_226
	dd	141
	dd	3
	align	4
_625:
	dd	_226
	dd	142
	dd	3
	align	4
_633:
	dd	_226
	dd	143
	dd	3
	align	4
_641:
	dd	_226
	dd	144
	dd	3
	align	4
_649:
	dd	_226
	dd	145
	dd	3
	align	4
_657:
	dd	_226
	dd	146
	dd	3
	align	4
_665:
	dd	_226
	dd	147
	dd	3
	align	4
_673:
	dd	_226
	dd	148
	dd	3
	align	4
_681:
	dd	_226
	dd	149
	dd	3
	align	4
_689:
	dd	_226
	dd	150
	dd	3
	align	4
_697:
	dd	_226
	dd	151
	dd	3
	align	4
_705:
	dd	_226
	dd	152
	dd	3
	align	4
_713:
	dd	_226
	dd	153
	dd	3
	align	4
_721:
	dd	_226
	dd	154
	dd	3
	align	4
_729:
	dd	_226
	dd	155
	dd	3
	align	4
_737:
	dd	_226
	dd	156
	dd	3
	align	4
_745:
	dd	_226
	dd	157
	dd	3
	align	4
_753:
	dd	_226
	dd	158
	dd	3
	align	4
_761:
	dd	_226
	dd	159
	dd	3
	align	4
_769:
	dd	_226
	dd	160
	dd	3
	align	4
_777:
	dd	_226
	dd	161
	dd	3
	align	4
_785:
	dd	_226
	dd	162
	dd	3
	align	4
_793:
	dd	_226
	dd	163
	dd	3
	align	4
_801:
	dd	_226
	dd	164
	dd	3
	align	4
_809:
	dd	_226
	dd	165
	dd	3
	align	4
_817:
	dd	_226
	dd	167
	dd	3
	align	4
_827:
	dd	_226
	dd	168
	dd	3
	align	4
_2372:
	dd	1
	dd	_58
	dd	2
	dd	_419
	dd	_413
	dd	-4
	dd	5
	dd	_369
	dd	_70
	dd	-8
	dd	5
	dd	_370
	dd	_70
	dd	-12
	dd	2
	dd	_371
	dd	_46
	dd	-16
	dd	0
	align	4
_830:
	dd	_226
	dd	172
	dd	3
	align	4
_1026:
	dd	3
	dd	0
	dd	0
	align	4
_913:
	dd	_226
	dd	174
	dd	5
	align	4
_935:
	dd	3
	dd	0
	dd	0
	align	4
_915:
	dd	_226
	dd	175
	dd	6
	align	4
_925:
	dd	_226
	dd	175
	dd	26
	align	4
_930:
	dd	_226
	dd	175
	dd	44
	align	4
_934:
	dd	_226
	dd	175
	dd	58
	align	4
_1025:
	dd	3
	dd	0
	dd	0
	align	4
_937:
	dd	_226
	dd	176
	dd	5
	align	4
_955:
	dd	3
	dd	0
	dd	0
	align	4
_939:
	dd	_226
	dd	177
	dd	6
	align	4
_949:
	dd	_226
	dd	177
	dd	27
	align	4
_954:
	dd	_226
	dd	177
	dd	45
	align	4
_1024:
	dd	3
	dd	0
	dd	0
	align	4
_957:
	dd	_226
	dd	178
	dd	5
	align	4
_2740:
	dd	0xbf800000
	align	4
_982:
	dd	3
	dd	0
	dd	0
	align	4
_959:
	dd	_226
	dd	179
	dd	6
	align	4
_969:
	dd	_226
	dd	179
	dd	24
	align	4
_974:
	dd	_226
	dd	179
	dd	42
	align	4
_978:
	dd	_226
	dd	179
	dd	54
	align	4
_1023:
	dd	3
	dd	0
	dd	0
	align	4
_984:
	dd	_226
	dd	180
	dd	5
	align	4
_1002:
	dd	3
	dd	0
	dd	0
	align	4
_986:
	dd	_226
	dd	181
	dd	6
	align	4
_996:
	dd	_226
	dd	181
	dd	24
	align	4
_1001:
	dd	_226
	dd	181
	dd	42
	align	4
_1022:
	dd	3
	dd	0
	dd	0
	align	4
_1004:
	dd	_226
	dd	182
	dd	5
	align	4
_2741:
	dd	0xbf800000
	align	4
_1021:
	dd	3
	dd	0
	dd	0
	align	4
_1006:
	dd	_226
	dd	183
	dd	6
	align	4
_1016:
	dd	_226
	dd	183
	dd	24
	align	4
_1135:
	dd	3
	dd	0
	dd	0
	align	4
_1027:
	dd	_226
	dd	186
	dd	5
	align	4
_1049:
	dd	3
	dd	0
	dd	0
	align	4
_1029:
	dd	_226
	dd	187
	dd	6
	align	4
_1039:
	dd	_226
	dd	187
	dd	26
	align	4
_1044:
	dd	_226
	dd	187
	dd	44
	align	4
_1048:
	dd	_226
	dd	187
	dd	57
	align	4
_1134:
	dd	3
	dd	0
	dd	0
	align	4
_1051:
	dd	_226
	dd	188
	dd	5
	align	4
_1069:
	dd	3
	dd	0
	dd	0
	align	4
_1053:
	dd	_226
	dd	189
	dd	6
	align	4
_1063:
	dd	_226
	dd	189
	dd	27
	align	4
_1068:
	dd	_226
	dd	189
	dd	45
	align	4
_1133:
	dd	3
	dd	0
	dd	0
	align	4
_1071:
	dd	_226
	dd	190
	dd	5
	align	4
_2742:
	dd	0xbf800000
	align	4
_1096:
	dd	3
	dd	0
	dd	0
	align	4
_1073:
	dd	_226
	dd	191
	dd	6
	align	4
_1083:
	dd	_226
	dd	191
	dd	24
	align	4
_1088:
	dd	_226
	dd	191
	dd	42
	align	4
_1092:
	dd	_226
	dd	191
	dd	54
	align	4
_1132:
	dd	3
	dd	0
	dd	0
	align	4
_1098:
	dd	_226
	dd	192
	dd	5
	align	4
_2743:
	dd	0xbf800000
	align	4
_1111:
	dd	3
	dd	0
	dd	0
	align	4
_1100:
	dd	_226
	dd	193
	dd	6
	align	4
_1110:
	dd	_226
	dd	193
	dd	24
	align	4
_1131:
	dd	3
	dd	0
	dd	0
	align	4
_1113:
	dd	_226
	dd	194
	dd	5
	align	4
_1130:
	dd	3
	dd	0
	dd	0
	align	4
_1115:
	dd	_226
	dd	195
	dd	6
	align	4
_1125:
	dd	_226
	dd	195
	dd	24
	align	4
_1197:
	dd	3
	dd	0
	dd	0
	align	4
_1136:
	dd	_226
	dd	198
	dd	5
	align	4
_1193:
	dd	3
	dd	0
	dd	0
	align	4
_1142:
	dd	_226
	dd	199
	dd	6
	align	4
_1160:
	dd	3
	dd	0
	dd	0
	align	4
_1144:
	dd	_226
	dd	200
	dd	7
	align	4
_1154:
	dd	_226
	dd	200
	dd	25
	align	4
_1159:
	dd	_226
	dd	200
	dd	43
	align	4
_1192:
	dd	3
	dd	0
	dd	0
	align	4
_1162:
	dd	_226
	dd	201
	dd	6
	align	4
_2744:
	dd	0xbf800000
	align	4
_1179:
	dd	3
	dd	0
	dd	0
	align	4
_1164:
	dd	_226
	dd	202
	dd	7
	align	4
_1174:
	dd	_226
	dd	202
	dd	25
	align	4
_1191:
	dd	3
	dd	0
	dd	0
	align	4
_1181:
	dd	_226
	dd	204
	dd	7
	align	4
_1196:
	dd	3
	dd	0
	dd	0
	align	4
_1195:
	dd	_226
	dd	207
	dd	6
	align	4
_1259:
	dd	3
	dd	0
	dd	0
	align	4
_1198:
	dd	_226
	dd	210
	dd	5
	align	4
_1255:
	dd	3
	dd	0
	dd	0
	align	4
_1204:
	dd	_226
	dd	211
	dd	6
	align	4
_2745:
	dd	0xbf800000
	align	4
_1222:
	dd	3
	dd	0
	dd	0
	align	4
_1206:
	dd	_226
	dd	212
	dd	7
	align	4
_1216:
	dd	_226
	dd	212
	dd	25
	align	4
_1221:
	dd	_226
	dd	213
	dd	7
	align	4
_1254:
	dd	3
	dd	0
	dd	0
	align	4
_1224:
	dd	_226
	dd	214
	dd	6
	align	4
_1241:
	dd	3
	dd	0
	dd	0
	align	4
_1226:
	dd	_226
	dd	215
	dd	7
	align	4
_1236:
	dd	_226
	dd	215
	dd	25
	align	4
_1253:
	dd	3
	dd	0
	dd	0
	align	4
_1243:
	dd	_226
	dd	217
	dd	7
	align	4
_1258:
	dd	3
	dd	0
	dd	0
	align	4
_1257:
	dd	_226
	dd	220
	dd	6
	align	4
_1375:
	dd	3
	dd	0
	dd	0
	align	4
_1260:
	dd	_226
	dd	223
	dd	5
	align	4
_1282:
	dd	3
	dd	0
	dd	0
	align	4
_1262:
	dd	_226
	dd	224
	dd	6
	align	4
_1272:
	dd	_226
	dd	224
	dd	26
	align	4
_1277:
	dd	_226
	dd	224
	dd	44
	align	4
_1281:
	dd	_226
	dd	225
	dd	6
	align	4
_1374:
	dd	3
	dd	0
	dd	0
	align	4
_1284:
	dd	_226
	dd	226
	dd	5
	align	4
_1302:
	dd	3
	dd	0
	dd	0
	align	4
_1286:
	dd	_226
	dd	227
	dd	6
	align	4
_1296:
	dd	_226
	dd	227
	dd	27
	align	4
_1301:
	dd	_226
	dd	227
	dd	45
	align	4
_1373:
	dd	3
	dd	0
	dd	0
	align	4
_1304:
	dd	_226
	dd	228
	dd	5
	align	4
_2746:
	dd	0xbf800000
	align	4
_1329:
	dd	3
	dd	0
	dd	0
	align	4
_1306:
	dd	_226
	dd	229
	dd	6
	align	4
_1316:
	dd	_226
	dd	229
	dd	24
	align	4
_1321:
	dd	_226
	dd	229
	dd	42
	align	4
_1325:
	dd	_226
	dd	229
	dd	52
	align	4
_1372:
	dd	3
	dd	0
	dd	0
	align	4
_1331:
	dd	_226
	dd	230
	dd	5
	align	4
_1349:
	dd	3
	dd	0
	dd	0
	align	4
_1333:
	dd	_226
	dd	231
	dd	6
	align	4
_1343:
	dd	_226
	dd	231
	dd	24
	align	4
_1348:
	dd	_226
	dd	231
	dd	42
	align	4
_1371:
	dd	3
	dd	0
	dd	0
	align	4
_1351:
	dd	_226
	dd	232
	dd	5
	align	4
_2747:
	dd	0xbf800000
	align	4
_1358:
	dd	3
	dd	0
	dd	0
	align	4
_1353:
	dd	_226
	dd	233
	dd	6
	align	4
_1370:
	dd	3
	dd	0
	dd	0
	align	4
_1360:
	dd	_226
	dd	235
	dd	6
	align	4
_1491:
	dd	3
	dd	0
	dd	0
	align	4
_1376:
	dd	_226
	dd	238
	dd	5
	align	4
_1398:
	dd	3
	dd	0
	dd	0
	align	4
_1378:
	dd	_226
	dd	239
	dd	6
	align	4
_1388:
	dd	_226
	dd	239
	dd	26
	align	4
_1393:
	dd	_226
	dd	239
	dd	44
	align	4
_1397:
	dd	_226
	dd	239
	dd	58
	align	4
_1490:
	dd	3
	dd	0
	dd	0
	align	4
_1400:
	dd	_226
	dd	240
	dd	5
	align	4
_1418:
	dd	3
	dd	0
	dd	0
	align	4
_1402:
	dd	_226
	dd	241
	dd	6
	align	4
_1412:
	dd	_226
	dd	241
	dd	27
	align	4
_1417:
	dd	_226
	dd	241
	dd	45
	align	4
_1489:
	dd	3
	dd	0
	dd	0
	align	4
_1420:
	dd	_226
	dd	242
	dd	5
	align	4
_2748:
	dd	0xbf800000
	align	4
_1445:
	dd	3
	dd	0
	dd	0
	align	4
_1422:
	dd	_226
	dd	243
	dd	6
	align	4
_1432:
	dd	_226
	dd	243
	dd	24
	align	4
_1437:
	dd	_226
	dd	243
	dd	42
	align	4
_1441:
	dd	_226
	dd	243
	dd	54
	align	4
_1488:
	dd	3
	dd	0
	dd	0
	align	4
_1447:
	dd	_226
	dd	244
	dd	5
	align	4
_2749:
	dd	0xbf800000
	align	4
_1465:
	dd	3
	dd	0
	dd	0
	align	4
_1449:
	dd	_226
	dd	245
	dd	6
	align	4
_1459:
	dd	_226
	dd	245
	dd	24
	align	4
_1464:
	dd	_226
	dd	245
	dd	42
	align	4
_1487:
	dd	3
	dd	0
	dd	0
	align	4
_1467:
	dd	_226
	dd	246
	dd	5
	align	4
_1474:
	dd	3
	dd	0
	dd	0
	align	4
_1469:
	dd	_226
	dd	247
	dd	6
	align	4
_1486:
	dd	3
	dd	0
	dd	0
	align	4
_1476:
	dd	_226
	dd	249
	dd	6
	align	4
_1515:
	dd	3
	dd	0
	dd	0
	align	4
_1492:
	dd	_226
	dd	252
	dd	5
	align	4
_1513:
	dd	3
	dd	0
	dd	0
	align	4
_1498:
	dd	_226
	dd	252
	dd	32
	align	4
_1508:
	dd	_226
	dd	252
	dd	51
	align	4
_1514:
	dd	_226
	dd	253
	dd	5
	align	4
_1539:
	dd	3
	dd	0
	dd	0
	align	4
_1516:
	dd	_226
	dd	255
	dd	5
	align	4
_1537:
	dd	3
	dd	0
	dd	0
	align	4
_1522:
	dd	_226
	dd	255
	dd	32
	align	4
_1532:
	dd	_226
	dd	255
	dd	51
	align	4
_1538:
	dd	_226
	dd	256
	dd	5
	align	4
_1568:
	dd	3
	dd	0
	dd	0
	align	4
_1540:
	dd	_226
	dd	258
	dd	5
	align	4
_1566:
	dd	3
	dd	0
	dd	0
	align	4
_1542:
	dd	_226
	dd	259
	dd	6
	align	4
_1552:
	dd	_226
	dd	259
	dd	26
	align	4
_1557:
	dd	_226
	dd	260
	dd	6
	align	4
_1565:
	dd	3
	dd	0
	dd	0
	align	4
_1561:
	dd	_226
	dd	263
	dd	7
	align	4
_1567:
	dd	_226
	dd	266
	dd	5
	align	4
_1597:
	dd	3
	dd	0
	dd	0
	align	4
_1569:
	dd	_226
	dd	268
	dd	5
	align	4
_1595:
	dd	3
	dd	0
	dd	0
	align	4
_1571:
	dd	_226
	dd	269
	dd	6
	align	4
_1581:
	dd	_226
	dd	269
	dd	26
	align	4
_1586:
	dd	_226
	dd	270
	dd	6
	align	4
_1594:
	dd	3
	dd	0
	dd	0
	align	4
_1590:
	dd	_226
	dd	273
	dd	7
	align	4
_1596:
	dd	_226
	dd	276
	dd	5
	align	4
_1680:
	dd	3
	dd	0
	dd	0
	align	4
_1598:
	dd	_226
	dd	278
	dd	5
	align	4
_1676:
	dd	3
	dd	0
	dd	0
	align	4
_1604:
	dd	_226
	dd	279
	dd	6
	align	4
_1622:
	dd	3
	dd	0
	dd	0
	align	4
_1606:
	dd	_226
	dd	280
	dd	7
	align	4
_1616:
	dd	_226
	dd	280
	dd	27
	align	4
_1621:
	dd	_226
	dd	280
	dd	45
	align	4
_1675:
	dd	3
	dd	0
	dd	0
	align	4
_1624:
	dd	_226
	dd	281
	dd	6
	align	4
_2750:
	dd	0xbf800000
	align	4
_1642:
	dd	3
	dd	0
	dd	0
	align	4
_1626:
	dd	_226
	dd	282
	dd	7
	align	4
_1636:
	dd	_226
	dd	282
	dd	25
	align	4
_1641:
	dd	_226
	dd	282
	dd	43
	align	4
_1674:
	dd	3
	dd	0
	dd	0
	align	4
_1644:
	dd	_226
	dd	283
	dd	6
	align	4
_1661:
	dd	3
	dd	0
	dd	0
	align	4
_1646:
	dd	_226
	dd	284
	dd	7
	align	4
_1656:
	dd	_226
	dd	284
	dd	25
	align	4
_1673:
	dd	3
	dd	0
	dd	0
	align	4
_1663:
	dd	_226
	dd	286
	dd	7
	align	4
_1679:
	dd	3
	dd	0
	dd	0
	align	4
_1678:
	dd	_226
	dd	289
	dd	6
	align	4
_1763:
	dd	3
	dd	0
	dd	0
	align	4
_1681:
	dd	_226
	dd	292
	dd	5
	align	4
_1759:
	dd	3
	dd	0
	dd	0
	align	4
_1687:
	dd	_226
	dd	293
	dd	6
	align	4
_1705:
	dd	3
	dd	0
	dd	0
	align	4
_1689:
	dd	_226
	dd	294
	dd	7
	align	4
_1699:
	dd	_226
	dd	294
	dd	27
	align	4
_1704:
	dd	_226
	dd	294
	dd	45
	align	4
_1758:
	dd	3
	dd	0
	dd	0
	align	4
_1707:
	dd	_226
	dd	295
	dd	6
	align	4
_1725:
	dd	3
	dd	0
	dd	0
	align	4
_1709:
	dd	_226
	dd	296
	dd	7
	align	4
_1719:
	dd	_226
	dd	296
	dd	25
	align	4
_1724:
	dd	_226
	dd	296
	dd	43
	align	4
_1757:
	dd	3
	dd	0
	dd	0
	align	4
_1727:
	dd	_226
	dd	297
	dd	6
	align	4
_2751:
	dd	0xbf800000
	align	4
_1744:
	dd	3
	dd	0
	dd	0
	align	4
_1729:
	dd	_226
	dd	298
	dd	7
	align	4
_1739:
	dd	_226
	dd	298
	dd	25
	align	4
_1756:
	dd	3
	dd	0
	dd	0
	align	4
_1746:
	dd	_226
	dd	300
	dd	7
	align	4
_1762:
	dd	3
	dd	0
	dd	0
	align	4
_1761:
	dd	_226
	dd	303
	dd	6
	align	4
_1787:
	dd	3
	dd	0
	dd	0
	align	4
_1764:
	dd	_226
	dd	306
	dd	5
	align	4
_1785:
	dd	3
	dd	0
	dd	0
	align	4
_1770:
	dd	_226
	dd	306
	dd	32
	align	4
_1780:
	dd	_226
	dd	306
	dd	53
	align	4
_1786:
	dd	_226
	dd	307
	dd	5
	align	4
_1811:
	dd	3
	dd	0
	dd	0
	align	4
_1788:
	dd	_226
	dd	310
	dd	5
	align	4
_1809:
	dd	3
	dd	0
	dd	0
	align	4
_1794:
	dd	_226
	dd	310
	dd	32
	align	4
_1804:
	dd	_226
	dd	310
	dd	53
	align	4
_1810:
	dd	_226
	dd	311
	dd	5
	align	4
_1855:
	dd	3
	dd	0
	dd	0
	align	4
_1812:
	dd	_226
	dd	313
	dd	5
	align	4
_1833:
	dd	3
	dd	0
	dd	0
	align	4
_1814:
	dd	_226
	dd	314
	dd	6
	align	4
_1824:
	dd	_226
	dd	314
	dd	31
	align	4
_1829:
	dd	_226
	dd	314
	dd	49
	align	4
_1853:
	dd	3
	dd	0
	dd	0
	align	4
_1835:
	dd	_226
	dd	315
	dd	5
	align	4
_1852:
	dd	3
	dd	0
	dd	0
	align	4
_1837:
	dd	_226
	dd	316
	dd	6
	align	4
_1847:
	dd	_226
	dd	316
	dd	27
	align	4
_1854:
	dd	_226
	dd	318
	dd	5
	align	4
_1895:
	dd	3
	dd	0
	dd	0
	align	4
_1856:
	dd	_226
	dd	320
	dd	5
	align	4
_1873:
	dd	3
	dd	0
	dd	0
	align	4
_1858:
	dd	_226
	dd	321
	dd	6
	align	4
_1868:
	dd	_226
	dd	321
	dd	32
	align	4
_1893:
	dd	3
	dd	0
	dd	0
	align	4
_1875:
	dd	_226
	dd	322
	dd	5
	align	4
_1892:
	dd	3
	dd	0
	dd	0
	align	4
_1877:
	dd	_226
	dd	323
	dd	6
	align	4
_1887:
	dd	_226
	dd	323
	dd	28
	align	4
_1894:
	dd	_226
	dd	325
	dd	5
	align	4
_1919:
	dd	3
	dd	0
	dd	0
	align	4
_1896:
	dd	_226
	dd	328
	dd	5
	align	4
_1917:
	dd	3
	dd	0
	dd	0
	align	4
_1902:
	dd	_226
	dd	328
	dd	32
	align	4
_1912:
	dd	_226
	dd	328
	dd	51
	align	4
_1918:
	dd	_226
	dd	329
	dd	5
	align	4
_1943:
	dd	3
	dd	0
	dd	0
	align	4
_1920:
	dd	_226
	dd	331
	dd	5
	align	4
_1941:
	dd	3
	dd	0
	dd	0
	align	4
_1926:
	dd	_226
	dd	331
	dd	32
	align	4
_1936:
	dd	_226
	dd	331
	dd	51
	align	4
_1942:
	dd	_226
	dd	332
	dd	5
	align	4
_1967:
	dd	3
	dd	0
	dd	0
	align	4
_1944:
	dd	_226
	dd	334
	dd	5
	align	4
_1965:
	dd	3
	dd	0
	dd	0
	align	4
_1950:
	dd	_226
	dd	334
	dd	32
	align	4
_1960:
	dd	_226
	dd	334
	dd	57
	align	4
_1966:
	dd	_226
	dd	335
	dd	5
	align	4
_1991:
	dd	3
	dd	0
	dd	0
	align	4
_1968:
	dd	_226
	dd	337
	dd	5
	align	4
_1989:
	dd	3
	dd	0
	dd	0
	align	4
_1974:
	dd	_226
	dd	337
	dd	32
	align	4
_1984:
	dd	_226
	dd	337
	dd	57
	align	4
_1990:
	dd	_226
	dd	338
	dd	5
	align	4
_2022:
	dd	3
	dd	0
	dd	0
	align	4
_1992:
	dd	_226
	dd	340
	dd	5
	align	4
_2003:
	dd	3
	dd	0
	dd	0
	align	4
_1994:
	dd	_226
	dd	341
	dd	6
	align	4
_2002:
	dd	3
	dd	0
	dd	0
	align	4
_1998:
	dd	_226
	dd	343
	dd	7
	align	4
_2020:
	dd	3
	dd	0
	dd	0
	align	4
_2005:
	dd	_226
	dd	346
	dd	6
	align	4
_2015:
	dd	_226
	dd	346
	dd	31
	align	4
_2021:
	dd	_226
	dd	348
	dd	5
	align	4
_2051:
	dd	3
	dd	0
	dd	0
	align	4
_2023:
	dd	_226
	dd	350
	dd	5
	align	4
_2049:
	dd	3
	dd	0
	dd	0
	align	4
_2025:
	dd	_226
	dd	351
	dd	6
	align	4
_2033:
	dd	3
	dd	0
	dd	0
	align	4
_2029:
	dd	_226
	dd	353
	dd	7
	align	4
_2034:
	dd	_226
	dd	355
	dd	6
	align	4
_2044:
	dd	_226
	dd	355
	dd	31
	align	4
_2050:
	dd	_226
	dd	357
	dd	5
	align	4
_2075:
	dd	3
	dd	0
	dd	0
	align	4
_2052:
	dd	_226
	dd	359
	dd	5
	align	4
_2073:
	dd	3
	dd	0
	dd	0
	align	4
_2058:
	dd	_226
	dd	359
	dd	32
	align	4
_2068:
	dd	_226
	dd	359
	dd	53
	align	4
_2074:
	dd	_226
	dd	360
	dd	5
	align	4
_2099:
	dd	3
	dd	0
	dd	0
	align	4
_2076:
	dd	_226
	dd	362
	dd	5
	align	4
_2097:
	dd	3
	dd	0
	dd	0
	align	4
_2082:
	dd	_226
	dd	362
	dd	32
	align	4
_2092:
	dd	_226
	dd	362
	dd	53
	align	4
_2098:
	dd	_226
	dd	363
	dd	5
	align	4
_2235:
	dd	3
	dd	0
	dd	0
	align	4
_2100:
	dd	_226
	dd	365
	dd	5
	align	4
_2130:
	dd	3
	dd	0
	dd	0
	align	4
_2104:
	dd	_226
	dd	366
	dd	6
	align	4
_2752:
	dd	0xbf800000
	align	4
_2123:
	dd	3
	dd	0
	dd	0
	align	4
_2106:
	dd	_226
	dd	367
	dd	7
	align	4
_2753:
	dd	0x3f400000
	align	4
_2110:
	dd	_226
	dd	368
	dd	7
	align	4
_2754:
	dd	0x40c00000
	align	4
_2122:
	dd	3
	dd	0
	dd	0
	align	4
_2114:
	dd	_226
	dd	368
	dd	20
	align	4
_2755:
	dd	0x40c00000
	align	4
_2118:
	dd	_226
	dd	368
	dd	31
	align	4
_2129:
	dd	3
	dd	0
	dd	0
	align	4
_2125:
	dd	_226
	dd	370
	dd	7
	align	4
_2136:
	dd	3
	dd	0
	dd	0
	align	4
_2132:
	dd	_226
	dd	373
	dd	6
	align	4
_2756:
	dd	0x3e4ccccd
	align	4
_2137:
	dd	_226
	dd	375
	dd	5
	align	4
_2143:
	dd	_226
	dd	376
	dd	5
	align	4
_2214:
	dd	3
	dd	0
	dd	0
	align	4
_2149:
	dd	_226
	dd	377
	dd	6
	align	4
_2757:
	dd	0xbf800000
	align	4
_2166:
	dd	3
	dd	0
	dd	0
	align	4
_2151:
	dd	_226
	dd	378
	dd	7
	align	4
_2161:
	dd	_226
	dd	379
	dd	7
	align	4
_2203:
	dd	3
	dd	0
	dd	0
	align	4
_2168:
	dd	_226
	dd	380
	dd	6
	align	4
_2185:
	dd	3
	dd	0
	dd	0
	align	4
_2170:
	dd	_226
	dd	381
	dd	7
	align	4
_2180:
	dd	_226
	dd	382
	dd	7
	align	4
_2202:
	dd	3
	dd	0
	dd	0
	align	4
_2187:
	dd	_226
	dd	384
	dd	7
	align	4
_2197:
	dd	_226
	dd	385
	dd	7
	align	4
_2204:
	dd	_226
	dd	387
	dd	6
	align	4
_2208:
	dd	_226
	dd	388
	dd	6
	align	4
_2234:
	dd	3
	dd	0
	dd	0
	align	4
_2216:
	dd	_226
	dd	389
	dd	5
	align	4
_2233:
	dd	3
	dd	0
	dd	0
	align	4
_2218:
	dd	_226
	dd	390
	dd	6
	align	4
_2228:
	dd	_226
	dd	391
	dd	6
	align	4
_2371:
	dd	3
	dd	0
	dd	0
	align	4
_2236:
	dd	_226
	dd	395
	dd	5
	align	4
_2266:
	dd	3
	dd	0
	dd	0
	align	4
_2240:
	dd	_226
	dd	396
	dd	6
	align	4
_2758:
	dd	0xbf800000
	align	4
_2259:
	dd	3
	dd	0
	dd	0
	align	4
_2242:
	dd	_226
	dd	397
	dd	7
	align	4
_2759:
	dd	0x3f400000
	align	4
_2246:
	dd	_226
	dd	398
	dd	7
	align	4
_2760:
	dd	0x40c00000
	align	4
_2258:
	dd	3
	dd	0
	dd	0
	align	4
_2250:
	dd	_226
	dd	398
	dd	19
	align	4
_2761:
	dd	0x40c00000
	align	4
_2254:
	dd	_226
	dd	398
	dd	30
	align	4
_2265:
	dd	3
	dd	0
	dd	0
	align	4
_2261:
	dd	_226
	dd	400
	dd	7
	align	4
_2272:
	dd	3
	dd	0
	dd	0
	align	4
_2268:
	dd	_226
	dd	403
	dd	6
	align	4
_2762:
	dd	0x3e4ccccd
	align	4
_2273:
	dd	_226
	dd	405
	dd	5
	align	4
_2279:
	dd	_226
	dd	406
	dd	5
	align	4
_2350:
	dd	3
	dd	0
	dd	0
	align	4
_2285:
	dd	_226
	dd	407
	dd	6
	align	4
_2302:
	dd	3
	dd	0
	dd	0
	align	4
_2287:
	dd	_226
	dd	408
	dd	7
	align	4
_2297:
	dd	_226
	dd	409
	dd	7
	align	4
_2339:
	dd	3
	dd	0
	dd	0
	align	4
_2304:
	dd	_226
	dd	410
	dd	6
	align	4
_2763:
	dd	0xbf800000
	align	4
_2321:
	dd	3
	dd	0
	dd	0
	align	4
_2306:
	dd	_226
	dd	411
	dd	7
	align	4
_2316:
	dd	_226
	dd	412
	dd	7
	align	4
_2338:
	dd	3
	dd	0
	dd	0
	align	4
_2323:
	dd	_226
	dd	414
	dd	7
	align	4
_2333:
	dd	_226
	dd	415
	dd	7
	align	4
_2340:
	dd	_226
	dd	417
	dd	6
	align	4
_2344:
	dd	_226
	dd	418
	dd	6
	align	4
_2370:
	dd	3
	dd	0
	dd	0
	align	4
_2352:
	dd	_226
	dd	419
	dd	5
	align	4
_2764:
	dd	0xbf800000
	align	4
_2369:
	dd	3
	dd	0
	dd	0
	align	4
_2354:
	dd	_226
	dd	420
	dd	6
	align	4
_2364:
	dd	_226
	dd	421
	dd	6
	align	4
_2382:
	dd	1
	dd	_59
	dd	2
	dd	_419
	dd	_413
	dd	-4
	dd	0
	align	4
_2373:
	dd	_226
	dd	429
	dd	3
_2394:
	db	":Tilebase",0
	align	4
_2393:
	dd	1
	dd	_52
	dd	2
	dd	_419
	dd	_2394
	dd	-4
	dd	0
	align	4
_2392:
	dd	3
	dd	0
	dd	0
	align	4
_2384:
	dd	_226
	dd	446
	dd	3
	align	4
_2388:
	dd	_226
	dd	447
	dd	3
_2400:
	db	":TileRow",0
	align	4
_2399:
	dd	1
	dd	_52
	dd	2
	dd	_419
	dd	_2400
	dd	-4
	dd	0
	align	4
_2398:
	dd	3
	dd	0
	dd	0
_2438:
	db	"t",0
	align	4
_2437:
	dd	1
	dd	_55
	dd	2
	dd	_69
	dd	_70
	dd	-4
	dd	2
	dd	_71
	dd	_70
	dd	-8
	dd	2
	dd	_111
	dd	_70
	dd	-12
	dd	2
	dd	_50
	dd	_51
	dd	-16
	dd	2
	dd	_2438
	dd	_2400
	dd	-20
	dd	0
	align	4
_2402:
	dd	_226
	dd	457
	dd	3
	align	4
_2404:
	dd	_226
	dd	458
	dd	3
	align	4
_2408:
	dd	_226
	dd	459
	dd	3
	align	4
_2412:
	dd	_226
	dd	460
	dd	3
	align	4
_2418:
	dd	_226
	dd	461
	dd	3
	align	4
_2424:
	dd	_226
	dd	462
	dd	3
	align	4
_2428:
	dd	_226
	dd	463
	dd	3
	align	4
_2436:
	dd	_226
	dd	464
	dd	3
	align	4
_2451:
	dd	1
	dd	_58
	dd	2
	dd	_419
	dd	_2400
	dd	-4
	dd	2
	dd	_369
	dd	_70
	dd	-8
	dd	0
	align	4
_2439:
	dd	_226
	dd	468
	dd	3
	align	4
_2467:
	dd	1
	dd	_59
	dd	2
	dd	_419
	dd	_2400
	dd	-4
	dd	0
	align	4
_2452:
	dd	_226
	dd	472
	dd	3
	align	4
_2459:
	dd	_226
	dd	473
	dd	3
	align	4
_2466:
	dd	_226
	dd	474
	dd	3
_2470:
	db	":tileRotate",0
	align	4
_2469:
	dd	1
	dd	_52
	dd	2
	dd	_419
	dd	_2470
	dd	-4
	dd	0
	align	4
_2468:
	dd	3
	dd	0
	dd	0
_2496:
	db	"Image",0
	align	4
_2495:
	dd	1
	dd	_55
	dd	2
	dd	_69
	dd	_70
	dd	-4
	dd	2
	dd	_71
	dd	_70
	dd	-8
	dd	2
	dd	_111
	dd	_70
	dd	-12
	dd	2
	dd	_2496
	dd	_51
	dd	-16
	dd	2
	dd	_2438
	dd	_2470
	dd	-20
	dd	0
	align	4
_2472:
	dd	_226
	dd	481
	dd	3
	align	4
_2474:
	dd	_226
	dd	482
	dd	3
	align	4
_2478:
	dd	_226
	dd	483
	dd	3
	align	4
_2482:
	dd	_226
	dd	484
	dd	3
	align	4
_2486:
	dd	_226
	dd	485
	dd	3
	align	4
_2494:
	dd	_226
	dd	486
	dd	3
	align	4
_2543:
	dd	1
	dd	_58
	dd	2
	dd	_419
	dd	_2470
	dd	-4
	dd	2
	dd	_369
	dd	_70
	dd	-8
	dd	0
	align	4
_2497:
	dd	_226
	dd	490
	dd	3
	align	4
_2505:
	dd	_226
	dd	491
	dd	3
	align	4
_2523:
	dd	3
	dd	0
	dd	0
	align	4
_2515:
	dd	_226
	dd	491
	dd	35
	align	4
_2524:
	dd	_226
	dd	492
	dd	3
	align	4
_2542:
	dd	3
	dd	0
	dd	0
	align	4
_2536:
	dd	_226
	dd	492
	dd	43
	align	4
_2551:
	dd	1
	dd	_59
	dd	2
	dd	_419
	dd	_2470
	dd	-4
	dd	0
	align	4
_2544:
	dd	_226
	dd	495
	dd	3
_2554:
	db	":TBackground",0
	align	4
_2553:
	dd	1
	dd	_52
	dd	2
	dd	_419
	dd	_2554
	dd	-4
	dd	0
	align	4
_2552:
	dd	3
	dd	0
	dd	0
	align	4
_2589:
	dd	1
	dd	_55
	dd	0
	align	4
_2556:
	dd	_226
	dd	503
	dd	3
	align	4
_2559:
	dd	_226
	dd	504
	dd	11
	align	4
_2562:
	dd	_226
	dd	505
	dd	3
	align	4
_2565:
	dd	_226
	dd	506
	dd	3
	align	4
_2568:
	dd	_226
	dd	507
	dd	3
	align	4
_2571:
	dd	_226
	dd	508
	dd	11
	align	4
_2574:
	dd	_226
	dd	509
	dd	3
	align	4
_2577:
	dd	_226
	dd	510
	dd	3
	align	4
_2580:
	dd	_226
	dd	511
	dd	3
	align	4
_2583:
	dd	_226
	dd	512
	dd	3
	align	4
_2586:
	dd	_226
	dd	513
	dd	3
	align	4
_2604:
	dd	1
	dd	_58
	dd	2
	dd	_369
	dd	_70
	dd	-4
	dd	0
	align	4
_2590:
	dd	_226
	dd	518
	dd	3
	align	4
_2603:
	dd	3
	dd	0
	dd	2
	dd	_2438
	dd	_2394
	dd	-8
	dd	0
	align	4
_2600:
	dd	_226
	dd	519
	dd	4
	align	4
_2619:
	dd	1
	dd	_59
	dd	0
	align	4
_2605:
	dd	_226
	dd	524
	dd	3
	align	4
_2618:
	dd	3
	dd	0
	dd	2
	dd	_2438
	dd	_2394
	dd	-4
	dd	0
	align	4
_2615:
	dd	_226
	dd	525
	dd	4
