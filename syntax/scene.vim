" ============================================================================
" File: scene.vim
" Maintainer: https://github.com/EvanQuan/vim-scene/
" Version: 1.0.0
"
" Syntax highlighting for scene files.
" ============================================================================

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=}
setlocal iskeyword+={
syntax keyword sceneTODO TODO FIXME XXX contained
syntax match sceneNumber /[-]\?[0-9]\+/
syntax match sceneFloat /[-]\?[0-9]\+.[0-9]\+/
syntax match sceneNOTE /[A-Z]\+[a-zA-Z_]*:/ contained
syntax region sceneComment start=/^#/ end=/$/ contains=sceneTODO,sceneNOTE
syntax match sceneObject /^[0-9a-zA-Z_]\+\ze {/
syntax match sceneProperty /+[0-9a-zA-Z_]\+/
syntax keyword sceneDefinitionDelimiters {  }
syntax region scenePropertyDefinition start=/+[a-zA-Z_]\+\ze {/ end=/}/ contained contains=sceneObject,sceneComment,sceneTODO,sceneNOTE,sceneProperty,scenePropertyPath,sceneDefinitionDelimiters,sceneNumber,sceneFloat keepend
syntax region scenePropertyPath start=/^[ \t]\+[a-zA-z]\+/ end=/$/
syntax region sceneObjectDefinition start=/^[a-zA-Z_]\+\ze {/ end=/}/ contains=sceneObject,sceneComment,scenePropertyPath,scenePropertyDefinition,sceneNumber,sceneFloat,sceneDefinitionDelimiters

highlight link sceneComment Comment
highlight link sceneTODO Todo
highlight link sceneNOTE Typedef
highlight link sceneObject Typedef
highlight link sceneProperty Keyword
highlight link scenePropertyPath String
highlight link sceneNumber Number
highlight link sceneFloat Float
highlight link sceneDefinitionDelimiters Operator

let b:current_syntax = "scene"
