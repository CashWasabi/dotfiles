" Python specific configurations
"
" for flake8:
" --max-line-length=88 --max-complexity=10
" linters: flake8, mypy, pylint, bandit (is this worth a shot?)
" fixers: black

" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8', 'pylint', 'mypy']
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['black']

" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0
