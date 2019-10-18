# Created by skye for 5.7.1

COLOR="green"
COLOR2="blue"

autoload -U colors && colors
if ! xset -q &> /dev/null; then
	PS1="%{$fg[$COLOR]%}[%{$reset_color%}%n%{$fg[$COLOR]%}@%{$reset_color%}%m%{$fg[$COLOR]%}::%{$reset_color%}%.%{$fg[$COLOR]%}]$%{$reset_color%} "
else
	PS1="%{$fg[$COLOR2]%}[%{$reset_color%}%n%{$fg[$COLOR2]%}@%{$reset_color%}%m%{$fg[$COLOR2]%}::%{$reset_color%}%.%{$fg[$COLOR2]%}]$%{$reset_color%} "	
fi

source ~/.discord.conf
clear 

export PATH="$PATH:/usr/sbin:/sbin:/home/skye/.local/bin:~/.nix-profile/bin:/usr/pack/bin"

if ! xset -q &> /dev/null; then
	wcon_startup
fi

# general aliases
alias ls="ls --color=auto"
alias la="ls -A"
alias wscan="sudo iwlist wlo1 scan | grep ESSID"
alias pls="sudo"
alias logout="reset && logout"
alias shutdown="printf '\n\tShutting down now!\n' && sudo shutdown -h -P now"
alias getnet="iwgetid -s wlo1"
alias push="git push origin master"
alias pull="git pull origin master"

# Radare aliases
alias rabin="rabin2"
alias r="r2"

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export LD_PRELOAD=""

export PATH="$HOME/.cargo/bin:$PATH"
if [ -e /home/skye/.nix-profile/etc/profile.d/nix.sh ]; then . /home/skye/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
export HISTFILE=/home/skye/.zhistory
