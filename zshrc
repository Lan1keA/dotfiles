plugins=(
    git
    sudo
    extract
)

source ~/.profile
export PROMPT_EOL_MARK='↵'
export COLORTERM=truecolor
export PATH=/opt/homebrew/bin:$PATH

alias v='nvim'
alias l='/bin/ls'
alias ls='lsd'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias ipy='ipython'
alias py='python -q'
alias f.n='find . -name'
alias pms='python -m http.server'
# alias tmus='tmux new-session \; split-window -h \; new-window \; split-window -h \; select-pane -L \; split-window -v \; new-window \; split-window -v \; select-window -p \; select-pane -R \; attach'


if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting

zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure
