#!/bin/bash
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f $0)
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname $SCRIPT)

rm ~/.bashrc
rm ~/.vimrc -f
rm ~/.vim -Rf

# Google Chrome
sudo bash -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'

sudo apt-get update && sudo apt-get install vim-nox # google-chrome-stable

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

ln -s $SCRIPTPATH/dots/mysql/.my.cnf ~/.my.cnf
ln -s $SCRIPTPATH/dots/grc/.grcat ~/.grcat
ln -s $SCRIPTPATH/dots/git/.gitconfig ~/.gitconfig
ln -s $SCRIPTPATH/dots/vim/.vimrc ~/.vimrc
ln -s $SCRIPTPATH/dots/bash/.bashrc ~/.bashrc
ln -s $SCRIPTPATH/dots/tmux/.tmux.conf ~/.tmux.conf

vim +PluginInstall +qall
