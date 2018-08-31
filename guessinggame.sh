nfiles=$( ls ~/project/ | wc -l )

function small_large {
	while  true
	do
		if [[ $guess -lt $nfiles ]]
		then 
			echo "your guess is smaller than the actual number"
			read_guess
		elif [[ $guess -eq $nfiles ]]
		then
			break
		else
			echo "your guess is larger than the  actual number"
			read_guess
		fi
	done
}

function read_guess {
	echo "Guess the number of files"
	read guess
	small_large $guess
}

read_guess
echo "correct!"
