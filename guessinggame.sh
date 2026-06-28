#!/usr/bin/env bash
# File: guessinggame.sh

# Function to count the number of files in the current directory
function count_files {
    echo $(ls -1 | wc -l)
}

function guessing_game {
    local correct_count=$(count_files)
    local guess=0
    
    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"
    
    while [[ $guess -ne $correct_count ]]
    do
        read -p "Enter your guess: " guess
        
        if [[ $guess -lt $correct_count ]]
        then
            echo "Your guess is too low. Try again!"
        elif [[ $guess -gt $correct_count ]]
        then
            echo "Your guess is too high. Try again!"
        else
            echo "Congratulations! You guessed correctly!"
            echo "There are $correct_count files in the current directory."
        fi
    done
}

guessing_game