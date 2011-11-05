augroup filetypedetect
autocmd BufNewFile,BufRead *.br,*.brh,*.bri  setf brook
autocmd BufNewFile,BufRead *.cu  setf cuda
autocmd BufNewFile,BufRead *.j2  setf htmldjango
autocmd BufNewFile,BufRead *.md  setf markdown
augroup END

