" gvimrc
" Author: Roberto Bonvallet
" Email: roberto@mez.cl

set guioptions-=T
set guioptions-=m
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set t_vb=
if has('win32')
  set guifont=Consolas:h14
else
  set guifont=Monospace\ 14
endif
try
  "colorscheme Tomorrow-Night-Bright
  colorscheme gruvbox
  "set background=dark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme desert
  highlight Normal guibg=grey10
endtry

