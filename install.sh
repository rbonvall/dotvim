#!/bin/bash

die_if_exists () {
  if [ -e "$1" ]
  then
    echo >&2 "$1 already exists"
    exit 1
  fi
}

SCRIPTSDIR="$(dirname $(readlink -f $0))"

VIMRC="${HOME}/.vimrc"
GVIMRC="${HOME}/.gvimrc"
VIMDIR="${HOME}/.vim"

die_if_exists "${VIMRC}"
die_if_exists "${GVIMRC}"
die_if_exists "${VIMDIR}"

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

