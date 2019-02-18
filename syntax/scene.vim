" ============================================================================
" File: scene.vim
" Maintainer: https://github.com/EvanQuan/vim-scene/
" Version: 0.2.2
"
" Syntax highlighting for scene files.
" ============================================================================

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=+
setlocal iskeyword+=}
setlocal iskeyword+={
syntax keyword sceneTODO TODO FIXME XXX contained
syntax match sceneNumber /[-]\?[0-9]\+/ contained
syntax match sceneFloat /[-]\?[0-9]\+.[0-9]\+/ contained
syntax match sceneNOTE /[A-Z]\+[a-zA-Z_]*:/ contained
syntax region sceneComment start=/^#/ end=/$/ contains=sceneTODO,sceneNOTE
syntax match sceneObject /[a-zA-Z_]\+\ze {/ contained
syntax keyword scenePropertySymbol + contained
syntax match sceneProperty /+[a-zA-Z_]\+/ contained contains=scenePropertySymbol
syntax keyword sceneDefinitionDelimiters {  } contained
syntax region scenePropertyDefinition start=/+[a-zA-Z_]\+\ze {/ end=/}/ contained contains=sceneObject,sceneComment,sceneTODO,sceneNOTE,sceneProperty,scenePropertyPath,sceneDefinitionDelimiters,sceneNumber,sceneFloat keepend
syntax region scenePropertyPath start=/[a-zA-z]\+/ end=/$/ contained keepend
syntax region sceneObjectDefinition start=/^[a-zA-Z_]\+\ze {/ end=/}/ contains=sceneObject,sceneComment,scenePropertyDefinition,sceneNumber,sceneFloat,sceneDefinitionDelimiters

highlight link sceneComment Comment
highlight link sceneTODO Todo
highlight link sceneNOTE Typedef
highlight link sceneObject Typedef
highlight link sceneProperty Keyword
highlight link scenePropertySymbol Operator
highlight link scenePropertyPath String
highlight link sceneNumber Number
highlight link sceneFloat Float
highlight link sceneDefinitionDelimiters Operator

let b:current_syntax = "scene"
