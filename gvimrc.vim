" gvimrc
" Author: Roberto Bonvallet
" Email: rbonvall@gmail.com

set guioptions-=T
set guioptions-=m
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set t_vb=
set guifont=Monospace\ 8
try
  colorscheme Tomorrow-Night-Bright
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme desert
  highlight Normal guibg=grey10
endtry

