README.md:
	# Project title
	echo "# Project title: Bash, Make, Git, and GitHub - Playing the guessing game" > README.md
	echo " " >> README.md
	# Insert date/time
	echo "- Make file was run at $(shell date)" >> README.md 
	echo " " >> README.md
	# Number of code lines
	echo "- The file guessinggame.sh contains $(shell wc -l guessinggame.sh | egrep -o "[0-9]+") lines of code" >> README.md

clean:
	rm README.md