" ============================================================================
" File: scene.vim
" Maintainer: https://github.com/EvanQuan/vim-scene/
" Version: 0.1.0
"
" Syntax highlighting for scene files.
" ============================================================================

if exists("b:current_syntax")
  finish
endif

syntax keyword sceneTODO TODO FIXME XXX contained
syntax match sceneNOTE /[A-Z]\+[a-zA-Z]*:/ contained
syntax region sceneComment start=/^#/ end=/$/ contains=sceneTODO,sceneNOTE

highlight link sceneComment Comment
highlight link sceneTODO Todo
highlight link sceneNOTE Typedef

let b:current_syntax = "scene"
