set nu
set ignorecase
set smartcase
set expandtab
set tabstop=2
set shiftwidth=2
let mapleader=','
nnoremap <silent> <Leader>n :noh<CR>
noremap \ ,

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
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

Plug 'neomake/neomake'
Plug 'kassio/neoterm'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'mhinz/vim-signify'
Plug 'edkolev/tmuxline.vim'

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

let g:neoterm_automap_keys = '<Leader>tt'
nnoremap <silent> <Leader>to :call neoterm#open()<cr>
nnoremap <silent> <Leader>th :call neoterm#close()<cr>
nnoremap <silent> <Leader>tl :call neoterm#clear()<cr>
nnoremap <silent> <Leader>tc :call neoterm#kill()<cr>
nnoremap <silent> <Leader>tsf :TREPLSendFile<cr>
nnoremap <silent> <Leader>ts :TREPLSend<cr>
vnoremap <silent> <Leader>ts :TREPLSend<cr>

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


autocmd! BufWritePost * Neomake
autocmd! QuitPre * let g:neomake_verbose = 0
