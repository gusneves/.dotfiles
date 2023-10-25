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
Plug 'ellisonleao/glow.nvim'

"End plugin session
call plug#end()

syntax enable
filetype plugin indent on

"Mappings
map <F2> :NERDTree <CR>

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

"Glow - Markdown Preview
let g:glow_style = "dark"
