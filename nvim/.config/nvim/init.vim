" __   __     __   __   __     __    __     ______     ______
"/\ "-.\ \   /\ \ / /  /\ \   /\ "-./  \   /\  == \   /\  ___\
"\ \ \-.  \  \ \ \'/   \ \ \  \ \ \-./\ \  \ \  __<   \ \ \____
" \ \_\\"\_\  \ \__|    \ \_\  \ \_\ \ \_\  \ \_\ \_\  \ \_____\
"  \/_/ \/_/   \/_/      \/_/   \/_/  \/_/   \/_/ /_/   \/_____/
"
" general settings
syntax enable
set noswapfile
set clipboard=unnamed
set mouse=a

" file settings
set number
set foldmethod=marker
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent set expandtab

" plugins
call plug#begin('~/.local/share/nvim/site/autoload/')
Plug 'dylanaraps/wal.vim'
Plug 'lilydjwg/colorizer'
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
"Plug 'itchyny/lightline.vim'
call plug#end()

function! GetFileType(filetype)
	if a:filetype == ''
		return "none"
	else
		return a:filetype
	endif
endfunction

set laststatus=2
set statusline=%f\ 
set statusline+=%m
set statusline+=%=
set statusline+=%{GetFileType(&filetype)}\ 
set statusline+=%{&ff}\ 

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

" colorz
colo hawea-dark

" complete
set completeopt=longest,menuone,noinsert
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" invisible
set list listchars=tab:\|\ ,trail:<


"keybindings
let mapleader = ","
nnoremap <leader>s :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>r :edit ~/.config/nvim/init.vim<cr>
nnoremap <leader>t :! pdflatex %<cr>
vmap <leader>c :!xclip -f -sel clip<cr>
map <leader>v i: !xclip -o -sel clip<cr><Esc>

