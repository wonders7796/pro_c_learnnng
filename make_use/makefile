objects =  main.o func.o #应该叫变量的声明更合适

helloworld : ${objects} 
	#helloword 就是我们要生成的目标
	# main.o func.o是生成此目标的先决条件
	#shell命令，最前面的一定是一个tab键
	gcc -o helloworld ${objects} 
mian.o : mian.c head.h
	gcc -c main.c

func.o : func.c head.h
	gcc -c func.c

clean:
	-rm helloworld ${objects} 
