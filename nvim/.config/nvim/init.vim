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
set mouse=a

" file settings
set number
set foldmethod=marker
set tabstop=2
set shiftwidth=4

" plugins
call plug#begin('~/.local/share/nvim/site/autoload/')
Plug 'dylanaraps/wal.vim'
Plug 'lilydjwg/colorizer'
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'itchyny/lightline.vim'
call plug#end()

" use wal for colorshceme
colorscheme wal

let s:black = [ '', 232 ]
let s:gray = [ '', 8 ]
let s:white = [ '', 0 ]
let s:darkblue = [ '', 4 ]
let s:cyan = [ '', 6 ]
let s:green = [ '', 2 ]
let s:purple = [ '', 5 ]
let s:red = [ '', 1 ]
let s:yellow = [ '', 3 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:gray, s:cyan ], [ s:black, s:yellow ] ]
let s:p.normal.right = [ [ s:gray, s:cyan ], [ s:black, s:yellow ] ]
let s:p.normal.middle = [ [ s:gray, s:cyan ] ]
let s:p.normal.error = [ [ s:red, s:black ] ]
let s:p.normal.warning = [ [ s:yellow, s:black ] ]

let s:p.insert.left = [ [ s:black, s:green ], [ s:black, s:yellow ] ]
let s:p.insert.middle = [ [ s:black, s:green ] ]
let s:p.insert.right = [ [ s:black, s:green ], [ s:black, s:yellow ] ]

let s:p.visual.left = [ [ s:black, s:purple ], [ s:black, s:yellow ] ]
let s:p.visual.middle = [ [ s:black, s:purple ] ]
let s:p.visual.right = [ [ s:black, s:purple ], [ s:black, s:yellow ] ]

let s:p.inactive.middle = [ [ s:white, s:gray ] ]
let s:p.inactive.right = [ [ s:white, s:gray ], [ s:black, s:yellow ] ]
let s:p.inactive.left =  [ [ s:white, s:gray ], [ s:black, s:yellow ] ]

let s:p.replace.left = [ [ s:black, s:red ], [ s:cyan, s:gray ] ]

" nonactive
let s:p.tabline.left = [ [ s:white, s:darkblue ] ]
" selected
let s:p.tabline.tabsel = [ [ s:black, s:purple ] ]
" whitespace
let s:p.tabline.middle = [ [ s:black, s:darkblue ] ]
" right side
let s:p.tabline.right = [ [ s:white, s:purple ] ]

let g:lightline#colorscheme#term#palette = lightline#colorscheme#flatten(s:p)

" statusline
let g:lightline = {
			\ 'colorscheme': 'term',
			\ 'separator': { 'left': '▊▋▌▍▎', 'right': '▎▍▌▋▊' },
      \ }

"keybindings
let mapleader = ","
nnoremap <leader>s :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>r :edit ~/.config/nvim/init.vim<cr>
nnoremap <leader>t :! pdflatex %<cr>
vmap <leader>c :!xclip -f -sel clip<cr>
map <leader>v i: !xclip -o -sel clip<cr><Esc>

