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
	extrn	_bbStringClass
	extrn	_brl_blitz_NullMethodError
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
	public	_bb_StandupleftImg
	public	_bb_TBackground
	public	_bb_T_list
	public	_bb_TileRow
	public	_bb_Tilebase
	public	_bb_Tplayer
	public	_bb_Tree
	public	_bb_Tsprite
	public	_bb_crouchRightImg
	public	_bb_crouchgunLeftimg
	public	_bb_crouchleftImg
	public	_bb_framesImg
	public	_bb_nealLeftpunchImg
	public	_bb_nealRightpunchImg
	public	_bb_punchLeftImg
	public	_bb_punchRightImg
	public	_bb_standinggunImg
	public	_bb_standupRightImg
	public	_bb_standupgunleft
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
	sub	esp,8
	push	ebx
	push	esi
	cmp	dword [_269],0
	je	_270
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_270:
	mov	dword [_269],1
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
	mov	eax,dword [_198]
	and	eax,1
	cmp	eax,0
	jne	_199
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TBackground_list],eax
	or	dword [_198],1
_199:
	push	_bb_TBackground
	call	_bbObjectRegisterType
	add	esp,4
	push	0
	push	60
	push	0
	push	480
	push	640
	call	_brl_graphics_Graphics
	add	esp,20
	mov	eax,dword [_198]
	and	eax,2
	cmp	eax,0
	jne	_201
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_T_list],eax
	or	dword [_198],2
_201:
	mov	eax,dword [_198]
	and	eax,4
	cmp	eax,0
	jne	_203
	push	-1
	push	_22
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Background1],eax
	or	dword [_198],4
_203:
	mov	eax,dword [_198]
	and	eax,8
	cmp	eax,0
	jne	_205
	push	-1
	push	_23
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Background2],eax
	or	dword [_198],8
_205:
	mov	eax,dword [_198]
	and	eax,16
	cmp	eax,0
	jne	_207
	push	-1
	push	_24
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Background3],eax
	or	dword [_198],16
_207:
	mov	eax,dword [_198]
	and	eax,32
	cmp	eax,0
	jne	_209
	push	-1
	push	_25
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Background4],eax
	or	dword [_198],32
_209:
	mov	eax,dword [_198]
	and	eax,64
	cmp	eax,0
	jne	_211
	push	-1
	push	_26
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Background5],eax
	or	dword [_198],64
_211:
	mov	eax,dword [_198]
	and	eax,128
	cmp	eax,0
	jne	_213
	push	-1
	push	_27
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Background6],eax
	or	dword [_198],128
_213:
	mov	eax,dword [_198]
	and	eax,256
	cmp	eax,0
	jne	_215
	push	-1
	push	_28
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Cloud1],eax
	or	dword [_198],256
_215:
	mov	eax,dword [_198]
	and	eax,512
	cmp	eax,0
	jne	_217
	push	-1
	push	_29
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Cloud2],eax
	or	dword [_198],512
_217:
	mov	eax,dword [_198]
	and	eax,1024
	cmp	eax,0
	jne	_219
	push	-1
	push	_30
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Cloud3],eax
	or	dword [_198],1024
_219:
	mov	eax,dword [_198]
	and	eax,2048
	cmp	eax,0
	jne	_221
	push	-1
	push	_31
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Cloud4],eax
	or	dword [_198],2048
_221:
	mov	eax,dword [_198]
	and	eax,4096
	cmp	eax,0
	jne	_223
	push	-1
	push	_32
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_Tree],eax
	or	dword [_198],4096
_223:
	mov	eax,dword [_198]
	and	eax,8192
	cmp	eax,0
	jne	_225
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
	or	dword [_198],8192
_225:
	mov	eax,dword [_198]
	and	eax,16384
	cmp	eax,0
	jne	_227
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
	or	dword [_198],16384
_227:
	mov	eax,dword [_198]
	and	eax,32768
	cmp	eax,0
	jne	_229
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
	or	dword [_198],32768
_229:
	mov	eax,dword [_198]
	and	eax,65536
	cmp	eax,0
	jne	_231
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
	or	dword [_198],65536
_231:
	mov	eax,dword [_198]
	and	eax,131072
	cmp	eax,0
	jne	_233
	push	-1
	push	5
	push	20
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_punchRightImg],eax
	or	dword [_198],131072
_233:
	mov	eax,dword [_198]
	and	eax,262144
	cmp	eax,0
	jne	_235
	push	-1
	push	5
	push	25
	push	56
	push	60
	push	_34
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_punchLeftImg],eax
	or	dword [_198],262144
