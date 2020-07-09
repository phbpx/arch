# Initialize $PATH with system and user binaries.
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/share/go/bin"

# XDG.
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Locale.
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

# Term.
export TERM="xterm-256color"

# Default Editor.
export EDITOR="nvim"

# Default Pager.
export PAGER="less"

# Oh My Zsh.
export ZSH="$HOME/.oh-my-zsh"

# Set a character at the end of partial lines to none.
export PROMPT_EOL_MARK=""

# History settings.
export HISTORY_IGNORE="([bf]g|c|clear|e|exit|h|history|incognito|l|l[adfls]|pwd|z)"

# fzf.
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export FZF_CTRL_T_OPTS="--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {}))'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS=" \
  --layout=reverse --height 96% \
  --color fg:#ebdbb2,bg:#282828,hl:#fabd2f,fg+:#ebdbb2,bg+:#3c3836,hl+:#fabd2f \
  --color info:#83a598,prompt:#bdae93,spinner:#fabd2f,pointer:#83a598,marker:#fe8019,header:#665c54"

# Less.
export LESS="--RAW-CONTROL-CHARS"
export LESS_TERMCAP_mb=$'\e[1;31m' # Start blinking
export LESS_TERMCAP_md=$'\e[1;34m' # Start bold mode
export LESS_TERMCAP_me=$'\e[0m' # End all mode
export LESS_TERMCAP_so=$'\e[38;5;215m' # Start standout mode
export LESS_TERMCAP_se=$'\e[0m' # End standout mode
export LESS_TERMCAP_us=$'\e[4;35m' # Start underline
export LESS_TERMCAP_ue=$'\e[0m' # End underline

# Python virtualenv
# disable the default virtualenv prompt change
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Golang.
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
