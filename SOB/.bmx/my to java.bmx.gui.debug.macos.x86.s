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
	.reference	___bb_regex_regex
	.reference	___bb_retro_retro
	.reference	___bb_tgaloader_tgaloader
	.reference	___bb_threads_threads
	.reference	___bb_timer_timer
	.reference	___bb_wavloader_wavloader
	.reference	___bb_win32_win32
	.reference	_bah_regex_TRegEx
	.reference	_bbEmptyString
	.reference	_bbEnd
	.reference	_bbGCFree
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
	.reference	_bbStringCompare
	.reference	_bbStringConcat
	.reference	_brl_blitz_NullObjectError
	.reference	_brl_blitz_RuntimeError
	.reference	_brl_filesystem_CloseDir
	.reference	_brl_filesystem_CurrentDir
	.reference	_brl_filesystem_ExtractExt
	.reference	_brl_filesystem_FileType
	.reference	_brl_filesystem_NextFile
	.reference	_brl_filesystem_ReadDir
	.reference	_brl_filesystem_StripExt
	.reference	_brl_linkedlist_TList
	.reference	_brl_textstream_LoadText
	.reference	_brl_textstream_SaveText
	.globl	__bb_RPair_Create
	.globl	__bb_RPair_Delete
	.globl	__bb_RPair_New
	.globl	__bb_main
	.globl	_bb_RPair
	.globl	_bb_ReformatSource
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_221
	je	_222
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_222:
	movl	$1,_221
	movl	$0,-4(%ebp)
	movl	$_bbEmptyString,-8(%ebp)
	movl	$_bbEmptyString,-12(%ebp)
	movl	$_bbEmptyString,-16(%ebp)
	movl	%ebp,4(%esp)
	movl	$_217,(%esp)
	calll	*_bbOnDebugEnterScope
	call	___bb_blitz_blitz
	call	___bb_regex_regex
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
	movl	$_bb_RPair,(%esp)
	call	_bbObjectRegisterType
	movl	$_182,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_filesystem_CurrentDir
	movl	%eax,(%esp)
	call	_brl_filesystem_ReadDir
	movl	%eax,-4(%ebp)
	movl	$_185,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-4(%ebp)
	jne	_186
	movl	%ebp,4(%esp)
	movl	$_188,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_187,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_7,(%esp)
	call	_brl_blitz_RuntimeError
	calll	*_bbOnDebugLeaveScope
_186:
	movl	$_189,(%esp)
	calll	*_bbOnDebugEnterStm
_10:
_8:
	movl	%ebp,4(%esp)
	movl	$_211,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_190,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_NextFile
	movl	%eax,-8(%ebp)
	movl	$_192,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_1,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	jne	_193
	movl	%ebp,4(%esp)
	movl	$_195,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_194,(%esp)
	calll	*_bbOnDebugEnterStm
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_9
_193:
	movl	$_196,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_11,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_197
	movl	$_12,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
_197:
	cmp	$0,%eax
	jne	_199
	movl	$_13,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_ExtractExt
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	setne	%al
	movzbl	%al,%eax
_199:
	cmp	$0,%eax
	jne	_201
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_FileType
	cmp	$1,%eax
	setne	%al
	movzbl	%al,%eax
_201:
	cmp	$0,%eax
	je	_203
	movl	%ebp,4(%esp)
	movl	$_205,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_204,(%esp)
	calll	*_bbOnDebugEnterStm
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_8
_203:
	movl	$_206,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_textstream_LoadText
	movl	%eax,-12(%ebp)
	movl	$_208,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_ReformatSource
	movl	%eax,-16(%ebp)
	movl	$_210,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_14,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_StripExt
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_textstream_SaveText
	calll	*_bbOnDebugLeaveScope
	jmp	_10
_9:
	movl	$_215,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_CloseDir
	movl	$_216,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_bbEnd
	mov	$0,%ebx
	jmp	_161
_161:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_ReformatSource:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$_bbEmptyString,-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_252,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_223,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_225,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$_bbNullObject,_224
	jne	_226
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_228,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_227,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_18
	calll	*_bbOnDebugLeaveScope
_226:
	movl	$_229,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$_231,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-12(%ebp)
	movl	_224,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_235
	call	_brl_blitz_NullObjectError
_235:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*140(%eax)
	mov	%eax,%edi
	jmp	_15
_17:
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_240
	call	_brl_blitz_NullObjectError
_240:
	movl	$_bb_RPair,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	movl	%eax,-12(%ebp)
	cmpl	$_bbNullObject,-12(%ebp)
	je	_15
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_248,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_241,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_243
	call	_brl_blitz_NullObjectError
_243:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_245
	call	_brl_blitz_NullObjectError
_245:
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_247
	call	_brl_blitz_NullObjectError
_247:
	movl	$0,12(%esp)
	movl	12(%ebx),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*52(%eax)
	movl	%eax,-8(%ebp)
	calll	*_bbOnDebugLeaveScope
_15:
	mov	%edi,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_238
	call	_brl_blitz_NullObjectError
_238:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_17
_16:
	movl	$_251,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	jmp	_164
