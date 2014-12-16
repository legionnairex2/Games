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
	.reference	_bbSqr
	.reference	_brl_blitz_NullObjectError
	.reference	_brl_graphics_Flip
	.reference	_brl_graphics_Graphics
	.reference	_brl_max2d_Cls
	.reference	_brl_max2d_DrawLine
	.reference	_brl_max2d_DrawOval
	.reference	_brl_max2d_SetColor
	.reference	_brl_polledinput_KeyDown
	.globl	__bb_Tgame_Create
	.globl	__bb_Tgame_Delete
	.globl	__bb_Tgame_New
	.globl	__bb_Tgame_render
	.globl	__bb_Tgame_update
	.globl	__bb_Tpoint_Delete
	.globl	__bb_Tpoint_New
	.globl	__bb_Tvector_Create
	.globl	__bb_Tvector_Delete
	.globl	__bb_Tvector_New
	.globl	__bb_Tvector_findIntersection
	.globl	__bb_Tvector_perP
	.globl	__bb_Tvector_project
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
	sub	$20,%esp
	cmpl	$0,_122
	je	_123
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_123:
	movl	$1,_122
	movl	%ebp,4(%esp)
	movl	$_118,(%esp)
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
	movl	$_102,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_105,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_106
	calll	*_bb_Tgame+48
	incl	4(%eax)
	movl	%eax,_bb_game
	orl	$1,_105
_106:
	movl	$_107,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$600,4(%esp)
	movl	$800,(%esp)
	call	_brl_graphics_Graphics
	movl	$_108,(%esp)
	calll	*_bbOnDebugEnterStm
_9:
	movl	%ebp,4(%esp)
	movl	$_117,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_109,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_max2d_Cls
	movl	$_110,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_112
	call	_brl_blitz_NullObjectError
_112:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_113,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_115
	call	_brl_blitz_NullObjectError
_115:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	movl	$_116,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,(%esp)
	call	_brl_graphics_Flip
	calll	*_bbOnDebugLeaveScope
_7:
	movl	$27,(%esp)
	call	_brl_polledinput_KeyDown
	cmp	$0,%eax
	je	_9
_8:
	mov	$0,%ebx
	jmp	_52
_52:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
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
	movl	$_125,(%esp)
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
	movl	$_124,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_55
_55:
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
_58:
	mov	$0,%eax
	jmp	_127
_127:
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
	movl	$_147,(%esp)
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
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_146,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_130,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_132
	call	_brl_blitz_NullObjectError
_132:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_137
	movl	%eax,(%esp)
	call	_bbGCFree
_137:
	movl	%esi,8(%ebx)
	movl	$_138,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_140
	call	_brl_blitz_NullObjectError
_140:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_145
	movl	%eax,(%esp)
	call	_bbGCFree
_145:
	movl	%esi,12(%ebx)
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_61
_61:
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
_64:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_150
	movl	%eax,(%esp)
	call	_bbGCFree
_150:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_152
	movl	%eax,(%esp)
	call	_bbGCFree
_152:
	mov	$0,%eax
	jmp	_148
_148:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$36,%esp
	push	%ebx
	sub	$16,%esp
	fldl	8(%ebp)
	fstpl	-8(%ebp)
	fldl	16(%ebp)
	fstpl	-16(%ebp)
	fldl	24(%ebp)
	fstpl	-24(%ebp)
	fldl	32(%ebp)
	fstpl	-32(%ebp)
	movl	$_bbNullObject,-36(%ebp)
	movl	%ebp,4(%esp)
	movl	$_180,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_153,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-36(%ebp)
	movl	$_155,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_157
	call	_brl_blitz_NullObjectError
_157:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_159
	call	_brl_blitz_NullObjectError
_159:
	fldl	-8(%ebp)
	fstpl	8(%ebx)
	movl	$_161,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_163
	call	_brl_blitz_NullObjectError
_163:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_165
	call	_brl_blitz_NullObjectError
_165:
	fldl	-16(%ebp)
	fstpl	16(%ebx)
	movl	$_167,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_169
	call	_brl_blitz_NullObjectError
_169:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_171
	call	_brl_blitz_NullObjectError
_171:
	fldl	-24(%ebp)
	fstpl	8(%ebx)
	movl	$_173,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_175
	call	_brl_blitz_NullObjectError
_175:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_177
	call	_brl_blitz_NullObjectError
_177:
	fldl	-32(%ebp)
	fstpl	16(%ebx)
	movl	$_179,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%ebx
	jmp	_70
_70:
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
	movl	$_262,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_186,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_188
	call	_brl_blitz_NullObjectError
_188:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_191
	call	_brl_blitz_NullObjectError
_191:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_193
	call	_brl_blitz_NullObjectError
