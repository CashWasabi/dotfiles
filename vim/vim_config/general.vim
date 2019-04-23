set nocompatible

syntax enable
syntax on

" fix delete bug
set backspace=indent,eol,start

" enable copy paste
set clipboard=unnamedplus

" make python code look pretty
let python_highlight_all=1

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" set encoding to utf-8
set encoding=utf-8

" turn hybrid line numbers on
set number relativenumber
set nu rnu

" that airlines statusbar is automatically called
set laststatus=2

" powerline settings
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
"set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" enable red color with whitespaces
autocmd ColorScheme * highlight BadWhitespace ctermbg=red guibg=red

colorscheme gruvbox
set t_Co=256
set bg=dark
call togglebg#map("<F5>")

" basic settings for default filetypes
setlocal expandtab
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
