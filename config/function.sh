# Super mkdir
mkd() {
    mkdir -pv "$@"
    cd "$@"
}


# Print README file
readme() {
    for readme in {readme,README}.{md,MD,markdown,mkd,txt,TXT}; do
        if [[ -x "$(command -v glow)" ]] && [[ -f "$readme" ]]; then
            glow "$readme"
        elif [[ -f "$readme" ]]; then
            cat "$readme"
        fi
    done
}

# Weather
wttr() {
    curl -s "https://wttr.in/${1:-Barueri}?m2F&format=v2"
}

# Git commit browser
fshow() {
    local commit_hash="echo {} | grep -o '[a-f0-9]\{7\}' | head -1"
    local view_commit="$commit_hash | xargs -I % sh -c 'git show --color=always % | diff-so-fancy'"
    git log --color=always \
        --format="%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" "$@" | \
    fzf --no-sort --tiebreak=index --no-multi --reverse --ansi \
        --header="enter to view, alt-y to copy hash" --preview="$view_commit" \
        --bind="enter:execute:$view_commit | less -R" \
        --bind="alt-y:execute:$commit_hash | xclip -selection clipboard"
}
