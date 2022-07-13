set nocompatible

syntax enable
syntax on

" fix delete bug
set backspace=indent,eol,start

" enable copy paste
set clipboard=unnamedplus

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" set encoding to utf-8
set encoding=utf-8

" turn hybrid line numbers on
set number relativenumber
set nu rnu

" enable red color with whitespaces
autocmd ColorScheme * highlight BadWhitespace ctermbg=red guibg=red

set t_Co=256
set bg=dark

" basic settings for default filetypes
setlocal expandtab
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2