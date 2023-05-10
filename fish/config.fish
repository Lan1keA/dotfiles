set -U fish_greeting "~# LanikeA_"

set PATH /opt/homebrew/bin:{$HOME}/.cargo/bin:{$PATH}

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
alias ipy='ipython'
alias py='python -q'
alias dk='sudo docker'
alias f.n='find . -name'
alias ncdu='ncdu --color dark'
alias pms='python -m http.server'
alias tmus='tmux new-session \; split-window -h \; new-window \; split-window -h \; select-pane -L \; split-window -v \; new-window \; split-window -v \; select-window -p \; select-pane -R \; attach'
