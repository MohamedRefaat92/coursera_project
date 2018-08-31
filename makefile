all: readme.txt

readme.txt: guessinggame.sh
	echo "Guess the number of files" > readme.txt
	date >> readme.txt
	cat guessinggame.sh | wc -l >> readme.txt
clean:
	rm readme.txt
