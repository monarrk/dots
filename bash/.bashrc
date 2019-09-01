source ~/.profile

alias ls="ls --color=auto"

# Colors
GREEN="\[\033[01;32m\]"
RESET="\[\033[00m\]"

export PATH="$PATH:/usr/sbin:/sbin:/usr/share/xbps-git/usr/bin:~/.local/bin:~/.nix-profile/bin"

alias wconnect='sudo killall wpa_supplicant; sudo wpa_supplicant -B -D wext -i wlo1 -c'
alias wscan="sudo iwlist wlo1 scan | grep ESSID"
alias pls="sudo"
alias logout="reset && logout"
alias shutdown="printf '\n\tShutting down now!\n' && sudo shutdown -h -P now"
alias getnet="iwgetid -s wlo1"

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

export PATH="$HOME/.cargo/bin:$PATH"
if [ -e /home/skye/.nix-profile/etc/profile.d/nix.sh ]; then . /home/skye/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# zig/cmake
CLANG_INCLUDE_DIRS=/usr/include
CLANG_LIBRARIES=/nix/store/ih4nxam3q3hq8bfpy5x8pij1qq7m049g-clang-7.1.0/lib/cmake/clang

#clear trash
rm -rf .*~ *.*~