" vimrc
" Author: Roberto Bonvallet
" Email: rbonvall@gmail.com

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kana/vim-submode'
Bundle 'kana/vim-textobj-user'
Bundle 'austintaylor/vim-indentobject'
Bundle 'chrisbra/unicode.vim'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'groenewege/vim-less'
Bundle 'wincent/Command-T'
Bundle 'othree/html5-syntax.vim'
Bundle 'othree/html5.vim'
Bundle 'garbas/vim-snipmate'
Bundle 'rbonvall/snipmate-snippets'
Bundle 'rbonvall/snipmate-snippets-bib'
Bundle 'rbonvall/snipmate-snippets-fortran95'

colorscheme default
syntax on
filetype plugin indent on
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
set wildignore=*.o,*.pdf,*.dvi,*.aux,*.log,*.pyc
set list listchars=trail:◀,tab:··
set backspace=indent,eol,start
set laststatus=2
set t_Co=256
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

" llaves que se acomodan solas
autocmd BufRead *.c,*.h,*.cpp,*.pl,*.java,*.css imap {} {<Return>}<Esc>O

" elimina espacios al final de las lineas al guardar
autocmd BufWritePre *.py,*.c,*.h,*.cpp :%s,\s\+$,,e

" algunos formatos los prefiero con indentacion de dos espacios
autocmd BufRead *.html,*.tex,*.bib set shiftwidth=2

let python_highlight_builtins = 1
let python_highlight_numbers  = 1
let g:tex_flavor = "latex"
let fortran_free_source = 1

" Window mode
let g:submode_timeout = 0
call submode#enter_with('window', 'n', '', 'g<C-w>')
let window_commands =
  \    '+ - < = > H J K L P R S T W ] ^ _'
  \ . ' b c d f F g<C-]> g] g} gf gF'
  \ . ' h i j k l n o p q r s t v w x z }'
  " TODO: support '|'
  " TODO: support '<Left> <Right> <Up> <Down>'
for cmd in split(window_commands)
  call submode#map('window', 'n', '', cmd, '<C-w>' . cmd)
endfor

nohlsearch

" vim: set fileencoding=utf-8:
