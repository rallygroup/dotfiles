# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/zsh

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

# load our own completion functions
fpath=(~/.zsh/completion $fpath)

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# awesome cd movements from zshkit
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

HIST_IGNORE_SPACE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/zsh/plugins/*)
# Custom plugins may be added to ~/.dotfiles/zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(docker fabric sublime python django battery heroku brew virtualenvwrapper jira)

source $ZSH/oh-my-zsh.sh

# brew installed zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)

# When the current working directory changes, run a method that checks for a .env file, then sources it. Happy days.
# https://github.com/johnhamelink/env-zsh
autoload -U add-zsh-hook
load-local-conf() {
     # check file exists, is regular file and is readable:
     if [[ -f .env && -r .env ]]; then
       source .env
     fi
}
add-zsh-hook chpwd load-local-conf

which boot2docker 1> /dev/null && $(boot2docker shellinit 2> /dev/null)

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# prompt
[[ -f ~/.prompt ]] && source ~/.prompt

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
