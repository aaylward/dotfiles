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

export PATH="/Users/andy/.nvm/v0.10.17/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/X11/bin:/Applications/Racket v5.3/bin:/Users/andy/.rvm/bin:/usr/local/Cellar/go/1.2/libexec/bin"
 
#export MANPATH="/usr/local/man:$MANPATH"
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/X11/bin:/Applications/Racket\ v5.3/bin
export PATH="$HOME/Library/Haskell/bin:$PATH"

export PYTHONSTARTUP='/Users/aaylward/.pythonrc'
export GROOVY_HOME='/usr/local/Cellar/groovy/2.0.4/libexec'
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export CLASSPATH=/Users/aaylward/.javaclasses:$CLASSPATH
export CLASSPATH=/Users/aaylward/.javaclasses/mysql-connector-java-ver-bin.jar:$CLASSPATH
alias hubspot='fab -f ~/dev/src/workstation_setup/fabfile.py'

export GOPATH="$HOME/.go"

export COFFEELINT_CONFIG='/Users/aaylward/.coffeelint_config.json'

alias git='hub'
alias p='python'
alias v='mvim'
alias i='irb -I .'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
source $HOME/.zshaliases
export GITHUB_HOST='git.hubteam.com'

export WORKON_HOME=~/dev/virtualenvs

source /usr/local/bin/virtualenvwrapper.sh

export PIP_VIRTUALENV_BASE=

export PIP_RESPECT_VIRTUALENV=true

export PIP_VIRTUALENV_BASE=

export HS_SETTINGS_CLASS=EmptySettings

export HSPY_MOCK_MIDDLEWARE=1
export LOCAL_DEV=1

export SVN_EDITOR='mvim -f'
export VISUAL='mvim -f'

export EDITOR='mvim -f'

alias deployer='/Users/andy/.fabric_deploy_virtualenv/bin/deployer'

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH="$PATH:/usr/local/smlnj-110.75/bin"
export PATH="$PATH:$HOME/yagarto-4.7.2/bin"
export PATH="$PATH:$HOME/yagarto-4.7.2/tools"
export PATH="$PATH:$HOME/Downloads/google_appengine"
[[ -s /Users/aaylward/.nvm/nvm.sh ]] && source /Users/aaylward/.nvm/nvm.sh # This loads NVM
ctags=/usr/local/bin/ctags
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
source ~/.nvm/nvm.sh

