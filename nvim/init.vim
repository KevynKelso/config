set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin()
  Plug 'SirVer/ultisnips'
  Plug 'Yggdroot/indentLine'
  Plug 'airblade/vim-gitgutter'
  Plug 'fatih/vim-go'
  Plug 'leafgarland/typescript-vim'
  Plug 'lervag/vimtex'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'preservim/nerdcommenter'
  Plug 'sainnhe/sonokai'
  Plug 'sbdchd/neoformat'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'glepnir/lspsaga.nvim'
endif
call plug#end()

colorscheme sonokai

let mapleader = " "
let maplocalleader = " "
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'

let g:completion_enable_snippet='UltiSnips'

let g:python3_host_prog = '/usr/local/bin/python3'
"let g:completion_chain_complete_list = {
    "\'default' : [
    "\    {'complete_items': ['lsp', 'snippet', 'tabnine', 'path', 'UltiSnips']},
    "\]
    "\}

" Use completion-nvim in every buffer
"autocmd BufEnter * lua require'completion'.on_attach()
