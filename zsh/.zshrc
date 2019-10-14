# Created by skye for 5.7.1

COLOR="green"
COLOR2="red"

autoload -U colors && colors
if ! xset -q &> /dev/null; then
	PS1="%{$fg[$COLOR]%}[%{$reset_color%}%n%{$fg[$COLOR]%}@%{$reset_color%}%m%{$fg[$COLOR]%}::%{$reset_color%}%.%{$fg[$COLOR]%}]$%{$reset_color%} "
else
	PS1="%{$fg[$COLOR2]%}[%{$reset_color%}%n%{$fg[$COLOR2]%}@%{$reset_color%}%m%{$fg[$COLOR2]%}::%{$reset_color%}%.%{$fg[$COLOR2]%}]$%{$reset_color%} "	
fi

source ~/.discord.conf
clear 

export PATH="$PATH:/usr/sbin:/sbin:/usr/share/xbps-git/usr/bin:~/.local/bin:~/.nix-profile/bin"

if ! xset -q &> /dev/null; then
	wcon_startup
fi

alias ls="ls --color=auto"
alias la="ls -A"
alias wconnect='sudo killall wpa_supplicant; sudo wpa_supplicant -B -D wext -i wlo1 -c'
alias wscan="sudo iwlist wlo1 scan | grep ESSID"
alias pls="sudo"
alias logout="reset && logout"
alias shutdown="printf '\n\tShutting down now!\n' && sudo shutdown -h -P now"
alias getnet="iwgetid -s wlo1"
alias push="git push origin master"

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

export PATH="$HOME/.cargo/bin:$PATH"
if [ -e /home/skye/.nix-profile/etc/profile.d/nix.sh ]; then . /home/skye/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# zig/cmake
CLANG_INCLUDE_DIRS=/usr/include
CLANG_LIBRARIES=/nix/store/ih4nxam3q3hq8bfpy5x8pij1qq7m049g-clang-7.1.0/lib/cmake/clang

export PATH=$PATH:/usr/pack/binexport PATH=$PATH:/usr/pack/bin
export JAVA_HOME=/nix/store/9jx2zffd9vs53zxkzmkiq7pd97qbbx5c-openjdk-12.0.2-ga/include
