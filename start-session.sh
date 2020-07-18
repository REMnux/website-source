	#!/bin/bash

	printf "\033[0;32m Checking out & pulling submodule MASTER:\033[0m\n"

	git submodule update 
	git submodule foreach git checkout master 
	git submodule foreach git pull origin master
	git pull --recurse-submodule && git submodule update --recursive

	printf "\033[0;32m Now checking out & pulling parent MASTER:\033[0m\n"

	git checkout master
	git pull origin master

	printf "\033[0;32m Your status is:\033[0m\n"

	git status