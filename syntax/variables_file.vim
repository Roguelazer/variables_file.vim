" Vim syntax file
" Language: VARIABLES file
" Maintainer: James Brown
" Latest Revision: 2020-12-16

if exists("b:current_syntax")
  finish
endif

syn match vfComment "#.*$"
syn keyword vfHeaderKeyword VARIABLES_VERSION nextgroup=vfHeaderVersion skipwhite
syn match vfHeaderVersion '\d+'
syn keyword vfVariableTypes float int uint str string any bool nextgroup=vfQmark
syn keyword vfQmark '?'
syn match vfVariableTypes "/.\+/?\="
syn match vfVarName "^[a-zA-Z][a-zA-Z0-9_-]*"

let b:current_syntax = "variables_file"

hi def link vfComment       Comment
hi def link vfHeaderKeyword Statement
hi def link vfVariableTypes Type
hi def link vfQmark         Type
hi def link vfHeaderVersion Constant
hi def link vfVarName       Define
