#!/bin/bash
echo "updating ubuntu repositores..."
sudo apt-get update > /dev/null
echo "upgrade packages..."
sudo apt-get upgrade -y > /dev/null

if ! test -f '/usr/bin/gcc'; then
    echo 'installing gcc'
    sudo apt-get install gcc > /dev/null
fi

if ! test -f '/usr/bin/emacs'; then
    echo 'installing emacs'
    sudo apt-get install emacs > /dev/null
fi

if ! test -f '/usr/bin/valgrind'; then
    echo 'installing valgrind'
    sudo apt-get install valgrind -y > /dev/null
fi

if ! test -f '/usr/bin/make'; then
    echo 'installing make'
    sudo apt-get install make -y > /dev/null
fi

if ! test -f '/usr/bin/g++'; then
    echo 'installing c++'
    sudo apt-get install g++ -y > /dev/null
fi

if ! test -f '/usr/bin/pip3'; then
    echo 'install pip3'
    sudo apt install python-pip3
fi

if ! test -f '/usr/bin/pep8'; then
    echo 'install pep8'
    sudo apt install pep8
fi


sudo apt-get install build-essential -y > /dev/null
rm ~/.emacs
cp .bashrc ~/.bashrc
cp .emacs ~/.emacs
source ~/.bashrc
source ~/.emacs

if ! test -f '/usr/local/bin/betty'; then
    echo "download betty holberton"
    git clone https://github.com/holbertonschool/Betty.git &> /dev/null
    cd ./Betty
    echo "install betty"
    sudo ./install.sh > /dev/null
    cd ..
    echo "clear betty download"
    rm -rf ./Betty
fi
