# Easy report
alias ls='ls -Fh --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias l='ls -l'
alias la='ls -lA'
alias lr='ls -R'
alias lf='ls -l | grep "^-"'
alias l.f='ls -ld .* | grep "^-"'
alias ld='ls -l | grep "^d"'
alias l.d='ls -ld .* | grep "^d"'
alias dud='du -d 1 -h'
alias duf='du -sh *'
alias fdir='find . -type d -name'
alias ff='find . -type f -name'
alias h='history'
alias hgrep='history | grep'
alias lgrep='ls -l | grep'
alias lagrep='ls -lA | grep'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,.tldr,node_modules,Trash,vendor}'
alias cp='cp -iv'
alias mv='mv -iv'
alias ln='ln -iv'
alias mkdir='mkdir -pv'
alias rm='rmtrash'
alias rmdir='rmdirtrash'
alias rmf='rmtrash -rf'
alias p='ps axo pid,user,pcpu,comm'
alias uptime='uptime -p'
alias free='free -h'
alias disk='df -h | grep sd \
    | sed -e "s_/dev/sda[1-9]_\x1b[34m&\x1b[0m_" \
    | sed -e "s_/dev/sd[b-z][1-9]_\x1b[33m&\x1b[0m_" \
    | sed -e "s_[,0-9]*[MG]_\x1b[36m&\x1b[0m_" \
    | sed -e "s_[0-9]*%_\x1b[32m&\x1b[0m_" \
    | sed -e "s_9[0-9]%_\x1b[31m&\x1b[0m_" \
    | sed -e "s_/mnt/[-_A-Za-z0-9]*_\x1b[34;1m&\x1b[0m_"'
alias update='sudo pacman -Syyuu'
alias preview='fzf --height=50% --layout=reverse --preview="bat --color=always {}"'

# Bookmarks
alias dl='cd ~/Downloads && ls -lA'
alias doc='cd ~/Documents && ls -lA'
alias src='cd ~/Sources && ls -lA'

# Shortcuts
alias vim='nvim'
alias c='clear'
alias cat='bat'
alias ch='echo > ~/.bash_history && echo > ~/.zsh_history'
alias e='exit'
alias htop-user='htop -u "$USER"'
alias incognito='unset HISTFILE'
alias ip-address='curl -s -H "Accept: application/json" https://ipinfo.io/json | jq "del(.loc, .postal, .readme)"'
alias mp3-dl='youtube-dl --ignore-config --extract-audio \
    --audio-format "mp3" --audio-quality 0 --embed-thumbnail \
    --add-metadata --metadata-from-title "%(artist)s - %(title)s" \
    --output "$HOME/Downloads/%(title)s.%(ext)s"'
alias n='nnn -deo'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias fzfi='rg --files --hidden --follow --no-ignore-vcs -g "!{node_modules,.git,.cache,BraveSoftware,Slack}" | fzf --preview "bat --style=numbers --color=always {}"'
alias vifi='nvim $(fzfi)'
alias packages="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