_193:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_195
	call	_brl_blitz_NullObjectError
_195:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_197
	call	_brl_blitz_NullObjectError
_197:
	fldl	8(%esi)
	fsubl	8(%ebx)
	fstpl	16(%edi)
	movl	$_198,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_200
	call	_brl_blitz_NullObjectError
_200:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_203
	call	_brl_blitz_NullObjectError
_203:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_205
	call	_brl_blitz_NullObjectError
_205:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_207
	call	_brl_blitz_NullObjectError
_207:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_209
	call	_brl_blitz_NullObjectError
_209:
	fldl	16(%esi)
	fsubl	16(%ebx)
	fstpl	24(%edi)
	movl	$_210,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_212
	call	_brl_blitz_NullObjectError
_212:
	movl	%ebx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	cmpl	$_bbNullObject,-8(%ebp)
	jne	_215
	call	_brl_blitz_NullObjectError
_215:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_217
	call	_brl_blitz_NullObjectError
_217:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_219
	call	_brl_blitz_NullObjectError
_219:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_221
	call	_brl_blitz_NullObjectError
_221:
	movl	-8(%ebp),%eax
	fldl	16(%eax)
	fmull	16(%edi)
	fldl	24(%esi)
	fmull	24(%ebx)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	movl	-12(%ebp),%eax
	fstpl	32(%eax)
	movl	$_222,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_224
	call	_brl_blitz_NullObjectError
_224:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_227
	call	_brl_blitz_NullObjectError
_227:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_229
	call	_brl_blitz_NullObjectError
_229:
	fldl	16(%esi)
	fdivl	32(%ebx)
	fstpl	40(%edi)
	movl	$_230,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_232
	call	_brl_blitz_NullObjectError
_232:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_235
	call	_brl_blitz_NullObjectError
_235:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_237
	call	_brl_blitz_NullObjectError
_237:
	fldl	24(%esi)
	fdivl	32(%ebx)
	fstpl	48(%edi)
	movl	$_238,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_240
	call	_brl_blitz_NullObjectError
_240:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_243
	call	_brl_blitz_NullObjectError
_243:
	fldl	24(%ebx)
	fchs
	fstpl	56(%esi)
	movl	$_244,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_246
	call	_brl_blitz_NullObjectError
_246:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_249
	call	_brl_blitz_NullObjectError
_249:
	fldl	16(%ebx)
	fstpl	64(%esi)
	movl	$_250,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_252
	call	_brl_blitz_NullObjectError
_252:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_255
	call	_brl_blitz_NullObjectError
_255:
	fldl	24(%ebx)
	fstpl	72(%esi)
	movl	$_256,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_258
	call	_brl_blitz_NullObjectError
_258:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_261
	call	_brl_blitz_NullObjectError
_261:
	fldl	16(%esi)
	fchs
	fstpl	80(%ebx)
	mov	$0,%ebx
	jmp	_73
_73:
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
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_272,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_263,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	$_bbNullObject,-20(%ebp)
	jne	_265
	call	_brl_blitz_NullObjectError
