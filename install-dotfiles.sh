#!/bin/sh

dir=/bu/skel/pommes-dotfiles
timestamp=`date +"%Y%m%d-%H%M%S"`

# Create needed directories
mkdir ${HOME}/.vimbackup

# Create symbolic links
ln -s ${dir}/.zsh ${HOME}/.zsh
ln -s ${dir}/.zshrc ${HOME}/.zshrc
ln -s ${dir}/.zlogin ${HOME}/.zlogin
if [ -d ${HOME}/.vim ]; then mv ${HOME}/.vim ${HOME}/.vim_${timestamp}; fi
ln -s ${dir}/.vim .vim
if [ -f ${HOME}/.vimrc ]; then mv ${HOME}/.vimrc ${HOME}/.vimrc_${timestamp}; fi
ln -s ${dir}/.vimrc ${HOME}/.vimrc
