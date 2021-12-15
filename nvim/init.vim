set number relativenumber 
set expandtab shiftwidth=2
set clipboard+=unnamedplus
set cmdheight=2
set encoding=UTF-8
set cursorline
set background=dark

"Status-line
set statusline=
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F

set statusline+=%=

set statusline+=\ [%l/%L]

"Init vim-plug
call plug#begin('~/.config/nvim/data')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter' 
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'rust-lang/rust.vim'

"End plugin session
call plug#end()

syntax enable
filetype plugin indent on

"Mappings
map <F2> :NERDTree <CR>

"RustFmt
"let g:rustfmt_autosave = 1

