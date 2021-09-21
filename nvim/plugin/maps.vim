" Mappings
"
"
"
"
" Telescope
" test
"
nnoremap <leader>F <cmd>Telescope find_files<cr>
nnoremap <leader>f :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ") })<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" centering
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ'z
" jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
" undo breakpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
" moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==i
inoremap <C-k> <esc>:m .-2<CR>==i
nnoremap <silent>y<Leader>f :let @* = expand("%")<CR>
nnoremap <C-p> :bp<CR>
nnoremap <C-n> :bn<CR>
nnoremap <Leader>d :bdelete<CR>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
noremap <Leader>s :UltiSnipsEdit<CR>
nnoremap <Leader>w :wa<CR>
nnoremap dl dt)
nnoremap <silent><Leader>v :terminal python3 ~/Desktop/projects/python/vim-tools/vim_tools.py %:p<CR>
nnoremap <Leader>N :cprevious<CR>
nnoremap <Leader>n :cnext<CR>
tnoremap <Esc> <C-\><C-n>
vnoremap <leader>k "ky :!echo "<c-R>k" \| nc localhost 10004<CR>
