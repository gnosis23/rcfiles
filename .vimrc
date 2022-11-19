set nu
set incsearch
filetype on
syntax on

" ----------------------------------------------------------
" Status line
" ----------------------------------------------------------
set laststatus=2        " always show status line
set statusline=%f
set statusline+=\     " Separator
set statusline+=%y  " Total lines
set statusline+=%=    " switch to the right side
set statusline+=%l    " current line
set statusline+=/     " Separator
set statusline+=%L    " Total lines

" ----------------------------------------------------------
" keymaps
" ----------------------------------------------------------
let maplocalleader = ","
let mapleader = ","

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap H ^
nnoremap L $

inoremap jk <esc>

" ----------------------------------------------------------
" autocmd
" ----------------------------------------------------------
" Vimscript file settings
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim nnoremap <c-s> :w<cr>
  autocmd FileType vim nnoremap J }
  autocmd FileType vim nnoremap H {
augroup END

autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>

