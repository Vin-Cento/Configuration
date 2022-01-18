filetype plugin indent on
syntax on

let g:mapleader=' '
let g:ale_enabled = 0
let g:coc_start_at_startup = v:false

source $HOME/.config/nvim/modules/plugs_call.vim
source $HOME/.config/nvim/modules/settings.vim
source $HOME/.config/nvim/modules/sneak.vim
source $HOME/.config/nvim/modules/ultisnips.vim
source $HOME/.config/nvim/modules/look.vim
source $HOME/.config/nvim/modules/vimwiki.vim

lua require('language_servers')
lua require('cmp_completion')
lua require('scroll')

source $HOME/.config/nvim/modules/remaps.vim

au FileType python setlocal formatprg=autopep8\ -

" Run python from the terminal
autocmd FileType sh map <buffer> <F10> :w<CR>:exec '!bash' shellescape(@%, 1)<CR>
autocmd FileType sh imap <buffer> <F10> <esc>:w<CR>:exec '!bash' shellescape(@%, 1)<CR>

autocmd FileType python map <buffer> <F10> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F10> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

autocmd FileType tex map <buffer> <F10> :w<CR>:exec '!pdflatex' shellescape(@%, 1)<CR>
autocmd FileType tex imap <buffer> <F10> <esc>:w<CR>:exec '!pdflatex' shellescape(@%, 1)<CR>

autocmd FileType rust map <buffer> <F10> :w <CR>:exec '!cargo run' shellescape(@%, 1)<CR>
autocmd FileType rust imap <buffer> <F10> <esc>:w <CR>:exec '!cargo run' shellescape(@%, 1)<CR>

autocmd TextChanged <buffer> silent write

" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
