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
if has('win32')
  set guifont=Consolas:h10
else
  set guifont=Monospace\ 10
endif
try
  colorscheme Tomorrow-Night-Bright
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme desert
  highlight Normal guibg=grey10
endtry

