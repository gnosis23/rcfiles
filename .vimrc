" ************ Init *************
set nocompatible
call pathogen#infect()

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
  set background=dark
  set t_Co=256
  set cursorline
  set lines=40 columns=120
  colorscheme solarized
  
  highlight CursorLine guibg=#223853 ctermbg=24  gui=none cterm=none
  " 输入法切换
  set iminsert=0 imsearch=0
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
  " width line
  set colorcolumn=+1
  highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
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

" *******************  PROGRAMMING SHORTCUTS **************** 

set cot-=preview "disable doc preview in omnicomplete
" *******************  keymap ****************
" set leader to ,
let mapleader=","
let g:mapleader=","

map <S-Enter> O<Esc>
map <CR> o<Esc>
map <C-V> "+gP

" auto save"
map <F5> :w<CR>
" quick quit command"
noremap <Leader>q :quit<CR>
noremap <Leader>E :qa!<CR>

" :cd. change working direcotry to that of the current file
cmap cd. lcd %:p:h

" easier moving of code block"
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" *****************  PLUGIN ********************"
" vimwiki"
map <s-F4> :VimwikiAll2HTML<cr>
map <F4> :Vimwiki2HTML<cr>
let g:vimwiki_list = [{'path': '~/vimwiki/', 'path_html': '~/public_html/wiki/'}]

" zencoding
let g:user_zen_expandabbr_key='<C-e>'


" --- SuperTab
" use <c-x><c-n> to get previous variable
" use <Tab> or <S-Tab> to get omni completion
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextDiscoverDiscovery = 
      \ ["&completefunc:<c-x><c-n>", "&omnifunc:<c-x><c-o>"]

" --- EasyMotion
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade Comment

" --- TagBar
nnoremap <silent> <F7> :TagbarToggle<CR>
" set focus to Tagbar when opening it
" let g:tagbar_autofocus = 1

" --- neocomplcache
" Disable AutoComplPop
" let g:acp_enableAtStartup


" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

