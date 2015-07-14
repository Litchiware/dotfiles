"""""""""""""""""""""""""""""""""
"manage vim plugins using vundle
"""""""""""""""""""""""""""""""""
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
Plugin 'honza/vim-snippets' " Snippets are separated from the engine. Add this if you want them:
let g:UltiSnipsExpandTrigger="<tab>" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""
"settings related to vim's apperance
"""""""""""""""""""""""""""""""""
set nu
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
colorscheme desert
syntax on
set ruler
set laststatus=2
"""""""""""""""""""""""""""""""""
"settings related to vim's property
"""""""""""""""""""""""""""""""""
set nrformats=
set mouse=a
set incsearch
set history=200
set hidden
set hlsearch
set backspace=2
set ignorecase
set smartcase
set scrolloff=3

"""""""""""""""""""""""""""""""""
""""""""key mappings""""""""""""
"""""""""""""""""""""""""""""""""
let mapleader=','
noremap \ ,
cnoremap <silent> <C-p> <Up>
cnoremap <silent> <C-n> <Down>
cnoremap <expr> %% getcmdtype()==':'? expand('%:h').'/' : '%%'
"noremap <Leader>n nzz
"noremap <Leader>N Nzz
nnoremap <silent> <Leader>n :noh<CR>
nnoremap & :&&<CR>
xnoremap & :&&<CR>
cmap w!! w !sudo tee > /dev/null %
map ,ss :setlocal spell!<cr>
imap jj <esc>
inoremap <c-l> <esc>la

"""""""""""""""""""""""""""""""""
"settings related to some plugins
"""""""""""""""""""""""""""""""""
filetype plugin on
runtime macros/matchit.vim
set dictionary=/usr/share/dict/words
let g:vim_markdown_folding_disabled=1
let g:jekyll_path = "/home/litchiware/Templates/jekyll/Litchiware.github.io/"
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_key_invoke_completion = '<c-y>'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
