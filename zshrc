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

export PATH="$PATH:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/smlnj/bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/gcc-arm-none-eabi-5_4-2016q3/bin"
export PATH="$PATH:$HOME/Library/Python/3.7/bin"

source $HOME/git/dotfiles/zshaliases

export JAVA_HOME=`/usr/libexec/java_home -v 11`
export M2_HOME="`brew --prefix maven`/libexec"

export OPENSSL_INCLUDE_DIR="$(brew --prefix openssl)/include"
export OPENSSL_LIB_DIR="$(brew --prefix openssl)/lib"

# erlang
export ERL_LIBS="$HOME/.erlang_libs"

#coffee
export COFFEELINT_CONFIG="$HOME/git/dotfiles/.coffeelint_config.json"

# python
export PYTHONSTARTUP="$HOME/git/dotfiles/.pythonrc"
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
export PATH="$HOME/.cargo/bin:$PATH"

function get_java_build_artifact {
  project_name=$(pwd | rev | cut -d'/' -f-1 | rev);
  echo "target/"$project_name"-1.0-SNAPSHOT-shaded.jar"
}

function pi_deploy_java {
  scp $(get_java_build_artifact) pi@tippypi.local:/home/pi
}

function pi_deploy {
  `pi_deploy_$1`
}

# OPAM configuration
. /Users/andy/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/X11/lib/pkgconfig/
for i in `ls /usr/local/opt/`;
do
    if [ -d "/usr/local/opt/$i/lib/pkgconfig" ];
    then export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/usr/local/opt/$i/lib/pkgconfig";
    fi;
done
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
