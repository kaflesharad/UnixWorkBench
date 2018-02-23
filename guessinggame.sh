#!/usr/bin/env bash
function count {
	echo $( ls -1 | wc -l)
}


echo "Guess the number of files in the directory: "
read c
num=1
while [[ c -ne $(count) ]]
do
	if [[ c -gt $(count) ]]
	then
		echo "Too High!"
	else
		echo "Too Low!"
	fi

	echo "Try again my Friend!"
	read c
	num=$(expr $num + 1)
done

echo "Congratulations you guess it right in $num guesses"
	

