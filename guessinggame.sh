#!/env/usr/bin bash
# guessinggame.sh

# Variable used to know the number of files in the directory
num_files=0

# Variable used to know the number of files introduced by the user
guess_num=0

# Function used to check if the user has guessed the right number
function guessing_tip {
        if [[ $guess_num -gt $num_file ]]
	then
		echo "The number guessed is bigger than the number of files in the directory."
		echo "Guess again."
		read guess_num
	elif [[ $guess_num -lt $num_file ]]
	then
	   	echo "The number guessed is smaller than the number of files in the directory."
                echo "Guess again."
		read guess_num
	fi
}

# For used to count the number of files
for i in $(ls)
do
	num_files=$(expr $num_files + 1)
done

echo -e "How many files are in the current directory ?"
read guess_num

# While used to repeat the loop until the user will answer correctly
while [[ $guess_num -ne $num_files ]]
do
	guessing_tip
done

echo "Congratulations, you have guessed well."



