#! /bin/sh

# run below command from the shell prompt for first time to make this file an executable
# chmod 755 xyz.sh

# append from local configs to the repo folder configs
cat ~/.zshrc >> .zshrc
cat ~/.gitconfig >> .gitconfig
cat ~/.vim/vimrc >> .vim/vimrc
cat ~/.bashrc >> .bashrc
cat ~/.bash_profile >> .bash_profile
cat ~/.octaverc >> .octaverc
cat ~/.alacritty.yml >> .alacritty.yml
cat ~/keyfaker.ps1 >> keyfaker.ps1
