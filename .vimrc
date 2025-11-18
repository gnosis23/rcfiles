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

" disable swap files
set nobackup

syntax on

" ----------------------------------------------------------
" tab settings
" ----------------------------------------------------------
set expandtab       " expand tab to spaces
set shiftwidth=4    " number of spaces to use for autoindent (<< and >>)
set softtabstop=4   " number of spaces in tab when editing
set tabstop=4       " number of visual spaces per tab

" 这行配置告诉 Vim 加载特定语言的缩进规则（例如：写 Python 时回车会自动缩进，写 HTML 标签时会自动对齐）。
" 它比旧式的 set autoindent 或 set smartindent 更强大、更准确。
filetype plugin indent on

" 不是所有语言都用 4 个空格。例如，前端代码通常用 2 个空格，而 Go 语言强制使用真实的 Tab。
" HTML, CSS, JS, TS, YAML 通常使用 2 个空格
autocmd FileType html,css,javascript,typescript,yaml setlocal shiftwidth=2 softtabstop=2 tabstop=2
" Go 语言必须使用真实的 Tab (即关闭 expandtab)
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4

" 让tab更清楚
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·

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

