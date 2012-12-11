" ************ Init *************
set nocompatible
filetype plugin indent on
syntax on

behave mswin

if has('statusline')
  set laststatus=2
  set statusline=%m%r%h%w\ %l,%c%V%=%<%p%%[b%n][0x%B][len=%L][%{&ff}][%Y]\ %F
endif 

" ************** GVIM ***************
if has('gui_running')
  set guioptions-=T
  set lines=40
  hi cursorline guibg=#333333
endif

" ***************ENVIROMENT *****************
set backspace=indent,eol,start
set showmatch
set showcmd
set wildmenu
set wildmode=list:longest,full

set shortmess+=filmnrxoOtT
set showmode
set incsearch
set hlsearch
set autowrite
set whichwrap=b,s,h,l,<,>,[,]
set ignorecase
set smartcase

set nobackup
set mouse=a
set textwidth=80

" ************* DISPLAY ****************
set nu
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
  set fileencodings=chinese
else
  set fileencodings=utf-8
endif

language messages zh_CN.utf-8

set tabpagemax=15
set winminheight=0
set scrolljump=3
set nofoldenable

if version >= 703
  set colorcolumn=+1
endif

set guifont=Monaco\ 12

" ************** FORMATTING ****************
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
set softtabstop=2

set pastetoggle=<F12>



" auto reload vimrc when edit it
autocmd! bufwritepost .vimrc source ~/.vimrc

syntax on
set hlsearch

if has("gui_running")
  set background=dark
  set t_Co=256
  set cursorline
  colors desert
  highlight CursorLine guibg=#003853 ctermbg=24  gui=none cterm=none
endif




" *******************  keymap ****************
map <S-Enter> O<Esc>
map <CR> o<Esc>

" *****************  PLUGIN ********************"
" vimwiki"
map <s-F4> :VimwikiAll2HTML<cr>
map <F4> :Vimwiki2HTML<cr>
let g:vimwiki_list = [{'html_header': '~/vimwiki_html/header.tpl'}]

