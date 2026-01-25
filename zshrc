# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
plugins=(git mvn golang)
fpath=(/usr/local/share/zsh-completions $fpath)
source $ZSH/oh-my-zsh.sh
# export PS1="λ "

# git
git config --global alias.lg "log --color --graph --pretty=format:'%C(auto)%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/local/sbin:/opt/maven/bin"

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$HOME/go/bin:$PATH"
export GOPATH="$HOME/go"

source $HOME/src/dotfiles/zshaliases

# https://www.azul.com/downloads/zulu-community/?version=java-15-mts&os=macos&architecture=arm-64-bit&package=jdk
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-15.jdk/Contents/Home"

export JAVA_HOME=`/usr/libexec/java_home -v 25`
export PATH="$JAVA_HOME/bin:$PATH"


export M2_HOME="/opt/maven/bin"

# erlang
export ERL_LIBS="$HOME/.erlang_libs"

# golang
export GO_PATH="$HOME/go"
export PATH="$PATH:$GO_PATH/bin"

# python
export PYTHONSTARTUP="$HOME/src/dotfiles/.pythonrc"
export PIP_RESPECT_VIRTUALENV=true
export PKG_CONFIG_PATH=/usr/X11/lib/pkgconfig/:/usr/local/lib/pkgconfig:/usr/local/opt/libxml2/lib/pkgconfig/

# rust
export PATH="$PATH:$HOME/.cargo/bin"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim -f'
fi
export VISUAL='mvim -f'
export PATH="$HOME/.cargo/bin:$PATH"
export VCPKG_ROOT="$HOME/vcpkg"

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/X11/lib/pkgconfig/
for i in `ls /usr/local/opt/`;
do
    if [ -d "/usr/local/opt/$i/lib/pkgconfig" ];
    then export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/usr/local/opt/$i/lib/pkgconfig";
    fi;
done
