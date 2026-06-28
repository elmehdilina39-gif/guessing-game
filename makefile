README.md:
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "## Date and Time" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "## Number of Lines of Code" >> README.md
	echo "The file guessinggame.sh contains:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo "lines of code." >> README.md