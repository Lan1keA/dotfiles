# Path to your oh-my-zsh installation.
export ZSH="/home/izayoi/.oh-my-zsh"

#ZSH_THEME="kardan"
ZSH_THEME="avit"
#ZSH_THEME="fox"
#ZSH_THEME="jonathan"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source "/home/izayoi/.webapp"
source "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

alias ls="lsd"
alias ida="wine64 ~/Software/IDA\ Pro/ida.exe &"
alias ida64="wine64 ~/Software/IDA\ Pro/ida64.exe &"
alias vmware-init="sudo /etc/init.d/vmware start"
alias ghidra="~/Software/ghidra/ghidraRun"
alias burp="java -jar ~/Software/burp/BurpSuiteLoader.jar &"

export PATH="/home/izayoi/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/izayoi:/home/izayoi/.local/bin"
