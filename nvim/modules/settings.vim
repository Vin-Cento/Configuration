if has('vim_starting')
  set encoding=utf-8
endif
scriptencoding utf-8

if &compatible
  set nocompatible
endif

set scrolloff=20
set nohlsearch
set noerrorbells 
set cursorline 
set wrap 

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

set relativenumber
set nu

set hidden 
set exrc

set autoread

set smartindent
set ignorecase

set completeopt=menu,menuone,noselect
" set timeoutlen=

" au BufWritePost <buffer> lua require('lint').try_lint()
