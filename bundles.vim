set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Plugin management
Plugin 'gmarik/vundle'

" Helper libraries
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'kana/vim-submode'

" Make a better vim
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rsi'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-abolish'
Plugin 'kana/vim-smartinput'
"Plugin 'edsono/vim-matchit'
Plugin 'Lokaltog/vim-powerline'
Plugin 'mhinz/vim-startify'
Plugin 'bruno-/vim-vertical-move'
Plugin 'thinca/vim-quickrun'
Plugin 'ConradIrwin/vim-bracketed-paste'

" Snippets
Plugin 'garbas/vim-snipmate'
Plugin 'rbonvall/snipmate-snippets'
Plugin 'rbonvall/snipmate-snippets-bib'
Plugin 'rbonvall/snipmate-snippets-fortran95'

" Text objects
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-function'
Plugin 'rbonvall/vim-textobj-latex'
Plugin 'austintaylor/vim-indentobject'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'airblade/vim-gitgutter'

" HTML
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-ragtag'
Plugin 'othree/html5-syntax.vim'
Plugin 'othree/html5.vim'

" Go
Plugin 'jnwhiteh/vim-golang'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" Javascript
Plugin 'moll/vim-node'
Plugin 'mklabs/grunt.vim'
Plugin 'walm/jshint.vim'

" Scala
Plugin 'derekwyatt/vim-scala'
Plugin 'derekwyatt/vim-sbt'

" Other languages
Plugin 'groenewege/vim-less'
Plugin 'uarun/vim-protobuf'
Plugin 'wlangstroth/vim-racket'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mode'
Plugin 'tpope/vim-jdaddy'
Plugin 'wting/rust.vim'
Plugin 'AndrewRadev/vim-eco'
Plugin 'wavded/vim-stylus'
Plugin 'drools.vim'
Plugin 'leafgarland/typescript-vim'

" Fancy panels
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim.git'
Plugin 'sjl/gundo.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'

" Others
Plugin 'Lokaltog/vim-easymotion'
Plugin 'chrisbra/unicode.vim'
Plugin 'godlygeek/tabular'

" Colorschemes
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'nanotech/jellybeans.vim'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

