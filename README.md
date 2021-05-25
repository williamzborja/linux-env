# linux-env

This is my autoconfigurator for environment with linux specifically Ubuntu 20.04 or better.


# Files

| Files                                        | Description                                                            |
| -------------------------------------------- | ---------------------------------------------------------------------- |
| [.bashrc](./.bashrc)                         | bash configuration this file contain alias and custom PS1 env variable |
| [.emacs](./.emacs)                           | File of configuration of emacs                                         |
| [install.sh](./install.sh)                   | script to installation of terminal env                                 |
| [install-with-gui.sh](./install-with-gui.sh) | install programs with gui                                              |

## [install.sh](install.sh)
this script install

- gcc
- emacs
- valgrind
- make
- c++
- python-pip3
- pep8
- build-essential
- betty (Holberton School linter)

and configurate emacs and bash with .emacs and .bashrc files

important note: emacs need version 24 or better

Execute with:
```
./install.sh
```

# [install-with-gui](./install-with-gui.sh)
this script install 
- vscode
- chromium
- spotify
- miro

Execute with:
```
./install-with-gui.sh
```
# Author

[@williamzborja](https://github.com/williamzborja)


