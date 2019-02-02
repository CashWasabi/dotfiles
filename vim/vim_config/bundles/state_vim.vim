if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/home/marcel/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/home/marcel/.vim/after,/home/marcel/.vim/bundles/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/marcel/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/marcel/.vim/bundles'
let g:dein#_runtime_path = '/home/marcel/.vim/bundles/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/marcel/.vim/bundles/.cache/.vimrc'
let &runtimepath = '/home/marcel/.vim,/usr/share/vim/vimfiles,/home/marcel/.vim/bundles/repos/github.com/Shougo/dein.vim,/home/marcel/.vim/bundles/.cache/.vimrc/.dein,/usr/share/vim/vim81,/home/marcel/.vim/bundles/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/home/marcel/.vim/after'
