README.md: guessinggame.sh
	echo "#  qd-guessinggame: a bash script guessing game  " > README.md
	echo "make was executed on :  " >> README.md
	date >> README.md
	echo "<br/> the program guessinggame.sh contains the following number of lines :  " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
