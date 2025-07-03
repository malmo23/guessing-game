README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "\n" >> README.md
	@echo "**Date and Time of Make Execution:** $(shell date)" >> README.md
	@echo "\n" >> README.md
	@echo "**Number of lines in guessinggame.sh:** $(shell wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
