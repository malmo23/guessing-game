# Define the target README.md, it depends on the script file
README.md: 	guessinggame.sh
		# Create or overwrite README.md with the project title
	echo "# Project Title: Guessing Game Assignment" > README.md
	# Add a blank line
	echo "" >> README.md
	# Add the date and time when make was run
	echo "**Makefile run date and time:** $(shell date)" >> README.md
	# Add another blank line
	echo "" >> README.md
	# Add the number of lines in the guessinggame.sh script
	echo "**Number of lines of code in guessinggame.sh:** $(shell wc -l < guessinggame.sh | xargs)" >> README.md

# Optional: A target to clean up the generated README.md
clean:
		rm -f README.md
