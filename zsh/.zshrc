# Created by skye for 5.7.1

COLOR="green"
COLOR2="green"

autoload -U colors && colors
if ! xset -q &> /dev/null; then
	PS1="%{$fg[$COLOR]%}[%{$reset_color%}%n%{$fg[$COLOR]%}@%{$reset_color%}%m%{$fg[$COLOR]%}::%{$reset_color%}%.%{$fg[$COLOR]%}]$%{$reset_color%} "
else
	PS1="%{$fg[$COLOR2]%}[%{$reset_color%}%n%{$fg[$COLOR2]%}@%{$reset_color%}%m%{$fg[$COLOR2]%}::%{$reset_color%}%.%{$fg[$COLOR2]%}]$%{$reset_color%} "	
fi

clear
/usr/games/fortune

export PATH="$PATH:/usr/sbin:/sbin:/home/skye/.local/bin:/usr/local/jdk-11/bin:/home/skye/go/bin"

# general aliases
alias ls="colorls -G -F"
alias la="colorls -G -A -F"
alias pls="sudo"
alias logout="clear && logout"
alias push="git push origin master"
alias pull="git pull origin master"
alias netstart="sudo sh /etc/netstart"
alias vi="vim"
alias down="sudo apmd && sudo zzz"
alias fortune="/usr/games/fortune"
alias res="source ~/.zshrc"

# Radare aliases
alias rabin="rabin2"
alias r="r2"
