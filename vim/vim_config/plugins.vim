filetype off                  " required

" Add the dein installation directory into runtimepath

set runtimepath +=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundles')
	call dein#begin('~/.vim/bundles')

	" mandatory plugins
	call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')

	" dependencies for deoplete if in vim8
	" There is an issue with the dependencies which is resolved here:
	" https://github.com/roxma/vim-hug-neovim-rpc/issues/28
	" current fix: install python-greenlet with pacman and install neovim
	" in system python
	call dein#add('roxma/nvim-yarp')
	call dein#add('roxma/vim-hug-neovim-rpc')

	" autocompletion (better than YouCompleteMe)
	call dein#add('Shougo/deoplete.nvim')

	" linter
	call dein#add('w0rp/ale')


	" file browsing
	call dein#add('scrooloose/nerdtree')
	call dein#add('jistr/vim-nerdtree-tabs')
	call dein#add('Xuyuanp/nerdtree-git-plugin')

	" git integration
	call dein#add('rickhowe/diffchar.vim')
	call dein#add('tpope/vim-fugitive')
	call dein#add('airblade/vim-gitgutter')

	" code folding
	call dein#add('tmhedberg/SimpylFold')

	" comment out stuff
	call dein#add('scrooloose/nerdcommenter')

	" searching for everything
	call dein#add('kien/ctrlp.vim')

	" support for navigation between tmux windows and vim windows
	call dein#add('christoomey/vim-tmux-navigator')

	" send text to repls like clojure or python
	call dein#add('jpalardy/vim-slime')

	" json helper for vim
	call dein#add('elzr/vim-json')

	" sonic pi interface
	call dein#add('dermusikman/sonicpi.vim')

	" glsl preview
	call dein#add('patriciogonzalezvivo/vim-glslViewer')

	" snippets
	call dein#add('SirVer/ultisnips')
	call dein#add('honza/vim-snippets')

	" wiki hosted from vim
	call dein#add('vimwiki/vimwiki')

	" Colors
	call dein#add('rakr/vim-togglebg') " plugin to change color on key call
	call dein#add('morhetz/gruvbox')

	" status bar
	" to setup gruvbox theme follow these instructions:
	" mkdir --parents ~/.vim/colors
	" ln -s ~/.vim/bundles/repos/github.com/morhetz/gruvbox/colors ~/.vim/colors/gruvbox.vim
	call dein#add('vim-airline/vim-airline')
	call dein#add('vim-airline/vim-airline-themes')

	" Grammar checker call
	call dein#add('rhysd/vim-grammarous')

	" test dispatcher
	call dein#add('tpope/vim-dispatch')

	" costum stuff
	call dein#add('jiangmiao/auto-pairs')
	call dein#add('easymotion/vim-easymotion')
	call dein#add('tpope/vim-surround')
	call dein#add('simeji/winresizer')

	"""" LANGUAGE SPECIFIC PLUGINS

	" CLOJURE
	call dein#add('tpope/vim-classpath')
	call dein#add('tpope/vim-fireplace')
	call dein#add('tpope/vim-salve')
	call dein#add('junegunn/rainbow_parentheses.vim')
	call dein#add('guns/vim-sexp')
	call dein#add('tpope/vim-sexp-mappings-for-regular-people')
	call dein#add('venantius/vim-eastwood')
	call dein#add('venantius/vim-cljfmt')

	"" PYTHON
	call dein#add('plytophogy/vim-virtualenv')
	call dein#add('PieterjanMontens/vim-pipenv')

	" python motions for better navigation
	call dein#add('jeetsukumaran/vim-pythonsense')

	"html/markdown
	call dein#add('mattn/emmet-vim')
	call dein#add('jtratner/vim-flavored-markdown')
	call dein#add('suan/vim-instant-markdown')
	call dein#add('nelstrom/vim-markdown-preview')

  " org-mode for interactive planning
  call dein#add('jceb/vim-orgmode')
	" end custom plugins

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
