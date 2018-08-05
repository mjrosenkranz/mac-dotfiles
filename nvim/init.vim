" general settings
syntax on
set noswapfile
set clipboard=unnamed

" file settings
set number

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
hi Block1 ctermfg=0 ctermbg=4
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

"plugins
call plug#begin('~/.local/share/nvim/site/autoload/')
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-eunuch'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

"keybindings
let mapleader = ","
nnoremap <leader>g :Goyo 50%x50%<cr>
nnoremap <leader>s :source ~/.config/nvim/init.vim<cr>
