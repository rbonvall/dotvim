set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Plugin management
Bundle 'gmarik/vundle'

" Helper libraries
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'kana/vim-submode'

" Make a better vim
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rsi'
Bundle 'tpope/vim-commentary'
Bundle 'kana/vim-smartinput'
Bundle 'edsono/vim-matchit'
Bundle 'Lokaltog/vim-powerline'

" Snippets
Bundle 'garbas/vim-snipmate'
Bundle 'rbonvall/snipmate-snippets'
Bundle 'rbonvall/snipmate-snippets-bib'
Bundle 'rbonvall/snipmate-snippets-fortran95'

" Text objects
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-function'
Bundle 'rbonvall/vim-textobj-latex'
Bundle 'austintaylor/vim-indentobject'

" Git
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'
Bundle 'airblade/vim-gitgutter'

" HTML
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-ragtag'
Bundle 'othree/html5-syntax.vim'
Bundle 'othree/html5.vim'

" Go
Bundle 'jnwhiteh/vim-golang'
Bundle 'nsf/gocode', {'rtp': 'vim/'}

" Other languages
Bundle 'groenewege/vim-less'
Bundle 'uarun/vim-protobuf'

" Fancy panels
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim.git'
Bundle 'sjl/gundo.vim'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/syntastic'

" Others
Bundle 'Lokaltog/vim-easymotion'
Bundle 'chrisbra/unicode.vim'
Bundle 'krisajenkins/vim-pipe'
Bundle 'airblade/vim-rooter'

" Colorschemes
Bundle 'tomasr/molokai'
Bundle 'nanotech/jellybeans.vim'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

