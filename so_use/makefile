# objects declare
objects =  libfunc.so test 

# first exe
libfunc.so:func.c
	gcc -g -rdynamic func.c -fPIC -shared -o libfunc.so
 
#second exe
test:main.c func.c
	gcc -g -rdynamic main.c -L. -lfunc -Wl,-rpath=. -o test

clean:
	-rm  ${objects} 
