" vimrc
" Author: Roberto Bonvallet
" Email: rbonvall@gmail.com

" Pathogen should be installed in the autoload directory
filetype off

runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#runtime_prepend_subdirectories(expand('~/.vim/bundle'))
  try
    call pathogen#helptags()
  catch /Duplicate tag/
    " do nothing
  endtry
end

colorscheme default
syntax on
filetype plugin indent on
set nocompatible
set expandtab tabstop=8
set shiftwidth=4
set autoindent smartindent
set nowrap
set showmode showcmd
set ignorecase smartcase
set virtualedit=block
set noequalalways
set splitright
set nohlsearch incsearch
set gdefault
set pastetoggle=<F11>
set modeline
set modelines=3
set visualbell t_vb=
set nrformats=
set hidden
set ruler
set wildmenu wildmode=full
set list listchars=trail:◀,tab:··
set backspace=indent,eol,start
set laststatus=2
if version >= 700
  set omnifunc=syntaxcomplete#Complete
end

inoremap jj <ESC>
noremap <Space> <C-f>
noremap - <C-b>
noremap Y y$
noremap gt <C-]>
noremap <Backspace> <C-y>
noremap <Return> <C-e>
noremap _ <C-w>_
nnoremap / /\v
vnoremap / /\v

inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>
inoremap ç /
nnoremap ç /
vnoremap ç /
noremap <F2> :NERDTreeToggle<CR>
noremap <F5> :make<CR>
noremap º :NERDTreeToggle<CR>

" (see :help smartindent)
inoremap # X<C-h>#

autocmd BufRead *.txt set textwidth=80

autocmd BufRead *.py let python_highlight_builtins = 1
autocmd BufRead *.py let python_highlight_numbers  = 1

" llaves que se acomodan solas
autocmd BufRead *.c,*.h,*.cpp,*.pl,*.java,*.css imap {} {<Return>}<Esc>O

" elimina espacios al final de las lineas al guardar
autocmd BufWritePre *.py,*.c,*.h,*.cpp :%s,\s\+$,,e

" algunos formatos los prefiero con indentacion de dos espacios
autocmd BufRead *.html,*.tex,*.bib set shiftwidth=2

let g:tex_flavor = "latex"
let fortran_free_source=1


nohlsearch

" vim: set fileencoding=utf-8:
