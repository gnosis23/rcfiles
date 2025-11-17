" echo ">^.^<"

" ----------------------------------------------------------
" Basic
" ----------------------------------------------------------
set nocompatible    " disable vi compatible
set incsearch
set hlsearch
set ignorecase
set encoding=utf-8

set number
set ruler
set showcmd
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·

" disable swap files
set nobackup

" tab settings
set tabstop=4       " number of visual spaces per tab
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " expand tab to spaces

filetype indent on
syntax on

" ----------------------------------------------------------
" Status line
" ----------------------------------------------------------
set laststatus=2      " always show status line
set statusline=%f
set statusline+=\     " Separator
set statusline+=%y    " Total lines
set statusline+=%=    " switch to the right side
set statusline+=\ %P
set statusline+=\ (
set statusline+=%l    " current line
set statusline+=,     " Separator
set statusline+=%c    " Total LINES
set statusline+=)

" ----------------------------------------------------------
" keymaps
" ----------------------------------------------------------
let maplocalleader = " "
let mapleader = " "

vnoremap <leader>\ U

nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
nnoremap H ^
nnoremap L $

nnoremap <leader>ue :split $MYVIMRC<cr>
nnoremap <leader>us :source $MYVIMRC<cr>
nnoremap <leader>bd :close<cr>
nnoremap <leader>\| :vsplit<cr>
nnoremap <leader>\_ :split<cr>
nnoremap <leader>qq :quit<cr>

inoremap jk <esc>

" ----------------------------------------------------------
" autocmd
" ----------------------------------------------------------

" Vimscript file settings --------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim nnoremap <c-s> :w<cr>
    autocmd FileType vim nnoremap <leader>r :source %<cr>
augroup END
" }}}

augroup filetype_py
    autocmd!
    autocmd FileType python nnoremap <F5> :!python %<cr>
augroup END

" ----------------------------------------------------------
" plugin
" ----------------------------------------------------------
call plug#begin()

" List your plugins here
Plug 'ghifarit53/tokyonight-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'

" My plugins

call plug#end()

silent! colorscheme tokyonight

nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>/ :Rg<CR>
nnoremap <silent> <leader>e :NERDTreeToggle<CR>

" ----------------------------------------------------------
" custom
" ----------------------------------------------------------