_235:
	mov	eax,dword [_198]
	and	eax,524288
	cmp	eax,0
	jne	_237
	push	-1
	push	2
	push	30
	push	56
	push	60
	push	_34
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_crouchRightImg],eax
	or	dword [_198],524288
_237:
	mov	eax,dword [_198]
	and	eax,1048576
	cmp	eax,0
	jne	_239
	push	-1
	push	2
	push	31
	push	56
	push	60
	push	_34
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_standupRightImg],eax
	or	dword [_198],1048576
_239:
	mov	eax,dword [_198]
	and	eax,2097152
	cmp	eax,0
	jne	_241
	push	-1
	push	2
	push	33
	push	56
	push	60
	push	_34
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_crouchleftImg],eax
	or	dword [_198],2097152
_241:
	mov	eax,dword [_198]
	and	eax,4194304
	cmp	eax,0
	jne	_243
	push	-1
	push	2
	push	34
	push	56
	push	60
	push	_34
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_StandupleftImg],eax
	or	dword [_198],4194304
_243:
	mov	eax,dword [_198]
	and	eax,8388608
	cmp	eax,0
	jne	_245
	push	-1
	push	8
	push	36
	push	56
	push	60
	push	_34
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_framesImg],eax
	or	dword [_198],8388608
_245:
	mov	eax,dword [_198]
	and	eax,16777216
	cmp	eax,0
	jne	_247
	push	-1
	push	6
	push	44
	push	56
	push	60
	push	_34
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_walkrightgunImg],eax
	or	dword [_198],16777216
_247:
	mov	eax,dword [_198]
	and	eax,33554432
	cmp	eax,0
	jne	_249
	push	-1
	push	6
	push	50
	push	56
	push	60
	push	_34
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_walkleftgunImg],eax
	or	dword [_198],33554432
_249:
	mov	eax,dword [_198]
	and	eax,67108864
	cmp	eax,0
	jne	_251
	push	-1
	push	4
	push	56
	push	56
	push	60
	push	_34
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_turnLeftgun],eax
	or	dword [_198],67108864
_251:
	mov	eax,dword [_198]
	and	eax,134217728
	cmp	eax,0
	jne	_253
	push	-1
	push	4
	push	60
	push	56
	push	60
	push	_34
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_turnRightGun],eax
	or	dword [_198],134217728
_253:
	mov	eax,dword [_198]
	and	eax,268435456
	cmp	eax,0
	jne	_255
	push	-1
	push	4
	push	64
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_nealRightpunchImg],eax
	or	dword [_198],268435456
_255:
	mov	eax,dword [_198]
	and	eax,536870912
	cmp	eax,0
	jne	_257
	push	-1
	push	5
	push	68
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_nealLeftpunchImg],eax
	or	dword [_198],536870912
_257:
	mov	eax,dword [_198]
	and	eax,1073741824
	cmp	eax,0
	jne	_259
	push	-1
	push	2
	push	73
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_crouchgunLeftimg],eax
	or	dword [_198],1073741824
_259:
	mov	eax,dword [_198]
	and	eax,-2147483648
	cmp	eax,0
	jne	_261
	push	-1
	push	2
	push	74
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_standupgunleft],eax
	or	dword [_198],-2147483648
_261:
	mov	eax,dword [_263]
	and	eax,1
	cmp	eax,0
	jne	_264
	push	-1
	push	2
	push	76
	push	56
	push	60
	push	_33
	call	_brl_max2d_LoadAnimImage
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_standinggunImg],eax
	or	dword [_263],1
_264:
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	call	dword [_bb_TBackground+48]
	push	1135869952
	push	1133903872
	call	dword [_bb_Tplayer+48]
	add	esp,8
	mov	ebx,eax
