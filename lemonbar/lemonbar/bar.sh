#!/usr/bin/env zsh

# Define the clock
Clock() {
        DATETIME=$(date "+%a %b %d, %r %Z")

        echo -n "$DATETIME"
}

#Define the battery
Battery() {
        BATPERC=$(acpi | cut -d"," -f2)
        echo "$BATPERC"
}

while xset -q &> /dev/null; do
	echo "%{r}%{F#FFFFFF} <network: $(iwgetid -s wlan0)> <time: $(Clock)> <battery:$(Battery)>  "
	sleep 1
done
