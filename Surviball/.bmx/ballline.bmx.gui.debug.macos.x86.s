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
	.globl	__bb_Tpoint_Delete
	.globl	__bb_Tpoint_New
	.globl	__bb_Tvector_Create
	.globl	__bb_Tvector_Delete
	.globl	__bb_Tvector_New
	.globl	__bb_Tvector_bounce
	.globl	__bb_Tvector_findIntersection
	.globl	__bb_Tvector_perP
	.globl	__bb_Tvector_projectVector
	.globl	__bb_Tvector_updateVector
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
	sub	$16,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	cmpl	$0,_248
	je	_249
	mov	$0,%eax
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_249:
	movl	$1,_248
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_244,(%esp)
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
	movl	$_132,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_135,%eax
	and	$1,%eax
	cmp	$0,%eax
	jne	_136
	flds	_1089
	fstps	16(%esp)
	flds	_1090
	fstps	12(%esp)
	movl	$180,8(%esp)
	movl	$300,4(%esp)
	movl	$0,(%esp)
	calll	*_bb_Tgame+48
	incl	4(%eax)
	movl	%eax,_bb_game
	orl	$1,_135
_136:
	movl	$_137,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_139
	call	_brl_blitz_NullObjectError
_139:
	flds	_1091
	fstps	24(%esp)
	flds	_1092
	fstps	20(%esp)
	flds	_1093
	fstps	16(%esp)
	flds	_1094
	fstps	12(%esp)
	flds	_1095
	fstps	8(%esp)
	flds	_1096
	fstps	4(%esp)
	flds	_1097
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	32(%ebx),%eax
	decl	4(%eax)
	jnz	_144
	movl	%eax,(%esp)
	call	_bbGCFree
_144:
	movl	%esi,32(%ebx)
	movl	$_145,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_147
	call	_brl_blitz_NullObjectError
_147:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_149
	call	_brl_blitz_NullObjectError
_149:
	movl	32(%ebx),%eax
	movl	%eax,(%esp)
	movl	32(%esi),%eax
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$_150,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_152
	call	_brl_blitz_NullObjectError
_152:
	movl	36(%ebx),%ebx
	mov	$0,%esi
	cmpl	20(%ebx),%esi
	jb	_155
	call	_brl_blitz_ArrayBoundsError
_155:
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
	flds	_1098
	fstps	12(%esp)
	flds	_1099
	fstps	8(%esp)
	flds	_1100
	fstps	4(%esp)
	flds	_1101
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_160
	movl	%eax,(%esp)
	call	_bbGCFree
_160:
	movl	%esi,24(%ebx)
	movl	$_161,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_163
	call	_brl_blitz_NullObjectError
_163:
	movl	36(%ebx),%ebx
	mov	$1,%esi
	cmpl	20(%ebx),%esi
	jb	_166
	call	_brl_blitz_ArrayBoundsError
_166:
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
	flds	_1102
	fstps	12(%esp)
	flds	_1103
	fstps	8(%esp)
	flds	_1104
	fstps	4(%esp)
	flds	_1105
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_171
	movl	%eax,(%esp)
	call	_bbGCFree
_171:
	movl	%esi,24(%ebx)
	movl	$_172,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_174
	call	_brl_blitz_NullObjectError
_174:
	movl	36(%ebx),%ebx
	mov	$2,%esi
	cmpl	20(%ebx),%esi
	jb	_177
	call	_brl_blitz_ArrayBoundsError
_177:
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
	flds	_1106
	fstps	12(%esp)
	flds	_1107
	fstps	8(%esp)
	flds	_1108
	fstps	4(%esp)
	flds	_1109
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_182
	movl	%eax,(%esp)
	call	_bbGCFree
_182:
	movl	%esi,24(%ebx)
	movl	$_183,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_185
	call	_brl_blitz_NullObjectError
_185:
	movl	36(%ebx),%ebx
	mov	$3,%esi
	cmpl	20(%ebx),%esi
	jb	_188
	call	_brl_blitz_ArrayBoundsError
_188:
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
	flds	_1110
	fstps	12(%esp)
	flds	_1111
	fstps	8(%esp)
	flds	_1112
	fstps	4(%esp)
	flds	_1113
	fstps	(%esp)
	calll	*_bb_Tvector+48
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_193
	movl	%eax,(%esp)
	call	_bbGCFree
_193:
	movl	%esi,24(%ebx)
	movl	$_194,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_196
	call	_brl_blitz_NullObjectError
_196:
	movl	36(%ebx),%eax
	movl	%eax,-16(%ebp)
	mov	$0,%edi
	movl	-16(%ebp),%eax
	cmpl	20(%eax),%edi
	jb	_199
	call	_brl_blitz_ArrayBoundsError
_199:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_201
	call	_brl_blitz_NullObjectError
_201:
	movl	36(%ebx),%esi
	mov	$0,%ebx
	cmpl	20(%esi),%ebx
	jb	_204
	call	_brl_blitz_ArrayBoundsError
_204:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	24(%eax,%edi,4),%eax
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$_205,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_207
	call	_brl_blitz_NullObjectError
_207:
	movl	36(%ebx),%eax
	movl	%eax,-12(%ebp)
	mov	$1,%edi
	movl	-12(%ebp),%eax
	cmpl	20(%eax),%edi
	jb	_210
	call	_brl_blitz_ArrayBoundsError
_210:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_212
	call	_brl_blitz_NullObjectError
_212:
	movl	36(%ebx),%esi
	mov	$1,%ebx
	cmpl	20(%esi),%ebx
	jb	_215
	call	_brl_blitz_ArrayBoundsError
_215:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	24(%eax,%edi,4),%eax
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$_216,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_218
	call	_brl_blitz_NullObjectError
_218:
	movl	36(%ebx),%eax
	movl	%eax,-8(%ebp)
	mov	$2,%edi
	movl	-8(%ebp),%eax
	cmpl	20(%eax),%edi
	jb	_221
	call	_brl_blitz_ArrayBoundsError
_221:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_223
	call	_brl_blitz_NullObjectError
_223:
	movl	36(%ebx),%esi
	mov	$2,%ebx
	cmpl	20(%esi),%ebx
	jb	_226
	call	_brl_blitz_ArrayBoundsError
_226:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	24(%eax,%edi,4),%eax
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$_227,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_229
	call	_brl_blitz_NullObjectError
_229:
	movl	36(%ebx),%eax
	movl	%eax,-4(%ebp)
	mov	$3,%edi
	movl	-4(%ebp),%eax
	cmpl	20(%eax),%edi
	jb	_232
	call	_brl_blitz_ArrayBoundsError
_232:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_234
	call	_brl_blitz_NullObjectError
_234:
	movl	36(%ebx),%esi
	mov	$3,%ebx
	cmpl	20(%esi),%ebx
	jb	_237
	call	_brl_blitz_ArrayBoundsError
_237:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	24(%eax,%edi,4),%eax
	movl	(%eax),%eax
	calll	*52(%eax)
	movl	$_238,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$60,12(%esp)
	movl	$0,8(%esp)
	movl	$600,4(%esp)
	movl	$800,(%esp)
	call	_brl_graphics_Graphics
	movl	$_239,(%esp)
	calll	*_bbOnDebugEnterStm
_15:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_243,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_240,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_max2d_Cls
	movl	$_241,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_bb_runMe
	movl	$_242,(%esp)
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
	jmp	_68
_68:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$28,%esp
	pop	%edi
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
	movl	$_251,(%esp)
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
	movl	$_250,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_71
_71:
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
_74:
	mov	$0,%eax
	jmp	_253
_253:
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
	movl	$_273,(%esp)
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
	movl	$_272,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_256,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_258
	call	_brl_blitz_NullObjectError
_258:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_263
	movl	%eax,(%esp)
	call	_bbGCFree
_263:
	movl	%esi,8(%ebx)
	movl	$_264,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_266
	call	_brl_blitz_NullObjectError
_266:
	movl	$_bb_Tpoint,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_271
	movl	%eax,(%esp)
	call	_bbGCFree
