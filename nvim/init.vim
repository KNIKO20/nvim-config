set mouse=a
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set ignorecase
set smartcase
set spelllang=en,es
set termguicolors 
set autoindent  " Activa el autoidentado
set smartindent " Activa el indentado inteligente

colorscheme molokai

nnoremap <C-s> :w<CR>

" Configura el directorio donde se encuentra el plugin feline
set runtimepath+=~/.config/nvim/plugged/feline

" Carga el plugin feline
lua << EOF
	require('feline').winbar.setup()
  require('feline').setup()
EOF

set runtimepath^=~/.config/nvim/coc.nvim
filetype plugin indent on
syntax on
set hidden

" Configuración de coc-pairs
let g:coc_global_extensions = [
\ 'coc-pairs',
\ ]

" Presiona Tab para pasar al siguiente elemento de la lista de autocompletado
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" Presiona Shift+Tab para pasar al elemento anterior de la lista de autocompletado
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

source ~/.config/nvim/plugin/commentary.vim




