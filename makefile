CC=gcc
FLAG=-g
BRANCH := $(shell git rev-parse --abbrev-ref HEAD)
CUR_DIR := $(shell cd)

commit:
	git pull origin $(BRANCH)
	git add -A 
	@echo "please type in commit comment:";\
	read comment;\
	git commit -m"$$comment";\

push:
	git push origin $(BRANCH)

reset:
	git reset --soft HEAD^