_265:
	movl	-8(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_267
	call	_brl_blitz_NullObjectError
_267:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_269
	call	_brl_blitz_NullObjectError
_269:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_271
	call	_brl_blitz_NullObjectError
_271:
	movl	-20(%ebp),%eax
	fldl	16(%eax)
	fmull	24(%edi)
	fldl	24(%esi)
	fmull	16(%ebx)
	fsubrp	%st(0),%st(1)
	fstpl	-16(%ebp)
	jmp	_77
_77:
	calll	*_bbOnDebugLeaveScope
	fldl	-16(%ebp)
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
	sub	$32,%esp
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
	movl	$_358,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_274,(%esp)
	calll	*_bbOnDebugEnterStm
	fldz
	fstpl	-16(%ebp)
	movl	$_276,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_278,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_280
	call	_brl_blitz_NullObjectError
_280:
	mov	%ebx,%edi
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_283
	call	_brl_blitz_NullObjectError
_283:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_285
	call	_brl_blitz_NullObjectError
_285:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_287
	call	_brl_blitz_NullObjectError
_287:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_289
	call	_brl_blitz_NullObjectError
_289:
	fldl	8(%esi)
	fsubl	8(%ebx)
	fstpl	16(%edi)
	movl	$_290,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_292
	call	_brl_blitz_NullObjectError
_292:
	mov	%ebx,%edi
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_295
	call	_brl_blitz_NullObjectError
_295:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_297
	call	_brl_blitz_NullObjectError
_297:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_299
	call	_brl_blitz_NullObjectError
_299:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_301
	call	_brl_blitz_NullObjectError
_301:
	fldl	16(%esi)
	fsubl	16(%ebx)
	fstpl	24(%edi)
	movl	$_302,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_304
	call	_brl_blitz_NullObjectError
_304:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_306
	call	_brl_blitz_NullObjectError
_306:
	fldl	40(%esi)
	fldl	40(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_311
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_308
	call	_brl_blitz_NullObjectError
_308:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_310
	call	_brl_blitz_NullObjectError
_310:
	fldl	48(%esi)
	fldl	48(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_311:
	cmp	$0,%eax
	jne	_323
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_316
	call	_brl_blitz_NullObjectError
_316:
	fldl	40(%esi)
	fldl	40(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_321
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_318
	call	_brl_blitz_NullObjectError
_318:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_320
	call	_brl_blitz_NullObjectError
_320:
	fldl	48(%esi)
	fldl	48(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_321:
_323:
	cmp	$0,%eax
	je	_325
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_327,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_326,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_bbNullObject,%ebx
	calll	*_bbOnDebugLeaveScope
	jmp	_81
_325:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_334,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_329,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_331
	call	_brl_blitz_NullObjectError
_331:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_333
	call	_brl_blitz_NullObjectError
_333:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*56(%eax)
	fstpl	-32(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	fldl	-32(%ebp)
	fdivp	%st(0),%st(1)
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fstpl	-16(%ebp)
	calll	*_bbOnDebugLeaveScope
_328:
	movl	$_335,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	movl	%eax,-24(%ebp)
	movl	$_337,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_339
	call	_brl_blitz_NullObjectError
_339:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_342
	call	_brl_blitz_NullObjectError
_342:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_344
	call	_brl_blitz_NullObjectError
_344:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_346
	call	_brl_blitz_NullObjectError
_346:
	fldl	8(%esi)
	fldl	16(%ebx)
	fmull	-16(%ebp)
	faddp	%st(0),%st(1)
	fstpl	8(%edi)
	movl	$_347,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_349
	call	_brl_blitz_NullObjectError
_349:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_352
	call	_brl_blitz_NullObjectError
_352:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_354
	call	_brl_blitz_NullObjectError
_354:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_356
	call	_brl_blitz_NullObjectError
_356:
	fldl	16(%esi)
	fldl	24(%ebx)
	fmull	-16(%ebp)
	faddp	%st(0),%st(1)
	fstpl	16(%edi)
	movl	$_357,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	jmp	_81
_81:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_project:
	push	%ebp
	mov	%esp,%ebp
	sub	$32,%esp
	push	%ebx
	push	%esi
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	fldl	12(%ebp)
	fstpl	-12(%ebp)
	fldl	20(%ebp)
	fstpl	-20(%ebp)
	fldz
	fstpl	-28(%ebp)
	movl	$_bbNullObject,-32(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_377,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_360,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_362
	call	_brl_blitz_NullObjectError
_362:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_364
	call	_brl_blitz_NullObjectError
_364:
	fldl	16(%esi)
	fmull	-12(%ebp)
	fldl	24(%ebx)
	fmull	-20(%ebp)
	faddp	%st(0),%st(1)
	fstpl	-28(%ebp)
	movl	$_366,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-32(%ebp)
	movl	$_368,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_370
	call	_brl_blitz_NullObjectError
_370:
	fldl	-28(%ebp)
	fmull	-12(%ebp)
	fstpl	16(%ebx)
	movl	$_372,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_374
	call	_brl_blitz_NullObjectError
_374:
	fldl	-28(%ebp)
	fmull	-20(%ebp)
	fstpl	24(%ebx)
	movl	$_376,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	jmp	_86
_86:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
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
	movl	$_419,(%esp)
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
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_418,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_386,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_388
	call	_brl_blitz_NullObjectError
_388:
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_393
	movl	%eax,(%esp)
	call	_bbGCFree
_393:
	movl	%esi,8(%ebx)
	movl	$_394,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_396
	call	_brl_blitz_NullObjectError
_396:
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_401
	movl	%eax,(%esp)
	call	_bbGCFree
_401:
	movl	%esi,12(%ebx)
	movl	$_402,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_404
	call	_brl_blitz_NullObjectError
_404:
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_409
	movl	%eax,(%esp)
	call	_bbGCFree
_409:
	movl	%esi,24(%ebx)
	movl	$_410,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_412
	call	_brl_blitz_NullObjectError
_412:
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_417
	movl	%eax,(%esp)
	call	_bbGCFree
_417:
	movl	%esi,28(%ebx)
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_89
_89:
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
_92:
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_422
	movl	%eax,(%esp)
	call	_bbGCFree
_422:
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_424
	movl	%eax,(%esp)
	call	_bbGCFree
_424:
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_426
	movl	%eax,(%esp)
	call	_bbGCFree
_426:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_428
	movl	%eax,(%esp)
	call	_bbGCFree
_428:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_430
	movl	%eax,(%esp)
	call	_bbGCFree
_430:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_432
	movl	%eax,(%esp)
	call	_bbGCFree
_432:
	mov	$0,%eax
	jmp	_420
_420:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	sub	$44,%esp
	movl	$_bbNullObject,-4(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_503,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_433,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectNew
	movl	%eax,-4(%ebp)
	movl	$_435,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_437
	call	_brl_blitz_NullObjectError
_437:
	fldl	_752
	fstpl	24(%esp)
	fldl	_753
	fstpl	16(%esp)
	fldl	_754
	fstpl	8(%esp)
	fldl	_755
	fstpl	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_442
	movl	%eax,(%esp)
	call	_bbGCFree
_442:
	movl	%esi,8(%ebx)
	movl	$_443,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_445
	call	_brl_blitz_NullObjectError
_445:
	fldl	_756
	fstpl	24(%esp)
	fldl	_757
	fstpl	16(%esp)
	fldl	_758
	fstpl	8(%esp)
	fldl	_759
	fstpl	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_450
	movl	%eax,(%esp)
	call	_bbGCFree
_450:
	movl	%esi,12(%ebx)
	movl	$_451,(%esp)
	calll	*_bbOnDebugEnterStm
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
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_456,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_458
	call	_brl_blitz_NullObjectError
_458:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_460
	call	_brl_blitz_NullObjectError
_460:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_461,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_463
	call	_brl_blitz_NullObjectError
_463:
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_468
	movl	%eax,(%esp)
	call	_bbGCFree
_468:
	movl	%esi,16(%ebx)
	movl	$_469,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_471
	call	_brl_blitz_NullObjectError
_471:
	movl	16(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_473
	call	_brl_blitz_NullObjectError
_473:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_476
	call	_brl_blitz_NullObjectError
_476:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_478
	call	_brl_blitz_NullObjectError
_478:
	movl	8(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_482
	movl	%eax,(%esp)
	call	_bbGCFree
_482:
	movl	%ebx,8(%esi)
	movl	$_483,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_485
	call	_brl_blitz_NullObjectError
_485:
	movl	16(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_487
	call	_brl_blitz_NullObjectError
_487:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_490
	call	_brl_blitz_NullObjectError
_490:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_492
	call	_brl_blitz_NullObjectError
_492:
	movl	8(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	12(%esi),%eax
	decl	4(%eax)
	jnz	_496
	movl	%eax,(%esp)
	call	_bbGCFree
_496:
	movl	%ebx,12(%esi)
	movl	$_497,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_499
	call	_brl_blitz_NullObjectError
_499:
	movl	16(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_501
	call	_brl_blitz_NullObjectError
_501:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	$_502,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	jmp	_94
_94:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$44,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_update:
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
	movl	$_519,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_505,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_507
	call	_brl_blitz_NullObjectError
_507:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_510
	call	_brl_blitz_NullObjectError
_510:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_512
	call	_brl_blitz_NullObjectError
_512:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_514
	call	_brl_blitz_NullObjectError
_514:
	movl	12(%ebx),%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*60(%eax)
	incl	4(%eax)
	mov	%eax,%ebx
	movl	20(%edi),%eax
	decl	4(%eax)
	jnz	_518
	movl	%eax,(%esp)
	call	_bbGCFree
_518:
	movl	%ebx,20(%edi)
	mov	$0,%ebx
	jmp	_97
_97:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tgame_render:
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
	movl	$_635,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_520,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$255,8(%esp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	call	_brl_max2d_SetColor
	movl	$_521,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_523
	call	_brl_blitz_NullObjectError
_523:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_525
	call	_brl_blitz_NullObjectError
_525:
	movl	8(%ebx),%eax
	movl	%eax,-40(%ebp)
	cmpl	$_bbNullObject,-40(%ebp)
	jne	_527
	call	_brl_blitz_NullObjectError
_527:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_529
	call	_brl_blitz_NullObjectError
_529:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_531
	call	_brl_blitz_NullObjectError
_531:
	movl	8(%ebx),%eax
	movl	%eax,-28(%ebp)
	cmpl	$_bbNullObject,-28(%ebp)
	jne	_533
	call	_brl_blitz_NullObjectError
_533:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_535
	call	_brl_blitz_NullObjectError
_535:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_537
	call	_brl_blitz_NullObjectError
_537:
	movl	8(%ebx),%eax
	movl	%eax,-16(%ebp)
	cmpl	$_bbNullObject,-16(%ebp)
	jne	_539
	call	_brl_blitz_NullObjectError
_539:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_541
	call	_brl_blitz_NullObjectError
_541:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_543
	call	_brl_blitz_NullObjectError
_543:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_545
	call	_brl_blitz_NullObjectError
_545:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_547
	call	_brl_blitz_NullObjectError
_547:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_549
	call	_brl_blitz_NullObjectError
_549:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_551
	call	_brl_blitz_NullObjectError
_551:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_553
	call	_brl_blitz_NullObjectError
_553:
	movl	$1,16(%esp)
	fldl	16(%esi)
	faddl	24(%ebx)
	fstps	12(%esp)
	movl	-16(%ebp),%eax
	fldl	8(%eax)
	faddl	16(%edi)
	fstps	8(%esp)
	movl	-28(%ebp),%eax
	fldl	16(%eax)
	fstps	4(%esp)
	movl	-40(%ebp),%eax
	fldl	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$_554,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_556
	call	_brl_blitz_NullObjectError
_556:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_558
	call	_brl_blitz_NullObjectError
_558:
	movl	8(%ebx),%eax
	movl	%eax,-36(%ebp)
	cmpl	$_bbNullObject,-36(%ebp)
	jne	_560
	call	_brl_blitz_NullObjectError
_560:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_562
	call	_brl_blitz_NullObjectError
_562:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_564
	call	_brl_blitz_NullObjectError
_564:
	movl	8(%ebx),%eax
	movl	%eax,-24(%ebp)
	cmpl	$_bbNullObject,-24(%ebp)
	jne	_566
	call	_brl_blitz_NullObjectError
_566:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_568
	call	_brl_blitz_NullObjectError
_568:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_570
	call	_brl_blitz_NullObjectError
_570:
	movl	8(%ebx),%eax
	movl	%eax,-12(%ebp)
	cmpl	$_bbNullObject,-12(%ebp)
	jne	_572
	call	_brl_blitz_NullObjectError
_572:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_574
	call	_brl_blitz_NullObjectError
_574:
	movl	12(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_576
	call	_brl_blitz_NullObjectError
_576:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_578
	call	_brl_blitz_NullObjectError
_578:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_580
	call	_brl_blitz_NullObjectError
_580:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_582
	call	_brl_blitz_NullObjectError
_582:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_584
	call	_brl_blitz_NullObjectError
_584:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_586
	call	_brl_blitz_NullObjectError
_586:
	movl	$1,16(%esp)
	fldl	16(%esi)
	faddl	24(%ebx)
	fstps	12(%esp)
	movl	-12(%ebp),%eax
	fldl	8(%eax)
	faddl	16(%edi)
	fstps	8(%esp)
	movl	-24(%ebp),%eax
	fldl	16(%eax)
	fstps	4(%esp)
	movl	-36(%ebp),%eax
	fldl	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$_587,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_589
	call	_brl_blitz_NullObjectError
_589:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_591
	call	_brl_blitz_NullObjectError
_591:
	movl	8(%ebx),%eax
	movl	%eax,-32(%ebp)
	cmpl	$_bbNullObject,-32(%ebp)
	jne	_593
	call	_brl_blitz_NullObjectError
_593:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_595
	call	_brl_blitz_NullObjectError
_595:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_597
	call	_brl_blitz_NullObjectError
_597:
	movl	8(%ebx),%eax
	movl	%eax,-20(%ebp)
	cmpl	$_bbNullObject,-20(%ebp)
	jne	_599
	call	_brl_blitz_NullObjectError
_599:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_601
	call	_brl_blitz_NullObjectError
_601:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_603
	call	_brl_blitz_NullObjectError
_603:
	movl	8(%ebx),%eax
	movl	%eax,-8(%ebp)
	cmpl	$_bbNullObject,-8(%ebp)
	jne	_605
	call	_brl_blitz_NullObjectError
_605:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_607
	call	_brl_blitz_NullObjectError
_607:
	movl	16(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_609
	call	_brl_blitz_NullObjectError
_609:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_611
	call	_brl_blitz_NullObjectError
_611:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_613
	call	_brl_blitz_NullObjectError
_613:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_615
	call	_brl_blitz_NullObjectError
_615:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_617
	call	_brl_blitz_NullObjectError
_617:
	movl	16(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_619
	call	_brl_blitz_NullObjectError
_619:
	movl	$1,16(%esp)
	fldl	16(%esi)
	faddl	24(%ebx)
	fstps	12(%esp)
	movl	-8(%ebp),%eax
	fldl	8(%eax)
	faddl	16(%edi)
	fstps	8(%esp)
	movl	-20(%ebp),%eax
	fldl	16(%eax)
	fstps	4(%esp)
	movl	-32(%ebp),%eax
	fldl	8(%eax)
	fstps	(%esp)
	call	_brl_max2d_DrawLine
	movl	$_620,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,8(%esp)
	movl	$0,4(%esp)
	movl	$255,(%esp)
	call	_brl_max2d_SetColor
	movl	$_621,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_623
	call	_brl_blitz_NullObjectError
_623:
	cmpl	$_bbNullObject,20(%ebx)
	je	_624
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_634,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_625,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_627
	call	_brl_blitz_NullObjectError
_627:
	movl	20(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_629
	call	_brl_blitz_NullObjectError
_629:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_631
	call	_brl_blitz_NullObjectError
_631:
	movl	20(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_633
	call	_brl_blitz_NullObjectError
_633:
	fld1
	fstps	12(%esp)
	fld1
	fstps	8(%esp)
	fldl	16(%ebx)
	fstps	4(%esp)
	fldl	8(%esi)
	fstps	(%esp)
	call	_brl_max2d_DrawOval
	calll	*_bbOnDebugLeaveScope
_624:
	mov	$0,%ebx
	jmp	_100
_100:
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
_122:
	.long	0
_119:
	.asciz	"intersection"
_120:
	.asciz	"game"
_121:
	.asciz	":Tgame"
	.align	4
_bb_game:
	.long	_bbNullObject
	.align	4
_118:
	.long	1
	.long	_119
	.long	4
	.long	_120
	.long	_121
	.long	_bb_game
	.long	0
_11:
	.asciz	"Tpoint"
_12:
	.asciz	"x"
_13:
	.asciz	"d"
_14:
	.asciz	"y"
_15:
	.asciz	"New"
_16:
	.asciz	"()i"
_17:
	.asciz	"Delete"
	.align	4
_10:
	.long	2
	.long	_11
	.long	3
	.long	_12
	.long	_13
	.long	8
	.long	3
	.long	_14
	.long	_13
	.long	16
	.long	6
	.long	_15
	.long	_16
	.long	16
	.long	6
	.long	_17
	.long	_16
	.long	20
	.long	0
	.align	4
_bb_Tpoint:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_10
	.long	24
	.long	__bb_Tpoint_New
	.long	__bb_Tpoint_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_19:
	.asciz	"Tvector"
_20:
	.asciz	"p0"
_21:
	.asciz	":Tpoint"
_22:
	.asciz	"p1"
_23:
	.asciz	"vx"
_24:
	.asciz	"vy"
_25:
	.asciz	"length"
_26:
	.asciz	"dx"
_27:
	.asciz	"dy"
_28:
	.asciz	"rx"
_29:
	.asciz	"ry"
_30:
	.asciz	"lx"
_31:
	.asciz	"ly"
_32:
	.asciz	"Create"
_33:
	.asciz	"(d,d,d,d):Tvector"
_34:
	.asciz	"update"
_35:
	.asciz	"perP"
_36:
	.asciz	"(:Tvector)d"
_37:
	.asciz	"findIntersection"
_38:
	.asciz	"(:Tvector):Tpoint"
_39:
	.asciz	"project"
_40:
	.asciz	"(d,d):Tvector"
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
	.long	3
	.long	_23
	.long	_13
	.long	16
	.long	3
	.long	_24
	.long	_13
	.long	24
	.long	3
	.long	_25
	.long	_13
	.long	32
	.long	3
	.long	_26
	.long	_13
	.long	40
	.long	3
	.long	_27
	.long	_13
	.long	48
	.long	3
	.long	_28
	.long	_13
	.long	56
	.long	3
	.long	_29
	.long	_13
	.long	64
	.long	3
	.long	_30
	.long	_13
	.long	72
	.long	3
	.long	_31
	.long	_13
	.long	80
	.long	6
	.long	_15
	.long	_16
	.long	16
	.long	6
	.long	_17
	.long	_16
	.long	20
	.long	7
	.long	_32
	.long	_33
	.long	48
	.long	6
	.long	_34
	.long	_16
	.long	52
	.long	6
	.long	_35
	.long	_36
	.long	56
	.long	6
	.long	_37
	.long	_38
	.long	60
	.long	6
	.long	_39
	.long	_40
	.long	64
	.long	0
	.align	4
_bb_Tvector:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_18
	.long	88
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
	.long	__bb_Tvector_project
_42:
	.asciz	"Tgame"
_43:
	.asciz	"v1"
_44:
	.asciz	":Tvector"
_45:
	.asciz	"v2"
_46:
	.asciz	"v3"
_47:
	.asciz	"ip"
_48:
	.asciz	"proj1"
_49:
	.asciz	"proj2"
_50:
	.asciz	"():Tgame"
_51:
	.asciz	"render"
	.align	4
_41:
	.long	2
	.long	_42
	.long	3
	.long	_43
	.long	_44
	.long	8
	.long	3
	.long	_45
	.long	_44
	.long	12
	.long	3
	.long	_46
	.long	_44
	.long	16
	.long	3
	.long	_47
	.long	_21
	.long	20
	.long	3
	.long	_48
	.long	_44
	.long	24
	.long	3
	.long	_49
	.long	_44
	.long	28
	.long	6
	.long	_15
	.long	_16
	.long	16
	.long	6
	.long	_17
	.long	_16
	.long	20
	.long	7
	.long	_32
	.long	_50
	.long	48
	.long	6
	.long	_34
	.long	_16
	.long	52
	.long	6
	.long	_51
	.long	_16
	.long	56
	.long	0
	.align	4
_bb_Tgame:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_41
	.long	32
	.long	__bb_Tgame_New
	.long	__bb_Tgame_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Tgame_Create
	.long	__bb_Tgame_update
	.long	__bb_Tgame_render
_103:
	.asciz	"/Users/jesseperez/Desktop/roll_ball/intersection.bmx"
	.align	4
_102:
	.long	_103
	.long	151
	.long	1
	.align	4
_105:
	.long	0
	.align	4
_107:
	.long	_103
	.long	153
	.long	1
	.align	4
_108:
	.long	_103
	.long	160
	.long	1
	.align	4
_117:
	.long	3
	.long	0
	.long	0
	.align	4
_109:
	.long	_103
	.long	155
	.long	2
	.align	4
_110:
	.long	_103
	.long	157
	.long	2
	.align	4
_113:
	.long	_103
	.long	158
	.long	2
	.align	4
_116:
	.long	_103
	.long	159
	.long	2
_126:
	.asciz	"Self"
	.align	4
_125:
	.long	1
	.long	_15
	.long	2
	.long	_126
	.long	_21
	.long	-4
	.long	0
	.align	4
_124:
	.long	3
	.long	0
	.long	0
	.align	4
_147:
	.long	1
	.long	_15
	.long	2
	.long	_126
	.long	_44
	.long	-4
	.long	0
	.align	4
_146:
	.long	3
	.long	0
	.long	0
	.align	4
_130:
	.long	_103
	.long	22
	.long	3
	.align	4
_138:
	.long	_103
	.long	23
	.long	3
_181:
	.asciz	"x1"
_182:
	.asciz	"y1"
_183:
	.asciz	"x2"
_184:
	.asciz	"y2"
_185:
	.asciz	"v"
	.align	4
_180:
	.long	1
	.long	_32
	.long	2
	.long	_181
	.long	_13
	.long	-8
	.long	2
	.long	_182
	.long	_13
	.long	-16
	.long	2
	.long	_183
	.long	_13
	.long	-24
	.long	2
	.long	_184
	.long	_13
	.long	-32
	.long	2
	.long	_185
	.long	_44
	.long	-36
	.long	0
	.align	4
_153:
	.long	_103
	.long	27
	.long	3
	.align	4
_155:
	.long	_103
	.long	28
	.long	3
	.align	4
_161:
	.long	_103
	.long	29
	.long	3
	.align	4
_167:
	.long	_103
	.long	30
	.long	3
	.align	4
_173:
	.long	_103
	.long	31
	.long	3
	.align	4
_179:
	.long	_103
	.long	32
	.long	3
	.align	4
_262:
	.long	1
	.long	_34
	.long	2
	.long	_126
	.long	_44
	.long	-4
	.long	0
	.align	4
_186:
	.long	_103
	.long	40
	.long	3
	.align	4
_198:
	.long	_103
	.long	41
	.long	3
	.align	4
_210:
	.long	_103
	.long	43
	.long	3
	.align	4
_222:
	.long	_103
	.long	45
	.long	3
	.align	4
_230:
	.long	_103
	.long	46
	.long	3
	.align	4
_238:
	.long	_103
	.long	48
	.long	3
	.align	4
_244:
	.long	_103
	.long	49
	.long	3
	.align	4
_250:
	.long	_103
	.long	51
	.long	3
	.align	4
_256:
	.long	_103
	.long	52
	.long	3
_273:
	.asciz	"vb"
	.align	4
_272:
	.long	1
	.long	_35
	.long	2
	.long	_126
	.long	_44
	.long	-4
	.long	2
	.long	_273
	.long	_44
	.long	-8
	.long	0
	.align	4
_263:
	.long	_103
	.long	57
	.long	3
_359:
	.asciz	"t"
	.align	4
_358:
	.long	1
	.long	_37
	.long	2
	.long	_126
	.long	_44
	.long	-4
	.long	2
	.long	_45
	.long	_44
	.long	-8
	.long	2
	.long	_359
	.long	_13
	.long	-16
	.long	2
	.long	_46
	.long	_44
	.long	-20
	.long	2
	.long	_47
	.long	_21
	.long	-24
	.long	0
	.align	4
_274:
	.long	_103
	.long	62
	.long	3
	.align	4
_276:
	.long	_103
	.long	64
	.long	3
	.align	4
_278:
	.long	_103
	.long	65
	.long	3
	.align	4
_290:
	.long	_103
	.long	66
	.long	3
	.align	4
_302:
	.long	_103
	.long	68
	.long	3
	.align	4
_327:
	.long	3
	.long	0
	.long	0
	.align	4
_326:
	.long	_103
	.long	69
	.long	4
	.align	4
_334:
	.long	3
	.long	0
	.long	0
	.align	4
_329:
	.long	_103
	.long	71
	.long	4
	.align	4
_335:
	.long	_103
	.long	74
	.long	3
	.align	4
_337:
	.long	_103
	.long	75
	.long	3
	.align	4
_347:
	.long	_103
	.long	76
	.long	3
	.align	4
_357:
	.long	_103
	.long	77
	.long	3
_378:
	.asciz	"dp"
_379:
	.asciz	"proj"
	.align	4
_377:
	.long	1
	.long	_39
	.long	2
	.long	_126
	.long	_44
	.long	-4
	.long	2
	.long	_26
	.long	_13
	.long	-12
	.long	2
	.long	_27
	.long	_13
	.long	-20
	.long	2
	.long	_378
	.long	_13
	.long	-28
	.long	2
	.long	_379
	.long	_44
	.long	-32
	.long	0
	.align	4
_360:
	.long	_103
	.long	83
	.long	3
	.align	4
_366:
	.long	_103
	.long	84
	.long	3
	.align	4
_368:
	.long	_103
	.long	86
	.long	3
	.align	4
_372:
	.long	_103
	.long	87
	.long	3
	.align	4
_376:
	.long	_103
	.long	88
	.long	3
	.align	4
_419:
	.long	1
	.long	_15
	.long	2
	.long	_126
	.long	_121
	.long	-4
	.long	0
	.align	4
_418:
	.long	3
	.long	0
	.long	0
	.align	4
_386:
	.long	_103
	.long	102
	.long	3
	.align	4
_394:
	.long	_103
	.long	103
	.long	3
	.align	4
_402:
	.long	_103
	.long	104
	.long	3
	.align	4
_410:
	.long	_103
	.long	105
	.long	3
_504:
	.asciz	"g"
	.align	4
_503:
	.long	1
	.long	_32
	.long	2
	.long	_504
	.long	_121
	.long	-4
	.long	0
	.align	4
_433:
	.long	_103
	.long	109
	.long	3
	.align	4
_435:
	.long	_103
	.long	114
	.long	3
	.align	8
_752:
	.long	0x0,0x40590000
	.align	8
_753:
	.long	0x0,0x40690000
	.align	8
_754:
	.long	0x0,0x40490000
	.align	8
_755:
	.long	0x0,0x4062c000
	.align	4
_443:
	.long	_103
	.long	120
	.long	3
	.align	8
_756:
	.long	0x0,0x4062c000
	.align	8
_757:
	.long	0x0,0x40690000
	.align	8
_758:
	.long	0x0,0x4062c000
	.align	8
_759:
	.long	0x0,0x40590000
	.align	4
_451:
	.long	_103
	.long	123
	.long	3
	.align	4
_456:
	.long	_103
	.long	124
	.long	3
	.align	4
_461:
	.long	_103
	.long	125
	.long	3
	.align	4
_469:
	.long	_103
	.long	126
	.long	3
	.align	4
_483:
	.long	_103
	.long	127
	.long	3
	.align	4
_497:
	.long	_103
	.long	128
	.long	3
	.align	4
_502:
	.long	_103
	.long	129
	.long	3
	.align	4
_519:
	.long	1
	.long	_34
	.long	2
	.long	_126
	.long	_121
	.long	-4
	.long	0
	.align	4
_505:
	.long	_103
	.long	133
	.long	3
	.align	4
_635:
	.long	1
	.long	_51
	.long	2
	.long	_126
	.long	_121
	.long	-4
	.long	0
	.align	4
_520:
	.long	_103
	.long	137
	.long	3
	.align	4
_521:
	.long	_103
	.long	138
	.long	3
	.align	4
_554:
	.long	_103
	.long	139
	.long	3
	.align	4
_587:
	.long	_103
	.long	140
	.long	3
	.align	4
_620:
	.long	_103
	.long	141
	.long	3
	.align	4
_621:
	.long	_103
	.long	142
	.long	3
	.align	4
_634:
	.long	3
	.long	0
	.long	0
	.align	4
_625:
	.long	_103
	.long	143
	.long	4
