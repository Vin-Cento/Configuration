set guicursor=n-v-c:block
set scrolloff=10
set nohlsearch
set noerrorbells
set cursorline
set wrap

nmap =j :%!python -m json.tool<CR>

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

filetype indent on
set filetype=html
set smartindent

let g:mapleader=' '
let g:maplocalleader = ','

call plug#begin('~/.config/nvim/pluggin')

Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gryf/pylint-vim'

Plug 'mhinz/vim-startify'

" better syntax ???
Plug 'sheerun/vim-polyglot'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nanotech/jellybeans.vim'

" fzf & vim-rooter
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

set timeoutlen=100

Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

Plug 'justinmk/vim-sneak'

call plug#end()

nnoremap <silent> <leader>      :<c-u>WhichKey ' '<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" Aesthetics 
syntax enable
let g:one_allow_italics = 1
set background=dark
colorscheme jellybeans

 "Tabs
let g:airline_theme='codedark'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'

" Setting up syntax highlighting
if (has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <leader>t :NERDTreeToggle<CR>

nmap <leader>bp :bp<CR>
nmap <leader>bn :bn<CR>
nmap <leader>w :w<CR>
nmap <leader>ff :FZF<CR>
nmap <leader>rg :Rg<CR>
nmap <leader>rb :Buffers<CR>
nmap <leader>rh :History<CR>
nmap <leader>bd :bdelete!<CR>
nmap <leader>q :q!<CR>

" GO TO DEFINITION AND REFERENCES
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

nnoremap <C-p> :Gfiles<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Run python from the terminal
autocmd FileType python map <buffer> <F10> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F10> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
