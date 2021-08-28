set ai cindent
set ts=4 sw=4
set hlsearch
set incsearch
set smartcase
set cursorline
set number
set title
set ruler
syntax enable

"escape
inoremap jk <ESC>
inoremap kj <ESC>

" copy system clipboard
nnoremap yy yy"+yy
vnoremap y ygv"+y
noremap gp "+p

" scroll
nnoremap J 5j
nnoremap K 5k

" color scheme
colo evokai

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Initialize plugin system
" :source %
" :PlugInstall
call plug#end()

" shortcuts
let mapleader = "\<Space>"

" splits
nnoremap <Leader>w :w<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" nerdtree
" nmap <F6> :NERDTreeToggle<CR>
nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
