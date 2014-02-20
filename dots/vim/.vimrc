set nocompatible
filetype off
execute pathogen#infect()
call pathogen#helptags()
autocmd BufNewFile,BufRead *.xml source ~/.vim/ftplugin/xml.vim
syntax on
filetype plugin indent on

:let python_highlight_all = 1

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle "lepture/vim-jinja"

filetype plugin indent on     " required

"Авто комплит по табу
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t

autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
vmap <C-C> "+yi
imap <C-V> "+gPi
set ruler
set mouse=a
set autoread
set smartcase
set ignorecase
set lazyredraw

set incsearch 
set showmatch

set shiftwidth=4 
set tabstop=4 
set softtabstop=4
set expandtab 
set smarttab

set nobackup
set nowb
set noswapfile

set lbr
set tw=500

set ai
set si
set wrap
set number
set t_Co=256
set foldcolumn=1
colorscheme wombat256
set path=.,,** " Поиск файлов

set termencoding=utf-8
set fileencodings=utf8,cp1251
set encoding=utf8

if has("autocmd")
    autocmd BufRead *.sql set filetype=mysql
endif

nmap 0 ^
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nmap gtr :tabclose<cr> 
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc>:BufExplorer<cr>

" F6 - предыдущий буфер
nmap <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i
"
" " F7 - следующий буфер
nmap <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

nmap <C-N>v :NERDTree<cr>
nmap <C-N>x :NERDTreeClose<cr>

" Вставить пустую строку
nmap <C-N>n o<esc>
ab utf8! # -*- coding: utf-8 -*-

:let g:session_autosave='yes'
:let g:session_autoload='yes'

func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
