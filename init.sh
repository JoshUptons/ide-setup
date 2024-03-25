#!/bin/bash

apt update

apt install vim
apt install tmux

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp .vimrc /root/.vimrc
cp .tmux.conf /root/.tmux.conf

vim -E -s -u "$HOME/.vimrc" +PlugInstall +qall
