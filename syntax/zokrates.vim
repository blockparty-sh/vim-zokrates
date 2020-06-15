" Language:   ZoKrates
" Maintainer: Jt Freeman <blockparty-sh@yandex.com>
" URL:        https://github.com/blockparty-sh/vim-zokrates

if exists("b:current_syntax")
  finish
endif

syn keyword zokratesCommentTodo  TODO FIXME XXX BUG contained
syn match   zokratesLineComment  "\/\/.*" contains=@Spell,zokratesCommentTodo
syn match   zokratesCommentSkip  "^[ \t]*\*\($\|[ \t]\+\)"
syn region  zokratesComment      start="\/\*" end="\*\/" contains=@Spell,zokratesCommentTodo
syn match   zokratesNumber       "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"
syn match   zokratesEscape       /\\[btnfr"/\\]/ display contained
syn region  zokratesString       start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=zokratesEscape oneline
syn keyword zokratesType         field bool
syn keyword zokratesModifier     private
syn keyword zokratesConditional  if then else endif fi
syn keyword zokratesStatement    return
syn keyword zokratesStatement    def nextgroup=zokratesFunction skipwhite
syn match   zokratesFunction     "\h\w*" display contained
syn keyword zokratesRepeat       for endfor in do
syn keyword zokratesBoolean      true false
syn keyword zokratesStructure    struct
syn keyword zokratesInclude      from nextgroup=zokratesString
syn keyword zokratesInclude      import nextgroup=zokratesString
syn keyword zokratesStatement    as
syn region  zokratesFold         matchgroup=zokratesBraces start="{" end=/}\(\_s\+\ze\("\|{\)\)\@!/ transparent fold
syn region  zokratesFold         matchgroup=zokratesBraces start="\[" end=/]\(\_s\+\ze"\)\@!/ transparent fold


hi def link zokratesComment     Comment
hi def link zokratesLineComment Comment
hi def link zokratesCommentTodo Todo
hi def link zokratesNumber      Number
hi def link zokratesEscape      SpecialChar
hi def link zokratesString      String
hi def link zokratesType        Type 
hi def link zokratesModifier    StorageClass 
hi def link zokratesConditional Conditional 
hi def link zokratesStatement   Statement 
hi def link zokratesFunction    Function
hi def link zokratesRepeat      Repeat 
hi def link zokratesBoolean     Boolean
hi def link zokratesStructure   Structure
hi def link zokratesInclude     Include
hi def link zokratesBraces      Delimiter

syn sync minlines=500
let b:current_syntax = "zokrates"
