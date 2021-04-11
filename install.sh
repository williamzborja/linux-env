#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install valgrind gcc emacs -y
cp .emacs ~/.emacs
cp .bashrc ~/.bashrc

git clone https://github.com/holbertonschool/Betty.git
cd ./Betty
sudo ./install.sh
cd ..
sudo rm -r ./Betty
