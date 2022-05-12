export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34:cd=34:su=30:sg=30:tw=30:ow=30"
export PROMPT_EOL_MARK='↵'

ZSH_THEME="robbyrussell"
# ZSH_THEME="avit"
# ZSH_THEME="refined"
# ZSH_THEME="agnoster"

plugins=(
    git
    sudo
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source ~/.oh-my-zsh/oh-my-zsh.sh

alias l='/bin/ls'
# alias ls='lsd'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias v='nvim'
alias ipy='ipython3'
alias py='python3 -q'
alias f.n='find . -name'
alias dc='sudo docker'
alias pms='python -m http.server'
