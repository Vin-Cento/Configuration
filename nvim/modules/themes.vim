if (has("termguicolors"))
    set termguicolors
endif

"let g:airline_theme='tokyonight'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
"let g:tokyonight_transparent_background=1
"let g:tokyonight_enable_italic=1


" let g:tokyonight_style = 'night'
" let g:tokyonight_italic_functions = 1
" let g:tokyonight_transparent = 'true'
" colorscheme tokyonight

hi CursorLine guifg=NONE guibg=#666d70 ctermbg=237 gui=bold cterm=NONE

lua require 'colorizer'.setup()
