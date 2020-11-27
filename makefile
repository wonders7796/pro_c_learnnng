CC=gcc
FLAG=-g
BRANCH := $(shell git rev-parse --abbrev-ref HEAD)
CUR_DIR := $(shell cd)


all:book book46 # 目录

book1:book1.c
 	$(CC) $(FLAG) -o book1 book1.c
 	# gcc -o book1 book1.c

 book46:book46.c _public.h
 	gcc -o book46 book46.c _public.c

 clean:
 	rm  -f  book1 book46
	
commit:
    git pull orgin $(BRANCH)
    git add -A 
    @echo "please type in commit comment:";\
    read comment;\
    git commit -m"$$comment";\