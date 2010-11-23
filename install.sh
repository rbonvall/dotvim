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

AUTOLOADDIR="${VIMDIR}"/autoload
PATHOGENURL=https://github.com/tpope/vim-pathogen/raw/master/autoload/pathogen.vim

mkdir -p ${AUTOLOADDIR}
cd "${AUTOLOADDIR}"
wget --quiet --no-check-certificate "${PATHOGENURL}"

cd "${VIMDIR}"
git submodule update --init

