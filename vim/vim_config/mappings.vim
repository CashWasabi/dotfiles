source $HOME/git/dotfiles/vim/vim_config/features/close_inactive_buffers.vim

let mapleader = ","

"split navigations
" is this still useful with nerdtree?
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" open nerdtree on toggle
nnoremap <C-n> :NERDTreeToggle<CR>

" switch between buffers with tab and shift-tab
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" list buffers
nnoremap <leader>bb :buffers<Enter>

" Close buffer but keep split
nnoremap <Backspace> :bp\|bd \#<Enter>

" Close split but keep buffer
nnoremap <leader><Backspace> <C-w>q<Enter>

" Close all inactive buffers
nnoremap <leader>ea :call DeleteInactiveBufs()<CR>

" copy with yank command in visual mode
nnoremap <C-c> "+y
