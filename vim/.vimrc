if &compatible
	set nocompatible
endif
" let configs

" simplyfold docstring preview
let g:SimpylFold_docstring_preview=1

" color schemes
let g:gruvbox_italic=1

" set pymode to python3
let g:pymode_python = 'python3'

" autodetect virtualenv
let g:pymode_virtualenv = 1

" read max line length for python-mode flake linter (black uses 88)
let g:pymode_options_max_line_length = 88
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_options_colorcolumn = 1

" ignore double quotes because black is refactoring to double qoutes
let g:pymode_lint_ignore = "Q000"

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let mapleader = ","

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" make python code look pretty
let python_highlight_all=1

" Add the dein installation directory into runtimepath

set runtimepath +=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundles')
	call dein#begin('~/.vim/bundles')

	" mandatory plugins
	call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')
	
	"" PYTHON
	
	" python mode (contains all tools needed for python development)
	call dein#add('python-mode/python-mode')

	" black is an alternative to pep8 linter
	call dein#add('ambv/black')
	
	call dein#add('plytophogy/vim-virtualenv')
	call dein#add('PieterjanMontens/vim-pipenv')

	" syntax checking/highlighting (all purpose)
	"TODO: currently not compatible with python mode
	call dein#add('vim-scripts/syntastic')

	" better alternative then YouCompleteMe
	call dein#add('Shougo/deoplete.nvim')

	" git integration
	call dein#add('tpope/vim-fugitive')
	
	" code folding
	call dein#add('tmhedberg/SimpylFold')
	
	" file browsing
	call dein#add('scrooloose/nerdtree')
	call dein#add('jistr/vim-nerdtree-tabs')
	"call dein#add('Xuyuanp/nerdtree-git-plugin')	
	
	" comment out stuff
	call dein#add('scrooloose/nerdcommenter')
	
	" searching for everything
	call dein#add('kien/ctrlp.vim')
	
	" status bar
	call dein#add('vim-airline/vim-airline')

	" json helper for vim
	call dein#add('elzr/vim-json')
	
	"html
	call dein#add('mattn/emmet-vim')
	call dein#add('jtratner/vim-flavored-markdown')
	call dein#add('suan/vim-instant-markdown')
	call dein#add('nelstrom/vim-markdown-preview')	

	" costum stuff
	call dein#add('jiangmiao/auto-pairs')
	call dein#add('easymotion/vim-easymotion')
	call dein#add('terryma/vim-multiple-cursors')
	call dein#add('tpope/vim-surround')	

	" dunno what this is for
	call dein#add('tpope/vim-dispatch')
	
	" Colors
	call dein#add('rakr/vim-togglebg') " plugin to change color on key call
	call dein#add('morhetz/gruvbox')
	
	" Grammar checker
	call dein#add('https://github.com/rhysd/vim-grammarous')

	" end custom plugins

	if !has('nvim')
		call dein#add('roxma/nvim-yarp')
		call dein#add('roxma/vim-hug-neovim-rpc')
	endif

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable
syntax on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
 
" set encoding to utf-8
set encoding=utf-8
 
" enable line numbering
set nu

" fix delete bug
set backspace=indent,eol,start
 
" that airlines statusbar is automatically called
set laststatus=2
 
" enable copy paste
set clipboard=unnamedplus

" powerline settings
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
 
" file specific tabs and spaces for python pep8
autocmd Filetype python setlocal expandtab autoindent tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79 fileformat=unix

" special cases where two tabstops are recommended
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype jsx setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
 
" enable red color with whitespaces
autocmd ColorScheme * highlight BadWhitespace ctermbg=red guibg=red

" execute black on save
autocmd BufWritePre *.py execute ':Black'

" starts vim+nerdtree when there is no file given
autocmd VimEnter * if !argc() | NERDTree | endif

" close nerdtree if there is only the file manager open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"split navigations
" is this still useful with nerdtree?
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" synstastic specific stuff
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

colorscheme gruvbox

set bg=dark
call togglebg#map("<F5>")