_43:
	call	_brl_max2d_Cls
	push	39
	call	_brl_polledinput_KeyDown
	add	esp,4
	mov	esi,eax
	push	37
	call	_brl_polledinput_KeyDown
	add	esp,4
	sub	esi,eax
	mov	dword [ebp+-8],esi
	fild	dword [ebp+-8]
	fstp	dword [ebp-4]
	lea	eax,dword [ebp-4]
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	push	dword [ebp-4]
	call	dword [_bb_TBackground+52]
	add	esp,4
	call	dword [_bb_TBackground+56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_41:
	push	1
	call	_brl_polledinput_MouseHit
	add	esp,4
	cmp	eax,0
	je	_43
_42:
	mov	eax,0
	jmp	_98
_98:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsprite_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tsprite
	mov	dword [ebx+8],0
	mov	dword [ebx+12],0
	mov	dword [ebx+16],0
	mov	dword [ebx+20],0
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	mov	eax,0
	jmp	_101
_101:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsprite_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_104:
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_274
	push	eax
	call	_bbGCFree
	add	esp,4
_274:
	mov	eax,0
	jmp	_272
_272:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsprite_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+12]
	mov	edi,dword [ebp+20]
	push	_bb_Tsprite
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	dword [ebx+8],edi
	mov	dword [ebx+12],esi
	call	_bbMilliSecs
	add	eax,esi
	mov	dword [ebx+16],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebx+20],eax
	mov	esi,dword [ebp+8]
	inc	dword [esi+4]
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_279
	push	eax
	call	_bbGCFree
	add	esp,4
_279:
	mov	dword [ebx+24],esi
	mov	eax,ebx
	jmp	_110
_110:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsprite_reset:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	cmp	dword [ebx+20],1
	jle	_280
	mov	dword [ebx+8],0
	call	_bbMilliSecs
	add	eax,dword [ebx+12]
	mov	dword [ebx+16],eax
_280:
	mov	eax,0
	jmp	_113
_113:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsprite_update:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	cmp	dword [ebx+20],1
	jle	_281
	call	_bbMilliSecs
	cmp	eax,dword [ebx+16]
	jle	_282
	mov	eax,dword [ebx+8]
	add	eax,1
	cdq
	idiv	dword [ebx+20]
	mov	dword [ebx+8],edx
	call	_bbMilliSecs
	add	eax,dword [ebx+12]
	mov	dword [ebx+16],eax
	cmp	dword [ebx+8],0
	jne	_283
	mov	eax,1
	jmp	_116
_283:
_282:
_281:
	mov	eax,0
	jmp	_116
_116:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tsprite_display:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	1069547520
	push	1069547520
	call	_brl_max2d_SetScale
	add	esp,8
	push	dword [ebx+8]
	push	dword [ebp+16]
	push	dword [ebp+12]
	push	dword [ebx+24]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	mov	eax,0
	jmp	_121
_121:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tplayer
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+28],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+32],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+36],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+40],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+44],eax
	mov	eax,0
	jmp	_124
_124:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_127:
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_293
	push	eax
	call	_bbGCFree
	add	esp,4
_293:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_295
	push	eax
	call	_bbGCFree
	add	esp,4
_295:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_297
	push	eax
	call	_bbGCFree
	add	esp,4
_297:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_299
	push	eax
	call	_bbGCFree
	add	esp,4
_299:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_301
	push	eax
	call	_bbGCFree
	add	esp,4
_301:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_303
	push	eax
	call	_bbGCFree
	add	esp,4
_303:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_305
	push	eax
	call	_bbGCFree
	add	esp,4
_305:
	mov	eax,0
	jmp	_291
