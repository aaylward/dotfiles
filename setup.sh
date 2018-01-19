sudo apt update && sudo apt -y upgrade
sudo apt -y install curl git build-essential python-dev python3-dev ninja-build vim vim-gtk3 zsh htop tree

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone git@github.com:aaylward/dotfiles.git ~/git/dotfiles
git clone git@github.com:tpope/vim-vividchalk.git ~/git/vividchalk

chsh -s /usr/bin/zsh
mkdir -p ~/.vim/colors
cp ~/git/vividchalk/colors/vividchalk.vim ~/.vim/colors
cp ~/git/dotfiles/.zshrc ~

if [ ! -f ~/.ssh/id_rsa.pub ]; then
    ssh-keygen
fi

echo "source $HOME/git/dotfiles/vimrc" > ~/.vimrc

