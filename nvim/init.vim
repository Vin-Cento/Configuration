filetype plugin indent on
syntax on

let g:mapleader=' '

source $HOME/.config/nvim/modules/plugs_call.vim
source $HOME/.config/nvim/modules/settings.vim
source $HOME/.config/nvim/modules/sneak.vim
source $HOME/.config/nvim/modules/ultisnips.vim
source $HOME/.config/nvim/modules/themes.vim
source $HOME/.config/nvim/modules/vimwiki.vim
source $HOME/.config/nvim/modules/telescope.vim

source $HOME/.config/nvim/modules/remaps.vim

lua require('plugins')
lua require('devicons')
lua require('telescop')
lua require('language_servers')
lua require('cmp_completion')
lua require('scroll')
lua require('tree_sitter')
lua require('impatient')
lua require('dashboard')
lua require('commenter')
lua require('file_tree')
lua require('theme')
lua require('tagbar')
lua require('debugger')
lua require('rooter')


au FileType python setlocal formatprg=autopep8\ -
au FileType dap-repl lua require('dap.ext.autocompl').attach()

" Run python from the terminal
autocmd FileType python nnoremap <buffer> <leader><CR> :w<CR>:FloatermNew --autoclose=0 --height=0.9 --width=0.7 python %<CR>
autocmd FileType sh nnoremap <buffer> <leader><CR> :w<CR>:FloatermNew --autoclose=0 --height=0.9 --width=0.7 bash %<CR>
autocmd FileType tex nnoremap <buffer> <leader><CR> :w<CR>:FloatermNew --autoclose=0 --height=0.9 --width=0.7 pdflatex %<CR>
autocmd FileType javascript nnoremap <buffer> <leader><CR> :w<CR>:FloatermNew --autoclose=0 --height=0.9 --width=0.7 node %<CR>


" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
