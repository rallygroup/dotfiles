# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/zsh

# Set name of the theme to load.
# Look in ~/.dotfiles/zsh/themes/
ZSH_THEME="sxalexander"

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

HIST_IGNORE_SPACE="true"

export PYTHONPATH="${PYTHONPATH}:/usr/local/lib/python2.7/site-packages"

# Customize to your needs...
export PATH="/Applications/MAMP/bin/php/php5.5.10/bin:$PATH:/Applications/MAMP/Library/bin"
export PATH="$PATH:/Users/sxalexander/bin"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/zsh/plugins/*)
# Custom plugins may be added to ~/.dotfiles/zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(fabric sublime python django osx battery heroku brew virtualenvwrapper jira)

source $ZSH/oh-my-zsh.sh

# brew installed zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Setting up Z (https://github.com/rupa/z)
source $HOME/bin/z.sh

alias ls='ls -ahFG'
alias ll='ls -l'

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

export EDITOR="vim"
export PGDATA='/var/db/pgsql'

alias mysql="/Applications/MAMP/Library/bin/mysql"

# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
# install into global python packages
function pip-global()   PIP_REQUIRE_VIRTUALENV="" pip "$@"

# virtualenvwrapper
VIRTUALENVWRAPPER_LOG_DIR=/tmp
export VIRTUALENVWRAPPER_LOG_DIR
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_HOOK_DIR=$WORKON_HOME
export PROJECT_HOME=$HOME/projects
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'


source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME # Tell pip to create its virtualenvs in $WORKON_HOME.
export PIP_RESPECT_VIRTUALENV=true # Tell pip to automatically use the currently active virtualenv.


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$HOME/.bin:$PATH"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

export PATH="$PATH:/usr/local/lib/node_modules"
source $(brew --prefix nvm)/nvm.sh

export NVM_DIR=~/.nvm
