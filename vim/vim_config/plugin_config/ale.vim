" NOTE: Ale can also support go to definitions. Try to look if it conflicts with
" Clojure (vim-fireplace) and Python (jedi-vim)

" make sure that deoplete is used for completion
let g:ale_completion_enabled = 0

" options for texts shown for signs
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" enable errors shown in airline
let g:airline#extensions#ale#enabled = 1

"" Write this in your vimrc file
"let g:ale_lint_on_text_changed = 'never'
"" You can disable this option too
"" if you don't want linters to run on opening a file
"let g:ale_lint_on_enter = 0

"" Show 5 lines of errors (default: 10)
"let g:ale_list_window_size = 5
