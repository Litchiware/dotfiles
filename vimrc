  """"""""""""""""""""""""""""""""""""""""
"     manage vim plugins with vundle       "
"                                          "
  """"""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-abolish'
Plugin 'Raimondi/delimitMate'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-repeat'

Plugin 'SirVer/ultisnips' " Track the engine.
Plugin 'honza/vim-snippets' " Snippets are separated from the engine.

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on
filetype plugin on


  """"""""""""""""""""""""""""""""""""""""
"       settings for vim-markdown          "
"                                          "
  """"""""""""""""""""""""""""""""""""""""

let g:vim_markdown_folding_disabled=1


  """"""""""""""""""""""""""""""""""""""""
"         settings for ultisnips           "
"                                          "
  """"""""""""""""""""""""""""""""""""""""

let g:UltiSnipsExpandTrigger="<tab>" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.


  """"""""""""""""""""""""""""""""""""""""
"        settings for youcompleteme        "
"                                          "
  """"""""""""""""""""""""""""""""""""""""

let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_key_invoke_completion = '<c-y>'
"let g:ycm_auto_trigger=0
"let g:ycm_key_invoke_completion='<c-m>'


  """"""""""""""""""""""""""""""""""""""""
"         settings for appearance           "
"                                          "
  """"""""""""""""""""""""""""""""""""""""

colorscheme desert
syntax on
set nu
set laststatus=2
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set ruler


  """"""""""""""""""""""""""""""""""""""""
"         settings for property            "
"                                          "
  """"""""""""""""""""""""""""""""""""""""

set nrformats=
set mouse=a
set incsearch
set hlsearch
set history=200
set hidden
set backspace=2
set ignorecase
set smartcase
set scrolloff=3


  """"""""""""""""""""""""""""""""""""""""
"        settings for key mappings         "
"                                          "
  """"""""""""""""""""""""""""""""""""""""

let mapleader=','
noremap \ ,
cnoremap <silent> <C-p> <Up>
cnoremap <silent> <C-n> <Down>
cnoremap <expr> %% getcmdtype()==':'? expand('%:h').'/' : '%%'
nnoremap <silent> <Leader>n :noh<CR>
nnoremap & :&&<CR>
xnoremap & :&&<CR>
cmap w!! w !sudo tee > /dev/null %
map ,ss :setlocas spell!<cr>
imap jj <esc>
inoremap <c-l> <esc>la
inoremap <c-h> <esc>i


  """"""""""""""""""""""""""""""""""""""""
"      settings for built-in plugins       " 
"                                          "
  """"""""""""""""""""""""""""""""""""""""

runtime macros/matchit.vim
set dictionary=/usr/share/dict/words