_271:
	movl	%esi,12(%ebx)
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_77
_77:
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
_80:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_276
	movl	%eax,(%esp)
	call	_bbGCFree
_276:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_278
	movl	%eax,(%esp)
	call	_bbGCFree
_278:
	mov	$0,%eax
	jmp	_274
_274:
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
	movl	$_318,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_279,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-32(%ebp)
	movl	$_281,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_283
	call	_brl_blitz_NullObjectError
_283:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_285
	call	_brl_blitz_NullObjectError
_285:
	flds	-4(%ebp)
	fstps	8(%ebx)
	movl	$_287,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_289
	call	_brl_blitz_NullObjectError
_289:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_291
	call	_brl_blitz_NullObjectError
_291:
	flds	-8(%ebp)
	fstps	12(%ebx)
	movl	$_293,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_295
	call	_brl_blitz_NullObjectError
_295:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_297
	call	_brl_blitz_NullObjectError
_297:
	flds	-12(%ebp)
	fstps	8(%ebx)
	movl	$_299,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_301
	call	_brl_blitz_NullObjectError
_301:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_303
	call	_brl_blitz_NullObjectError
_303:
	flds	-16(%ebp)
	fstps	12(%ebx)
	movl	$_305,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_307
	call	_brl_blitz_NullObjectError
_307:
	flds	-20(%ebp)
	fstps	56(%ebx)
	movl	$_309,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_311
	call	_brl_blitz_NullObjectError
_311:
	flds	-24(%ebp)
	fstps	60(%ebx)
	movl	$_313,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_315
	call	_brl_blitz_NullObjectError
_315:
	flds	-28(%ebp)
	fstps	52(%ebx)
	movl	$_317,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-32(%ebp),%ebx
	jmp	_89
_89:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Tvector_updateVector:
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
	movl	$_414,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_323,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_325
	call	_brl_blitz_NullObjectError
_325:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_328
	call	_brl_blitz_NullObjectError
_328:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_330
	call	_brl_blitz_NullObjectError
_330:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_332
	call	_brl_blitz_NullObjectError
_332:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_334
	call	_brl_blitz_NullObjectError
_334:
	flds	8(%esi)
	fsubs	8(%ebx)
	fstps	16(%edi)
	movl	$_335,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_337
	call	_brl_blitz_NullObjectError
_337:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_340
	call	_brl_blitz_NullObjectError
_340:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_342
	call	_brl_blitz_NullObjectError
_342:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_344
	call	_brl_blitz_NullObjectError
_344:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_346
	call	_brl_blitz_NullObjectError
_346:
	flds	12(%esi)
	fsubs	12(%ebx)
	fstps	20(%edi)
	movl	$_347,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_349
	call	_brl_blitz_NullObjectError
_349:
	movl	%ebx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	cmpl	$_bbNullObject,-8(%ebp)
	jne	_352
	call	_brl_blitz_NullObjectError
_352:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_354
	call	_brl_blitz_NullObjectError
_354:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_356
	call	_brl_blitz_NullObjectError
_356:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_358
	call	_brl_blitz_NullObjectError
_358:
	movl	-8(%ebp),%eax
	flds	16(%eax)
	fmuls	16(%edi)
	flds	20(%esi)
	fmuls	20(%ebx)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	movl	-12(%ebp),%eax
	fstps	32(%eax)
	movl	$_359,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_361
	call	_brl_blitz_NullObjectError
_361:
	flds	32(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_362
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_379,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_363,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_365
	call	_brl_blitz_NullObjectError
_365:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_368
	call	_brl_blitz_NullObjectError
_368:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_370
	call	_brl_blitz_NullObjectError
_370:
	flds	16(%esi)
	fdivs	32(%ebx)
	fstps	24(%edi)
	movl	$_371,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_373
	call	_brl_blitz_NullObjectError
_373:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_376
	call	_brl_blitz_NullObjectError
_376:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_378
	call	_brl_blitz_NullObjectError
_378:
	flds	20(%esi)
	fdivs	32(%ebx)
	fstps	28(%edi)
	calll	*_bbOnDebugLeaveScope
	jmp	_380
_362:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_389,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_381,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_383
	call	_brl_blitz_NullObjectError
_383:
	fldz
	fstps	24(%ebx)
	movl	$_385,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_387
	call	_brl_blitz_NullObjectError
_387:
	fldz
	fstps	28(%ebx)
	calll	*_bbOnDebugLeaveScope
_380:
	movl	$_390,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_392
	call	_brl_blitz_NullObjectError
_392:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_395
	call	_brl_blitz_NullObjectError
_395:
	flds	20(%ebx)
	fchs
	fstps	36(%esi)
	movl	$_396,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_398
	call	_brl_blitz_NullObjectError
_398:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_401
	call	_brl_blitz_NullObjectError
_401:
	flds	16(%ebx)
	fstps	40(%esi)
	movl	$_402,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_404
	call	_brl_blitz_NullObjectError
_404:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_407
	call	_brl_blitz_NullObjectError
_407:
	flds	20(%ebx)
	fstps	44(%esi)
	movl	$_408,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_410
	call	_brl_blitz_NullObjectError
_410:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_413
	call	_brl_blitz_NullObjectError
_413:
	flds	16(%esi)
	fchs
	fstps	48(%ebx)
	mov	$0,%ebx
	jmp	_92
_92:
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
	movl	$_513,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_415,(%esp)
	calll	*_bbOnDebugEnterStm
	fldz
	fstps	-12(%ebp)
	fldz
	fstps	-16(%ebp)
	movl	$_418,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_420,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_422
	call	_brl_blitz_NullObjectError
_422:
	mov	%ebx,%edi
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_425
	call	_brl_blitz_NullObjectError
_425:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_427
	call	_brl_blitz_NullObjectError
_427:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_429
	call	_brl_blitz_NullObjectError
_429:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_431
	call	_brl_blitz_NullObjectError
_431:
	flds	8(%esi)
	fsubs	8(%ebx)
	fstps	16(%edi)
	movl	$_432,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_434
	call	_brl_blitz_NullObjectError
_434:
	mov	%ebx,%edi
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_437
	call	_brl_blitz_NullObjectError
_437:
	movl	8(%ebx),%esi
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
	flds	12(%esi)
	fsubs	12(%ebx)
	fstps	20(%edi)
	movl	$_444,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-24(%ebp)
	movl	$_446,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_448
	call	_brl_blitz_NullObjectError
_448:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_451
	call	_brl_blitz_NullObjectError
_451:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_453
	call	_brl_blitz_NullObjectError
_453:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_455
	call	_brl_blitz_NullObjectError
_455:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_457
	call	_brl_blitz_NullObjectError
_457:
	flds	8(%esi)
	fsubs	8(%ebx)
	fstps	16(%edi)
	movl	$_458,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_460
	call	_brl_blitz_NullObjectError
_460:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_463
	call	_brl_blitz_NullObjectError
_463:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_465
	call	_brl_blitz_NullObjectError
_465:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_467
	call	_brl_blitz_NullObjectError
_467:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_469
	call	_brl_blitz_NullObjectError
_469:
	flds	12(%esi)
	fsubs	12(%ebx)
	fstps	20(%edi)
	movl	$_470,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_472
	call	_brl_blitz_NullObjectError
_472:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_474
	call	_brl_blitz_NullObjectError
_474:
	flds	24(%esi)
	flds	24(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_479
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_476
	call	_brl_blitz_NullObjectError
_476:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_478
	call	_brl_blitz_NullObjectError
_478:
	flds	28(%esi)
	flds	28(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_479:
	cmp	$0,%eax
	jne	_491
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_482
	call	_brl_blitz_NullObjectError
_482:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_484
	call	_brl_blitz_NullObjectError
_484:
	flds	24(%esi)
	flds	24(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	je	_489
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_486
	call	_brl_blitz_NullObjectError
_486:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_488
	call	_brl_blitz_NullObjectError
_488:
	flds	28(%esi)
	flds	28(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setz	%al
	movzbl	%al,%eax
_489:
_491:
	cmp	$0,%eax
	je	_493
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_495,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_494,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_1204
	fstps	-36(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_96
_493:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_499,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_497,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	calll	*_bb_Tvector+60
	fstps	-32(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	calll	*_bb_Tvector+60
	flds	-32(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-32(%ebp)
	flds	-32(%ebp)
	fstps	-12(%ebp)
	movl	$_498,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	calll	*_bb_Tvector+60
	fstps	-28(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	calll	*_bb_Tvector+60
	flds	-28(%ebp)
	fdivp	%st(0),%st(1)
	fstps	-28(%ebp)
	flds	-28(%ebp)
	fstps	-16(%ebp)
	calll	*_bbOnDebugLeaveScope
_496:
	movl	$_500,(%esp)
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
	je	_501
	flds	-12(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_501:
	cmp	$0,%eax
	je	_503
	flds	-16(%ebp)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al,%eax
_503:
	cmp	$0,%eax
	je	_505
	flds	-16(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
_505:
	cmp	$0,%eax
	je	_507
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_509,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_508,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	-12(%ebp)
	fstps	-36(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_96
_507:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_512,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_511,(%esp)
	calll	*_bbOnDebugEnterStm
	flds	_1205
	fstps	-36(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_96
_96:
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
	movl	$_530,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_521,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	$_bbNullObject,-16(%ebp)
	jne	_523
	call	_brl_blitz_NullObjectError
_523:
	movl	-8(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_525
	call	_brl_blitz_NullObjectError
_525:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_527
	call	_brl_blitz_NullObjectError
_527:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_529
	call	_brl_blitz_NullObjectError
_529:
	movl	-16(%ebp),%eax
	flds	16(%eax)
	fmuls	20(%edi)
	flds	20(%esi)
	fmuls	16(%ebx)
	fsubrp	%st(0),%st(1)
	fstps	-12(%ebp)
	jmp	_100
_100:
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
	sub	$56,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	movl	$_bbNullObject,-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_592,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_533,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_535
	call	_brl_blitz_NullObjectError
_535:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_537
	call	_brl_blitz_NullObjectError
_537:
	flds	28(%ebx)
	fstps	8(%esp)
	flds	24(%esi)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	calll	*_bb_Tvector+68
	movl	%eax,-12(%ebp)
	movl	$_539,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	$_bbNullObject,-32(%ebp)
	jne	_541
	call	_brl_blitz_NullObjectError
_541:
	movl	-8(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_543
	call	_brl_blitz_NullObjectError
_543:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_545
	call	_brl_blitz_NullObjectError
_545:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_547
	call	_brl_blitz_NullObjectError
_547:
	flds	48(%esi)
	fdivs	32(%ebx)
	fstps	8(%esp)
	movl	-32(%ebp),%eax
	flds	44(%eax)
	fdivs	32(%edi)
	fstps	4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	calll	*_bb_Tvector+68
	movl	%eax,-16(%ebp)
	movl	$_549,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_551,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_553
	call	_brl_blitz_NullObjectError
_553:
	flds	16(%ebx)
	fmuls	_1256
	fstps	16(%ebx)
	movl	$_555,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_557
	call	_brl_blitz_NullObjectError
_557:
	flds	20(%ebx)
	fmuls	_1257
	fstps	20(%ebx)
	movl	$_559,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_561
	call	_brl_blitz_NullObjectError
_561:
	movl	%ebx,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	cmpl	$_bbNullObject,-48(%ebp)
	jne	_564
	call	_brl_blitz_NullObjectError
_564:
	movl	-8(%ebp),%eax
	movl	%eax,-40(%ebp)
	cmpl	$_bbNullObject,-40(%ebp)
	jne	_566
	call	_brl_blitz_NullObjectError
_566:
	movl	-12(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpl	$_bbNullObject,-28(%ebp)
	jne	_568
	call	_brl_blitz_NullObjectError
_568:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_570
	call	_brl_blitz_NullObjectError
_570:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_572
	call	_brl_blitz_NullObjectError
_572:
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_574
	call	_brl_blitz_NullObjectError
_574:
	movl	-48(%ebp),%eax
	flds	60(%eax)
	movl	-40(%ebp),%eax
	fmuls	60(%eax)
	movl	-28(%ebp),%eax
	fmuls	16(%eax)
	flds	56(%edi)
	fmuls	56(%esi)
	fmuls	16(%ebx)
	faddp	%st(0),%st(1)
	movl	-56(%ebp),%eax
	fstps	16(%eax)
	movl	$_575,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_577
	call	_brl_blitz_NullObjectError
_577:
	movl	%ebx,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-44(%ebp)
	cmpl	$_bbNullObject,-44(%ebp)
	jne	_580
	call	_brl_blitz_NullObjectError
_580:
	movl	-8(%ebp),%eax
	movl	%eax,-36(%ebp)
	cmpl	$_bbNullObject,-36(%ebp)
	jne	_582
	call	_brl_blitz_NullObjectError
_582:
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	$_bbNullObject,-24(%ebp)
	jne	_584
	call	_brl_blitz_NullObjectError
_584:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_586
	call	_brl_blitz_NullObjectError
_586:
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_588
	call	_brl_blitz_NullObjectError
_588:
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_590
	call	_brl_blitz_NullObjectError
_590:
	movl	-44(%ebp),%eax
	flds	60(%eax)
	movl	-36(%ebp),%eax
	fmuls	60(%eax)
	movl	-24(%ebp),%eax
	fmuls	20(%eax)
	flds	56(%edi)
	fmuls	56(%esi)
	fmuls	20(%ebx)
	faddp	%st(0),%st(1)
	movl	-52(%ebp),%eax
	fstps	20(%eax)
	movl	$_591,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	jmp	_104
_104:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
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
	movl	$_613,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_596,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_598
	call	_brl_blitz_NullObjectError
_598:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_600
	call	_brl_blitz_NullObjectError
_600:
	flds	16(%esi)
	fmuls	-8(%ebp)
	flds	20(%ebx)
	fmuls	-12(%ebp)
	faddp	%st(0),%st(1)
	fstps	-16(%ebp)
	movl	$_602,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tvector,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_604,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_606
	call	_brl_blitz_NullObjectError
_606:
	flds	-16(%ebp)
	fmuls	-8(%ebp)
	fstps	16(%ebx)
	movl	$_608,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_610
	call	_brl_blitz_NullObjectError
_610:
	flds	-16(%ebp)
	fmuls	-12(%ebp)
	fstps	20(%ebx)
	movl	$_612,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	jmp	_109
_109:
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
	movl	$_620,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Tgame,(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
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
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,32(%eax)
	movl	$4,4(%esp)
	movl	$_617,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
	movl	-4(%ebp),%eax
	movl	$0,40(%eax)
	movl	%ebp,4(%esp)
	movl	$_619,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_112
_112:
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
_115:
	movl	36(%ebx),%eax
	decl	4(%eax)
	jnz	_623
	movl	%eax,(%esp)
	call	_bbGCFree
_623:
	movl	32(%ebx),%eax
	decl	4(%eax)
	jnz	_625
	movl	%eax,(%esp)
	call	_bbGCFree
_625:
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_627
	movl	%eax,(%esp)
	call	_bbGCFree
_627:
	mov	$0,%eax
	jmp	_621
_621:
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
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	flds	20(%ebp)
	fstps	-16(%ebp)
	flds	24(%ebp)
	fstps	-20(%ebp)
	movl	$_bbNullObject,-24(%ebp)
	movl	%ebp,4(%esp)
	movl	$_651,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_628,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Tgame,(%esp)
	call	_bbObjectNew
	movl	%eax,-24(%ebp)
	movl	$_630,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_632
	call	_brl_blitz_NullObjectError
_632:
	movl	-4(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	$_634,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_636
	call	_brl_blitz_NullObjectError
_636:
	movl	-8(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	$_638,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_640
	call	_brl_blitz_NullObjectError
_640:
	movl	-12(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	$_642,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_644
	call	_brl_blitz_NullObjectError
_644:
	flds	-16(%ebp)
	fstps	20(%ebx)
	movl	$_646,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_648
	call	_brl_blitz_NullObjectError
_648:
	flds	-20(%ebp)
	fstps	24(%ebx)
	movl	$_650,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%ebx
	jmp	_122
_122:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_drawAll:
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
	movl	$_694,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_655,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-8(%ebp)
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_658
	call	_brl_blitz_NullObjectError
_658:
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
	movl	$_684,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_663,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_665
	call	_brl_blitz_NullObjectError
_665:
	movl	8(%ebx),%eax
	movl	%eax,-20(%ebp)
	cmpl	$_bbNullObject,-20(%ebp)
	jne	_667
	call	_brl_blitz_NullObjectError
_667:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_669
	call	_brl_blitz_NullObjectError
_669:
	movl	8(%ebx),%eax
	movl	%eax,-16(%ebp)
	cmpl	$_bbNullObject,-16(%ebp)
	jne	_671
	call	_brl_blitz_NullObjectError
_671:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_673
	call	_brl_blitz_NullObjectError
_673:
	movl	8(%ebx),%eax
	movl	%eax,-12(%ebp)
	cmpl	$_bbNullObject,-12(%ebp)
	jne	_675
	call	_brl_blitz_NullObjectError
_675:
	movl	-8(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_677
	call	_brl_blitz_NullObjectError
_677:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_679
	call	_brl_blitz_NullObjectError
_679:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_681
	call	_brl_blitz_NullObjectError
_681:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_683
	call	_brl_blitz_NullObjectError
_683:
	movl	$1,16(%esp)
	flds	12(%esi)
	fadds	20(%ebx)
	fstps	12(%esp)
	movl	-12(%ebp),%eax
	flds	8(%eax)
	fadds	16(%edi)
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
	movl	$_685,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_687
	call	_brl_blitz_NullObjectError
_687:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_689
	call	_brl_blitz_NullObjectError
_689:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_691
	call	_brl_blitz_NullObjectError
_691:
	movl	8(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_693
	call	_brl_blitz_NullObjectError
_693:
	flds	_1302
	fstps	12(%esp)
	flds	_1303
	fstps	8(%esp)
	flds	12(%ebx)
	fsubs	_1304
	fstps	4(%esp)
	flds	8(%esi)
	fsubs	_1305
	fstps	(%esp)
	call	_brl_max2d_DrawOval
	mov	$0,%ebx
	jmp	_125
_125:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_runMe:
	push	%ebp
	mov	%esp,%ebp
	sub	$36,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	$_bbNullObject,-4(%ebp)
	movl	$_bbNullObject,-8(%ebp)
	fldz
	fstps	-12(%ebp)
	movl	$_bbNullObject,-16(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_976,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_696,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_698
	call	_brl_blitz_NullObjectError
_698:
	movl	32(%ebx),%eax
	movl	%eax,-4(%ebp)
	movl	$_700,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_702
	call	_brl_blitz_NullObjectError
_702:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_705
	call	_brl_blitz_NullObjectError
_705:
	flds	16(%ebx)
	fmuls	52(%esi)
	fstps	16(%ebx)
	movl	$_706,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_708
	call	_brl_blitz_NullObjectError
_708:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_711
	call	_brl_blitz_NullObjectError
_711:
	flds	20(%ebx)
	fmuls	52(%esi)
	fstps	20(%ebx)
	movl	$_712,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_714
	call	_brl_blitz_NullObjectError
_714:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_716
	call	_brl_blitz_NullObjectError
_716:
	flds	16(%esi)
	flds	20(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_717
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_724,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_718,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_720
	call	_brl_blitz_NullObjectError
_720:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_723
	call	_brl_blitz_NullObjectError
_723:
	flds	20(%ebx)
	fstps	16(%esi)
	calll	*_bbOnDebugLeaveScope
	jmp	_725
_717:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_739,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_726,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_728
	call	_brl_blitz_NullObjectError
_728:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_730
	call	_brl_blitz_NullObjectError
_730:
	flds	16(%esi)
	flds	20(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_731
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_738,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_732,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_734
	call	_brl_blitz_NullObjectError
_734:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_737
	call	_brl_blitz_NullObjectError
_737:
	flds	20(%ebx)
	fchs
	fstps	16(%esi)
	calll	*_bbOnDebugLeaveScope
_731:
	calll	*_bbOnDebugLeaveScope
_725:
	movl	$_740,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_742
	call	_brl_blitz_NullObjectError
_742:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_744
	call	_brl_blitz_NullObjectError
_744:
	flds	20(%esi)
	flds	20(%ebx)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_745
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_752,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_746,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_748
	call	_brl_blitz_NullObjectError
_748:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_751
	call	_brl_blitz_NullObjectError
_751:
	flds	20(%ebx)
	fstps	20(%esi)
	calll	*_bbOnDebugLeaveScope
	jmp	_753
_745:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_767,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_754,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_756
	call	_brl_blitz_NullObjectError
_756:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_758
	call	_brl_blitz_NullObjectError
_758:
	flds	20(%esi)
	flds	20(%ebx)
	fchs
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_759
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_766,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_760,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_762
	call	_brl_blitz_NullObjectError
_762:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_765
	call	_brl_blitz_NullObjectError
_765:
	flds	20(%ebx)
	fchs
	fstps	20(%esi)
	calll	*_bbOnDebugLeaveScope
_759:
	calll	*_bbOnDebugLeaveScope
_753:
	movl	$_768,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_updateObject
	movl	$_769,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_771
	call	_brl_blitz_NullObjectError
_771:
	movl	$1000000,40(%ebx)
	movl	$_773,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_775
	call	_brl_blitz_NullObjectError
_775:
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_780
	movl	%eax,(%esp)
	call	_bbGCFree
_780:
	movl	%esi,28(%ebx)
	movl	$_781,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,-8(%ebp)
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_784
	call	_brl_blitz_NullObjectError
_784:
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
	movl	$_808,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_789,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	calll	*56(%eax)
	fstps	-12(%ebp)
	movl	$_791,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_793
	call	_brl_blitz_NullObjectError
_793:
	flds	-12(%ebp)
	movl	40(%ebx),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_794
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_807,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_795,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_797
	call	_brl_blitz_NullObjectError
_797:
	movl	-8(%ebp),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_802
	movl	%eax,(%esp)
	call	_bbGCFree
_802:
	movl	%esi,28(%ebx)
	movl	$_803,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_805
	call	_brl_blitz_NullObjectError
_805:
	flds	-12(%ebp)
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,40(%ebx)
	calll	*_bbOnDebugLeaveScope
_794:
	calll	*_bbOnDebugLeaveScope
_10:
	cmpl	-24(%ebp),%edi
	jne	_12
_11:
	movl	$_809,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_811
	call	_brl_blitz_NullObjectError
_811:
	cmpl	$_bbNullObject,28(%ebx)
	je	_812
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_883,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_813,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_815
	call	_brl_blitz_NullObjectError
_815:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_817
	call	_brl_blitz_NullObjectError
_817:
	movl	%ebx,-32(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_820
	call	_brl_blitz_NullObjectError
_820:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_822
	call	_brl_blitz_NullObjectError
_822:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_824
	call	_brl_blitz_NullObjectError
_824:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_826
	call	_brl_blitz_NullObjectError
_826:
	flds	8(%edi)
	flds	16(%esi)
	movl	40(%ebx),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	movl	-32(%ebp),%eax
	fstps	8(%eax)
	movl	$_827,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_829
	call	_brl_blitz_NullObjectError
_829:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_831
	call	_brl_blitz_NullObjectError
_831:
	movl	%ebx,-28(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_834
	call	_brl_blitz_NullObjectError
_834:
	movl	8(%ebx),%edi
	cmp	$_bbNullObject,%edi
	jne	_836
	call	_brl_blitz_NullObjectError
_836:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_838
	call	_brl_blitz_NullObjectError
_838:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_840
	call	_brl_blitz_NullObjectError
_840:
	flds	12(%edi)
	flds	20(%esi)
	movl	40(%ebx),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	movl	-28(%ebp),%eax
	fstps	12(%eax)
	movl	$_841,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_843
	call	_brl_blitz_NullObjectError
_843:
	movl	28(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	calll	*64(%eax)
	movl	%eax,-16(%ebp)
	movl	$_845,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_847
	call	_brl_blitz_NullObjectError
_847:
	mov	%ebx,%esi
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_850
	call	_brl_blitz_NullObjectError
_850:
	flds	16(%ebx)
	fstps	16(%esi)
	movl	$_851,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_853
	call	_brl_blitz_NullObjectError
_853:
	mov	%ebx,%esi
	movl	-16(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_856
	call	_brl_blitz_NullObjectError
_856:
	flds	20(%ebx)
	fstps	20(%esi)
	movl	$_857,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_859
	call	_brl_blitz_NullObjectError
_859:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_861
	call	_brl_blitz_NullObjectError
_861:
	mov	%ebx,%esi
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_864
	call	_brl_blitz_NullObjectError
_864:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_866
	call	_brl_blitz_NullObjectError
_866:
	flds	8(%esi)
	flds	16(%edi)
	mov	$1,%eax
	subl	40(%ebx),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	8(%esi)
	movl	$_867,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_869
	call	_brl_blitz_NullObjectError
_869:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_871
	call	_brl_blitz_NullObjectError
_871:
	mov	%ebx,%esi
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_874
	call	_brl_blitz_NullObjectError
_874:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_876
	call	_brl_blitz_NullObjectError
_876:
	flds	12(%esi)
	flds	20(%edi)
	mov	$1,%eax
	subl	40(%ebx),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fmulp	%st(0),%st(1)
	faddp	%st(0),%st(1)
	fstps	12(%esi)
	movl	$_877,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_879
	call	_brl_blitz_NullObjectError
_879:
	mov	%ebx,%esi
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_882
	call	_brl_blitz_NullObjectError
_882:
	mov	$1,%eax
	subl	40(%ebx),%eax
	movl	%eax,40(%esi)
	calll	*_bbOnDebugLeaveScope
_812:
	movl	$_885,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_887
	call	_brl_blitz_NullObjectError
_887:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_889
	call	_brl_blitz_NullObjectError
_889:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_891
	call	_brl_blitz_NullObjectError
_891:
	flds	8(%esi)
	movl	12(%ebx),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_892
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_901,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_893,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_895
	call	_brl_blitz_NullObjectError
_895:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_897
	call	_brl_blitz_NullObjectError
_897:
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_900
	call	_brl_blitz_NullObjectError
_900:
	flds	8(%ebx)
	movl	12(%esi),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	8(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_902
_892:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_918,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_903,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_905
	call	_brl_blitz_NullObjectError
_905:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_907
	call	_brl_blitz_NullObjectError
_907:
	flds	8(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_908
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_917,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_909,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_911
	call	_brl_blitz_NullObjectError
_911:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_913
	call	_brl_blitz_NullObjectError
_913:
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_916
	call	_brl_blitz_NullObjectError
_916:
	flds	8(%ebx)
	movl	12(%esi),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	faddp	%st(0),%st(1)
	fstps	8(%ebx)
	calll	*_bbOnDebugLeaveScope
_908:
	calll	*_bbOnDebugLeaveScope
_902:
	movl	$_919,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_921
	call	_brl_blitz_NullObjectError
_921:
	movl	12(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_923
	call	_brl_blitz_NullObjectError
_923:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_925
	call	_brl_blitz_NullObjectError
_925:
	flds	12(%esi)
	movl	16(%ebx),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setbe	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_926
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_935,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_927,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_929
	call	_brl_blitz_NullObjectError
_929:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_931
	call	_brl_blitz_NullObjectError
_931:
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_934
	call	_brl_blitz_NullObjectError
_934:
	flds	12(%ebx)
	movl	16(%esi),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	fsubrp	%st(0),%st(1)
	fstps	12(%ebx)
	calll	*_bbOnDebugLeaveScope
	jmp	_936
_926:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_952,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_937,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_939
	call	_brl_blitz_NullObjectError
_939:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_941
	call	_brl_blitz_NullObjectError
_941:
	flds	12(%ebx)
	fldz
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setae	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_942
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_951,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_943,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_945
	call	_brl_blitz_NullObjectError
_945:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_947
	call	_brl_blitz_NullObjectError
_947:
	movl	_bb_game,%esi
	cmp	$_bbNullObject,%esi
	jne	_950
	call	_brl_blitz_NullObjectError
_950:
	flds	12(%ebx)
	movl	16(%esi),%eax
	movl	%eax,-36(%ebp)
	fildl	-36(%ebp)
	faddp	%st(0),%st(1)
	fstps	12(%ebx)
	calll	*_bbOnDebugLeaveScope
_942:
	calll	*_bbOnDebugLeaveScope
_936:
	movl	$_953,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bb_drawAll
	movl	$_954,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_956
	call	_brl_blitz_NullObjectError
_956:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_959
	call	_brl_blitz_NullObjectError
_959:
	movl	12(%ebx),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%esi),%eax
	decl	4(%eax)
	jnz	_963
	movl	%eax,(%esp)
	call	_bbGCFree
_963:
	movl	%ebx,8(%esi)
	movl	$_964,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_966
	call	_brl_blitz_NullObjectError
_966:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_969
	call	_brl_blitz_NullObjectError
_969:
	flds	16(%ebx)
	fdivs	64(%esi)
	fstps	16(%ebx)
	movl	$_970,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_972
	call	_brl_blitz_NullObjectError
_972:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_975
	call	_brl_blitz_NullObjectError
_975:
	flds	20(%ebx)
	fdivs	64(%esi)
	fstps	20(%ebx)
	mov	$0,%ebx
	jmp	_127
_127:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_updateObject:
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
	movl	$_1085,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_979,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_bbMilliSecs
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	fstps	-8(%ebp)
	movl	$_981,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_983
	call	_brl_blitz_NullObjectError
_983:
	flds	-8(%ebp)
	fsubs	68(%ebx)
	fdivs	_1420
	fstps	-12(%ebp)
	movl	$_985,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_987
	call	_brl_blitz_NullObjectError
_987:
	flds	16(%ebx)
	fmuls	-12(%ebp)
	fstps	16(%ebx)
	movl	$_989,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_991
	call	_brl_blitz_NullObjectError
_991:
	flds	20(%ebx)
	fmuls	-12(%ebp)
	fstps	20(%ebx)
	movl	$_993,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_995
	call	_brl_blitz_NullObjectError
_995:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_998
	call	_brl_blitz_NullObjectError
_998:
	movl	_bb_game,%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1000
	call	_brl_blitz_NullObjectError
_1000:
	flds	20(%esi)
	flds	-12(%ebp)
	fmuls	24(%ebx)
	faddp	%st(0),%st(1)
	fstps	20(%edi)
	movl	$_1001,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1003
	call	_brl_blitz_NullObjectError
_1003:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1005
	call	_brl_blitz_NullObjectError
_1005:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1008
	call	_brl_blitz_NullObjectError
_1008:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_1010
	call	_brl_blitz_NullObjectError
_1010:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1012
	call	_brl_blitz_NullObjectError
_1012:
	flds	8(%esi)
	fadds	16(%ebx)
	fstps	8(%edi)
	movl	$_1013,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1015
	call	_brl_blitz_NullObjectError
_1015:
	movl	12(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1017
	call	_brl_blitz_NullObjectError
_1017:
	mov	%ebx,%edi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1020
	call	_brl_blitz_NullObjectError
_1020:
	movl	8(%ebx),%esi
	cmp	$_bbNullObject,%esi
	jne	_1022
	call	_brl_blitz_NullObjectError
_1022:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1024
	call	_brl_blitz_NullObjectError
_1024:
	flds	12(%esi)
	fadds	20(%ebx)
	fstps	12(%edi)
	movl	$_1025,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1027
	call	_brl_blitz_NullObjectError
_1027:
	movl	%ebx,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	$_bbNullObject,-16(%ebp)
	jne	_1030
	call	_brl_blitz_NullObjectError
_1030:
	movl	-4(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_1032
	call	_brl_blitz_NullObjectError
_1032:
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1034
	call	_brl_blitz_NullObjectError
_1034:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1036
	call	_brl_blitz_NullObjectError
_1036:
	movl	-16(%ebp),%eax
	flds	16(%eax)
	fmuls	16(%edi)
	flds	20(%esi)
	fmuls	20(%ebx)
	faddp	%st(0),%st(1)
	fstpl	(%esp)
	call	_bbSqr
	movl	-20(%ebp),%eax
	fstps	32(%eax)
	movl	$_1037,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1039
	call	_brl_blitz_NullObjectError
_1039:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1042
	call	_brl_blitz_NullObjectError
_1042:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1044
	call	_brl_blitz_NullObjectError
_1044:
	flds	16(%esi)
	fdivs	32(%ebx)
	fstps	24(%edi)
	movl	$_1045,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1047
	call	_brl_blitz_NullObjectError
_1047:
	mov	%ebx,%edi
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_1050
	call	_brl_blitz_NullObjectError
_1050:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1052
	call	_brl_blitz_NullObjectError
_1052:
	flds	20(%esi)
	fdivs	32(%ebx)
	fstps	28(%edi)
	movl	$_1053,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1055
	call	_brl_blitz_NullObjectError
_1055:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1058
	call	_brl_blitz_NullObjectError
_1058:
	flds	20(%ebx)
	fchs
	fstps	36(%esi)
	movl	$_1059,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1061
	call	_brl_blitz_NullObjectError
_1061:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1064
	call	_brl_blitz_NullObjectError
_1064:
	flds	16(%ebx)
	fstps	40(%esi)
	movl	$_1065,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1067
	call	_brl_blitz_NullObjectError
_1067:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1070
	call	_brl_blitz_NullObjectError
_1070:
	flds	20(%ebx)
	fstps	44(%esi)
	movl	$_1071,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1073
	call	_brl_blitz_NullObjectError
_1073:
	mov	%ebx,%esi
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1076
	call	_brl_blitz_NullObjectError
_1076:
	flds	16(%ebx)
	fchs
	fstps	48(%esi)
	movl	$_1077,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1079
	call	_brl_blitz_NullObjectError
_1079:
	flds	-8(%ebp)
	fstps	68(%ebx)
	movl	$_1081,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_1083
	call	_brl_blitz_NullObjectError
_1083:
	flds	-12(%ebp)
	fstps	64(%ebx)
	mov	$0,%ebx
	jmp	_130
_130:
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
_248:
	.long	0
_245:
	.asciz	"ballline"
_246:
	.asciz	"game"
_247:
	.asciz	":Tgame"
	.align	4
_bb_game:
	.long	_bbNullObject
	.align	4
_244:
	.long	1
	.long	_245
	.long	4
	.long	_246
	.long	_247
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
	.asciz	"vx"
_30:
	.asciz	"vy"
_31:
	.asciz	"dx"
_32:
	.asciz	"dy"
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
	.asciz	"airf"
_39:
	.asciz	"b"
_40:
	.asciz	"timeFrame"
_41:
	.asciz	"LastTime"
_42:
	.asciz	"Create"
_43:
	.asciz	"(f,f,f,f,f,f,f):Tvector"
_44:
	.asciz	"updateVector"
_45:
	.asciz	"(:Tvector)i"
_46:
	.asciz	"findIntersection"
_47:
	.asciz	"(:tvector,:Tvector)f"
_48:
	.asciz	"perP"
_49:
	.asciz	"(:Tvector,:Tvector)f"
_50:
	.asciz	"bounce"
_51:
	.asciz	"(:Tvector,:tvector):tvector"
_52:
	.asciz	"projectVector"
_53:
	.asciz	"(:Tvector,f,f):Tvector"
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
	.long	_39
	.long	_19
	.long	56
	.long	3
	.long	_19
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
	.long	7
	.long	_44
	.long	_45
	.long	52
	.long	7
	.long	_46
	.long	_47
	.long	56
	.long	7
	.long	_48
	.long	_49
	.long	60
	.long	7
	.long	_50
	.long	_51
	.long	64
	.long	7
	.long	_52
	.long	_53
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
	.long	__bb_Tvector_updateVector
	.long	__bb_Tvector_findIntersection
	.long	__bb_Tvector_perP
	.long	__bb_Tvector_bounce
	.long	__bb_Tvector_projectVector
_55:
	.asciz	"Tgame"
_56:
	.asciz	"dragging"
_57:
	.asciz	"i"
_58:
	.asciz	"stageW"
_59:
	.asciz	"stageH"
_60:
	.asciz	"maxV"
_61:
	.asciz	"gravity"
_62:
	.asciz	":Tvector"
_63:
	.asciz	"myOb"
_64:
	.asciz	"v"
_65:
	.asciz	"[]:Tvector"
_66:
	.asciz	"t"
_67:
	.asciz	"(i,i,i,f,f):Tgame"
	.align	4
_54:
	.long	2
	.long	_55
	.long	3
	.long	_56
	.long	_57
	.long	8
	.long	3
	.long	_58
	.long	_57
	.long	12
	.long	3
	.long	_59
	.long	_57
	.long	16
	.long	3
	.long	_60
	.long	_19
	.long	20
	.long	3
	.long	_61
	.long	_19
	.long	24
	.long	3
	.long	_50
	.long	_62
	.long	28
	.long	3
	.long	_63
	.long	_62
	.long	32
	.long	3
	.long	_64
	.long	_65
	.long	36
	.long	3
	.long	_66
	.long	_57
	.long	40
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
	.long	_67
	.long	48
	.long	0
	.align	4
_bb_Tgame:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_54
	.long	44
	.long	__bb_Tgame_New
	.long	__bb_Tgame_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Tgame_Create
_133:
	.asciz	"/Users/jesseperez/Desktop/roll_ball/ballline.bmx"
	.align	4
_132:
	.long	_133
	.long	271
	.long	1
	.align	4
_135:
	.long	0
	.align	4
_1089:
	.long	0x3f000000
	.align	4
_1090:
	.long	0x41200000
	.align	4
_137:
	.long	_133
	.long	275
	.long	1
	.align	4
_1091:
	.long	0x3f7d70a4
	.align	4
_1092:
	.long	0x3f4ccccd
	.align	4
_1093:
	.long	0x3f4ccccd
	.align	4
_1094:
	.long	0x43160000
	.align	4
_1095:
	.long	0x43170000
	.align	4
_1096:
	.long	0x42c80000
	.align	4
_1097:
	.long	0x43160000
	.align	4
_145:
	.long	_133
	.long	276
	.long	1
	.align	4
_150:
	.long	_133
	.long	281
	.long	1
	.align	4
_1098:
	.long	0x42480000
	.align	4
_1099:
	.long	0x437a0000
	.align	4
_1100:
	.long	0x42480000
	.align	4
_1101:
	.long	0x42480000
	.align	4
_161:
	.long	_133
	.long	282
	.long	1
	.align	4
_1102:
	.long	0x43020000
	.align	4
_1103:
	.long	0x437a0000
	.align	4
_1104:
	.long	0x42480000
	.align	4
_1105:
	.long	0x437a0000
	.align	4
_172:
	.long	_133
	.long	283
	.long	1
	.align	4
_1106:
	.long	0x43020000
	.align	4
_1107:
	.long	0x42480000
	.align	4
_1108:
	.long	0x43020000
	.align	4
_1109:
	.long	0x437a0000
	.align	4
_183:
	.long	_133
	.long	284
	.long	1
	.align	4
_1110:
	.long	0x42480000
	.align	4
_1111:
	.long	0x42480000
	.align	4
_1112:
	.long	0x43020000
	.align	4
_1113:
	.long	0x42480000
	.align	4
_194:
	.long	_133
	.long	287
	.long	1
	.align	4
_205:
	.long	_133
	.long	288
	.long	1
	.align	4
_216:
	.long	_133
	.long	289
	.long	1
	.align	4
_227:
	.long	_133
	.long	290
	.long	1
	.align	4
_238:
	.long	_133
	.long	292
	.long	1
	.align	4
_239:
	.long	_133
	.long	298
	.long	1
	.align	4
_243:
	.long	3
	.long	0
	.long	0
	.align	4
_240:
	.long	_133
	.long	295
	.long	2
	.align	4
_241:
	.long	_133
	.long	296
	.long	2
	.align	4
_242:
	.long	_133
	.long	297
	.long	2
_252:
	.asciz	"Self"
	.align	4
_251:
	.long	1
	.long	_21
	.long	2
	.long	_252
	.long	_27
	.long	-4
	.long	0
	.align	4
_250:
	.long	3
	.long	0
	.long	0
	.align	4
_273:
	.long	1
	.long	_21
	.long	2
	.long	_252
	.long	_62
	.long	-4
	.long	0
	.align	4
_272:
	.long	3
	.long	0
	.long	0
	.align	4
_256:
	.long	_133
	.long	27
	.long	3
	.align	4
_264:
	.long	_133
	.long	28
	.long	3
_319:
	.asciz	"x1"
_320:
	.asciz	"y1"
_321:
	.asciz	"x2"
_322:
	.asciz	"y2"
	.align	4
_318:
	.long	1
	.long	_42
	.long	2
	.long	_319
	.long	_19
	.long	-4
	.long	2
	.long	_320
	.long	_19
	.long	-8
	.long	2
	.long	_321
	.long	_19
	.long	-12
	.long	2
	.long	_322
	.long	_19
	.long	-16
	.long	2
	.long	_39
	.long	_19
	.long	-20
	.long	2
	.long	_19
	.long	_19
	.long	-24
	.long	2
	.long	_38
	.long	_19
	.long	-28
	.long	2
	.long	_64
	.long	_62
	.long	-32
	.long	0
	.align	4
_279:
	.long	_133
	.long	32
	.long	3
	.align	4
_281:
	.long	_133
	.long	33
	.long	3
	.align	4
_287:
	.long	_133
	.long	34
	.long	3
	.align	4
_293:
	.long	_133
	.long	35
	.long	3
	.align	4
_299:
	.long	_133
	.long	36
	.long	3
	.align	4
_305:
	.long	_133
	.long	37
	.long	3
	.align	4
_309:
	.long	_133
	.long	38
	.long	3
	.align	4
_313:
	.long	_133
	.long	39
	.long	3
	.align	4
_317:
	.long	_133
	.long	40
	.long	3
	.align	4
_414:
	.long	1
	.long	_44
	.long	2
	.long	_64
	.long	_62
	.long	-4
	.long	0
	.align	4
_323:
	.long	_133
	.long	48
	.long	3
	.align	4
_335:
	.long	_133
	.long	49
	.long	3
	.align	4
_347:
	.long	_133
	.long	51
	.long	3
	.align	4
_359:
	.long	_133
	.long	53
	.long	3
	.align	4
_379:
	.long	3
	.long	0
	.long	0
	.align	4
_363:
	.long	_133
	.long	54
	.long	4
	.align	4
_371:
	.long	_133
	.long	55
	.long	4
	.align	4
_389:
	.long	3
	.long	0
	.long	0
	.align	4
_381:
	.long	_133
	.long	57
	.long	4
	.align	4
_385:
	.long	_133
	.long	58
	.long	4
	.align	4
_390:
	.long	_133
	.long	61
	.long	3
	.align	4
_396:
	.long	_133
	.long	62
	.long	3
	.align	4
_402:
	.long	_133
	.long	64
	.long	3
	.align	4
_408:
	.long	_133
	.long	65
	.long	3
_514:
	.asciz	"v1"
_515:
	.asciz	":tvector"
_516:
	.asciz	"v2"
_517:
	.asciz	"t1"
_518:
	.asciz	"t2"
_519:
	.asciz	"v3a"
_520:
	.asciz	"v3b"
	.align	4
_513:
	.long	1
	.long	_46
	.long	2
	.long	_514
	.long	_515
	.long	-4
	.long	2
	.long	_516
	.long	_62
	.long	-8
	.long	2
	.long	_517
	.long	_19
	.long	-12
	.long	2
	.long	_518
	.long	_19
	.long	-16
	.long	2
	.long	_519
	.long	_515
	.long	-20
	.long	2
	.long	_520
	.long	_62
	.long	-24
	.long	0
	.align	4
_415:
	.long	_133
	.long	70
	.long	3
	.align	4
_418:
	.long	_133
	.long	72
	.long	3
	.align	4
_420:
	.long	_133
	.long	73
	.long	3
	.align	4
_432:
	.long	_133
	.long	74
	.long	3
	.align	4
_444:
	.long	_133
	.long	75
	.long	3
	.align	4
_446:
	.long	_133
	.long	76
	.long	3
	.align	4
_458:
	.long	_133
	.long	77
	.long	3
	.align	4
_470:
	.long	_133
	.long	79
	.long	3
	.align	4
_495:
	.long	3
	.long	0
	.long	0
	.align	4
_494:
	.long	_133
	.long	80
	.long	4
	.align	4
_1204:
	.long	0x49742400
	.align	4
_499:
	.long	3
	.long	0
	.long	0
	.align	4
_497:
	.long	_133
	.long	82
	.long	4
	.align	4
_498:
	.long	_133
	.long	83
	.long	4
	.align	4
_500:
	.long	_133
	.long	85
	.long	3
	.align	4
_509:
	.long	3
	.long	0
	.long	0
	.align	4
_508:
	.long	_133
	.long	86
	.long	4
	.align	4
_512:
	.long	3
	.long	0
	.long	0
	.align	4
_511:
	.long	_133
	.long	88
	.long	4
	.align	4
_1205:
	.long	0x49742400
_531:
	.asciz	"va"
_532:
	.asciz	"vb"
	.align	4
_530:
	.long	1
	.long	_48
	.long	2
	.long	_531
	.long	_62
	.long	-4
	.long	2
	.long	_532
	.long	_62
	.long	-8
	.long	0
	.align	4
_521:
	.long	_133
	.long	95
	.long	3
_593:
	.asciz	"proj1"
_594:
	.asciz	"proj2"
_595:
	.asciz	"proj"
	.align	4
_592:
	.long	1
	.long	_50
	.long	2
	.long	_514
	.long	_62
	.long	-4
	.long	2
	.long	_516
	.long	_515
	.long	-8
	.long	2
	.long	_593
	.long	_62
	.long	-12
	.long	2
	.long	_594
	.long	_62
	.long	-16
	.long	2
	.long	_595
	.long	_62
	.long	-20
	.long	0
	.align	4
_533:
	.long	_133
	.long	102
	.long	3
	.align	4
_539:
	.long	_133
	.long	104
	.long	3
	.align	4
_549:
	.long	_133
	.long	105
	.long	3
	.align	4
_551:
	.long	_133
	.long	107
	.long	3
	.align	4
_1256:
	.long	0xbf800000
	.align	4
_555:
	.long	_133
	.long	108
	.long	3
	.align	4
_1257:
	.long	0xbf800000
	.align	4
_559:
	.long	_133
	.long	110
	.long	3
	.align	4
_575:
	.long	_133
	.long	111
	.long	3
	.align	4
_591:
	.long	_133
	.long	112
	.long	3
_614:
	.asciz	"dp"
	.align	4
_613:
	.long	1
	.long	_52
	.long	2
	.long	_514
	.long	_62
	.long	-4
	.long	2
	.long	_31
	.long	_19
	.long	-8
	.long	2
	.long	_32
	.long	_19
	.long	-12
	.long	2
	.long	_614
	.long	_19
	.long	-16
	.long	2
	.long	_595
	.long	_62
	.long	-20
	.long	0
	.align	4
_596:
	.long	_133
	.long	119
	.long	3
	.align	4
_602:
	.long	_133
	.long	120
	.long	3
	.align	4
_604:
	.long	_133
	.long	122
	.long	3
	.align	4
_608:
	.long	_133
	.long	123
	.long	3
	.align	4
_612:
	.long	_133
	.long	124
	.long	3
	.align	4
_620:
	.long	1
	.long	_21
	.long	2
	.long	_252
	.long	_247
	.long	-4
	.long	0
_617:
	.asciz	":Tvector"
	.align	4
_619:
	.long	3
	.long	0
	.long	0
_652:
	.asciz	"stagew"
_653:
	.asciz	"stageh"
_654:
	.asciz	"g"
	.align	4
_651:
	.long	1
	.long	_42
	.long	2
	.long	_56
	.long	_57
	.long	-4
	.long	2
	.long	_652
	.long	_57
	.long	-8
	.long	2
	.long	_653
	.long	_57
	.long	-12
	.long	2
	.long	_60
	.long	_19
	.long	-16
	.long	2
	.long	_61
	.long	_19
	.long	-20
	.long	2
	.long	_654
	.long	_247
	.long	-24
	.long	0
	.align	4
_628:
	.long	_133
	.long	142
	.long	3
	.align	4
_630:
	.long	_133
	.long	143
	.long	3
	.align	4
_634:
	.long	_133
	.long	144
	.long	3
	.align	4
_638:
	.long	_133
	.long	145
	.long	3
	.align	4
_642:
	.long	_133
	.long	146
	.long	3
	.align	4
_646:
	.long	_133
	.long	147
	.long	3
	.align	4
_650:
	.long	_133
	.long	148
	.long	3
_695:
	.asciz	"drawAll"
	.align	4
_694:
	.long	1
	.long	_695
	.long	2
	.long	_64
	.long	_62
	.long	-4
	.long	0
	.align	4
_655:
	.long	_133
	.long	156
	.long	2
	.align	4
_684:
	.long	3
	.long	0
	.long	2
	.long	_64
	.long	_62
	.long	-8
	.long	0
	.align	4
_663:
	.long	_133
	.long	157
	.long	3
	.align	4
_685:
	.long	_133
	.long	159
	.long	2
	.align	4
_1302:
	.long	0x40c00000
	.align	4
_1303:
	.long	0x40c00000
	.align	4
_1304:
	.long	0x40400000
	.align	4
_1305:
	.long	0x40400000
_977:
	.asciz	"runMe"
_978:
	.asciz	"ob"
	.align	4
_976:
	.long	1
	.long	_977
	.long	2
	.long	_978
	.long	_62
	.long	-4
	.long	0
	.align	4
_696:
	.long	_133
	.long	167
	.long	2
	.align	4
_700:
	.long	_133
	.long	169
	.long	2
	.align	4
_706:
	.long	_133
	.long	170
	.long	2
	.align	4
_712:
	.long	_133
	.long	172
	.long	2
	.align	4
_724:
	.long	3
	.long	0
	.long	0
	.align	4
_718:
	.long	_133
	.long	173
	.long	3
	.align	4
_739:
	.long	3
	.long	0
	.long	0
	.align	4
_726:
	.long	_133
	.long	174
	.long	7
	.align	4
_738:
	.long	3
	.long	0
	.long	0
	.align	4
_732:
	.long	_133
	.long	175
	.long	3
	.align	4
_740:
	.long	_133
	.long	177
	.long	2
	.align	4
_752:
	.long	3
	.long	0
	.long	0
	.align	4
_746:
	.long	_133
	.long	178
	.long	3
	.align	4
_767:
	.long	3
	.long	0
	.long	0
	.align	4
_754:
	.long	_133
	.long	179
	.long	7
	.align	4
_766:
	.long	3
	.long	0
	.long	0
	.align	4
_760:
	.long	_133
	.long	180
	.long	3
	.align	4
_768:
	.long	_133
	.long	183
	.long	2
	.align	4
_769:
	.long	_133
	.long	185
	.long	2
	.align	4
_773:
	.long	_133
	.long	187
	.long	2
	.align	4
_781:
	.long	_133
	.long	189
	.long	2
	.align	4
_808:
	.long	3
	.long	0
	.long	2
	.long	_57
	.long	_62
	.long	-8
	.long	2
	.long	_66
	.long	_19
	.long	-12
	.long	0
	.align	4
_789:
	.long	_133
	.long	191
	.long	3
	.align	4
_791:
	.long	_133
	.long	193
	.long	3
	.align	4
_807:
	.long	3
	.long	0
	.long	0
	.align	4
_795:
	.long	_133
	.long	195
	.long	4
	.align	4
_803:
	.long	_133
	.long	197
	.long	4
	.align	4
_809:
	.long	_133
	.long	201
	.long	2
_884:
	.asciz	"newv"
	.align	4
_883:
	.long	3
	.long	0
	.long	2
	.long	_884
	.long	_62
	.long	-16
	.long	0
	.align	4
_813:
	.long	_133
	.long	204
	.long	3
	.align	4
_827:
	.long	_133
	.long	205
	.long	3
	.align	4
_841:
	.long	_133
	.long	207
	.long	3
	.align	4
_845:
	.long	_133
	.long	209
	.long	3
	.align	4
_851:
	.long	_133
	.long	210
	.long	3
	.align	4
_857:
	.long	_133
	.long	212
	.long	3
	.align	4
_867:
	.long	_133
	.long	213
	.long	3
	.align	4
_877:
	.long	_133
	.long	215
	.long	3
	.align	4
_885:
	.long	_133
	.long	218
	.long	2
	.align	4
_901:
	.long	3
	.long	0
	.long	0
	.align	4
_893:
	.long	_133
	.long	219
	.long	3
	.align	4
_918:
	.long	3
	.long	0
	.long	0
	.align	4
_903:
	.long	_133
	.long	220
	.long	2
	.align	4
_917:
	.long	3
	.long	0
	.long	0
	.align	4
_909:
	.long	_133
	.long	221
	.long	3
	.align	4
_919:
	.long	_133
	.long	223
	.long	2
	.align	4
_935:
	.long	3
	.long	0
	.long	0
	.align	4
_927:
	.long	_133
	.long	224
	.long	3
	.align	4
_952:
	.long	3
	.long	0
	.long	0
	.align	4
_937:
	.long	_133
	.long	225
	.long	2
	.align	4
_951:
	.long	3
	.long	0
	.long	0
	.align	4
_943:
	.long	_133
	.long	226
	.long	3
	.align	4
_953:
	.long	_133
	.long	229
	.long	2
	.align	4
_954:
	.long	_133
	.long	231
	.long	2
	.align	4
_964:
	.long	_133
	.long	233
	.long	2
	.align	4
_970:
	.long	_133
	.long	234
	.long	2
_1086:
	.asciz	"updateObject"
_1087:
	.asciz	"thisTime"
_1088:
	.asciz	"time"
	.align	4
_1085:
	.long	1
	.long	_1086
	.long	2
	.long	_64
	.long	_515
	.long	-4
	.long	2
	.long	_1087
	.long	_19
	.long	-8
	.long	2
	.long	_1088
	.long	_19
	.long	-12
	.long	0
	.align	4
_979:
	.long	_133
	.long	240
	.long	3
	.align	4
_981:
	.long	_133
	.long	241
	.long	3
	.align	4
_1420:
	.long	0x42c80000
	.align	4
_985:
	.long	_133
	.long	243
	.long	3
	.align	4
_989:
	.long	_133
	.long	244
	.long	3
	.align	4
_993:
	.long	_133
	.long	246
	.long	3
	.align	4
_1001:
	.long	_133
	.long	248
	.long	3
	.align	4
_1013:
	.long	_133
	.long	249
	.long	3
	.align	4
_1025:
	.long	_133
	.long	251
	.long	3
	.align	4
_1037:
	.long	_133
	.long	253
	.long	3
	.align	4
_1045:
	.long	_133
	.long	254
	.long	3
	.align	4
_1053:
	.long	_133
	.long	256
	.long	3
	.align	4
_1059:
	.long	_133
	.long	257
	.long	3
	.align	4
_1065:
	.long	_133
	.long	259
	.long	3
	.align	4
_1071:
	.long	_133
	.long	260
	.long	3
	.align	4
_1077:
	.long	_133
	.long	262
	.long	3
	.align	4
_1081:
	.long	_133
	.long	264
	.long	3
