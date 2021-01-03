# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
plugins=(git mvn)
fpath=(/usr/local/share/zsh-completions $fpath)
source $ZSH/oh-my-zsh.sh
# export PS1="λ "

# git
git config --global alias.lg "log --color --graph --pretty=format:'%C(auto)%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"

export PATH="/opt/homebrew/bin:$PATH:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/local/sbin:/opt/maven/bin"

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.local/bin"
source $HOME/git/dotfiles/zshaliases

# https://www.azul.com/downloads/zulu-community/?version=java-15-mts&os=macos&architecture=arm-64-bit&package=jdk
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-15.jdk/Contents/Home"

export M2_HOME="/opt/maven/bin"

export OPENSSL_INCLUDE_DIR="$(brew --prefix openssl)/include"
export OPENSSL_LIB_DIR="$(brew --prefix openssl)/lib"

# erlang
export ERL_LIBS="$HOME/.erlang_libs"

# python
export PYTHONSTARTUP="$HOME/git/dotfiles/.pythonrc"
export PIP_RESPECT_VIRTUALENV=true
export PKG_CONFIG_PATH=/usr/X11/lib/pkgconfig/:/usr/local/lib/pkgconfig:/usr/local/opt/libxml2/lib/pkgconfig/

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim -f'
fi
export VISUAL='mvim -f'
export PATH="$HOME/.cargo/bin:$PATH"

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/X11/lib/pkgconfig/
for i in `ls /usr/local/opt/`;
do
    if [ -d "/usr/local/opt/$i/lib/pkgconfig" ];
    then export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/usr/local/opt/$i/lib/pkgconfig";
    fi;
done
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
