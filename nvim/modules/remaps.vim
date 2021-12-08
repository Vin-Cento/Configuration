noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap j }
noremap k {

nnoremap <silent> <leader>      :<c-u>WhichKey ' '<CR>

nmap <leader>p :bn<CR>
nmap <leader>n :bp<CR>
nmap <leader>S :Snippets<CR>
nmap <leader>s :w<CR>
nmap <leader>ff :FZF<CR>
nmap <leader>rg :Rg<CR>
nmap <leader>rb :Buffers<CR>
nmap <leader>rh :History<CR>
nmap <leader>bd :bdelete!<CR>
nmap <leader>q :q!<CR>
nmap <leader>sudo :w !sudo tee % <CR><CR>

" window moving
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

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
" nmap <silent> gr <Plug>(coc-references)


map <leader>t :NERDTreeToggle<CR>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

