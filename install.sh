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

pushd $(dirname "$0") > /dev/null
SCRIPTSDIR="${PWD}"
popd > /dev/null

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
vim -u bundles.vim +BundleInstall +q
