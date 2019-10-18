#!/bin/bash

# Define the clock
Clock() {
        DATETIME=$(date "+%a %b %d, %r %Z")

        echo -n "$DATETIME"
}

Network() {
	NET="$(iwgetid -s wlo1)"
	if [[ ! -z $NET ]]; then
		echo "$NET"
	else
		echo "%{F#FF0000}none%{F#FFFFFF}"
	fi
}

#Define the battery
Battery() {
        BATPERC=$(acpi --battery | cut -d, -f2)
        echo "$BATPERC"
}

Volume() {
	VOL=$(ponymix get-volume)
	ponymix is-muted
	if [[ $? == 0 ]]; then
		ISMUTE=" %{F#FF0000}[MUTE]%{F#FFFFFF}"
	fi
	echo "$VOL$ISMUTE"
}

Window() {
	FW="$(pfw)"
	echo $(wname $FW)
}

while xset q &> /dev/null; do
	echo "%{B#000000}%{l} [ $(Window) ] %{r}<volume: $(Volume)> <brightness: $(xbacklight -get)> <network: $(Network)> <time: $(Clock)> <battery:$(Battery)>  "
	sleep 1
done
