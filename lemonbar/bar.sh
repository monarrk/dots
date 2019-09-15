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
		echo "none"
	fi
}

#Define the battery
Battery() {
        BATPERC=$(acpi --battery | cut -d, -f2)
        echo "$BATPERC"
}

while xset q &> /dev/null; do
	echo "%{B#000000}%{r}<volume: $(ponymix get-volume)> <network: $(Network)> <time: $(Clock)> <battery:$(Battery)>  "
	sleep 1
done
