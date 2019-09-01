clear

alias ls="ls --color=auto"

# Colors
GREEN="\[\033[01;32m\]"
RESET="\[\033[00m\]"

export PS1="$GREEN[$RESET\u@\h$GREEN::$RESET\W$GREEN]$RESET » "
export PATH="$PATH:/usr/sbin:/sbin:/usr/share/xbps-git/usr/bin:~/.local/bin:~/.nix-profile/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/nix/store/xlm81myzwp1i8ha4imqqw480gfr4q3ib-openjdk-8u212-ga/lib/openjdk/jre/lib/amd64"

alias wconnect='sudo killall wpa_supplicant; sudo wpa_supplicant -B -D wext -i wlo1 -c'
alias wscan="sudo iwlist wlo1 scan | grep ESSID"
alias pls="sudo"
alias logout="reset && logout"
alias shutdown="printf '\n\tShutting down now!\n' && sudo shutdown -h -P now"

export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/nix/store/6ps1i7d86z7nva0p6lggx1lz0mdqvyan-libglvnd-1.0.0/lib"

export PATH="$HOME/.cargo/bin:$PATH"
if [ -e /home/skye/.nix-profile/etc/profile.d/nix.sh ]; then . /home/skye/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

#clear trash
rm -rf .*~ *.*~

# SOF Stuff
export PATH=~/work/sof/xtensa-byt-elf/bin/:$PATH
export PATH=~/work/sof/xtensa-hsw-elf/bin/:$PATH
export PATH=~/work/sof/xtensa-apl-elf/bin/:$PATH
export PATH=~/work/sof/xtensa-cnl-elf/bin/:$PATH
export PATH=~/work/sof/xtensa-imx-elf/bin/:$PATH
export LD_LIBRARY_PATH=~/work/sof/alsa-lib/src/.libs:$LD_LIBRARY_PATH
