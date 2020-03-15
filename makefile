all:README
	
README:
	touch README.md
	echo "# Project guess file" > README.md
	echo "\n" >> README.md
	echo -n "date: " >> README.md
	date >> README.md
	echo -n "lines of code: " >> README.md
	wc -l guessinggame.sh >> README.md
