if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

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

" comment out stuff
Plug 'scrooloose/nerdcommenter'

" searching for everything
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" json helper for vim
Plug 'elzr/vim-json'

" Autocompletion
"Plug 'prabirshrestha/asyncomplete.vim'

" snippets
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" Colors
Plug 'rakr/vim-togglebg' " plugin to change color on key call
Plug 'morhetz/gruvbox'

" status bar
" to setup gruvbox theme follow these instructions:
" mkdir --parents ~/.vim/colors
" ln -s ~/.vim/bundles/repos/github.com/morhetz/gruvbox/colors ~/.vim/colors/gruvbox.vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" test dispatcher
Plug 'tpope/vim-dispatch'

" C# specific
Plug 'OmniSharp/omnisharp-vim'

" clojure specific
Plug 'tpope/vim-classpath', { 'for': 'clojure' }
Plug 'tpope/repeat.git', { 'for': 'clojure' }
Plug 'tpope/vim-surround', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-salve', { 'for': 'clojure' }
Plug 'junegunn/rainbow_parentheses.vim', { 'for': 'clojure' }
Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
Plug 'venantius/vim-eastwood', { 'for': 'clojure' }
Plug 'venantius/vim-cljfmt', { 'for': 'clojure' }
Plug 'fbeline/kibit-vim', { 'for': 'clojure' }

" python specific
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'plytophogy/vim-virtualenv', { 'for': 'python' }

" Dependencies for vim-lsp-python
Plug 'prabirshrestha/async.vim', { 'for': 'python' }
Plug 'prabirshrestha/vim-lsp', { 'for': 'python' }
Plug 'ryanolsonx/vim-lsp-python', { 'for': 'python' }

"html/markdown
Plug 'mattn/emmet-vim'

" costum stuff
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'

" Initialize plugin system
call plug#end()
