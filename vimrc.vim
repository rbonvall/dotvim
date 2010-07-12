" vimrc
" Author: Roberto Bonvallet
" Email: rbonvall@gmail.com

colorscheme default
syntax on
filetype plugin indent on
set expandtab tabstop=8
set shiftwidth=4
set autoindent smartindent
set nowrap
set showcmd
set ignorecase smartcase
set virtualedit=block
set noequalalways
set splitright
set nohlsearch incsearch
set pastetoggle=<F11>
set modeline
set modelines=3
set visualbell t_vb=
set nrformats=
set omnifunc=syntaxcomplete#Complete

" mis mapeos imprescindibles
inoremap jj <ESC>
noremap <Space> <C-f>
noremap - <C-b>
noremap Y y$
noremap gt <C-]>
noremap <Backspace> <C-y>
noremap <Return> <C-e>
noremap <Left> <C-w><
noremap <Right> <C-w>>
noremap <Up> <C-w>-
noremap <Down> <C-w>+

" aprovechar teclas poco usadas
noremap º \
inoremap º \
noremap ç /
inoremap ç /
noremap Ç ~
inoremap Ç ~

" hack feazo (ver :help smartindent)
inoremap # X<C-h>#

iabbrev FECHA <C-r>=expand(strftime("%Y%m%d"))<Return>

autocmd BufRead *.txt set textwidth=80

autocmd BufRead *.py let python_highlight_builtins = 1
autocmd BufRead *.py let python_highlight_numbers  = 1

" llaves que se acomodan solas
autocmd BufRead *.c,*.h,*.cpp,*.pl,*.java,*.css imap {} {<Return>}<Esc>O

" comenta y descomenta la linea actual en lenguajes con sintaxis tipo C
autocmd BufRead *.c,*.cpp,*.h,*.java,*.css noremap <silent> <Leader>cc I/*<Esc>A*/<Esc>
autocmd BufRead *.c,*.cpp,*.h,*.java,*.css noremap <silent> <Leader>uc :s,^\(\s*\)/[*]\(.\{-}\)[*]/,\1\2,e<Return>

" comenta y descomenta la linea actual en lenguajes con sintaxis tipo shell
autocmd BufRead *.py,*.sh,*.pl noremap <silent> <Leader>cc I#<Esc>
autocmd BufRead *.py,*.sh,*.pl noremap <silent> <Leader>uc :s,^\(\s*\)[#],\1,e<Esc>

" comenta y descomenta la linea actual en lenguajes con sintaxis tipo XML
autocmd BufRead *.xml,*.htm,*.html,*.svg noremap <silent> <Leader>cc I<!--<Esc>A--><Esc>
autocmd BufRead *.xml,*.htm,*.html,*.svg noremap <silent> <Leader>uc :s,^\(\s*\)<!--\(.\{-}\)-->,\1\2,e<Return>

" elimina espacios al final de las lineas al guardar
autocmd BufWritePre *.py,*.c,*.h,*.cpp :%s,\s\+$,,e

" algunos formatos los prefiero con indentacion de dos espacios
autocmd BufRead *.html,*.tex,*.bib set shiftwidth=2

" parentiza en los extremos de la seleccion
vnoremap <silent> <Leader>( :norm `<i(<Esc>`>la)<Esc>
vnoremap <silent> <Leader>[ :norm `<i[<Esc>`>la]<Esc>
vnoremap <silent> <Leader>{ :norm `<i{<Esc>`>la}<Esc>
vnoremap <silent> <Leader>< :norm `<i<<Esc>`>la><Esc>

let g:tex_flavor = "latex"

nohlsearch