_164:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_18:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	%ebp,4(%esp)
	movl	$_329,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_257,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_brl_linkedlist_TList,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%ebx
	movl	_224,%eax
	decl	4(%eax)
	jnz	_261
	movl	%eax,(%esp)
	call	_bbGCFree
_261:
	movl	%ebx,_224
	movl	$_262,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_20,4(%esp)
	movl	$_19,(%esp)
	call	_149
	movl	$_263,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_22,4(%esp)
	movl	$_21,(%esp)
	call	_149
	movl	$_264,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_24,4(%esp)
	movl	$_23,(%esp)
	call	_149
	movl	$_265,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_26,4(%esp)
	movl	$_25,(%esp)
	call	_149
	movl	$_266,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_28,4(%esp)
	movl	$_27,(%esp)
	call	_149
	movl	$_267,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_30,4(%esp)
	movl	$_29,(%esp)
	call	_149
	movl	$_268,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_32,4(%esp)
	movl	$_31,(%esp)
	call	_149
	movl	$_269,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_34,4(%esp)
	movl	$_33,(%esp)
	call	_149
	movl	$_270,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_36,4(%esp)
	movl	$_35,(%esp)
	call	_149
	movl	$_271,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_38,4(%esp)
	movl	$_37,(%esp)
	call	_149
	movl	$_272,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_40,4(%esp)
	movl	$_39,(%esp)
	call	_149
	movl	$_273,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_42,4(%esp)
	movl	$_41,(%esp)
	call	_149
	movl	$_274,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_44,4(%esp)
	movl	$_43,(%esp)
	call	_149
	movl	$_275,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_46,4(%esp)
	movl	$_45,(%esp)
	call	_149
	movl	$_276,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_48,4(%esp)
	movl	$_47,(%esp)
	call	_149
	movl	$_277,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_50,4(%esp)
	movl	$_49,(%esp)
	call	_149
	movl	$_278,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_50,4(%esp)
	movl	$_51,(%esp)
	call	_149
	movl	$_279,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_53,4(%esp)
	movl	$_52,(%esp)
	call	_149
	movl	$_280,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_55,4(%esp)
	movl	$_54,(%esp)
	call	_149
	movl	$_281,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_57,4(%esp)
	movl	$_56,(%esp)
	call	_149
	movl	$_282,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_59,4(%esp)
	movl	$_58,(%esp)
	call	_149
	movl	$_283,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_61,4(%esp)
	movl	$_60,(%esp)
	call	_149
	movl	$_284,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_63,4(%esp)
	movl	$_62,(%esp)
	call	_149
	movl	$_285,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_65,4(%esp)
	movl	$_64,(%esp)
	call	_149
	movl	$_286,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_66,4(%esp)
	movl	$_66,(%esp)
	call	_149
	movl	$_287,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_68,4(%esp)
	movl	$_67,(%esp)
	call	_149
	movl	$_288,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_70,4(%esp)
	movl	$_69,(%esp)
	call	_149
	movl	$_289,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_72,4(%esp)
	movl	$_71,(%esp)
	call	_149
	movl	$_290,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_74,4(%esp)
	movl	$_73,(%esp)
	call	_149
	movl	$_291,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_76,4(%esp)
	movl	$_75,(%esp)
	call	_149
	movl	$_292,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_78,4(%esp)
	movl	$_77,(%esp)
	call	_149
	movl	$_293,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_80,4(%esp)
	movl	$_79,(%esp)
	call	_149
	movl	$_294,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_82,4(%esp)
	movl	$_81,(%esp)
	call	_149
	movl	$_295,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_84,4(%esp)
	movl	$_83,(%esp)
	call	_149
	movl	$_296,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_86,4(%esp)
	movl	$_85,(%esp)
	call	_149
	movl	$_297,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_88,4(%esp)
	movl	$_87,(%esp)
	call	_149
	movl	$_298,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_90,4(%esp)
	movl	$_89,(%esp)
	call	_149
	movl	$_299,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_92,4(%esp)
	movl	$_91,(%esp)
	call	_149
	movl	$_300,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_94,4(%esp)
	movl	$_93,(%esp)
	call	_149
	movl	$_301,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_96,4(%esp)
	movl	$_95,(%esp)
	call	_149
	movl	$_302,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_98,4(%esp)
	movl	$_97,(%esp)
	call	_149
	movl	$_303,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_100,4(%esp)
	movl	$_99,(%esp)
	call	_149
	movl	$_304,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_102,4(%esp)
	movl	$_101,(%esp)
	call	_149
	movl	$_305,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_102,4(%esp)
	movl	$_103,(%esp)
	call	_149
	movl	$_306,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_105,4(%esp)
	movl	$_104,(%esp)
	call	_149
	movl	$_307,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_107,4(%esp)
	movl	$_106,(%esp)
	call	_149
	movl	$_308,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_109,4(%esp)
	movl	$_108,(%esp)
	call	_149
	movl	$_309,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_111,4(%esp)
	movl	$_110,(%esp)
	call	_149
	movl	$_310,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_113,4(%esp)
	movl	$_112,(%esp)
	call	_149
	movl	$_311,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_115,4(%esp)
	movl	$_114,(%esp)
	call	_149
	movl	$_312,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_117,4(%esp)
	movl	$_116,(%esp)
	call	_149
	movl	$_313,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_119,4(%esp)
	movl	$_118,(%esp)
	call	_149
	movl	$_314,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_121,4(%esp)
	movl	$_120,(%esp)
	call	_149
	movl	$_315,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_123,4(%esp)
	movl	$_122,(%esp)
	call	_149
	movl	$_316,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_125,4(%esp)
	movl	$_124,(%esp)
	call	_149
	movl	$_317,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_127,4(%esp)
	movl	$_126,(%esp)
	call	_149
	movl	$_318,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_129,4(%esp)
	movl	$_128,(%esp)
	call	_149
	movl	$_319,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_131,4(%esp)
	movl	$_130,(%esp)
	call	_149
	movl	$_320,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_133,4(%esp)
	movl	$_132,(%esp)
	call	_149
	movl	$_321,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_135,4(%esp)
	movl	$_134,(%esp)
	call	_149
	movl	$_322,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_137,4(%esp)
	movl	$_136,(%esp)
	call	_149
	movl	$_323,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_139,4(%esp)
	movl	$_138,(%esp)
	call	_149
	movl	$_324,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_141,4(%esp)
	movl	$_140,(%esp)
	call	_149
	movl	$_325,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_143,4(%esp)
	movl	$_142,(%esp)
	call	_149
	movl	$_326,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_145,4(%esp)
	movl	$_144,(%esp)
	call	_149
	movl	$_327,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_147,4(%esp)
	movl	$_146,(%esp)
	call	_149
	movl	$_328,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_147,4(%esp)
	movl	$_148,(%esp)
	call	_149
	mov	$0,%ebx
	jmp	_166
