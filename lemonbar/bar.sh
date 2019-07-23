#!/usr/bin/bash

#colors
COLOR="#FFFFFF"

# Define the clock
Clock() {
        DATETIME=$(date "+%a %b %d, %r %Z")

        echo -n "$DATETIME"
}

#Define the battery
Battery() {
        RAWNUM=$(acpi --battery | cut -d, -f2)
#	IFS='' read -ra SPLIT <<< "$BATPERC"
#	for i in "${SPLIT[$((SPLIT[#]-1))]}"; do
#       	RAWNUM=$RAWNUMB$i
#	done

	if [[ $RAWNUM -lt 20 ]]; then
		RAWNUM="%{F#FF0000}$RAWNUM"
	fi
        echo "$RAWNUM"
}

Network() {
	NET="$(iwgetid -s wlo1)"
	if [[ ! -z $NET ]]; then
		echo "$NET"
	else
		echo "none"
	fi
}

# Print the percentage
# Print the clock
while xset q &> /dev/null; do
	echo "%{r}%{F#$COLOR} <color: $COLOR> <volume: $(ponymix get-volume)> <network: $(Network)> <time: $(Clock)> <battery:$(Battery)>"
	sleep 1
done
