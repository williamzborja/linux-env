#!/bin/bash
sudo apt install valgrind gcc emacs -y
cp .emacs ~/.emacs
cp .bashrc ~/.bashrc


git clone https://github.com/holbertonschool/Betty.git
sudo ./Betty/install.sh
sudo rm  -r Betty