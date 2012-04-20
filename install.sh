#!/bin/bash

backup () {
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
