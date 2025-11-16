set number relativenumber
set incsearch
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
set statusline+=%l    " current line
set statusline+=/     " Separator
set statusline+=%L    " Total lines

" ----------------------------------------------------------
" keymaps
" ----------------------------------------------------------
let maplocalleader = " "
let mapleader = " "

nnoremap <leader>ue :split $MYVIMRC<cr>
nnoremap <leader>us :source $MYVIMRC<cr>
nnoremap <leader>bb :buffers<cr>
nnoremap <leader>bd :close<cr>
nnoremap <leader>\| :vsplit<cr>
nnoremap <leader>\_ :split<cr>
nnoremap <leader>r :source %<cr>

" ----------------------------------------------------------
" autocmd
" ----------------------------------------------------------
" Vimscript file settings
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim nnoremap <c-s> :w<cr>
augroup END

autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>

