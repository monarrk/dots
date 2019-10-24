#!/usr/local/bin/zsh

# Define the clock
Clock() {
        DATETIME=$(date "+%a %b %d, %r %Z")

        echo -n "$DATETIME"
}

#Define the battery
Battery() {
        BATPERC=$(apm -l)
	if [ BATPERC -lt 15 ]; then
		BATPERC="%{F#FF0000}$BATPERC"
	fi

	if [ $(apm -a) -eq 1 ]; then
		COL="%{F#FFFF00}"
	fi
        echo "$COL$BATPERC%%%{F#FFFFFF}"
}

while xset q &> /dev/null; do
	echo "%{r}%{F#FFFFFF}<volume: $(volcli get)> <brightness: $(xbacklight -get)> <time: $(Clock)> <battery: $(Battery)>  "
	sleep 1
done
