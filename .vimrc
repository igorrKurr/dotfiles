scriptencoding utf-8
set encoding=utf-8

let mapleader=","

autocmd FocusLost * silent! w
syntax on
autocmd TextChanged * silent! w
set background=dark
set autowrite
colorscheme iceberg 
set tabstop=2 shiftwidth=2 expandtab smarttab et
set nu relativenumber
set list listchars=tab:--
set autoread
set laststatus=2
set ai
set showmatch 
set hlsearch
set incsearch
set ignorecase
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set showcmd

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin  'jistr/vim-nerdtree-tabs'
Plugin '907th/vim-auto-save'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-commentary'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'

call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_theme='luna'
let g:airline_powerline_fonts=1
let g:airline_right_sep=''

map <C-n> :NERDTreeTabsToggle<CR>
let NERDTreeIgnore=['tmp$',"node_modules$","bower_components$","dist$"]

nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR> 
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:auto_save = 1

noremap <C-p> :Autoformat<CR>

" My keymaps
command Q qa
nnoremap <C-w> :tabc<CR> 
"nnoremap <C-p> gg=G<CR>
nnoremap <C-a> dd2kpk<CR>
nnoremap <C-x> ddpk<CR>
nnoremap <silent> <leader>v "+p<CR>

set noerrorbells
set novisualbell

let g:ycm_key_list_select_completion=['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-k>', '<Up>']
