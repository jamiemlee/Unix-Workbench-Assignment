all: README.md

README.md:
	echo "# Guessing Game Assignment" >> README.md
	echo "Run at: $(shell date)" >> README.md
	echo "Number of lines: $(shell wc -l guessinggame.sh)" >> README.md
