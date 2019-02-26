autocmd BufReadPost *.fugitiveblame setfiletype fugitiveblame
" recognize .snippet files
if has("autocmd")
    autocmd BufNewFile,BufRead *.snippets setf snippets
endif
autocmd BufNewFile,BufRead *.json setlocal filetype=json
autocmd BufNewFile,BufRead *.jsonl setlocal filetype=json
autocmd BufNewFile,BufRead *.jsonp setlocal filetype=json
autocmd BufNewFile,BufRead *.geojson setlocal filetype=json
autocmd BufNewFile,BufRead *.template setlocal filetype=json
autocmd BufNewFile,BufRead *.org setfiletype org
"autocmd BufNewFile,BufReadPost org:todo* setfiletype orgtodo
