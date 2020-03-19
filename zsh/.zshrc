# Created by skye for 5.7.1

COLOR="red"

autoload -U colors && colors
export PS1="%{$fg[$COLOR]%}[%{$reset_color%}%n%{$fg[$COLOR]%}@%{$reset_color%}%m%{$fg[$COLOR]%}::%{$reset_color%}%.%{$fg[$COLOR]%}]$%{$reset_color%} "

clear

alias ls="ls --color=always"
alias la="ls -A"
alias res="source .zshrc"
alias push="git push origin master"
alias pull="git pull origin master"
