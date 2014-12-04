# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/zsh

# Set name of the theme to load.
# Look in ~/.dotfiles/zsh/themes/
# ZSH_THEME="sxalexander"

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

# modify the prompt to contain git branch name if applicable
git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo " %{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%}"
  fi
}
setopt promptsubst
export PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_prompt_info) %# '

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
plugins=(fabric sublime python django osx battery heroku brew virtualenvwrapper jira)

source $ZSH/oh-my-zsh.sh

# brew installed zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)


# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# exports
[[ -f ~/.exports ]] && source ~/.exports

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
