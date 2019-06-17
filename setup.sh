#!/bin/bash

sudo apt update && sudo apt -y upgrade
sudo apt -y install curl git cmake build-essential python-dev python3-dev \
  ninja-build vim vim-gtk3 zsh htop tree gnome-tweak-tool wmctrl xcape libc6-dev-amd64

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

git config --global user.name "Andy Aylward"
git config --global user.email "aaylward@gmail.com"

if [ ! -f ~/.ssh/id_rsa.pub ]; then
    ssh-keygen
    echo "add key to github: https://github.com/settings/ssh/new"
    cat ~/.ssh/id_rsa.pub
    read -n 1 -s -r -p "Press any key to continue once your new key is uploaded"
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone git@github.com:aaylward/dotfiles.git ~/src/dotfiles
git clone git@github.com:tpope/vim-vividchalk.git ~/src/vividchalk

chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mkdir -p ~/.vim/colors
cp ~/src/vividchalk/colors/vividchalk.vim ~/.vim/colors
cp ~/src/dotfiles/.zshrc ~

source ~/.zshrc

if [ ! -f ~/.vimrc ]; then
    echo "source $HOME/src/dotfiles/vimrc" > ~/.vimrc
    vim +PluginInstall +qall
fi