_291:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	_bb_Tplayer
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	fld	dword [ebp+8]
	fstp	dword [esi+8]
	fld	dword [ebp+12]
	fstp	dword [esi+12]
	push	0
	push	6
	push	150
	push	dword [_bb_walkLeftImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_310
	push	eax
	call	_bbGCFree
	add	esp,4
_310:
	mov	dword [esi+20],ebx
	push	0
	push	6
	push	150
	push	dword [_bb_walkRightImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_314
	push	eax
	call	_bbGCFree
	add	esp,4
_314:
	mov	dword [esi+24],ebx
	push	0
	push	4
	push	50
	push	dword [_bb_turnLeftImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_318
	push	eax
	call	_bbGCFree
	add	esp,4
_318:
	mov	dword [esi+36],ebx
	push	0
	push	4
	push	50
	push	dword [_bb_turnRightImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_322
	push	eax
	call	_bbGCFree
	add	esp,4
_322:
	mov	dword [esi+40],ebx
	push	1
	push	1
	push	100
	push	dword [_bb_framesImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_326
	push	eax
	call	_bbGCFree
	add	esp,4
_326:
	mov	dword [esi+28],ebx
	push	0
	push	1
	push	100
	push	dword [_bb_framesImg]
	call	dword [_bb_Tsprite+48]
	add	esp,16
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_330
	push	eax
	call	_bbGCFree
	add	esp,4
_330:
	mov	dword [esi+32],ebx
	mov	ebx,dword [esi+32]
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_334
	push	eax
	call	_bbGCFree
	add	esp,4
_334:
	mov	dword [esi+44],ebx
	mov	eax,esi
	jmp	_131
_131:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_update:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	mov	edi,dword [ebp+12]
	mov	eax,dword [ebx+44]
	cmp	eax,dword [ebx+28]
	je	_337
	cmp	eax,dword [ebx+32]
	je	_338
	cmp	eax,dword [ebx+36]
	je	_339
	cmp	eax,dword [ebx+40]
	je	_340
	cmp	eax,dword [ebx+20]
	je	_341
	cmp	eax,dword [ebx+24]
	je	_342
	jmp	_336
_337:
	fld	dword [edi]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	cmp	eax,1
	jne	_343
	mov	eax,dword [ebx+40]
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_347
	push	eax
	call	_bbGCFree
	add	esp,4
_347:
	mov	dword [ebx+44],esi
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	fldz
	fstp	dword [edi]
	jmp	_349
_343:
	fld	dword [edi]
	fld	dword [_548]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_350
	mov	esi,dword [ebx+20]
	inc	dword [esi+4]
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_354
	push	eax
	call	_bbGCFree
	add	esp,4
_354:
	mov	dword [ebx+44],esi
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
_350:
_349:
	jmp	_336
_338:
	fld	dword [edi]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	cmp	eax,-1
	jne	_356
	mov	eax,dword [ebx+36]
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_360
	push	eax
	call	_bbGCFree
	add	esp,4
_360:
	mov	dword [ebx+44],esi
	fldz
	fstp	dword [edi]
	jmp	_361
_356:
	fld	dword [edi]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_362
	mov	esi,dword [ebx+24]
	inc	dword [esi+4]
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_366
	push	eax
	call	_bbGCFree
	add	esp,4
_366:
	mov	dword [ebx+44],esi
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
_362:
_361:
	jmp	_336
_339:
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_369
	fld	dword [edi]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_370
	mov	eax,dword [ebx+40]
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_374
	push	eax
	call	_bbGCFree
	add	esp,4
_374:
	mov	dword [ebx+44],esi
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	fldz
	fstp	dword [edi]
	jmp	_376
_370:
	fld	dword [edi]
	fld	dword [_549]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_377
	mov	esi,dword [ebx+20]
	inc	dword [esi+4]
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_381
	push	eax
	call	_bbGCFree
	add	esp,4
_381:
	mov	dword [ebx+44],esi
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	jmp	_383
_377:
	mov	esi,dword [ebx+28]
	inc	dword [esi+4]
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_387
	push	eax
	call	_bbGCFree
	add	esp,4
_387:
	mov	dword [ebx+44],esi
_383:
_376:
	jmp	_388
_369:
	fldz
	fstp	dword [edi]
_388:
	jmp	_336
_340:
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,0
	je	_390
	fld	dword [edi]
	fld	dword [_550]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_391
	mov	eax,dword [ebx+36]
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_395
	push	eax
	call	_bbGCFree
	add	esp,4
_395:
	mov	dword [ebx+44],esi
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	fldz
	fstp	dword [edi]
	jmp	_397
_391:
	fld	dword [edi]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_398
	mov	esi,dword [ebx+24]
	inc	dword [esi+4]
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_402
	push	eax
	call	_bbGCFree
	add	esp,4
_402:
	mov	dword [ebx+44],esi
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	jmp	_404
_398:
	mov	esi,dword [ebx+32]
	inc	dword [esi+4]
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_408
	push	eax
	call	_bbGCFree
	add	esp,4
_408:
	mov	dword [ebx+44],esi
_404:
_397:
	jmp	_409
_390:
	fldz
	fstp	dword [edi]
_409:
	jmp	_336
_341:
	fld	dword [edi]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_410
	mov	eax,dword [ebx+40]
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_414
	push	eax
	call	_bbGCFree
	add	esp,4
_414:
	mov	dword [ebx+44],esi
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	fldz
	fstp	dword [edi]
	jmp	_416
_410:
	fld	dword [edi]
	fld	dword [_551]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_417
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	jmp	_419
_417:
	mov	esi,dword [ebx+28]
	inc	dword [esi+4]
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_423
	push	eax
	call	_bbGCFree
	add	esp,4
_423:
	mov	dword [ebx+44],esi
_419:
_416:
	jmp	_336
_342:
	fld	dword [edi]
	fld	dword [_552]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_424
	mov	eax,dword [ebx+36]
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_428
	push	eax
	call	_bbGCFree
	add	esp,4
_428:
	mov	dword [ebx+44],esi
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	fldz
	fstp	dword [edi]
	jmp	_430
_424:
	fld	dword [edi]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_431
	mov	eax,dword [ebx+44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	jmp	_433
_431:
	mov	esi,dword [ebx+32]
	inc	dword [esi+4]
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_437
	push	eax
	call	_bbGCFree
	add	esp,4
_437:
	mov	dword [ebx+44],esi
_433:
_430:
	jmp	_336
_336:
	mov	eax,0
	jmp	_135
_135:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tplayer_display:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [edx+44]
	push	dword [edx+12]
	push	dword [edx+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,12
	mov	eax,0
	jmp	_138
_138:
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tilebase_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_Tilebase
	fldz
	fstp	dword [ebx+8]
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	fldz
	fstp	dword [ebx+20]
	fldz
	fstp	dword [ebx+24]
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+28],eax
	mov	dword [ebx+32],0
	mov	dword [ebx+36],0
	call	_brl_graphics_GraphicsWidth
	mov	dword [ebx+32],eax
	call	_brl_graphics_GraphicsHeight
	mov	dword [ebx+36],eax
	mov	eax,0
	jmp	_141
_141:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_Tilebase_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_144:
	mov	eax,dword [eax+28]
	dec	dword [eax+4]
	jnz	_442
	push	eax
	call	_bbGCFree
	add	esp,4
_442:
	mov	eax,0
	jmp	_440
_440:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TileRow_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	__bb_Tilebase_New
	add	esp,4
	mov	dword [ebx],_bb_TileRow
	mov	eax,0
	jmp	_147
_147:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TileRow_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_150:
	mov	dword [eax],_bb_Tilebase
	push	eax
	call	__bb_Tilebase_Delete
	add	esp,4
	mov	eax,0
	jmp	_443
_443:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TileRow_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	ebx,dword [ebp+20]
	push	_bb_TileRow
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	fld	dword [ebp+8]
	fstp	dword [esi+8]
	fld	dword [ebp+12]
	fstp	dword [esi+12]
	mov	eax,dword [esi+32]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fstp	dword [esi+16]
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fstp	dword [esi+20]
	fld	dword [ebp+16]
	fstp	dword [esi+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_448
	push	eax
	call	_bbGCFree
	add	esp,4
_448:
	mov	dword [esi+28],ebx
	mov	eax,esi
	jmp	_156
_156:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TileRow_update:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	ebx,dword [ebp+8]
	fld	dword [ebp+12]
	mov	eax,dword [ebx+28]
	mov	eax,dword [eax+8]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	sub	esp,8
	fstp	qword [esp]
	fld	dword [ebx+8]
	fld	dword [ebx+24]
	fmulp	st2,st0
	faddp	st1,st0
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatMod
	add	esp,16
	fstp	dword [ebx+8]
	mov	eax,0
	jmp	_160
_160:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TileRow_display:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	fld	dword [ebx+20]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebx+16]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	fld	dword [ebx+12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	push	eax
	push	0
	call	_brl_max2d_SetViewport
	add	esp,16
	push	0
	push	dword [ebx+12]
	push	dword [ebx+8]
	push	dword [ebx+28]
	call	_brl_max2d_TileImage
	add	esp,16
	call	_brl_graphics_GraphicsHeight
	push	eax
	call	_brl_graphics_GraphicsWidth
	push	eax
	push	0
	push	0
	call	_brl_max2d_SetViewport
	add	esp,16
	mov	eax,0
	jmp	_163
_163:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_tileRotate_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	__bb_Tilebase_New
	add	esp,4
	mov	dword [ebx],_bb_tileRotate
	mov	eax,0
	jmp	_166
_166:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_tileRotate_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_169:
	mov	dword [eax],_bb_Tilebase
	push	eax
	call	__bb_Tilebase_Delete
	add	esp,4
	mov	eax,0
	jmp	_449
_449:
	mov	esp,ebp
	pop	ebp
	ret
__bb_tileRotate_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	ebx,dword [ebp+20]
	push	_bb_tileRotate
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	fld	dword [ebp+8]
	fstp	dword [esi+8]
	fld	dword [ebp+12]
	fstp	dword [esi+12]
	fld	dword [ebp+16]
	fstp	dword [esi+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_454
	push	eax
	call	_bbGCFree
	add	esp,4
_454:
	mov	dword [esi+28],ebx
	mov	eax,esi
	jmp	_175
_175:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_tileRotate_update:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	edx,dword [ebp+8]
	fld	dword [ebp+12]
	fld	dword [edx+8]
	fld	dword [edx+24]
	fmulp	st2,st0
	faddp	st1,st0
	fstp	dword [edx+8]
	fld	dword [edx+24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_455
	fld	dword [edx+8]
	mov	eax,dword [edx+32]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_455:
	cmp	eax,0
	je	_457
	mov	eax,dword [edx+28]
	mov	eax,dword [eax+8]
	neg	eax
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fstp	dword [edx+8]
_457:
	fld	dword [edx+24]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	je	_458
	fld	dword [edx+8]
	mov	eax,dword [edx+28]
	mov	eax,dword [eax+8]
	neg	eax
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_458:
	cmp	eax,0
	je	_460
	mov	eax,dword [edx+32]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	fstp	dword [edx+8]
_460:
	mov	eax,0
	jmp	_179
_179:
	mov	esp,ebp
	pop	ebp
	ret
__bb_tileRotate_display:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	dword [eax+12]
	push	dword [eax+8]
	push	dword [eax+28]
	call	_brl_max2d_DrawImage
	add	esp,16
	mov	eax,0
	jmp	_182
_182:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBackground_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TBackground
	mov	eax,0
	jmp	_185
_185:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBackground_Delete:
	push	ebp
	mov	ebp,esp
_188:
	mov	eax,0
	jmp	_461
_461:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBackground_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [__bb_TBackground_list]
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
	mov	ebx,dword [__bb_TBackground_list]
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
	mov	ebx,dword [__bb_TBackground_list]
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
	mov	ebx,dword [__bb_TBackground_list]
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
	mov	ebx,dword [__bb_TBackground_list]
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
	mov	ebx,dword [__bb_TBackground_list]
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
	mov	ebx,dword [__bb_TBackground_list]
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
	mov	ebx,dword [__bb_TBackground_list]
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
	mov	ebx,dword [__bb_TBackground_list]
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
	mov	ebx,dword [__bb_TBackground_list]
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
	mov	ebx,dword [__bb_TBackground_list]
	push	dword [_bb_Tree]
	push	-1069547520
	push	1126170624
	push	1128792064
	call	dword [_bb_tileRotate+56]
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	eax,_bbNullObject
	jmp	_190
_190:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBackground_update:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [__bb_TBackground_list]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_35
_37:
	push	_bb_Tilebase
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_35
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
_35:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_37
_36:
	mov	eax,0
	jmp	_193
_193:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBackground_display:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [__bb_TBackground_list]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_38
_40:
	push	_bb_Tilebase
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_38
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
_38:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_40
_39:
	mov	eax,0
	jmp	_195
_195:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_269:
	dd	0
_45:
	db	"Tsprite",0
_46:
	db	"frame",0
_47:
	db	"i",0
_48:
	db	"wait",0
_49:
	db	"rate",0
_50:
	db	"count",0
_51:
	db	"image",0
_52:
	db	":brl.max2d.TImage",0
_53:
	db	"New",0
_54:
	db	"()i",0
_55:
	db	"Delete",0
_56:
	db	"Create",0
_57:
	db	"(:brl.max2d.TImage,i,i,i):Tsprite",0
_58:
	db	"reset",0
_59:
	db	"update",0
_60:
	db	"display",0
_61:
	db	"(f,f)i",0
	align	4
_44:
	dd	2
	dd	_45
	dd	3
	dd	_46
	dd	_47
	dd	8
	dd	3
	dd	_48
	dd	_47
	dd	12
	dd	3
	dd	_49
	dd	_47
	dd	16
	dd	3
	dd	_50
	dd	_47
	dd	20
	dd	3
	dd	_51
	dd	_52
	dd	24
	dd	6
	dd	_53
	dd	_54
	dd	16
	dd	6
	dd	_55
	dd	_54
	dd	20
	dd	7
	dd	_56
	dd	_57
	dd	48
	dd	6
	dd	_58
	dd	_54
	dd	52
	dd	6
	dd	_59
	dd	_54
	dd	56
	dd	6
	dd	_60
	dd	_61
	dd	60
	dd	0
	align	4
_bb_Tsprite:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_44
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
_63:
	db	"Tplayer",0
_64:
	db	"MOVEL",0
	align	4
_65:
	dd	_bbStringClass
	dd	2147483646
	dd	2
	dw	45,49
_66:
	db	"MOVER",0
	align	4
_67:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	49
_68:
	db	"x",0
_69:
	db	"f",0
_70:
	db	"y",0
_71:
	db	"speed",0
_72:
	db	"walkL",0
_73:
	db	":Tsprite",0
_74:
	db	"walkR",0
_75:
	db	"standL",0
_76:
	db	"standR",0
_77:
	db	"turnL",0
_78:
	db	"TurnR",0
_79:
	db	"animation",0
_80:
	db	"(f,f):Tplayer",0
_81:
	db	"(*f)i",0
	align	4
_62:
	dd	2
	dd	_63
	dd	1
	dd	_64
	dd	_47
	dd	_65
	dd	1
	dd	_66
	dd	_47
	dd	_67
	dd	3
	dd	_68
	dd	_69
	dd	8
	dd	3
	dd	_70
	dd	_69
	dd	12
	dd	3
	dd	_71
	dd	_69
	dd	16
	dd	3
	dd	_72
	dd	_73
	dd	20
	dd	3
	dd	_74
	dd	_73
	dd	24
	dd	3
	dd	_75
	dd	_73
	dd	28
	dd	3
	dd	_76
	dd	_73
	dd	32
	dd	3
	dd	_77
	dd	_73
	dd	36
	dd	3
	dd	_78
	dd	_73
	dd	40
	dd	3
	dd	_79
	dd	_73
	dd	44
	dd	6
	dd	_53
	dd	_54
	dd	16
	dd	6
	dd	_55
	dd	_54
	dd	20
	dd	7
	dd	_56
	dd	_80
	dd	48
	dd	6
	dd	_59
	dd	_81
	dd	52
	dd	6
	dd	_60
	dd	_54
	dd	56
	dd	0
	align	4
_bb_Tplayer:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_62
	dd	48
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
_83:
	db	"Tilebase",0
_84:
	db	"vw",0
_85:
	db	"vh",0
_86:
	db	"gw",0
_87:
	db	"gh",0
_88:
	db	"(f)i",0
	align	4
_82:
	dd	2
	dd	_83
	dd	3
	dd	_68
	dd	_69
	dd	8
	dd	3
	dd	_70
	dd	_69
	dd	12
	dd	3
	dd	_84
	dd	_69
	dd	16
	dd	3
	dd	_85
	dd	_69
	dd	20
	dd	3
	dd	_71
	dd	_69
	dd	24
	dd	3
	dd	_51
	dd	_52
	dd	28
	dd	3
	dd	_86
	dd	_47
	dd	32
	dd	3
	dd	_87
	dd	_47
	dd	36
	dd	6
	dd	_53
	dd	_54
	dd	16
	dd	6
	dd	_55
	dd	_54
	dd	20
	dd	6
	dd	_59
	dd	_88
	dd	48
	dd	6
	dd	_60
	dd	_54
	dd	52
	dd	0
	align	4
_bb_Tilebase:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_82
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
_90:
	db	"TileRow",0
_91:
	db	"(f,f,f,:brl.max2d.TImage):TileRow",0
	align	4
_89:
	dd	2
	dd	_90
	dd	6
	dd	_53
	dd	_54
	dd	16
	dd	6
	dd	_55
	dd	_54
	dd	20
	dd	7
	dd	_56
	dd	_91
	dd	56
	dd	6
	dd	_59
	dd	_88
	dd	48
	dd	6
	dd	_60
	dd	_54
	dd	52
	dd	0
	align	4
_bb_TileRow:
	dd	_bb_Tilebase
	dd	_bbObjectFree
	dd	_89
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
_93:
	db	"tileRotate",0
_94:
	db	"(f,f,f,:brl.max2d.TImage):TileRotate",0
	align	4
_92:
	dd	2
	dd	_93
	dd	6
	dd	_53
	dd	_54
	dd	16
	dd	6
	dd	_55
	dd	_54
	dd	20
	dd	7
	dd	_56
	dd	_94
	dd	56
	dd	6
	dd	_59
	dd	_88
	dd	48
	dd	6
	dd	_60
	dd	_54
	dd	52
	dd	0
	align	4
_bb_tileRotate:
	dd	_bb_Tilebase
	dd	_bbObjectFree
	dd	_92
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
	align	4
_198:
	dd	0
	align	4
__bb_TBackground_list:
	dd	_bbNullObject
_96:
	db	"TBackground",0
_97:
	db	"():TbackGround",0
	align	4
_95:
	dd	2
	dd	_96
	dd	6
	dd	_53
	dd	_54
	dd	16
	dd	6
	dd	_55
	dd	_54
	dd	20
	dd	7
	dd	_56
	dd	_97
	dd	48
	dd	7
	dd	_59
	dd	_88
	dd	52
	dd	7
	dd	_60
	dd	_54
	dd	56
	dd	0
	align	4
_bb_TBackground:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_95
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
_bb_T_list:
	dd	_bbNullObject
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,92,98,103,100,49,95,99,105,101,108,46
	dw	112,110,103
	align	4
_bb_Background1:
	dd	_bbNullObject
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	109,101,100,105,97,92,98,103,100,50,95,109,111,110,116,97
	dw	103,110,101,115,46,80,78,71
	align	4
_bb_Background2:
	dd	_bbNullObject
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,92,98,103,100,51,95,115,111,108,49,46
	dw	112,110,103
	align	4
_bb_Background3:
	dd	_bbNullObject
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,92,98,103,100,52,95,115,111,108,50,46
	dw	112,110,103
	align	4
_bb_Background4:
	dd	_bbNullObject
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,92,98,103,100,53,95,115,111,108,51,46
	dw	112,110,103
	align	4
_bb_Background5:
	dd	_bbNullObject
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	109,101,100,105,97,92,115,112,114,105,116,101,95,98,97,114
	dw	114,105,101,114,101,46,98,109,112
	align	4
_bb_Background6:
	dd	_bbNullObject
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	109,101,100,105,97,92,115,112,114,105,116,101,95,110,117,97
	dw	103,101,115,49,46,98,109,112
	align	4
_bb_Cloud1:
	dd	_bbNullObject
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	109,101,100,105,97,92,115,112,114,105,116,101,95,110,117,97
	dw	103,101,115,50,46,98,109,112
	align	4
_bb_Cloud2:
	dd	_bbNullObject
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	109,101,100,105,97,92,115,112,114,105,116,101,95,110,117,97
	dw	103,101,115,51,46,98,109,112
	align	4
_bb_Cloud3:
	dd	_bbNullObject
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	109,101,100,105,97,92,115,112,114,105,116,101,95,110,117,97
	dw	103,101,115,52,46,98,109,112
	align	4
_bb_Cloud4:
	dd	_bbNullObject
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	109,101,100,105,97,92,115,112,114,105,116,101,95,97,114,98
	dw	114,101,46,112,110,103
	align	4
_bb_Tree:
	dd	_bbNullObject
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,92,115,111,98,115,112,114,105,116,101,46
	dw	112,110,103
	align	4
_bb_walkRightImg:
	dd	_bbNullObject
	align	4
_bb_walkLeftImg:
	dd	_bbNullObject
	align	4
_bb_turnLeftImg:
	dd	_bbNullObject
	align	4
_bb_turnRightImg:
	dd	_bbNullObject
	align	4
_bb_punchRightImg:
	dd	_bbNullObject
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	109,101,100,105,97,92,115,111,98,115,112,114,105,116,101,46
	dw	105,109,103
	align	4
_bb_punchLeftImg:
	dd	_bbNullObject
	align	4
_bb_crouchRightImg:
	dd	_bbNullObject
	align	4
_bb_standupRightImg:
	dd	_bbNullObject
	align	4
_bb_crouchleftImg:
	dd	_bbNullObject
	align	4
_bb_StandupleftImg:
	dd	_bbNullObject
	align	4
_bb_framesImg:
	dd	_bbNullObject
	align	4
_bb_walkrightgunImg:
	dd	_bbNullObject
	align	4
_bb_walkleftgunImg:
	dd	_bbNullObject
	align	4
_bb_turnLeftgun:
	dd	_bbNullObject
	align	4
_bb_turnRightGun:
	dd	_bbNullObject
	align	4
_bb_nealRightpunchImg:
	dd	_bbNullObject
	align	4
_bb_nealLeftpunchImg:
	dd	_bbNullObject
	align	4
_bb_crouchgunLeftimg:
	dd	_bbNullObject
	align	4
_bb_standupgunleft:
	dd	_bbNullObject
	align	4
_263:
	dd	0
	align	4
_bb_standinggunImg:
	dd	_bbNullObject
	align	4
_548:
	dd	0xbf800000
	align	4
_549:
	dd	0xbf800000
	align	4
_550:
	dd	0xbf800000
	align	4
_551:
	dd	0xbf800000
	align	4
_552:
	dd	0xbf800000
