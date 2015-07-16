# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
plugins=(git)
fpath=(/usr/local/share/zsh-completions $fpath)
source $ZSH/oh-my-zsh.sh
# export PS1="λ "

# git
git config --global alias.lg "log --color --graph --pretty=format:'%C(auto)%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"

export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin"
export PATH="$PATH:$HOME/.rvm/bin"

#export MANPATH="/usr/local/man:$MANPATH"
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/X11/bin:/Applications/Racket\ v5.3/bin:$HOME/Library/Haskell/bin"
export PATH="/Users/andy/.rbenv/versions/1.9.3-homebrewed/bin:$PATH"

source $HOME/git/dotfiles/.zshaliases

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# erlang
export ERL_LIBS="$HOME/.erlang_libs"

#coffee
export COFFEELINT_CONFIG="$HOME/git/dotfiles/.coffeelint_config.json"

# python
export PYTHONSTARTUP="$HOME/git/dotfiles/.pythonrc"
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
export WORKON_HOME=~/dev/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=
export PIP_RESPECT_VIRTUALENV=true
export PKG_CONFIG_PATH=/usr/X11/lib/pkgconfig/:/usr/local/lib/pkgconfig:/usr/local/opt/libxml2/lib/pkgconfig/

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim -f'
fi
export VISUAL='mvim -f'

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh


# OPAM configuration
. /Users/andy/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/X11/lib/pkgconfig/
for i in `ls /usr/local/opt/`;
do
    if [ -d "/usr/local/opt/$i/lib/pkgconfig" ];
    then export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/usr/local/opt/$i/lib/pkgconfig";
    fi;
done
