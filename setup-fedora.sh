#!/bin/bash

sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf upgrade -y
sudo dnf install -y gcc ghc curl git make automake kernel-devel cmake vim gvim perf powertop python-devel python3-devel zsh gnome-tweak-tool clang xcape htop ffmpeg 

# stuff for JUCE apps
sudo dnf install -y curl-devel webkitgtk4-devel alsa-lib alsa-lib-devel

# setup shell
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# make video in firefox work
sudo dnf install -y ffmpeg-libs compat-ffmpeg28

# for Signal-Desktop
sudo dnf install -y libXScrnSaver

# make YouCompleteMe work without --system-clang
sudo dnf install -y ncurses-compat-libs

#node stuff
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
nvm install --lts
npm i -g yarn
npm i -g tldr

# How to solve SELinux problems with expressvpn?
# sudo semanage fcontext -a -t net_conf_t /var/lib/expressvpn/resolv.conf
# sudo restorecon -Rv /var/lib/expressvpn

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

mkdir -p ~/.vim/colors
cp ~/src/vividchalk/colors/vividchalk.vim ~/.vim/colors
cp ~/src/dotfiles/.zshrc-linux ~/.zshrc

source ~/.zshrc

curl https://sh.rustup.rs -sSf | sh

if [ ! -f ~/.vimrc ]; then
    echo "source $HOME/src/dotfiles/vimrc" > ~/.vimrc
    vim +PluginInstall +qall
fi

# Make sure /etc/default/grub LINUX= line contains `resume=/dev/mapper/fedora-swap`
# if it doesn't, add it, then do `sudo grub2-mkconfig > /etc/grub2-efi.cfg`
# of course, don't forget `sudo dracut --regenerate-all --force`

