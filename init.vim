set nu
set ignorecase
set smartcase
set expandtab
set tabstop=2
set shiftwidth=2
let mapleader=','
nnoremap <silent> <Leader>n :noh<CR>
noremap \ ,
nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'mileszs/ack.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'mhinz/vim-signify'

Plug 'altercation/vim-colors-solarized'
Plug 'freeo/vim-kalisi'
Plug 'mhartington/oceanic-next'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:airline_powerline_fonts = 1

set background=dark
colorscheme OceanicNext
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:airline_theme='oceanicnext'
