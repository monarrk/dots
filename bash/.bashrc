# .bashrc
function print_logo() {
	clear
	printf "\n\n\n"
	write.sh "$(/etc/welcome.txt)" 0.005 && echo
	sleep 0.1
	echo "Welcome back!"
	sleep 1
	clear
}

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

alias ls='ls --color=always'
alias sl='sl | lolcat'
alias neofetch="neofetch | lolcat"
alias zzz="sudo zzz && logout"
alias resetst="xrdb ~/.Xresources"
alias bconnect="bluetoothctl power on && bluetoothctl agent on && bluetoothctl connect " #connect to MAC address with bluetooth

PS1='\033[92m{[ \033[0m\u@\h \W\033[92m ]}\033[0m > ' 
export PATH="$PATH:/home/skye/bash/mmfr/bin:$HOME/bash/mmfr:~/bash/minterm/:~/go/pf"
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

# Wifi
alias wconnect="nmcli c up "

if ! xset q &>/dev/null; then
	print_logo
fi
