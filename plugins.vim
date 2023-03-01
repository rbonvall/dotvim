call plug#begin("~/.vim/plugged")

" Helper libraries
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'kana/vim-submode'

" Make a better vim
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rsi'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-abolish'
Plug 'kana/vim-smartinput'
"Plugin 'edsono/vim-matchit'
Plug 'Lokaltog/vim-powerline'
Plug 'mhinz/vim-startify'
Plug 'bruno-/vim-vertical-move'
Plug 'thinca/vim-quickrun'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'mjbrownie/swapit'

" Snippets
Plug 'garbas/vim-snipmate'
Plug 'rbonvall/snipmate-snippets'
Plug 'rbonvall/snipmate-snippets-bib'
Plug 'rbonvall/snipmate-snippets-fortran95'

" Text objects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function'
Plug 'rbonvall/vim-textobj-latex'
Plug 'austintaylor/vim-indentobject'

" Git
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'airblade/vim-gitgutter'

" HTML
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'tpope/vim-ragtag'
Plug 'othree/html5-syntax.vim'
Plug 'othree/html5.vim'

" Go
Plug 'jnwhiteh/vim-golang'
Plug 'nsf/gocode', {'rtp': 'vim/'}

" Javascript
Plug 'moll/vim-node'
Plug 'mklabs/grunt.vim'
Plug 'walm/jshint.vim'

" Scala
Plug 'derekwyatt/vim-scala'
Plug 'derekwyatt/vim-sbt'

" Other languages
Plug 'groenewege/vim-less'
Plug 'uarun/vim-protobuf'
Plug 'wlangstroth/vim-racket'
Plug 'kchmck/vim-coffee-script'
Plug 'mustache/vim-mode'
Plug 'tpope/vim-jdaddy'
Plug 'wting/rust.vim'
Plug 'AndrewRadev/vim-eco'
Plug 'wavded/vim-stylus'
"Plug 'drools.vim'
Plug 'leafgarland/typescript-vim'
Plug 'martinda/Jenkinsfile-vim-syntax'

" Fancy panels
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim.git'
Plug 'sjl/gundo.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'

" Others
Plug 'Lokaltog/vim-easymotion'
Plug 'chrisbra/unicode.vim'
Plug 'godlygeek/tabular'

" Colorschemes
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

call plug#end()
