#!/bin/bash
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f $0)
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname $SCRIPT)

ln -s $SCRIPTPATH/dots/mysql/.my.cnf ~/.my.cnf
ln -s $SCRIPTPATH/dots/grc/.grcat ~/.grcat
ln -s $SCRIPTPATH/dots/git/.gitconfig ~/.gitconfig
