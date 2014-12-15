rally dotfiles
===================

Our Rally Group dotfiles are largely based off the methods popularized by [thoughtbot](https://github.com/thoughtbot/dotfiles).

Requirements
------------

Set zsh as your login shell:

    chsh -s $(which zsh)

Install
-------

Clone onto your laptop:

    git clone git://github.com/rallygroup/dotfiles.git

(Or, [fork and keep your fork
updated](http://robots.thoughtbot.com/keeping-a-github-fork-updated)).

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles:

    env RCRC=$HOME/dotfiles/rcrc rcup

This command will create symlinks for config files in your home directory.
Setting the `RCRC` environment variable tells `rcup` to use standard
configuration options:

* Exclude the `README.md` and `LICENSE` files, which are part of
  the `dotfiles` repository but do not need to be symlinked in.
* Give precedence to personal overrides which by default are placed in
  `~/dotfiles-local`

You can safely run `rcup` multiple times to update:

    rcup

Make your own customizations
----------------------------

Put your customizations in dotfiles appended with `.local`:

* `~/.aliases.local`
* `~/.git_template.local/*`
* `~/.gitconfig.local`
* `~/.vimrc.local`
* `~/.vimrc.bundles.local`
* `~/.zshenv.local`
* `~/.zshrc.local`
* `~/.zsh/configs/*`

For example, your `~/.aliases.local` might look like this:

    # Productivity
    alias todo='$EDITOR ~/.todo'

Your `~/.gitconfig.local` might look like this:

    [alias]
      l = log --pretty=colored
    [pretty]
      colored = format:%Cred%h%Creset %s %Cgreen(%cr) %C(bold blue)%an%Creset
    [user]
      name = Sam Alexander
      email = sam@rallygroup.com

Your `~/.zshenv.local` might look like this:

    # load pyenv if available
    if which pyenv &>/dev/null ; then
      eval "$(pyenv init -)"
    fi

To extend your `git` hooks, create executable scripts in
`~/.git_template.local/hooks/*` files.

Your `~/.zshrc.local` might look like this:

    # recommended by brew doctor
    export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

Your `~/.vimrc.bundles.local` might look like this:

    Plugin 'Lokaltog/vim-powerline'
    Plugin 'stephenmckinney/vim-solarized-powerline'


What's in it?
-------------

[vim](http://www.vim.org/) configuration:

* [Ctrl-P](https://github.com/kien/ctrlp.vim) for fuzzy file/buffer/tag finding.
* [Rails.vim](https://github.com/tpope/vim-rails) for enhanced navigation of
  Rails file structure via `gf` and `:A` (alternate), `:Rextract` partials,
  `:Rinvert` migrations, etc.
* Run [RSpec](https://www.relishapp.com/rspec) specs from vim.
* Set `<leader>` to a single space.
* Switch between the last two files with space-space.
* Syntax highlighting for CoffeeScript, Textile, Cucumber, Haml, Markdown, and
  HTML.
* Use [Ag](https://github.com/ggreer/the_silver_searcher) instead of Grep when
  available.
* Use [Exuberant Ctags](http://ctags.sourceforge.net/) for tab completion.
* Use [GitHub color scheme](https://github.com/croaky/vim-colors-github).
* Use [vim-mkdir](https://github.com/pbrisbin/vim-mkdir) for automatically
  creating non-existing directories before writing the buffer.
* Use [Vundle](https://github.com/gmarik/Vundle.vim) to manage plugins.

[git](http://git-scm.com/) configuration:

* Adds a `create-branch` alias to create feature branches.
* Adds a `delete-branch` alias to delete feature branches.
* Adds a `merge-branch` alias to merge feature branches into master.
* Adds an `up` alias to fetch and rebase `origin/master` into the feature
  branch. Use `git up -i` for interactive rebases.
* Adds `post-{checkout,commit,merge}` hooks to re-index your ctags.
* Adds `pre-commit` and `prepare-commit-msg` stubs that delegate to your local
  config.

Shell aliases and scripts:

* `git-churn` to show churn for the files changed in the branch.

Credits
-------
Original customization of this dotfiles fork was done by Sam Alexander [sxalexander](https://github.com/sxalexander/)

This dotfiles fork would be impossible without the work of [thoughtbot](https://github.com/thoughtbot/dotfiles), so 
their contributors are also worthy of mention: [contributors](https://github.com/thoughtbot/dotfiles/contributors).

Dotfiles is © 2014 Rally Marketing Group. It is free software and may be
redistributed under the terms specified in the [LICENSE](LICENSE) file.
