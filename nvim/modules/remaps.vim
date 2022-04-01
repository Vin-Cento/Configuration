noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <silent> <leader>      :<c-u>WhichKey ' '<CR>

nnoremap <leader>p :bn<CR>
nnoremap <leader>n :bp<CR>
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>S :Snippets<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>sudo :w !sudo tee % <CR><CR>

nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <leader>s :SymbolsOutline<CR>

" nnoremap <leader><CR> :FloatermNew lfrun<CR>
" nnoremap <leader><CR> :FloatermNew --height=0.6 --width=0.4 --wintype=float --name=floaterm1 --position=topleft --autoclose=0 python %<CR><CR>

nnoremap j jzzzv
nnoremap k kzzzv
nnoremap J }
nnoremap K {

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap ; :
nnoremap : ;

" window moving
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

vmap <C-c> "+y<CR>

nnoremap <silent> <leader>dc :lua require'dap'.continue()<CR>
nnoremap <silent> <leader>dso :lua require'dap'.step_over()<CR>
nnoremap <silent> <leader>dsi :lua require'dap'.step_into()<CR>
nnoremap <silent> <leader>dsq :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>dp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>
