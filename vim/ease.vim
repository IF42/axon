" Vim syntax file
" Language:	Axon

if exists("b:current_syntax")
    finish
endif

let main_syntax = 'ease'



syn keyword easeCommentTodo      TODO FIXME XXX TBD contained
syn match   easeLineComment      "\-\-.*" contains=@Spell
syn region  easeComment	       start="\"\"\""  end="\"\"\"" contains=@Spell,easeCommentTodo



syn region	easeString		start=+\%(L\|u\|u8\|U\|R\|LR\|u8R\|uR\|UR\)\="+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell extend
syn match	easeCharacter	"L\='[^\\]'"

syn match   easeNumber           "\<0[bB][0-1]\+\(_[0-1]\+\)*\>"
syn match   easeNumber           "\<0[oO][0-7]\+\(_[0-7]\+\)*\>"
syn match   easeNumber           "\<0\([0-7]\+\(_[0-7]\+\)*\)\?\>"
syn match   easeNumber           "\<0[xX][0-9a-fA-F]\+\(_[0-9a-fA-F]\+\)*\>"
syn match   easeNumber           "\<\d\+\(_\d\+\)*[eE][+-]\?\d\+\>"
syn match   easeNumber           "\<[1-9]\d*\(_\d\+\)*\(\.\(\d\+\(_\d\+\)*\([eE][+-]\?\d\+\)\?\)\?\)\?\>"
syn match   easeNumber           "\<\(\d\+\(_\d\+\)*\)\?\.\d\+\(_\d\+\)*\([eE][+-]\?\d\+\)\?\>"
syn match   easeNumber           "\<\d\+\(_\d\+\)*\.\(\d\+\(_\d\+\)*\([eE][+-]\?\d\+\)\?\)\?\>"


syn keyword easeCommentTodo      TODO FIXME XXX TBD contained
syn keyword easeConditional	if else elif switch
syn keyword easeRepeat		while for do in of
syn keyword easeFunction	function
syn keyword easeBoolean		true false
syn keyword easetNull		null
syn keyword easeOperator type pair local require 
syn keyword easetStatement		return break continue


syn keyword easeMetaMethod __add __sub __mul __div __pow __unm __concat
syn keyword easeMetaMethod __eq __lt __le
syn keyword easeMetaMethod __index __newindex __call
syn keyword easeMetaMethod __metatable __mode __gc __tostring
syn keyword easeMetaMethod __mod __len
syn keyword easeMetaMethod __pairs
syn keyword easeMetaMethod __idiv __name
syn keyword easeMetaMethod __band __bor __bxor __bnot __shl __shr
syn keyword easeMetaMethod __close


hi def link easeCommentTodo		Todo
hi def link easeLineComment		Comment
hi def link easeComment		Comment
hi def link easeConditional		Conditional
hi def link easeNumber		Number
hi def link easeFunction		Function
hi def link easeMetaMethod       Function
hi def link easeRepeat		Repeat
hi def link easeBoolean		Boolean
hi def link easetNull			Keyword
hi def link easeOperator		Operator
hi def link easetStatement		Statement
hi def link easeString          String
hi def link easeCharacter		Character

if main_syntax == "ease"
  syn sync fromstart
  syn sync maxlines=100

  syn sync ccomment easeComment
endif


if main_syntax == 'ease'
  unlet main_syntax
endif

let b:current_syntax = "ease"
