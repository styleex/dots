#!/bin/bash
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f $0)
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname $SCRIPT)

rm ~/.bashrc

ln -s $SCRIPTPATH/dots/mysql/.my.cnf ~/.my.cnf
ln -s $SCRIPTPATH/dots/grc/.grcat ~/.grcat
ln -s $SCRIPTPATH/dots/git/.gitconfig ~/.gitconfig
ln -s $SCRIPTPATH/dots/vim/.vim ~/
ln -s $SCRIPTPATH/dots/vim/.vimrc ~/.vimrc
ln -s $SCRIPTPATH/dots/bash/.bashrc ~/.bashrc
ln -s $SCRIPTPATH/dots/tmux/.tmux.conf ~/.tmux.conf
