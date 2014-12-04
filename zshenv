# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# virtualenvwrapper
VIRTUALENVWRAPPER_LOG_DIR=/tmp
export VIRTUALENVWRAPPER_LOG_DIR
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_HOOK_DIR=$WORKON_HOME
export PROJECT_HOME=$HOME/projects
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
