source $HOME/git/dotfiles/vim/vim_config/features/close_inactive_buffers.vim

let mapleader = ","

"split navigations
" is this still useful with nerdtree?
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

" open nerdtree on toggle
nnoremap <C-n> :NERDTreeToggle<CR>

" switch between buffers with tab and shift-tab
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" list buffers
nnoremap <leader>bb :buffers<Enter>

" Close buffer but keep split
nnoremap <Backspace> :bp\|bd #<Enter>

" Close split but keep buffer
nnoremap <leader><Backspace> <C-w>q<Enter>

" Close all inactive buffers
nnoremap <leader>ea :call DeleteInactiveBufs()<CR>

" copy with yank command in visual mode
nnoremap <C-c> "+y

" Reload .vimrc & install plugins
nnoremap <leader>+ :so ~/.vimrc<Enter>
nnoremap <leader>p :PlugInstall<Enter>

" use jj as alternative to escape
inoremap jj <Esc>

" reminders for navigation
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
" @TODO: add other wrap reminders
