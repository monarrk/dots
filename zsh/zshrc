# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

alias ls='ls --color=always'
alias neofetch="neofetch | lolcat"
alias zzz="sudo zzz && logout"
alias resetst="xrdb ~/.Xresources"
alias bconnect="bluetoothctl power on && bluetoothctl agent on && bluetoothctl connect " #connect to MAC address with bluetooth
alias wconnect="nmcli c up "

PROMPT='%F{green}{[%f %n@%m %~%F{green} ]} %f> '
export PATH="/home/skye/bash/mmfr/bin:$HOME/bash/mmfr:~/bash/minterm/:~/go/pf:/usr/local/:$PATH"
export PATH="$PATH:$HOME/zig/src"
export MMFRSRC="$HOME/bash/mmfr"
export CGO_LDFLAGS="-L/tmp/ds/"
export CGO_CXXFLAGS="-I/tmp/ds/"
export LD_LIBRARY_PATH=/tmp/ds/:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=/bedrock/strata/void/usr/local/pocketsphinx/:/bedrock/strata/void/usr/local/sphinxbase:/bedrock/strata/void/usr/local/portaudio:/usr/local

# ANTLR stuff
export CLASSPATH=".:/usr/local/lib/antlr-4.7.2-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.7.2-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'

# Go stuff
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
