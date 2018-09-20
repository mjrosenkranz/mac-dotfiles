" __   __     __   __   __     __    __     ______     ______
"/\ "-.\ \   /\ \ / /  /\ \   /\ "-./  \   /\  == \   /\  ___\
"\ \ \-.  \  \ \ \'/   \ \ \  \ \ \-./\ \  \ \  __<   \ \ \____
" \ \_\\"\_\  \ \__|    \ \_\  \ \_\ \ \_\  \ \_\ \_\  \ \_____\
"  \/_/ \/_/   \/_/      \/_/   \/_/  \/_/   \/_/ /_/   \/_____/
"
" general settings
syntax on
set noswapfile
set clipboard=unnamed

" file settings
set number
set foldmethod=marker

"plugins
call plug#begin('~/.local/share/nvim/site/autoload/')
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-eunuch'
Plug 'terryma/vim-multiple-cursors'
Plug 'dylanaraps/wal.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'lilydjwg/colorizer'
call plug#end()

"use wal for colorshceme
colorscheme wal

" statusline
set noshowmode
let g:currentmode={
      \ 'n'  : 'NORMAL ',
      \ 'no' : 'NORMAL OP ',
      \ 'v'  : 'VISUAL ',
      \ 'V'  : 'VISUAL-LINE ',
      \ 'x22' : 'VISUAL-BLOCK ',
      \ 's'  : 'SELECT ',
      \ 'S'  : 'SELECT-LINE ',
      \ 'x19' : 'SELECT-BLOCK ',
      \ 'i'  : 'INSERT ',
      \ 'R'  : 'REPLACE ',
      \ 'Rv' : 'V·Replace ',
      \ 'c'  : 'Command ',
      \ 'cv' : 'Vim Ex ',
      \ 'ce' : 'Ex ',
      \ 'r'  : 'Prompt ',
      \ 'rm' : 'More ',
      \ 'r?' : 'Confirm ',
      \ '!'  : 'Shell ',
      \ 't'  : 'TERMINAL '
      \}
hi Block1 ctermfg=0 ctermbg=2
hi Block2 ctermfg=0 ctermbg=5
hi Block3 ctermfg=0 ctermbg=6

set laststatus=2
set statusline=
set statusline+=%#Block1#
set statusline+=\ %{g:currentmode[mode()]}
set statusline+=%#Block2#
set statusline+=%F
set statusline+=%=
set statusline+=\ %Y\ 
set statusline+=%#Block1#
set statusline+=\ Ln
set statusline+=\ %l
set statusline+=,Col
set statusline+=\ %c\ 

"keybindings
let mapleader = ","
nnoremap <leader>g :Goyo 70%x70%<cr>
nnoremap <leader>s :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>r :edit ~/.config/nvim/init.vim<cr>
nnoremap <leader>t :! pdflatex %<cr>