_166:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_149:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	%ebp,4(%esp)
	movl	$_334,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_331,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_224,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_333
	call	_brl_blitz_NullObjectError
_333:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	calll	*_bb_RPair+48
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	mov	$0,%ebx
	jmp	_170
_170:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_RPair_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_339,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_RPair,(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	mov	$_bbEmptyString,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,12(%eax)
	movl	%ebp,4(%esp)
	movl	$_338,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_173
_173:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_RPair_Delete:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
_176:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_343
	movl	%eax,(%esp)
	call	_bbGCFree
_343:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_345
	movl	%eax,(%esp)
	call	_bbGCFree
_345:
	mov	$0,%eax
	jmp	_341
_341:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_RPair_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$12,%esp
	push	%ebx
	push	%esi
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_365,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_346,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_RPair,(%esp)
	call	_bbObjectNew
	movl	%eax,-12(%ebp)
	movl	$_348,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_350
	call	_brl_blitz_NullObjectError
_350:
	movl	$_bbNullObject,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	calll	*_bah_regex_TRegEx+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_355
	movl	%eax,(%esp)
	call	_bbGCFree
_355:
	movl	%esi,8(%ebx)
	movl	$_356,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_358
	call	_brl_blitz_NullObjectError
_358:
	movl	-8(%ebp),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_363
	movl	%eax,(%esp)
	call	_bbGCFree
_363:
	movl	%esi,12(%ebx)
	movl	$_364,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	jmp	_180
_180:
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
_221:
	.long	0
_218:
	.asciz	"my to java"
_219:
	.asciz	"dir"
_220:
	.asciz	"i"
	.align	4
_217:
	.long	1
	.long	_218
	.long	2
	.long	_219
	.long	_220
	.long	-4
	.long	0
_151:
	.asciz	"RPair"
_152:
	.asciz	"regx"
_153:
	.asciz	":bah.regex.TRegEx"
_154:
	.asciz	"repl"
_155:
	.asciz	"$"
_156:
	.asciz	"New"
_157:
	.asciz	"()i"
_158:
	.asciz	"Delete"
_159:
	.asciz	"Create"
_160:
	.asciz	"($,$):RPair"
	.align	4
_150:
	.long	2
	.long	_151
	.long	3
	.long	_152
	.long	_153
	.long	8
	.long	3
	.long	_154
	.long	_155
	.long	12
	.long	6
	.long	_156
	.long	_157
	.long	16
	.long	6
	.long	_158
	.long	_157
	.long	20
	.long	7
	.long	_159
	.long	_160
	.long	48
	.long	0
	.align	4
_bb_RPair:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_150
	.long	16
	.long	__bb_RPair_New
	.long	__bb_RPair_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_RPair_Create
_183:
	.asciz	"/Users/jesseperez/Desktop/programming/blitzmax/SOB/my to java.bmx"
	.align	4
_182:
	.long	_183
	.long	8
	.long	1
	.align	4
_185:
	.long	_183
	.long	10
	.long	1
	.align	4
_188:
	.long	3
	.long	0
	.long	0
	.align	4
_187:
	.long	_183
	.long	10
	.long	17
	.align	4
_7:
	.long	_bbStringClass
	.long	2147483647
	.long	32
	.short	102,97,105,108,101,100,32,116,111,32,114,101,97,100,32,99
	.short	117,114,114,101,110,116,32,100,105,114,101,99,116,111,114,121
	.align	4
_189:
	.long	_183
	.long	20
	.long	1
_212:
	.asciz	"fn"
_213:
	.asciz	"bsource"
_214:
	.asciz	"jsource"
	.align	4
_211:
	.long	3
	.long	0
	.long	2
	.long	_212
	.long	_155
	.long	-8
	.long	2
	.long	_213
	.long	_155
	.long	-12
	.long	2
	.long	_214
	.long	_155
	.long	-16
	.long	0
	.align	4
_190:
	.long	_183
	.long	13
	.long	2
	.align	4
_192:
	.long	_183
	.long	14
	.long	2
	.align	4
_1:
	.long	_bbStringClass
	.long	2147483647
	.long	0
	.align	4
_195:
	.long	3
	.long	0
	.long	0
	.align	4
_194:
	.long	_183
	.long	14
	.long	13
	.align	4
_196:
	.long	_183
	.long	15
	.long	2
	.align	4
_11:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	46
	.align	4
_12:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	46,46
	.align	4
_13:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	98,109,120
	.align	4
_205:
	.long	3
	.long	0
	.long	0
	.align	4
_204:
	.long	_183
	.long	15
	.long	80
	.align	4
_206:
	.long	_183
	.long	17
	.long	2
	.align	4
_208:
	.long	_183
	.long	18
	.long	2
	.align	4
_210:
	.long	_183
	.long	19
	.long	2
	.align	4
_14:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	46,106,97,118,97
	.align	4
_215:
	.long	_183
	.long	22
	.long	1
	.align	4
_216:
	.long	_183
	.long	24
	.long	1
_253:
	.asciz	"ReformatSource"
_254:
	.asciz	"regexen"
_255:
	.asciz	":brl.linkedlist.TList"
	.align	4
_224:
	.long	_bbNullObject
_256:
	.asciz	"processed"
	.align	4
_252:
	.long	1
	.long	_253
	.long	2
	.long	_213
	.long	_155
	.long	-4
	.long	4
	.long	_254
	.long	_255
	.long	_224
	.long	2
	.long	_256
	.long	_155
	.long	-8
	.long	0
	.align	4
_223:
	.long	_183
	.long	29
	.long	2
	.align	4
_225:
	.long	_183
	.long	30
	.long	2
	.align	4
_228:
	.long	3
	.long	0
	.long	0
	.align	4
_227:
	.long	_183
	.long	30
	.long	25
	.align	4
_229:
	.long	_183
	.long	31
	.long	2
	.align	4
_231:
	.long	_183
	.long	33
	.long	2
_249:
	.asciz	"r"
_250:
	.asciz	":RPair"
	.align	4
_248:
	.long	3
	.long	0
	.long	2
	.long	_249
	.long	_250
	.long	-12
	.long	0
	.align	4
_241:
	.long	_183
	.long	34
	.long	3
	.align	4
_251:
	.long	_183
	.long	37
	.long	2
_330:
	.asciz	"initRegexen"
	.align	4
_329:
	.long	1
	.long	_330
	.long	0
	.align	4
_257:
	.long	_183
	.long	40
	.long	3
	.align	4
_262:
	.long	_183
	.long	42
	.long	3
	.align	4
_20:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	112,117,98,108,105,99,32,115,116,97,116,105,99,32,92,49
	.align	4
_19:
	.long	_bbStringClass
	.long	2147483647
	.long	32
	.short	70,117,110,99,116,105,111,110,92,104,42,40,91,92,119,92
	.short	100,95,93,43,92,104,42,91,58,33,37,35,92,36,93,41
	.align	4
_263:
	.long	_183
	.long	43
	.long	3
	.align	4
_22:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	112,117,98,108,105,99,32,92,49
	.align	4
_21:
	.long	_bbStringClass
	.long	2147483647
	.long	30
	.short	77,101,116,104,111,100,92,104,42,40,91,92,119,92,100,95
	.short	93,43,92,104,42,91,58,33,37,35,92,36,93,41
	.align	4
_264:
	.long	_183
	.long	44
	.long	3
	.align	4
_24:
	.long	_bbStringClass
	.long	2147483647
	.long	21
	.short	112,117,98,108,105,99,32,115,116,97,116,105,99,32,118,111
	.short	105,100,32,92,49
	.align	4
_23:
	.long	_bbStringClass
	.long	2147483647
	.long	26
	.short	70,117,110,99,116,105,111,110,92,104,42,40,91,92,119,92
	.short	100,95,93,43,92,104,42,92,40,41
	.align	4
_265:
	.long	_183
	.long	45
	.long	3
	.align	4
_26:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	112,117,98,108,105,99,32,118,111,105,100,32,92,49
	.align	4
_25:
	.long	_bbStringClass
	.long	2147483647
	.long	24
	.short	77,101,116,104,111,100,92,104,42,40,91,92,119,92,100,95
	.short	93,43,92,104,42,92,40,41
	.align	4
_266:
	.long	_183
	.long	47
	.long	3
	.align	4
_28:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	92,49,32,123
	.align	4
_27:
	.long	_bbStringClass
	.long	2147483647
	.long	35
	.short	40,112,117,98,108,105,99,92,104,43,91,94,92,110,39,93
	.short	43,92,41,41,40,63,33,92,104,43,97,98,115,116,114,97
	.short	99,116,41
	.align	4
_267:
	.long	_183
	.long	48
	.long	3
	.align	4
_30:
	.long	_bbStringClass
	.long	2147483647
	.long	18
	.short	112,117,98,108,105,99,32,97,98,115,116,114,97,99,116,32
	.short	92,49
	.align	4
_29:
	.long	_bbStringClass
	.long	2147483647
	.long	31
	.short	112,117,98,108,105,99,92,104,43,40,91,94,92,110,39,93
	.short	43,92,41,41,92,104,43,97,98,115,116,114,97,99,116
	.align	4
_268:
	.long	_183
	.long	50
	.long	3
	.align	4
_32:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	123,32,92,49,32,125
	.align	4
_31:
	.long	_bbStringClass
	.long	2147483647
	.long	33
	.short	40,63,60,61,92,87,41,84,104,101,110,92,104,43,40,91
	.short	94,92,110,39,93,43,41,40,63,61,39,124,92,114,92,110
	.short	41
	.align	4
_269:
	.long	_183
	.long	51
	.long	3
	.align	4
_34:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	125,32,101,108,115,101,32,123,92,49
	.align	4
_33:
	.long	_bbStringClass
	.long	2147483647
	.long	22
	.short	40,63,60,61,92,87,41,69,108,115,101,40,92,87,43,41
	.short	40,63,33,73,102,41
	.align	4
_270:
	.long	_183
	.long	52
	.long	3
	.align	4
_36:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	125,32,101,108,115,101,32
	.align	4
_35:
	.long	_bbStringClass
	.long	2147483647
	.long	22
	.short	40,63,60,61,92,87,41,69,108,115,101,92,104,42,40,63
	.short	61,73,102,92,87,41
	.align	4
_271:
	.long	_183
	.long	54
	.long	3
	.align	4
_38:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	105,102,32,40,32,92,49,32,41,32
	.align	4
_37:
	.long	_bbStringClass
	.long	2147483647
	.long	29
	.short	40,63,60,61,92,87,41,73,102,92,87,43,40,91,94,92
	.short	110,39,92,123,93,43,41,40,63,61,92,123,41
	.align	4
_272:
	.long	_183
	.long	55
	.long	3
	.align	4
_40:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	105,102,32,40,32,92,49,32,41,32,123
	.align	4
_39:
	.long	_bbStringClass
	.long	2147483647
	.long	33
	.short	40,63,60,61,92,87,41,73,102,92,87,43,40,91,94,92
	.short	110,39,92,123,93,43,41,40,63,61,39,124,92,114,92,110
	.short	41
	.align	4
_273:
	.long	_183
	.long	56
	.long	3
	.align	4
_42:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	119,104,105,108,101,32,40,32,92,49,32,41,32,123
	.align	4
_41:
	.long	_bbStringClass
	.long	2147483647
	.long	34
	.short	40,63,60,61,92,87,41,87,104,105,108,101,92,87,43,40
	.short	91,94,92,110,39,93,43,41,40,63,61,39,124,92,114,92
	.short	110,41
	.align	4
_274:
	.long	_183
	.long	57
	.long	3
	.align	4
_44:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	102,111,114,32,40,32,92,49,32,41,32,123
	.align	4
_43:
	.long	_bbStringClass
	.long	2147483647
	.long	32
	.short	40,63,60,61,92,87,41,70,111,114,92,87,43,40,91,94
	.short	92,110,39,93,43,41,40,63,61,39,124,92,114,92,110,41
	.align	4
_275:
	.long	_183
	.long	58
	.long	3
	.align	4
_46:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	115,119,105,116,99,104,32,40,32,92,49,32,41,32,123
	.align	4
_45:
	.long	_bbStringClass
	.long	2147483647
	.long	35
	.short	40,63,60,61,92,87,41,83,101,108,101,99,116,92,87,43
	.short	40,91,94,92,110,39,93,43,41,40,63,61,39,124,92,114
	.short	92,110,41
	.align	4
_276:
	.long	_183
	.long	59
	.long	3
	.align	4
_48:
	.long	_bbStringClass
	.long	2147483647
	.long	18
	.short	125,32,119,104,105,108,101,32,40,33,40,32,92,49,32,41
	.short	41,59
	.align	4
_47:
	.long	_bbStringClass
	.long	2147483647
	.long	34
	.short	40,63,60,61,92,87,41,85,110,116,105,108,92,87,43,40
	.short	91,94,92,110,39,93,43,41,40,63,61,39,124,92,114,92
	.short	110,41
	.align	4
_277:
	.long	_183
	.long	61
	.long	3
	.align	4
_50:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	125,32,47,47,32,92,49
	.align	4
_49:
	.long	_bbStringClass
	.long	2147483647
	.long	52
	.short	40,101,110,100,40,92,104,42,41,40,109,101,116,104,111,100
	.short	124,102,117,110,99,116,105,111,110,124,116,121,112,101,124,119
	.short	104,105,108,101,124,116,114,121,124,105,102,124,115,101,108,101
	.short	99,116,41,41
	.align	4
_278:
	.long	_183
	.long	62
	.long	3
	.align	4
_51:
	.long	_bbStringClass
	.long	2147483647
	.long	24
	.short	40,63,60,61,92,87,41,40,110,101,120,116,124,119,101,110
	.short	100,41,40,63,61,92,87,41
	.align	4
_279:
	.long	_183
	.long	64
	.long	3
	.align	4
_53:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	101,120,116,101,110,100,115
	.align	4
_52:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	69,120,116,101,110,100,115
	.align	4
_280:
	.long	_183
	.long	65
	.long	3
	.align	4
_55:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	97,98,115,116,114,97,99,116
	.align	4
_54:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	65,98,115,116,114,97,99,116
	.align	4
_281:
	.long	_183
	.long	66
	.long	3
	.align	4
_57:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	110,117,108,108
	.align	4
_56:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	78,117,108,108
	.align	4
_282:
	.long	_183
	.long	67
	.long	3
	.align	4
_59:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	116,104,105,115
	.align	4
_58:
	.long	_bbStringClass
	.long	2147483647
	.long	17
	.short	40,63,60,61,92,87,41,83,101,108,102,40,63,61,92,87
	.short	41
	.align	4
_283:
	.long	_183
	.long	68
	.long	3
	.align	4
_61:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	115,117,112,101,114
	.align	4
_60:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	83,117,112,101,114
	.align	4
_284:
	.long	_183
	.long	69
	.long	3
	.align	4
_63:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	105,110,116
	.align	4
_62:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	73,110,116
	.align	4
_285:
	.long	_183
	.long	70
	.long	3
	.align	4
_65:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	102,108,111,97,116
	.align	4
_64:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	70,108,111,97,116
	.align	4
_286:
	.long	_183
	.long	71
	.long	3
	.align	4
_66:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	83,116,114,105,110,103
	.align	4
_287:
	.long	_183
	.long	72
	.long	3
	.align	4
_68:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	114,101,116,117,114,110
	.align	4
_67:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	82,101,116,117,114,110
	.align	4
_288:
	.long	_183
	.long	73
	.long	3
	.align	4
_70:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	99,97,115,101
	.align	4
_69:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	67,97,115,101
	.align	4
_289:
	.long	_183
	.long	74
	.long	3
	.align	4
_72:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	100,101,102,97,117,108,116
	.align	4
_71:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	68,101,102,97,117,108,116
	.align	4
_290:
	.long	_183
	.long	75
	.long	3
	.align	4
_74:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	116,104,114,111,119
	.align	4
_73:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	84,104,114,111,119
	.align	4
_291:
	.long	_183
	.long	76
	.long	3
	.align	4
_76:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	116,114,117,101
	.align	4
_75:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	84,114,117,101
	.align	4
_292:
	.long	_183
	.long	77
	.long	3
	.align	4
_78:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	102,97,108,115,101
	.align	4
_77:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	70,97,108,115,101
	.align	4
_293:
	.long	_183
	.long	78
	.long	3
	.align	4
_80:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	110,101,119,32,92,49,40,41
	.align	4
_79:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	78,101,119,92,104,43,40,91,92,119,92,100,95,93,43,41
	.align	4
_294:
	.long	_183
	.long	79
	.long	3
	.align	4
_82:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	47,47,32,92,49
	.align	4
_81:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	40,68,101,98,117,103,76,111,103,41
	.align	4
_295:
	.long	_183
	.long	81
	.long	3
	.align	4
_84:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	47,42,32,92,49,32,42,47
	.align	4
_83:
	.long	_bbStringClass
	.long	2147483647
	.long	20
	.short	40,63,60,61,92,87,41,40,76,111,99,97,108,41,40,63
	.short	61,92,104,41
	.align	4
_296:
	.long	_183
	.long	82
	.long	3
	.align	4
_86:
	.long	_bbStringClass
	.long	2147483647
	.long	7
	.short	112,117,98,108,105,99,32
	.align	4
_85:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	40,63,60,61,92,87,41,70,105,101,108,100,92,104,42
	.align	4
_297:
	.long	_183
	.long	83
	.long	3
	.align	4
_88:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	112,117,98,108,105,99,32,115,116,97,116,105,99,32
	.align	4
_87:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	40,63,60,61,92,87,41,71,108,111,98,97,108,92,104,42
	.align	4
_298:
	.long	_183
	.long	84
	.long	3
	.align	4
_90:
	.long	_bbStringClass
	.long	2147483647
	.long	29
	.short	47,42,32,92,49,32,42,47,32,112,117,98,108,105,99,32
	.short	115,116,97,116,105,99,32,102,105,110,97,108,32
	.align	4
_89:
	.long	_bbStringClass
	.long	2147483647
	.long	17
	.short	40,63,60,61,92,87,41,40,67,111,110,115,116,41,92,104
	.short	42
	.align	4
_299:
	.long	_183
	.long	86
	.long	3
	.align	4
_92:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	105,110,116,32,92,49
	.align	4
_91:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	40,91,92,119,92,100,95,93,43,41,37
	.align	4
_300:
	.long	_183
	.long	87
	.long	3
	.align	4
_94:
	.long	_bbStringClass
	.long	2147483647
	.long	8
	.short	102,108,111,97,116,32,92,49
	.align	4
_93:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	40,91,92,119,92,100,95,93,43,41,35
	.align	4
_301:
	.long	_183
	.long	88
	.long	3
	.align	4
_96:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	100,111,117,98,108,101,32,92,49
	.align	4
_95:
	.long	_bbStringClass
	.long	2147483647
	.long	11
	.short	40,91,92,119,92,100,95,93,43,41,33
	.align	4
_302:
	.long	_183
	.long	89
	.long	3
	.align	4
_98:
	.long	_bbStringClass
	.long	2147483647
	.long	9
	.short	83,116,114,105,110,103,32,92,49
	.align	4
_97:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	40,91,92,119,92,100,95,93,43,41,92,36
	.align	4
_303:
	.long	_183
	.long	90
	.long	3
	.align	4
_100:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	92,52,32,92,49
	.align	4
_99:
	.long	_bbStringClass
	.long	2147483647
	.long	35
	.short	40,91,92,119,92,100,95,93,43,41,40,92,104,42,41,58
	.short	40,92,104,42,41,40,91,92,119,92,100,95,92,91,92,93
	.short	93,43,41
	.align	4
_304:
	.long	_183
	.long	92
	.long	3
	.align	4
_102:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	92,49
	.align	4
_101:
	.long	_bbStringClass
	.long	2147483647
	.long	48
	.short	40,91,92,46,61,92,43,92,45,92,42,38,92,124,60,62
	.short	93,92,104,42,41,40,105,110,116,124,102,108,111,97,116,124
	.short	100,111,117,98,108,101,124,83,116,114,105,110,103,41,92,104
	.align	4
_305:
	.long	_183
	.long	93
	.long	3
	.align	4
_103:
	.long	_bbStringClass
	.long	2147483647
	.long	40
	.short	40,63,60,33,92,42,41,40,47,92,104,42,41,40,105,110
	.short	116,124,102,108,111,97,116,124,100,111,117,98,108,101,124,83
	.short	116,114,105,110,103,41,92,104
	.align	4
_306:
	.long	_183
	.long	95
	.long	3
	.align	4
_105:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	100,111,32,123
	.align	4
_104:
	.long	_bbStringClass
	.long	2147483647
	.long	19
	.short	40,63,60,61,92,87,41,82,101,112,101,97,116,40,63,61
	.short	92,87,41
	.align	4
_307:
	.long	_183
	.long	96
	.long	3
	.align	4
_107:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	125,32,119,104,105,108,101,32,40,116,114,117,101,41,59
	.align	4
_106:
	.long	_bbStringClass
	.long	2147483647
	.long	20
	.short	40,63,60,61,92,87,41,70,111,114,101,118,101,114,40,63
	.short	61,92,87,41
	.align	4
_308:
	.long	_183
	.long	97
	.long	3
	.align	4
_109:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	33,61
	.align	4
_108:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	60,62
	.align	4
_309:
	.long	_183
	.long	98
	.long	3
	.align	4
_111:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	62,61
	.align	4
_110:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	61,62
	.align	4
_310:
	.long	_183
	.long	99
	.long	3
	.align	4
_113:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	60,61
	.align	4
_112:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	61,60
	.align	4
_311:
	.long	_183
	.long	100
	.long	3
	.align	4
_115:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	38,38
	.align	4
_114:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	40,63,60,61,92,87,41,65,110,100,40,63,61,92,87,41
	.align	4
_312:
	.long	_183
	.long	101
	.long	3
	.align	4
_117:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	124,124
	.align	4
_116:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	40,63,60,61,92,87,41,79,114,40,63,61,92,87,41
	.align	4
_313:
	.long	_183
	.long	102
	.long	3
	.align	4
_119:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	33
	.align	4
_118:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	40,63,60,61,92,87,41,78,111,116,40,63,61,92,87,41
	.align	4
_314:
	.long	_183
	.long	103
	.long	3
	.align	4
_121:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	60,60
	.align	4
_120:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	40,63,60,61,92,87,41,83,104,108,40,63,61,92,87,41
	.align	4
_315:
	.long	_183
	.long	104
	.long	3
	.align	4
_123:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	62,62
	.align	4
_122:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	40,63,60,61,92,87,41,83,104,114,40,63,61,92,87,41
	.align	4
_316:
	.long	_183
	.long	105
	.long	3
	.align	4
_125:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	62,62,62
	.align	4
_124:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	40,63,60,61,92,87,41,83,97,114,40,63,61,92,87,41
	.align	4
_317:
	.long	_183
	.long	106
	.long	3
	.align	4
_127:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	37
	.align	4
_126:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	40,63,60,61,92,87,41,77,111,100,40,63,61,92,87,41
	.align	4
_318:
	.long	_183
	.long	107
	.long	3
	.align	4
_129:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	92,49,61
	.align	4
_128:
	.long	_bbStringClass
	.long	2147483647
	.long	31
	.short	58,40,92,43,124,45,124,92,42,124,47,124,38,124,92,124
	.short	124,126,124,60,60,124,62,62,124,62,62,62,124,37,41
	.align	4
_319:
	.long	_183
	.long	109
	.long	3
	.align	4
_131:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	92,49,95
	.align	4
_130:
	.long	_bbStringClass
	.long	2147483647
	.long	20
	.short	40,63,60,61,92,87,41,40,99,108,97,115,115,41,40,63
	.short	61,92,87,41
	.align	4
_320:
	.long	_183
	.long	111
	.long	3
	.align	4
_133:
	.long	_bbStringClass
	.long	2147483647
	.long	19
	.short	112,117,98,108,105,99,32,92,49,99,108,97,115,115,32,92
	.short	50,32,123
	.align	4
_132:
	.long	_bbStringClass
	.long	2147483647
	.long	55
	.short	40,97,98,115,116,114,97,99,116,92,104,43,41,63,116,121
	.short	112,101,92,104,43,40,91,92,119,92,100,95,93,43,40,92
	.short	104,101,120,116,101,110,100,115,92,104,40,91,92,119,92,100
	.short	95,93,43,41,41,63,41
	.align	4
_321:
	.long	_183
	.long	112
	.long	3
	.align	4
_135:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	92,49,59,92,50
	.align	4
_134:
	.long	_bbStringClass
	.long	2147483647
	.long	33
	.short	40,91,94,92,115,92,123,92,125,59,92,46,44,93,41,40
	.short	92,104,42,41,40,63,61,39,124,92,114,92,110,124,92,125
	.short	41
	.align	4
_322:
	.long	_183
	.long	114
	.long	3
	.align	4
_137:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	92,49,93,91
	.align	4
_136:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	40,92,91,91,94,44,92,110,92,93,93,43,41,44
	.align	4
_323:
	.long	_183
	.long	116
	.long	3
	.align	4
_139:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	47,47
	.align	4
_138:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	39
	.align	4
_324:
	.long	_183
	.long	117
	.long	3
	.align	4
_141:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	42,47
	.align	4
_140:
	.long	_bbStringClass
	.long	2147483647
	.long	24
	.short	40,63,60,61,92,87,41,101,110,100,40,92,104,42,41,114
	.short	101,109,40,63,61,92,87,41
	.align	4
_325:
	.long	_183
	.long	118
	.long	3
	.align	4
_143:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	47,42
	.align	4
_142:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	40,63,60,61,92,87,41,82,101,109,40,63,61,92,87,41
	.align	4
_326:
	.long	_183
	.long	120
	.long	3
	.align	4
_145:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	32,58,32
	.align	4
_144:
	.long	_bbStringClass
	.long	2147483647
	.long	16
	.short	61,92,104,42,69,97,99,104,73,110,40,63,61,92,87,41
	.align	4
_327:
	.long	_183
	.long	122
	.long	3
	.align	4
_147:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	92,49,61,61
	.align	4
_146:
	.long	_bbStringClass
	.long	2147483647
	.long	14
	.short	40,92,91,91,94,92,110,92,93,61,93,43,41,61
	.align	4
_328:
	.long	_183
	.long	124
	.long	3
	.align	4
_148:
	.long	_bbStringClass
	.long	2147483647
	.long	91
	.short	40,63,60,61,91,92,110,59,44,92,123,93,41,40,40,40
	.short	63,33,92,40,124,92,87,114,101,116,117,114,110,92,104,124
	.short	61,41,91,94,92,110,61,59,44,92,123,93,41,43,40,92
	.short	40,124,92,87,114,101,116,117,114,110,92,104,124,61,41,91
	.short	94,92,110,61,59,44,93,43,41,40,63,60,61,91,94,92
	.short	33,60,62,93,41,61,40,63,33,61,41
_335:
	.asciz	"AddRPair"
	.align	4
_334:
	.long	1
	.long	_335
	.long	2
	.long	_152
	.long	_155
	.long	-4
	.long	2
	.long	_154
	.long	_155
	.long	-8
	.long	0
	.align	4
_331:
	.long	_183
	.long	128
	.long	3
_340:
	.asciz	"Self"
	.align	4
_339:
	.long	1
	.long	_156
	.long	2
	.long	_340
	.long	_250
	.long	-4
	.long	0
	.align	4
_338:
	.long	3
	.long	0
	.long	0
	.align	4
_365:
	.long	1
	.long	_159
	.long	2
	.long	_152
	.long	_155
	.long	-4
	.long	2
	.long	_154
	.long	_155
	.long	-8
	.long	2
	.long	_249
	.long	_250
	.long	-12
	.long	0
	.align	4
_346:
	.long	_183
	.long	136
	.long	3
	.align	4
_348:
	.long	_183
	.long	137
	.long	3
	.align	4
_356:
	.long	_183
	.long	137
	.long	34
	.align	4
_364:
	.long	_183
	.long	138
	.long	3
