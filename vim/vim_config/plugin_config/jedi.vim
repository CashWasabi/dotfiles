" PYHTON SPECIFIC:
" jedi-vim (also with python-language-server)
" shift+q - doc string
" <C-Space> - completion
" <leader>g - goto function
" <leader>d - goto definition
" <leader>r - renaming
" <leader>n - show usage of name
" Open module, e.g. :Pyimport os (opens the os module)
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#documentation_command = "K"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#usages_command = "<leader>n"
