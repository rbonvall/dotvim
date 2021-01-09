" vimrc
" Author: Roberto Bonvallet
" Email: roberto@mez.cl

runtime plugins.vim

colorscheme default
syntax on
filetype plugin indent on
set expandtab tabstop=8
set shiftwidth=4
set autoindent
set nowrap
set showmode showcmd
set ignorecase smartcase
set virtualedit=block
set noequalalways
set splitright
set nohlsearch incsearch
set gdefault
set modeline
set modelines=3
set visualbell t_vb=
set nrformats=
set hidden
set ruler
set number relativenumber
set wildmenu wildmode=full
set wildignore=*.o,*.pdf,*.dvi,*.aux,*.log,*.pyc,*.hi
set list listchars=trail:·,tab:·\ 
set backspace=indent,eol,start
set laststatus=2
set noshowmode
set noswapfile
set history=1000
set t_Co=256
if version >= 700
  set omnifunc=syntaxcomplete#Complete
end

inoremap jj <ESC>
inoremap <C-j> <Esc>o
inoremap ł λ
inoremap <Left> ←
inoremap <Right> →
inoremap <Up> ↑
inoremap <Down> ↓
inoremap <S-Right> ⇒
inoremap <S-Left> ⇐

noremap <Space> <C-f>
noremap <S-Space> <C-b>
noremap - <C-b>
noremap Y y$
noremap gt <C-]>
noremap <Backspace> <C-y>
noremap <Return> <C-e>
noremap ç 4zl
noremap Ç 4zh
noremap _ <C-w>_
noremap <Bar> <C-w><Bar>
nnoremap / /\v
vnoremap / /\v
noremap H ^
noremap L $
noremap M %
vnoremap < <gv
vnoremap > >gv

inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>
noremap º :NERDTreeToggle<CR>
noremap ª :TagbarToggle<CR>

" (see :help smartindent)
inoremap # X<C-h>#

nnoremap <leader>ve :vsplit $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>
nnoremap <leader>ge :vsplit $MYGVIMRC<cr>
nnoremap <leader>gs :source $MYGVIMRC<cr>
nnoremap <leader>d<space> :%s/\s\+$//<cr>
nnoremap <leader>op :!xdg-open % &<cr>
nnoremap <leader>be :vsplit $HOME/codigo/dotvim/plugins.vim<cr>
nnoremap <leader>bi :BundleInstall<cr>
nnoremap <leader>bu :BundleInstall!<cr>
nnoremap <leader>bc :BundleClean<cr>

digraph ,. 8230   " …
digraph BU 8226   " •
digraph BT 8227   " ‣
digraph -- 8212   " —
digraph ** 8258   " ⁂
digraph := 8788   " ≔
digraph :( 9785   " ☹
digraph :) 9786   " ☺
digraph SK 9760   " ☠
digraph FF 10070  " ❖

augroup myautocmds
  autocmd!
  autocmd BufNewFile,BufRead *.txt setlocal textwidth=80
  autocmd FileType html,tex,bib,vim,sh setlocal shiftwidth=2
  if !has('nvim')
    set cryptmethod=blowfish
    autocmd BufReadPost *
      \ if &key != "" |
      \   set noswapfile nowritebackup viminfo= nobackup noshelltemp history=0 secure |
      \ endif
  endif
augroup END

augroup filetypedetect
  autocmd BufNewFile,BufRead *.cu   set filetype=cuda
  autocmd BufNewFile,BufRead *.j2   set filetype=htmldjango
  autocmd BufNewFile,BufRead *.md   set filetype=markdown
  autocmd BufNewFile,BufRead *.json set filetype=javascript
augroup END

let g:python_highlight_builtins = 1
let g:python_highlight_numbers  = 1
let g:tex_flavor = "latex"
let g:fortran_free_source = 1
let g:is_bash = 1

let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
let g:Powerline_symbols = 'compatible'
let g:NERDTreeIgnore = ['\.pdf$', '\.aux$', '\.log$', '\.out$', '\.pyc$']
let g:syntastic_javascript_checkers = ['/usr/local/bin/jshint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--max-line-length=120'
let g:syntastic_enable_racket_racket_checker = 1

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
