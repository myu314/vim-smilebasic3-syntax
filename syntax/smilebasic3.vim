" Vim syntax file
" Language:	SmileBASIC ver3
" Maintainer:	myu314 (https://github.com/myu314/vim-smilebasic3-syntax)
" Last Change:	2017 Jan 16
"
" Options:
"   - g:smilebasic3_highlight_symbol_operator
"   - g:smilebasic3_highlight_format_string

if exists('b:current_syntax')
  finish
endif

if !exists('g:smilebasic3_highlight_symbol_operator')
  let g:smilebasic3_highlight_symbol_operator = 0
endif
if !exists('g:smilebasic3_highlight_format_string')
  let g:smilebasic3_highlight_format_string = 1
end

syn iskeyword 48-57,A-Z,a-z,_
syn case ignore

" Group
syn cluster   smilebasic3Expr
      \ contains=smilebasic3Label,
      \          smilebasic3Identifier,
      \          smilebasic3BuiltinFunc,
      \          smilebasic3GenericFunc,
      \          smilebasic3Constant,
      \          smilebasic3SysVariable,
      \          smilebasic3Boolean,
      \          smilebasic3Integer,
      \          smilebasic3Float,
      \          smilebasic3String,
      \          smilebasic3Operator,
      \          smilebasic3Paren,
      \          smilebasic3Bracket,
      \          smilebasic3Error
syn cluster   smilebasic3Stat
      \ contains=@smilebasic3Expr,
      \          smilebasic3Statement,
      \          smilebasic3Type,
      \          smilebasic3Comment,
      \          smilebasic3Delimiter,
      \          smilebasic3OnGotoGosub,
      \          smilebasic3WhileWend,
      \          smilebasic3RepeatUntil,
      \          smilebasic3ForTo,
      \          smilebasic3ForStep,
      \          smilebasic3IfThen

" Label
syn match     smilebasic3Label        "@\w\+"

" Identifier
syn match     smilebasic3Identifier   "\<\h\w*\%(\$\|%\|#\)\?"

