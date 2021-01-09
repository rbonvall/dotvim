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

ln -vs "${SCRIPTSDIR}" "${VIMDIR}"
ln -vs "${VIMDIR}"/vimrc.vim  "${VIMRC}"
ln -vs "${VIMDIR}"/gvimrc.vim "${GVIMRC}"

mkdir -p autoload plugged
curl -fLo autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -u plugins.vim +PlugInstall +qa

# For neovim
mkdir -p "$HOME/.config"
ln -vs "$HOME/.vim"   "$HOME/.config/nvim"
ln -vs "$HOME/.vimrc" "$HOME/.config/nvim/init.vim"

