#!/usr/bin/env bash

# Function to get the count of files (not directories) in the current directory
function get_file_count {
  # Counts non-hidden files in the current directory
  local count=$(find . -maxdepth 1 -type f | wc -l)
  echo $count
}

# Function to prompt the user for their guess
function prompt_guess {
  read -p "How many files are in the current directory? Enter your guess: " guess
  echo $guess
}

# --- Main Script Logic ---
actual_count=$(get_file_count)
user_guess=-1 # Initialize with a value guaranteed not to be the count

echo "--- Guessing Game --- "

# Loop until the user guesses correctly
while [[ $user_guess -ne $actual_count ]]; do
  user_guess=$(prompt_guess)

  # Input validation: Check if it's a non-negative integer
  if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a whole number."
    continue # Skip the rest of the loop and prompt again
  fi

  # Compare the guess with the actual count
  if [[ $user_guess -lt $actual_count ]]; then
    echo "Your guess is too low. Try again."
  elif [[ $user_guess -gt $actual_count ]]; then
    echo "Your guess is too high. Try again."
  fi
done

# Congratulate the user upon correct guess
echo "Congratulations! You guessed correctly. There are $actual_count files."
# --- End of Script ---
