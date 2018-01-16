" Vim syntax file
" Language:	SmileBASIC ver3
" Maintainer:	myu314 (https://github.com/myu314/vim-smilebasic3-syntax)
" Last Change:	2017 Jan 16

if exists('b:did_indent')
  finish
endif
let b:did_indent = 1

setlocal nolisp
setlocal autoindent
setlocal indentexpr=SmileBasic3Indent(v:lnum)
setlocal indentkeys+=0=~END,0=~WEND,0=~UNTIL,0=~NEXT,0=ELSE,0=ELSEIF,0=~ENDIF

if exists('*SmileBasic3Indent')
  finish
endif

function! s:strip(src)
  return substitute(a:src, '\%(".\{-}"\|''.*$\)', '', 'g')
endfunction

function! s:cb_lastmatch(match)
  let s:key = a:match[0]
endfunction

let s:pat = '\c\%(@\|\w\)\@1<!\%(DEF\|END\|WHILE\|WEND\|REPEAT\|UNTIL\|FOR\|NEXT\|IF\|ELSE\|ELSEIF\|ENDIF\)\%(\w\|\$\|%\|#\)\@1!'

function! SmileBasic3Indent(lnum)
  let l:prevlnum = prevnonblank(a:lnum-1)
  if l:prevlnum == 0
    return 0
  endif
  let l:cnt = 0

  let l:src = s:strip(getline(l:prevlnum))
  if l:src =~? '\%(@\|\w\)\@1<!\%(THEN\|ELSE\)\s*$'
    let l:cnt += 1
  else
    let s:key = ''
    call substitute(l:src, s:pat, function('s:cb_lastmatch'), 'g')
    if toupper(s:key) =~ '\%(DEF\|WHILE\|REPEAT\|FOR\)'
      let l:cnt += 1
    endif
  endif

  let l:src = s:strip(getline(a:lnum))
  let s:key = toupper(matchstr(l:src, s:pat))
  if s:key =~ '\%(END\|WEND\|UNTIL\|NEXT\|ELSE\|ELSEIF\|ENDIF\)'
    let l:cnt -= 1
  endif

  return indent(l:prevlnum) + l:cnt * shiftwidth()
endfunction
