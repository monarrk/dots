#!/usr/bin/env zsh

# Define the clock
Clock() {
        DATETIME=$(date "+%a %b %d, %r %Z")

        echo -n "$DATETIME"
}

#Define the battery
Battery() {
        BATPERC=$(apm -l)
	if [ $BATPERC -lt 15 ]; then
		BATPERC="%{F#FF0000}$BATPERC"
	fi

	if [ $(apm -a) -eq 1 ]; then
		COL="%{F#FFFF00}"
	fi
        echo "$COL$BATPERC%%%{F#FFFFFF}"
}

Mute() {
	if [ $(mixerctl outputs.master.mute | cut -d"=" -f2)=="on" ]; then
		echo " %{F#FF0000}[MUTE]%{F#FFFFFF}"
	fi
}

while xset -q &> /dev/null; do
	echo "%{r}<volume: $(volcli get)$(Mute)> <brightness: $(xbacklight -get)> <time: $(Clock)> <battery: $(Battery)>  "
	sleep 1
done
