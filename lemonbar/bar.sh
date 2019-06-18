#!/usr/bin/bash

#colors
colors[0]="FFFFFF"
colors[1]="00DDFF"
colors[2]="FF00AA"
COLOR="${colors[$(( ( RANDOM % 3 ) ))]}"

# Define the clock
Clock() {
        DATETIME=$(date "+%a %b %d, %T")

        echo -n "$DATETIME"
}

#Define the battery
Battery() {
        BATPERC=$(acpi --battery | cut -d, -f2)
        echo "$BATPERC"
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
while :; do
	if [[ xset q &> /dev/null ]]; then
		echo "%{r}" "%{F#$COLOR}" "color: $COLOR || network: $(Network) || time: $(Clock) || battery:$(Battery)% "
		sleep 1
	else
		break
	fi
done
