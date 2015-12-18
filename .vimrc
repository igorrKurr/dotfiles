scriptencoding utf-8
set encoding=utf-8

let mapleader=","

syntax on
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

set hidden

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
Plugin '907th/vim-auto-save'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-commentary'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'gregsexton/MatchTag'
Plugin 'djoshea/vim-autoread'
Plugin 'sjl/vitality.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-eunuch'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'

call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_theme='luna'
let g:airline_powerline_fonts=1
let g:airline_right_sep=''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

nnoremap <C-j> :bprevious<CR>
nnoremap <C-k> :bnext<CR> 
nnoremap <C-w> :bp <BAR> bd #<CR>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
nnoremap <C-U> <C-W><C-J>
nnoremap <C-M> <C-W><C-K>
nmap <leader>bl :ls<CR>

" let g:auto_save = 1
" let g:auto_save_no_updatetime = 1
" let g:auto_save_in_insert_mode = 0

noremap <C-n> :Autoformat<CR>

" My keymaps
command Q qa
"nnoremap <C-p> gg=G<CR>
nnoremap <C-a> dd2kpk<CR>
nnoremap <C-x> ddpk<CR>
noremap <silent> <leader>v "+p<CR>
noremap <silent> <leader>c "+y<CR>
nnoremap <leader>q <ESC>qa<CR>
nnoremap <leader>a @a<CR>
nnoremap <leader>h :nohl<CR>

set noerrorbells
set novisualbell

let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

"ctrlp
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_open_new_file = "r"
let g:ctrlp_open_multiple_files = '2vjr'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore node_modules
      \ --ignore bower_components
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ -g ""'

"Ag
let g:agprg='ag -S --nocolor --nogroup --column --ignore node_modules --ignore ".git" --ignore vendor --ignore bower_components'
nnoremap <C-f> :Ag<space>
nnoremap <leader>f :Ag <C-R><C-W><ENTER>

autocmd BufLeave,FocusLost * silent! wall
