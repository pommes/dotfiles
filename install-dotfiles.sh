#!/bin/bash

dir=/bu/skel/pommes-dotfiles
timestamp=`date +"%Y%m%d-%H%M%S"`

cd
ln -s ${dir}/.zsh .zsh
ln -s ${dir}/.zshrc .zshrc
ln -s ${dir}/.zlogin .zlogin
if [ -d ${dir}/.vim ]; then mv ${dir}/.vim ${dir}/.vim_${timestamp}; fi
ln -s ${dir}/.vim .vim
if [ -f ${dir}/.vimrc ]; then mv ${dir}/.vimrc ${dir}/.vimrc_${timestamp}; fi
ln -s ${dir}/.vimrc .vimrc
