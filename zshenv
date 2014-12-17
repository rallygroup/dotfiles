# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:$PATH"

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Set vim as default editor
export EDITOR="vim"

# Cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# virtualenvwrapper
export VIRTUALENVWRAPPER_LOG_DIR
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /usr/local/bin/virtualenvwrapper.sh

export VIRTUALENVWRAPPER_HOOK_DIR=$WORKON_HOME
export VIRTUALENVWRAPPER_LOG_DIR=$WORKON_HOME/logs
export VIRTUALENVWRAPPER_TMPDIR=$WORKON_HOME/tmp
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

export PATH="$PATH:/usr/local/lib/node_modules"

export NVM_DIR=$HOME/.nvm
source $(brew --prefix nvm)/nvm.sh

source $(brew --prefix)/etc/profile.d/z.sh
