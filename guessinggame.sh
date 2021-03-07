#!/usr/bin/env bash
#File: guessinggame.sh

## find  the number of files present in the current folder to a variable
numberoffile=$(ls | wc -l)
### assign default values to the variables
## assign a flase value to the ansewer before entering the loop containing
guessednumber=0
## assign starting the count at 0
ntrials=0

function hello {
echo "You successfully launched the guessingname.sh program!"
}

hello

echo "Guess how many folders are present in the current folder? Enter a positive number:"

while [[ $guessednumber -ne $numberoffile ]]
do
    read answer
    let ntrials=$ntrials+1
    let guessednumber=$answer
    if [[ $guessednumber -lt $numberoffile ]]
    then
        echo "The number you picked is too small, pick a larger number"
    else [[ $guessednumber -gt $numberoffile ]]
        echo "The number you picked is too large, pick a smaller number"
    fi
done

echo "Congratulation, you picked the correct number: there are actually $numberoffile files in the current folder and you succeeded after $ntrials trial(s)."
