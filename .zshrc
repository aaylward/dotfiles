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
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/X11/bin:/Applications/Racket\ v5.3/bin
export PATH="$HOME/Library/Haskell/bin:$PATH"

export PYTHONSTARTUP='/Users/aaylward/.pythonrc'
export GROOVY_HOME='/usr/local/Cellar/groovy/2.0.4/libexec'
export CLASSPATH=/Users/aaylward/.javaclasses:$CLASSPATH
export CLASSPATH=/Users/aaylward/.javaclasses/mysql-connector-java-ver-bin.jar:$CLASSPATH
alias hubspot='fab -f ~/dev/src/workstation_setup/fabfile.py'

export COFFEELINT_CONFIG='/Users/aaylward/.coffeelint_config.json'

alias git='hub'
alias p='python'
alias v="open \"mvim://open?url=file://$1\""
alias i='irb -I .'
alias sshb='ssh deathjen@deathjenga.com'
alias woknroll='workon ads_web'
alias wokout='woknroll'
alias webi='workon webinars; cd /Users/aaylward/webinars/'

source $HOME/.zshaliases
export GITHUB_HOST='git.hubteam.com'

export WORKON_HOME=~/dev/virtualenvs

source /usr/local/bin/virtualenvwrapper.sh

export PIP_VIRTUALENV_BASE=

export PIP_RESPECT_VIRTUALENV=true

export PIP_VIRTUALENV_BASE=

export PIP_VIRTUALENV_BASE=

export HS_SETTINGS_CLASS=EmptySettings

export HSPY_MOCK_MIDDLEWARE=1
export LOCAL_DEV=1

export SVN_EDITOR='mvim -f'
export VISUAL='mvim -f'

export EDITOR='mvim -f'

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH="$PATH:/usr/local/smlnj-110.75/bin"
alias deployer='/Users/aaylward/dev/virtualenvs/fabric_deploy/bin/deployer'
[[ -s /Users/aaylward/.nvm/nvm.sh ]] && source /Users/aaylward/.nvm/nvm.sh # This loads NVM
ctags=/usr/local/bin/ctags

export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
