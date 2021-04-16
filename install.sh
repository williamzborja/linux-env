#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y > /dev/null
sudo apt-get install valgrind gcc emacs g++ build-essential make -y > /dev/null

rm ~/.emacs ~/.bashrc
cp .emacs ~/.emacs
cp .bashrc ~/.bashrc
source ~/.emacs
source ~/.bashrc

git clone https://github.com/holbertonschool/Betty.git > /dev/null 
cd ./Betty
sudo ./install.sh > /dev/null
cd ..
sudo rm -r ./Betty