" Statement
syn match     smilebasic3Statement    "\<CLEAR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<NEW\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<LIST\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<RUN\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<CONT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BACKTRACE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SWAP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<INC\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<DEC\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<COPY\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SORT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<RSORT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<PUSH\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<UNSHIFT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<FILL\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GOTO\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GOSUB\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<RETURN\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<END\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<STOP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<READ\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<DATA\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<RESTORE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<WAIT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<VSYNC\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<TMREAD\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<DTREAD\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<DLCOPEN\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<CLS\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<COLOR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<LOCATE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<PRINT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<ATTR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SCROLL\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<INPUT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<LINPUT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<FONTDEF\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BREPEAT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<STICK\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<STICKEX\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<ACCEL\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GYROV\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GYROA\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GYROSYNC\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<TOUCH\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<MICSTART\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<MICSTOP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<MICSAVE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<VIBRATE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<FILES\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SAVE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<RENAME\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<DELETE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<EXEC\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<USE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<MPSTART\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<MPEND\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<MPSEND\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<MPRECV\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<MPSET\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<XSCREEN\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<VISIBLE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<ACLS\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GPAGE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<RGBREAD\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GCLIP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GPRIO\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GCLS\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GPSET\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GLINE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GCIRCLE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GBOX\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GFILL\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GPAINT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GCOPY\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GSAVE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GLOAD\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GTRI\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GPUTCHR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GPUTCHR16\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<GOFS\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPCLIP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPDEF\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPCLR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPSHOW\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPHIDE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPHOME\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPOFS\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPSCALE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPUNLINK\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPANIM\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPSTOP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPSTART\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPCOLVEC\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPFUNC\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGSCREEN\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGCLR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGSHOW\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGHIDE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGCLIP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGHOME\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGOFS\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGSCALE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGPUT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGFILL\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGANIM\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGSTOP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGSTART\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGLOAD\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGSAVE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGCOORD\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGFUNC\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BEEP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGMCLEAR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGMPLAY\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGMSET\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGMSETD\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGMSTOP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGMVOL\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGMCONT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<WAVSET\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<WAVSETA\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<EFCOFF\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<EFCON\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<EFCSET\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<EFCWET\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<TALK\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<TALKSTOP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SNDSTOP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<RANDOMIZE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<PRGEDIT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<PRGSET\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<PRGINS\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<PRGDEL\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BIQUAD\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BQPARAM\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<FFT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<IFFT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<FFTWFN\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<PCMCONT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<PCMSTOP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<PCMSTREAM\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<PCMVOL\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<ARYOP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<PROJECT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<CALL\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<KEY\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<DIALOG\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<CLIPBOARD\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<WIDTH\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<LOAD\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<DISPLAY\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BACKCOLOR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<FADE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPPAGE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPSET\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPROT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPCOLOR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPCHR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPLINK\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPVAR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPCOL\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<SPHITINFO\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGPAGE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGROT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGVAR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGCOLOR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGMVAR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<BGMPAUSE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<RINGCOPY\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<OUT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement
      \ skipwhite
      \ nextgroup=smilebasic3OptionArg
      \ "\<OPTION\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3OptionArg
      \ contained
      \ "\<\%(STRICT\|DEFINT\)\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement
      \ skipwhite
      \ nextgroup=smilebasic3XonArg
      \ "\<XON\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3XonArg
      \ contained
      \ "\<\%(MOTION\|EXPAD\|MIC\|COMPAT\|3DS\|WIIU\)\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Statement    "\<XOFF\%(\w\|\$\|%\|#\)\@1!"
      \ skipwhite
      \ nextgroup=smilebasic3XoffArg
      \ "\<XOFF\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3XoffArg
      \ contained
      \ "\<\%(MOTION\|EXPAD\|MIC\)\%(\w\|\$\|%\|#\)\@1!"

" Type
syn match     smilebasic3Type         "\<VAR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Type         "\<DIV\%(\w\|\$\|%\|#\)\@1!"

" Function
syn match     smilebasic3GenericFunc  "\<\h\w\+\%(\$\|%\|#\)\?\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<POP\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SHIFT\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<CHKLABEL\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<CHKCALL\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<CHKVAR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<CHKCHR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<INKEY\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<BUTTON\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<MICDATA\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<CONTROLLER\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<CHKFILE\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<MPSTAT\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<MPNAME\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<MPGET\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<FADECHK\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<GCOLOR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<RGB\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<GSPOIT\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPCHK\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPHITSP\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPHITRC\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPUSED\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<BGGET\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<BGCHK\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<BGMCHK\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<TALKCHK\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<FLOOR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<ROUND\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<CEIL\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<ABS\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SGN\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<MIN\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<MAX\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<RND\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<RNDF\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SQR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<EXP\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<LOG\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<POW\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<PI\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<RAD\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<DEG\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SIN\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<COS\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<TAN\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<ASIN\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<ACOS\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<ATAN\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SINH\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<COSH\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<TANH\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<CLASSIFY\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<ASC\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<CHR\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<VAL\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<STR\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<HEX\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<BIN\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<FORMAT\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<LEN\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<MID\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<LEFT\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<RIGHT\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<INSTR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SUBST\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<PRGGET\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<PRGSIZE\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<PRGNAME\$\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<VAR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<PROJECT\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<CALL\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<KEY\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<DIALOG\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<CLIPBOARD\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<WIDTH\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<LOAD\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<DISPLAY\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<BACKCOLOR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<FADE\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPPAGE\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPSET\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPROT\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPCOLOR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPCHR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPLINK\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPVAR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPCOL\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<SPHITINFO\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<BGPAGE\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<BGROT\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<BGVAR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<BGCOLOR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<BGMVAR\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<BGMPAUSE\ze\s*("
syn match     smilebasic3BuiltinFunc  "\<RINGCOPY\ze\s*("

" Constant
syn match     smilebasic3Constant     "#ON\>"
syn match     smilebasic3Constant     "#OFF\>"
syn match     smilebasic3Constant     "#YES\>"
syn match     smilebasic3Constant     "#NO\>"
syn match     smilebasic3Constant     "#TRUE\>"
syn match     smilebasic3Constant     "#FALSE\>"
syn match     smilebasic3Constant     "#AQUA\>"
syn match     smilebasic3Constant     "#BLACK\>"
syn match     smilebasic3Constant     "#BLUE\>"
syn match     smilebasic3Constant     "#CYAN\>"
syn match     smilebasic3Constant     "#FUCHSIA\>"
syn match     smilebasic3Constant     "#GRAY\>"
syn match     smilebasic3Constant     "#GREEN\>"
syn match     smilebasic3Constant     "#LIME\>"
syn match     smilebasic3Constant     "#MAGENTA\>"
syn match     smilebasic3Constant     "#MAROON\>"
syn match     smilebasic3Constant     "#NAVY\>"
syn match     smilebasic3Constant     "#OLIVE\>"
syn match     smilebasic3Constant     "#PURPLE\>"
syn match     smilebasic3Constant     "#RED\>"
syn match     smilebasic3Constant     "#SILVER\>"
syn match     smilebasic3Constant     "#TEAL\>"
syn match     smilebasic3Constant     "#WHITE\>"
syn match     smilebasic3Constant     "#YELLOW\>"
syn match     smilebasic3Constant     "#TBLACK\>"
syn match     smilebasic3Constant     "#TMAROON\>"
syn match     smilebasic3Constant     "#TRED\>"
syn match     smilebasic3Constant     "#TGREEN\>"
syn match     smilebasic3Constant     "#TLIME\>"
syn match     smilebasic3Constant     "#TOLIVE\>"
syn match     smilebasic3Constant     "#TYELLOW\>"
syn match     smilebasic3Constant     "#TNAVY\>"
syn match     smilebasic3Constant     "#TBLUE\>"
syn match     smilebasic3Constant     "#TPURPLE\>"
syn match     smilebasic3Constant     "#TMAGENTA\>"
syn match     smilebasic3Constant     "#TTEAL\>"
syn match     smilebasic3Constant     "#TCYAN\>"
syn match     smilebasic3Constant     "#TGRAY\>"
syn match     smilebasic3Constant     "#TWHITE\>"
syn match     smilebasic3Constant     "#UP\>"
syn match     smilebasic3Constant     "#DOWN\>"
syn match     smilebasic3Constant     "#LEFT\>"
syn match     smilebasic3Constant     "#RIGHT\>"
syn match     smilebasic3Constant     "#A\>"
syn match     smilebasic3Constant     "#B\>"
syn match     smilebasic3Constant     "#X\>"
syn match     smilebasic3Constant     "#Y\>"
syn match     smilebasic3Constant     "#L\>"
syn match     smilebasic3Constant     "#R\>"
syn match     smilebasic3Constant     "#ZL\>"
syn match     smilebasic3Constant     "#ZR\>"
syn match     smilebasic3Constant     "#TROT0\>"
syn match     smilebasic3Constant     "#TROT90\>"
syn match     smilebasic3Constant     "#TROT180\>"
syn match     smilebasic3Constant     "#TROT270\>"
syn match     smilebasic3Constant     "#TREVH\>"
syn match     smilebasic3Constant     "#TREVV\>"
syn match     smilebasic3Constant     "#SPSHOW\>"
syn match     smilebasic3Constant     "#SPROT0\>"
syn match     smilebasic3Constant     "#SPROT90\>"
syn match     smilebasic3Constant     "#SPROT180\>"
syn match     smilebasic3Constant     "#SPROT270\>"
syn match     smilebasic3Constant     "#SPREVH\>"
syn match     smilebasic3Constant     "#SPREVV\>"
syn match     smilebasic3Constant     "#SPADD\>"
syn match     smilebasic3Constant     "#BGROT0\>"
syn match     smilebasic3Constant     "#BGROT90\>"
syn match     smilebasic3Constant     "#BGROT180\>"
syn match     smilebasic3Constant     "#BGROT270\>"
syn match     smilebasic3Constant     "#BGREVH\>"
syn match     smilebasic3Constant     "#BGREVV\>"
syn match     smilebasic3Constant     "#CHKXY\>"
syn match     smilebasic3Constant     "#CHKZ\>"
syn match     smilebasic3Constant     "#CHKUV\>"
syn match     smilebasic3Constant     "#CHKI\>"
syn match     smilebasic3Constant     "#CHKR\>"
syn match     smilebasic3Constant     "#CHKS\>"
syn match     smilebasic3Constant     "#CHKC\>"
syn match     smilebasic3Constant     "#CHKV\>"

" System variable
syn match     smilebasic3SysVariable  "\<CALLIDX\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<CSRX\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<CSRY\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<CSRZ\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<DATE\$"
syn match     smilebasic3SysVariable  "\<ERRLINE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<ERRNUM\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<ERRPRG\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<EXTFEATURE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<FREEMEM\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<HARDWARE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<MAINCNT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<MICPOS\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<MICSIZE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<MILLISEC\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<MPCOUNT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<MPHOST\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<MPLOCAL\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<PCMPOS\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<PRGSLOT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<RESULT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<SYSBEEP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<TABSTEP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3SysVariable  "\<TIME\$"
syn match     smilebasic3SysVariable  "\<VERSION\%(\w\|\$\|%\|#\)\@1!"

" Boolean
syn match     smilebasic3Boolean      "\<TRUE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Boolean      "\<FALSE\%(\w\|\$\|%\|#\)\@1!"

" Integer
syn match     smilebasic3Integer      "\<\d\+"
syn match     smilebasic3Integer      "&H\x\+"
syn match     smilebasic3Integer      "&B[01]\+"
syn match     smilebasic3Error        "&B[01]*[2-9]\d*"

" Float
syn match     smilebasic3Float        "\<\d\+e[+-]\?\d\+"
syn match     smilebasic3Float        "\<\d\+\.\%(\d+\%(e[+-]\?\d\+\)\?\)\?"
syn match     smilebasic3Float        "\.\d\+\%(e[+-]\?\d\+\)\?"

" String
if g:smilebasic3_highlight_format_string
  syn region    smilebasic3String
        \ oneline
        \ contains=smilebasic3Format
        \ start=+"+ end=+"+ end="$"
  syn match     smilebasic3Format
        \ contained display
        \ "%\%(%\|[+\- ]*\%(\d\+\)\?\%(\.\d*\)\?[sdxfb]\)"
else
  syn region    smilebasic3String online start=+"+ end=+"+ end="$"
endif

" Comment
syn case match
syn keyword   smilebasic3Todo         contained TODO XXX FIXME BUG NOTE
syn case ignore
syn region    smilebasic3Comment
      \ oneline
      \ contains=smilebasic3Todo,@Spell
      \ start="'" end="$"
syn region    smilebasic3Comment
      \ oneline
      \ contains=smilebasic3Todo,@Spell
      \ start="\<rem\%(\w\|\$\|%\|#\)\@1!" end="$"

" Operator
if g:smilebasic3_highlight_symbol_operator
  syn match     smilebasic3Operator
        \ "\%(+\|-\|*\|/\|,\|;\|&&\|||\|<<\|>>\|<=\|=>\|<\|>\|==\|!=\)"
endif
syn match     smilebasic3Operator     "\<DIV\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Operator     "\<MOD\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Operator     "\<OR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Operator     "\<AND\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Operator     "\<XOR\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Operator     "\<NOT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Error        ")"
syn region    smilebasic3Paren
      \ transparent oneline
      \ contains=@smilebasic3Expr
      \ matchgroup=smilebasic3OpParen
      \ start="(" end=")"
syn match     smilebasic3Error        "\]"
syn region    smilebasic3Bracket
      \ transparent oneline
      \ contains=@smilebasic3Expr
      \ matchgroup=smilebasic3OpBracket
      \ start="\[" end="\]"
syn match     smilebasic3Delimiter    ":"

" ON GOTO / ON GOSUB
syn region    smilebasic3OnGotoGosub
      \ transparent oneline
      \ contains=@smilebasic3Expr
      \ matchgroup=smilebasic3Cond
      \ start="\<ON\%(\w\|\$\|%\|#\)\@1!"
      \ end="\<\%(GOTO\|GOSUB\)\%(\w\|\$\|%\|#\)\@1!"

" WHILE / WEND
syn match     smilebasic3Error        "\<WEND\%(\w\|\$\|%\|#\)\@1!"
syn region    smilebasic3WhileWend
      \ transparent fold
      \ contains=@smilebasic3Stat
      \ matchgroup=smilebasic3Repeat
      \ start="\<WHILE\%(\w\|\$\|%\|#\)\@1!"
      \ end="\<WEND\%(\w\|\$\|%\|#\)\@1!"

" REPEAT / UNTIL
syn match     smilebasic3Error        "\<UNTIL\%(\w\|\$\|%\|#\)\@1!"
syn region    smilebasic3RepeatUntil
      \ transparent fold
      \ contains=@smilebasic3Stat
      \ matchgroup=smilebasic3Repeat
      \ start="\<REPEAT\%(\w\|\$\|%\|#\)\@1!"
      \ end="\<UNTIL\%(\w\|\$\|%\|#\)\@1!"

" FOR / NEXT
syn match     smilebasic3Error        "\<TO\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Error        "\<STEP\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Error        "\<NEXT\%(\w\|\$\|%\|#\)\@1!"
syn region    smilebasic3ForTo
      \ transparent oneline
      \ contains=@smilebasic3Expr
      \ nextgroup=smilebasic3ToNext
      \ matchgroup=smilebasic3Repeat
      \ start="\<FOR\%(\w\|\$\|%\|#\)\@1!"
      \ end="\%(\w\|@\)\@1<!\zeTO\%(\w\|\$\|%\|#\)\@1!"
syn region    smilebasic3ToNext
      \ contained transparent fold
      \ contains=@smilebasic3Stat
      \ matchgroup=smilebasic3Repeat
      \ start="TO"
      \ end="\<NEXT\%(\w\|\$\|%\|#\)\@1!"
syn region    smilebasic3ForStep
      \ transparent oneline
      \ contains=@smilebasic3Expr,smilebasic3To
      \ nextgroup=smilebasic3StepNext
      \ matchgroup=smilebasic3Repeat
      \ start="\<FOR\%(\w\|\$\|%\|#\)\@1!"
      \ end="\%(\w\|@\)\@1<!\zeSTEP\%(\w\|\$\|%\|#\)\@1!"
syn region    smilebasic3StepNext
      \ contained transparent fold
      \ contains=@smilebasic3Stat
      \ matchgroup=smilebasic3Repeat
      \ start="STEP"
      \ end="\<NEXT\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3To
      \ contained
      \ "\<TO\%(\w\|\$\|%\|#\)\@1!"
hi def link   smilebasic3To           smilebasic3Repeat

" IF / ENDIF
syn match     smilebasic3Error        "\<THEN\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Error        "\<ELSE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Error        "\<ELSEIF\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3Error        "\<ENDIF\%(\w\|\$\|%\|#\)\@1!"
syn region    smilebasic3IfThen
      \ transparent oneline
      \ contains=@smilebasic3Expr
      \ nextgroup=smilebasic3ThenEndifBL,
      \           smilebasic3ThenEndifSL
      \ matchgroup=smilebasic3Cond
      \ start="\<IF\%(\w\|\$\|%\|#\)\@1!"
      \ end="\%(\w\|@\)\@1<!\zeTHEN\%(\w\|\$\|%\|#\)\@1!"
syn region    smilebasic3ThenEndifBL
      \ contained transparent fold
      \ contains=@smilebasic3Stat,
      \          smilebasic3ElseifThenBL,
      \          smilebasic3ElseBL
      \ matchgroup=smilebasic3Cond
      \ start="THEN\ze\s*\%($\|'\|REM\%(\w\|\$\|%\|#\)\@1!\)"
      \ end="\<ENDIF\%(\w\|\$\|%\|#\)\@1!"
syn region    smilebasic3ElseifThenBL
      \ contained transparent oneline
      \ contains=@smilebasic3Expr
      \ matchgroup=smilebasic3Cond
      \ start="\<ELSEIF\%(\w\|\$\|%\|#\)\@1!"
      \ end="\<THEN\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3ElseBL
      \ contained
      \ "\<ELSE\%(\w\|\$\|%\|#\)\@1!"
syn region    smilebasic3ThenEndifSL
      \ contained transparent oneline
      \ contains=@smilebasic3Stat,
      \          smilebasic3ElseifThenSL,
      \          smilebasic3ElseSL
      \ matchgroup=smilebasic3Cond
      \ start="THEN\ze\%(\s*\%($\|'\|REM\%(\w\|\$\|%\|#\)\@1!\)\)\@!"
      \ end="\<ENDIF\%(\w\|\$\|%\|#\)\@1!"
      \ end="$"
syn region    smilebasic3ElseifThenSL
      \ contained transparent oneline
      \ contains=@smilebasic3Expr
      \ nextgroup=smilebasic3ThenEndifBL,
      \           smilebasic3ThenEndifSL
      \ matchgroup=smilebasic3Cond
      \ start="\<ELSEIF\%(\w\|\$\|%\|#\)\@1!"
      \ end="\%(\w\|@\)\@1<!\zeTHEN\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3ElseSL
      \ contained transparent
      \ nextgroup=smilebasic3ElseSL2SL,
      \           smilebasic3ElseSL2BL
      \ "\<\zeELSE\%(\w\|\$\|%\|#\)\@1!"
syn match     smilebasic3ElseSL2SL
      \ contained
      \ "ELSE"
syn region    smilebasic3ElseSL2BL
      \ contained transparent fold
      \ contains=@smilebasic3Stat,
      \          smilebasic3ElseifThenBL,
      \          smilebasic3ElseBL
      \ matchgroup=smilebasic3Cond
      \ start="ELSE\ze\s*\%($\|'\|REM\%(\w\|\$\|%\|#\)\@1!\)"
      \ end="\<ENDIF\%(\w\|\$\|%\|#\)\@1!"

hi def link   smilebasic3ElseBL       smilebasic3Cond
hi def link   smilebasic3ElseSL2SL    smilebasic3Cond

" [COMMON] DEF / END
syn region    smilebasic3DefEnd
      \ transparent fold
      \ contains=@smilebasic3Stat
      \ matchgroup=smilebasic3Type
      \ start="\<\%(COMMON\s\)\?\s*DEF\%(\w\|\$\|%\|#\)\@1!"
      \ end="\<END\%(\w\|\$\|%\|#\)\@1!"

" define highlight
hi def link   smilebasic3Label        Label
hi def link   smilebasic3Identifier   NONE
hi def link   smilebasic3Statement    Statement
hi def link   smilebasic3OptionArg    Special
hi def link   smilebasic3XonArg       Special
hi def link   smilebasic3XoffArg      Special
hi def link   smilebasic3Type         Type
hi def link   smilebasic3BuiltinFunc  Function
hi def link   smilebasic3GenericFunc  Identifier
hi def link   smilebasic3Constant     Constant
hi def link   smilebasic3SysVariable  Special
hi def link   smilebasic3String       String
hi def link   smilebasic3Boolean      Boolean
hi def link   smilebasic3Integer      Number
hi def link   smilebasic3Float        Float
hi def link   smilebasic3Format       Special
hi def link   smilebasic3Comment      Comment
hi def link   smilebasic3Todo         Todo
hi def link   smilebasic3Operator     Operator
hi def link   smilebasic3OpParen      Operator
hi def link   smilebasic3OpBracket    Operator
hi def link   smilebasic3Delimiter    Delimiter
hi def link   smilebasic3Cond         Conditional
hi def link   smilebasic3Repeat       Repeat
hi def link   smilebasic3Error        Error

let b:current_syntax='smilebasic3'
