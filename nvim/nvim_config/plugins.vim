" Install vim-plug if not found
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
  \| endif

" Initialize plugin system
call plug#begin()

" icons
Plug 'kyazdani42/nvim-web-devicons' "

" linter
Plug 'w0rp/ale'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" autocompletion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" file explorer
Plug 'kyazdani42/nvim-tree.lua'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" hop around the file
Plug 'phaazon/hop.nvim'

" git stuff
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'

" status line
Plug 'nvim-lualine/lualine.nvim'

" indented lines on drugs
Plug 'lukas-reineke/indent-blankline.nvim'

" tabs for scrubs
Plug 'romgrk/barbar.nvim'

" copilot
Plug 'github/copilot.vim'

" comment out stuff
Plug 'scrooloose/nerdcommenter'

call plug#end()


" load defaults for lua plugins
lua << EOF
require("nvim-tree").setup()
require("hop").setup()
require('lualine').setup()
EOF
