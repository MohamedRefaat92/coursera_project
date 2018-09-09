all: README.md

README.md: guessinggame.sh
	echo "## Final Project" > README.md
	echo "date:">> README.md
	date >> README.md
	echo "Number of lines:"
	cat guessinggame.sh | wc -l >> README.md
clean:
	rm README.md
