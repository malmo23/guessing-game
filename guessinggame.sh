#!/bin/bash

function ask_guess {
  echo "How many files are in the current directory?"
  read guess
}
num_files=$(ls -l | grep "^-" | wc -l)
ask_guess
while [[ $guess -ne $num_files ]]
do
  if [[ $guess -lt $num_files ]]
  then
    echo "Your guess is too low. Try again."
  else
    echo "Your guess is too high. Try again."
  fi
  ask_guess
done
echo "Congratulations! You guessed the correct number of files."


