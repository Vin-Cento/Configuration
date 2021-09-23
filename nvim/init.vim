set nocompatible
set scrolloff=15
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
syntax on

filetype plugin indent on
set smartindent

" installing vimplug
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

if (has("termguicolors"))
    set termguicolors
endif

call plug#begin('~/.config/nvim/pluggin')

	Plug 'kyoz/purify', {'rtp': 'vim'}

	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	Plug 'rust-lang/rust.vim'
	
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'justinmk/vim-sneak'

	Plug 'preservim/nerdtree' 
	Plug 'mhinz/vim-startify'

	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'sheerun/vim-polyglot'

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes' 

	Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }


call plug#end()

let g:mapleader=' '
nnoremap <silent> <leader>      :<c-u>WhichKey ' '<CR>

nmap <leader>p :bp<CR>
nmap <leader>n :bn<CR>
nmap <leader>w :w<CR>
nmap <leader>rf :FZF<CR>
nmap <leader>rg :Rg<CR>
nmap <leader>rb :Buffers<CR>
nmap <leader>rh :History<CR>
nmap <leader>bd :bdelete!<CR>
nmap <leader>q :q!<CR>

vmap <C-c> "+y<CR>

nnoremap <leader>sv :source $MYVIMRC<CR>

let g:airline_theme='purify'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'

lua require 'colorizer'.setup()
set background=dark
colorscheme purify

hi CursorLine guifg=NONE guibg=#2d3c45 ctermbg=237 gui=NONE cterm=NONE

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

map <leader>t :NERDTreeToggle<CR>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Run python from the terminal
autocmd FileType sh map <buffer> <F10> :w<CR>:exec '!bash' shellescape(@%, 1)<CR>
autocmd FileType sh imap <buffer> <F10> <esc>:w<CR>:exec '!bash' shellescape(@%, 1)<CR>

autocmd FileType python map <buffer> <F10> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F10> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

autocmd FileType python map <buffer> <F11> :w<CR>:exec '!pycodestyle --first' shellescape(@%, 1)<CR>

autocmd FileType tex map <buffer> <F10> :w<CR>:exec '!pdflatex' shellescape(@%, 1)<CR>
autocmd FileType tex imap <buffer> <F10> <esc>:w<CR>:exec '!pdflatex' shellescape(@%, 1)<CR>

autocmd FileType rust map <buffer> <F10> :w <CR>:exec '!cargo run' shellescape(@%, 1)<CR>
autocmd FileType rust imap <buffer> <F10> <esc>:w <CR>:exec '!cargo run' shellescape(@%, 1)<CR>
