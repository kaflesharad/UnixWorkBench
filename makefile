all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "#The Guessing Game" > README.md
	echo "###$(shell date)" >> README.md
	echo "##Number of lines: $(shell cat guessinggame.sh | wc -l)" >> README.md 
