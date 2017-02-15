#!/bin/bash

backup () {
  if [ -L "$1" ]
  then
    rm "$1"
  fi
  if [ -e "$1" ]
  then
    mv -v "$1"{,~}
  fi
}

SCRIPTSDIR="$(dirname $(readlink -f $0))"

VIMRC="${HOME}/.vimrc"
GVIMRC="${HOME}/.gvimrc"
VIMDIR="${HOME}/.vim"

backup "${VIMRC}"
backup "${GVIMRC}"
backup "${VIMDIR}"

ln -s "${SCRIPTSDIR}" "${VIMDIR}"
ln -s "${VIMDIR}"/vimrc.vim  "${VIMRC}"
ln -s "${VIMDIR}"/gvimrc.vim "${GVIMRC}"

mkdir -p bundle
git clone https://github.com/gmarik/vundle.git bundle/vundle
vim -u bundles.vim +BundleInstall +qa

# For neovim
mkdir -p "$HOME/.config"
ln -s "$HOME/.vim"   "$HOME/.config/nvim"
ln -s "$HOME/.vimrc" "$HOME/.config/nvim/init.vim"

