# Path to your oh-my-zsh installation.
export ZSH="/home/izayoi/.oh-my-zsh"

#ZSH_THEME="kardan"
ZSH_THEME="avit"
#ZSH_THEME="fox"
#ZSH_THEME="jonathan"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source "/home/izayoi/.webapp"
source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

alias ls="lsd"
alias ida="/opt/IDA_Pro/ida"
alias ida64="/opt/IDA_Pro/ida64"
alias vmware-init="sudo /etc/init.d/vmware start"
alias ghidra="/opt/ghidra/ghidraRun"
alias burp="java -jar /opt/burp/BurpSuiteLoader.jar &"

export PATH="/home/izayoi/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/izayoi:/home/izayoi/.local/bin"
