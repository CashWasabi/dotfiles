" Python specific configurations

" file specific tabs and spaces for python pep8
setlocal expandtab
setlocal autoindent
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal textwidth=87
setlocal colorcolumn=88
setlocal fileformat=unix


"
" for flake8:
" --max-line-length=88 --max-complexity=10
" linters: flake8, mypy, pylint, bandit (is this worth a shot?)
" fixers: black

" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8', 'pylint', 'mypy']

" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['black', 'autopep8', 'isort']

" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0
