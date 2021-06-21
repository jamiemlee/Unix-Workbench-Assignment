function num_files() {
	shopt -s nullglob
	local pattern=(*)
	local n_files=${#pattern[@]}
	echo "$n_files"
}

n_files=$(num_files)

flag=0

while [ $flag -eq 0 ]
do
	echo "How many files do you think are in the current directory?"

	read user_guess

	if [ $user_guess -lt $n_files ]
	then
		echo "Your guess was too low"
	elif [ $user_guess -gt $n_files ]
	then
		echo "Your guess was too high"
	elif [ $user_guess -eq $n_files  ]
	then
		echo "You guessed correctly!"
		flag=$(expr $flag + 1)
	fi
done