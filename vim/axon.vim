" Vim syntax file
" Language:	Axon

if exists("b:current_syntax")
    finish
endif

let main_syntax = 'axon'



syn match   axonLineComment      "\-\-.*" contains=@Spell
syn region  axonComment	       start="\"\"\""  end="\"\"\"" contains=@Spell,javaScriptCommentTodo

syn match   axonNumber           "\<0[bB][0-1]\+\(_[0-1]\+\)*\>"
syn match   axonNumber           "\<0[oO][0-7]\+\(_[0-7]\+\)*\>"
syn match   axonNumber           "\<0\([0-7]\+\(_[0-7]\+\)*\)\?\>"
syn match   axonNumber           "\<0[xX][0-9a-fA-F]\+\(_[0-9a-fA-F]\+\)*\>"
syn match   axonNumber           "\<\d\+\(_\d\+\)*[eE][+-]\?\d\+\>"
syn match   axonNumber           "\<[1-9]\d*\(_\d\+\)*\(\.\(\d\+\(_\d\+\)*\([eE][+-]\?\d\+\)\?\)\?\)\?\>"
syn match   axonNumber           "\<\(\d\+\(_\d\+\)*\)\?\.\d\+\(_\d\+\)*\([eE][+-]\?\d\+\)\?\>"
syn match   axonNumber           "\<\d\+\(_\d\+\)*\.\(\d\+\(_\d\+\)*\([eE][+-]\?\d\+\)\?\)\?\>"


syn keyword axonCommentTodo      TODO FIXME XXX TBD contained
syn keyword axonConditional	if else elif switch
syn keyword axonRepeat		while for do in of
syn keyword axonFunction	function
syn keyword axonBoolean		true false
syn keyword axontNil		nil
syn keyword axonOperator type


syn keyword axonMetaMethod __add __sub __mul __div __pow __unm __concat
syn keyword axonMetaMethod __eq __lt __le
syn keyword axonMetaMethod __index __newindex __call
syn keyword axonMetaMethod __metatable __mode __gc __tostring
syn keyword axonMetaMethod __mod __len
syn keyword axonMetaMethod __pairs
syn keyword axonMetaMethod __idiv __name
syn keyword axonMetaMethod __band __bor __bxor __bnot __shl __shr
syn keyword axonMetaMethod __close


hi def link axonCommentTodo		Todo
hi def link axonLineComment		Comment
hi def link axonComment		Comment
hi def link axonConditional		Conditional
hi def link axonNumber		Number
hi def link axonFunction		Function
hi def link axonMetaMethod       Function
hi def link axonRepeat		Repeat
hi def link axonBoolean		Boolean
hi def link axontNil			Keyword
hi def link axonOperator		Operator

if main_syntax == "axon"
  syn sync fromstart
  syn sync maxlines=100

  syn sync ccomment axonComment
endif


if main_syntax == 'axon'
  unlet main_syntax
endif

let b:current_syntax = "axon"
