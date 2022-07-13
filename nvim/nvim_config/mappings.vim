let mapleader = ","

" telescope mappings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" nvim tree mappings
nnoremap <leader>nn <cmd>NvimTreeToggle<cr>
nnoremap <leader>nb <cmd>NvimTreeFocus<cr>
nnoremap <leader>nf <cmd>NvimTreeFindFiles<cr>
nnoremap <leader>nc <cmd>NvimTreeCollapse<cr>

" hop mappings
nnoremap <leader>hh <cmd>HopAnywhere<cr>
nnoremap <leader>hc <cmd>HopChar1<cr>
nnoremap <leader>hcc <cmd>HopChar2<cr>
nnoremap <leader>hl <cmd>HopLine<cr>
nnoremap <leader>hls <cmd>HopLineStart<cr>
nnoremap <leader>hv <cmd>HopVertical<cr>
nnoremap <leader>hp <cmd>HopPattern<cr>
nnoremap <leader>hw <cmd>HopWord<cr>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" resize configs
nnoremap <silent> <Space>h 5<C-W><
nnoremap <silent> <Space>l 5<C-W>>
nnoremap <silent> <Space>j 5<C-W>+
nnoremap <silent> <Space>k 5<C-W>-

" disable arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" copy with yank command in visual mode
nnoremap <C-c> "+y

" Reload .vimrc & install plugins
nnoremap <leader>+ :so ~/.vimrc<Enter>
nnoremap <leader>p :PlugInstall<Enter>

" use jk as alternative to escape
inoremap jk <Esc>

" source: https://vim.fandom.com/wiki/Swapping_characters,_words_and_lines
" Moves lines
nnoremap <M-j> :move +1<CR>
nnoremap <M-k> :move -2<CR>
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

" CHEATSHEET:
" zz - move current line to middle of screen
" zt - move current line to top of screen
" zb - move current line to bottm of screen
" <C-y> move screen up one line
" <C-e> move screen down one line
" <C-u> move screen and cursor up 1/2 page
" <C-b> move screen up one page, cursor to last line
" <C-t> move screen down one page, cursor to first line
"
" if nercommenter is enabled
" zR - unwrap all wrapped lines
" @TODO: add other wrap commands
