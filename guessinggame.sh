#!/env/usr/bin bash
# guessinggame.sh

echo -e "How many files are in the current directory ?"
read guess_numb

# Variable used to know the number of files in the directory
num_files=0

# For used to count the number of files
for i in $(ls)
do
	num_files=$(expr $num_files + 1)
done

echo $num_files
