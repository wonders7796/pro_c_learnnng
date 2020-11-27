CC=gcc
FLAG=-g
BRANCH := $(shell git rev-parse --abbrev-ref HEAD)
CUR_DIR := $(shell cd)

commit:
	git pull orgin $(BRANCH)
	git add -A 
	@echo "please type in commit comment:";\
	read comment;\
	git commit -m"$$comment";\