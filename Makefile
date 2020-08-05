# Variables
Date:=$(shell date '+%a, %d %b %Y, %T (%Z)')
Lines_Count:=$(shell grep -c ^ guessinggame.sh)

# Targets
all: README.md

README.md: guessinggame.sh
	echo -n "# Guessing game: " > README.md
	echo "A unix workbench course assignment" >> README.md
	echo "## Make date" >> README.md
	echo "### $(Date)" >> README.md
	echo "" >> README.md
	echo "---" >> README.md
	echo "## Number of lines in guessinggame.sh" >> README.md
	echo "### $(Lines_Count)" >> README.md
	echo "" >> README.md
	echo -n "---" >> README.md


.PHONY: clean
clean:
	rm README.md
