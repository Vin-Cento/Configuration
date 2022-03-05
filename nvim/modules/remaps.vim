noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <silent> <leader>      :<c-u>WhichKey ' '<CR>

nnoremap <leader>p :bn<CR>
nnoremap <leader>n :bp<CR>
nnoremap <leader>S :Snippets<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>ff :FZF<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>rb :Buffers<CR>
nnoremap <leader>rh :History<CR>
nnoremap <leader>bd :bdelete!<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>sudo :w !sudo tee % <CR><CR>

nnoremap j jzzzv
nnoremap k kzzzv
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" window moving
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

vmap <C-c> "+y<CR>

nnoremap <leader>sv :source $MYVIMRC<CR>

" map <leader><leader> :Goyo \| set linebreak<CR>
 map <leader><leader> :Goyo<CR>

nmap <leader>a :ALEToggle<CR>

" " Use `[g` and `]g` to navigate diagnostics
" " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" " GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> <leader>gr <Plug>(coc-references)


map <leader>t :NERDTreeToggle<CR>

" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

