# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# git
git config --global alias.lg "log --color --graph --pretty=format:'%C(auto)%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"

# ghe
export GITHUB_HOST='git.hubteam.com'

#export MANPATH="/usr/local/man:$MANPATH"
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/X11/bin:/Applications/Racket\ v5.3/bin:$HOME/Library/Haskell/bin"
export PATH="/Users/andy/.rbenv/versions/1.9.3-homebrewed/bin:$PATH"

# aliases
source $HOME/.zshaliases

# java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export CLASSPATH="$HOME/.javaclasses:$CLASSPATH"
export CLASSPATH="$HOME/.javaclasses/mysql-connector-java-ver-bin.jar:$CLASSPATH"
export GROOVY_HOME='/usr/local/Cellar/groovy/2.0.4/libexec'

#haskell
export PATH=~/.cabal/bin:$PATH

# go
export GOROOT="/usr/local/opt/go/libexec"
export GOPATH="$HOME/git/go:$GOROOT/src"
launchctl setenv GOPATH $GOPATH
launchctl setenv GOROOT $GOROOT
export GOBIN=$HOME/bin
export PATH=$GOBIN:$PATH:/usr/local/opt/go/libexec/bin:${GOPATH//://bin:}/bin

# erlang
export ERL_LIBS="$HOME/.erlang_libs"

#coffee
export COFFEELINT_CONFIG="$HOME/.coffeelint_config.json"

# python
export PYTHONSTARTUP="$HOME/.pythonrc"
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
export WORKON_HOME=~/dev/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=
export PIP_RESPECT_VIRTUALENV=true

#editors
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim -f'
fi
export SVN_EDITOR='mvim -f'
export VISUAL='mvim -f'

source ~/.nvm/nvm.sh

# completions
fpath=(/usr/local/share/zsh-completions $fpath)
export HS_BROWSERSTACK_USER='jajoneill'
export HS_BROWSERSTACK_KEY='fzgXeHZV1xeQDtDcJYRW'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias deployer='/Users/andy/.fabric_deploy_virtualenv/bin/deployer'
