if [[ -z $1 ]]; then
	echo "Please enter some text to print out!"
	exit 0
fi

if [[ -z $2 ]]; then
	TIME=0.3
else
	TIME=$2
fi

for (( i=0; i<${#1}; i++ )); do
	printf "%s" "${1:$i:1}"
	sleep "$TIME"
done

echo " "
sleep 0.2
