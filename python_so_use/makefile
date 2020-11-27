objects = func.o func.so

func.o:func.c
	gcc -c func.c -o func.o

func.so:func.c
	gcc -g -rdynamic func.c -fPIC -shared -o func.so

clean:
	rm ${objects}