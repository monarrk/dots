# Created by skye for 5.7.1

COLOR="green"
COLOR2="green"

autoload -U colors && colors
if ! xset -q &> /dev/null; then
	PS1="%{$fg[$COLOR]%}[%{$reset_color%}%n%{$fg[$COLOR]%}@%{$reset_color%}%m%{$fg[$COLOR]%}::%{$reset_color%}%.%{$fg[$COLOR]%}] »%{$reset_color%} "
else
	PS1="%{$fg[$COLOR2]%}[%{$reset_color%}%n%{$fg[$COLOR2]%}@%{$reset_color%}%m%{$fg[$COLOR2]%}::%{$reset_color%}%.%{$fg[$COLOR2]%}] »%{$reset_color%} "	
fi

clear

# general aliases
alias ls="ls --color=always"
alias la="ls -A"
alias pls="sudo"
alias logout="clear && logout"
alias push="git push origin master"
alias pull="git pull origin master"
alias res="source ~/.zshrc"
alias update="sudo apk update && sudo apk upgrade"

export PATH=$PATH:/usr/lib/jvm/java-1.8-openjdk/bin:~/.local/bin
