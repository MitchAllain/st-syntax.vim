" Vim syntax file
" Language: ST
" Version: 1.0
" Last Change:	2018/04/19
" Maintainer:  Tom Pinkas <tom.pinkas@gmail.com>

" Contributors: datsuns <the.skeleton7@gmail.com
"
"
if exists("b:current_syntax")
  finish
endif

syn case ignore

syn keyword stplcBoolean true false
syn keyword stplcConditional if else then elseif elsif end_if case end_case
syn keyword stplcStatement function_block end_function_block var end_var var_input var_output var_in_out var_config program end_program
syn keyword stplcType string bool sint dint int


" control flow function
syn keyword stplcFunction return

syn region stplcComment	start="/\*"  end="\*/"
syn region stplcComment	start="(\*\|{"  end="\*)\|}"
syn region stplcComment	start="//"  end="$"

hi def link stplcBoolean	Boolean
hi def link stplcComment	Comment
hi def link stplcConditional	Conditional
hi def link stplcType		Type
hi def link stplcFunction	Function
hi def link stplcStatement	Statement



let b:current_syntax = "stplc"
" vim: ts=8 sw=2
