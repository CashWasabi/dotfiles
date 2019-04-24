" Only run linters named in ale_linters settings.
" let g:ale_linters_explicit = 1

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
