#! /bin/sh

# run below command from the shell prompt for first time to make this file an executable
# chmod 755 xyz.sh

# copy local configs to the repo folder
cp ~/.zshrc .
cp ~/.gitconfig .
cp ~/.taskrc .
cp ~/.xinitrc .
cp ~/.config/envvar .config/
cp ~/.config/startupCmds .config/
cp ~/archInitialWork.md docs/

# folders
cp -r ~/.vim/ .
# vim - remove netrwhist file
rm -f .vim/.netrwhist
