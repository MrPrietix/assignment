#!/env/usr/bin bash
# guessinggame.sh

# Variable used to know the number of files in the directory
num_file=0

# Variable used to know the number of files introduced by the user
guess_num=0

# Function used to check if the user has guessed the right number
function guessing_tip {
        if [[ $guess_num -gt $num_file ]]
	then
		echo "The number guessed is bigger than the number of files in the directory."
		echo "Guess again."
		read guess_num
		handling_mistakes
	elif [[ $guess_num -lt $num_file ]]
	then
	   	echo "The number guessed is smaller than the number of files in the directory."
                echo "Guess again."
		read guess_num
		handling_mistakes
	fi
}

handling_mistakes () {
	while [[ $guess_num =~ .+[0-9].+ ]] || [[ $guess_num =~ [0-9].+ ]] || [[ $guess_num =~ .+[0-9] ]] || [[ ! $guess_num =~ [0-9] ]]
	do
        	echo "Introduce just the number with no additional signs"
        	read guess_num
	done
}

# For used to count the number of files
for i in $(ls -Fa | egrep -v "/")
do
	num_file=$(expr $num_file + 1)
done

echo -e "How many files are in the current directory ?"
read guess_num
handling_mistakes

# While used to repeat the loop until the user will answer correctly
while [[ $guess_num -ne $num_file ]]
do
	guessing_tip
done

if [[ $guess_num -eq $num_file ]]
then
	echo "Congratulations, you have guessed well."
fi


