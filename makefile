CC=gcc
FLAG=-g


all:book book46 # 目录

book1:book1.c
 	$(CC) $(FLAG) -o book1 book1.c
 	# gcc -o book1 book1.c

 book46:book46.c _public.h
 	gcc -o book46 book46.c _public.c

 clean:
 	rm  -f  book1 book46