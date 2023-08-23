set -U fish_greeting "~# ZarKivY_"

set PATH /usr/local/bin/:/opt/homebrew/bin:{$HOME}/.cargo/bin:{$PATH}:{$HOME}/.local/bin

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export PROMPT_EOL_MARK='↵'
export GOPATH=/opt/go

alias v='nvim'
alias l='/bin/ls'
alias ls='lsd'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias gdb='gdb -q'
alias lg='lazygit'
alias ipy='ipython3'
alias py='python -q'
alias dk='sudo docker'
alias f.n='find . -name'
alias pms='python -m http.server'
alias tmus='tmux new-session \; new-window \; split-window -h \; select-pane -L \; split-window -v \; new-window \; split-window -h \; select-window -p \; select-pane -R \; attach'
