if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" dependencies for deoplete if in vim8
" There is an issue with the dependencies which is resolved here:
" https://github.com/roxma/vim-hug-neovim-rpc/issues/28
" current fix: install python-greenlet with pacman and install neovim
" in system python
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

" autocompletion (better than YouCompleteMe
Plug 'Shougo/deoplete.nvim'

" linter
Plug 'w0rp/ale'

" file browsing
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'

" git integration
Plug 'rickhowe/diffchar.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" code folding
Plug 'tmhedberg/SimpylFold'

" comment out stuff
Plug 'scrooloose/nerdcommenter'

" searching for everything
Plug 'kien/ctrlp.vim'

" support for navigation between tmux windows and vim windows
Plug 'christoomey/vim-tmux-navigator'

" send text to repls like clojure or python
Plug 'jpalardy/vim-slime'

" json helper for vim
Plug 'elzr/vim-json'

" sonic pi interface
Plug 'dermusikman/sonicpi.vim'

" glsl preview
Plug 'patriciogonzalezvivo/vim-glslViewer'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Colors
Plug 'rakr/vim-togglebg' " plugin to change color on key call
Plug 'morhetz/gruvbox'

" status bar
" to setup gruvbox theme follow these instructions:
" mkdir --parents ~/.vim/colors
" ln -s ~/.vim/bundles/repos/github.com/morhetz/gruvbox/colors ~/.vim/colors/gruvbox.vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Grammar checker call
Plug 'rhysd/vim-grammarous'

" test dispatcher
Plug 'tpope/vim-dispatch'

" costum stuff
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'simeji/winresizer'

"""" LANGUAGE SPECIFIC PLUGINS

" CLOJURE
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'venantius/vim-eastwood'
Plug 'venantius/vim-cljfmt'

"" PYTHON
Plug 'plytophogy/vim-virtualenv'
Plug 'PieterjanMontens/vim-pipenv'

" python motions for better navigation
Plug 'jeetsukumaran/vim-pythonsense'

"html/markdown
Plug 'mattn/emmet-vim'
Plug 'jtratner/vim-flavored-markdown'
Plug 'suan/vim-instant-markdown'
Plug 'nelstrom/vim-markdown-preview'

" inspiration from here: https://bofh.org.uk/2019/02/25/baking-with-emacs/
" org-mode for interactive planning
Plug 'jceb/vim-orgmode'
" another awesome plugin for handling ledger data
Plug 'ledger/vim-ledger'

" wiki hosted from vim
Plug 'vimwiki/vimwiki'

" Initialize plugin system
call plug#end()
