# Theme.
ZSH_THEME="oxide"

# Case-sensitive completion.
CASE_SENSITIVE="true"

# Disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Disable marking untracked files under VCS as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History.
HIST_STAMPS="yyyy-mm-dd"

# Plugins.
plugins=(
    extract
    git
    fzf
    z
    nvm
    pyenv
    rbenv
)

# Environment variables.
source ~/.config/exports.sh

# oh-my-zsh.
source ~/.oh-my-zsh/oh-my-zsh.sh

# Aliases.
source ~/.config/aliases.sh

# Functions.
source ~/.config/function.sh

# dircolors.
if [ -x "$(command -v dircolors)" ]; then
    eval "$(dircolors -b ~/.dircolors)"
fi

# Manage SSH with Keychain.
if [ -x "$(command -v keychain)" ]; then
    eval "$(keychain --eval --quiet id_rsa)"
fi
