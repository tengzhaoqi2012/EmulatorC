main:   main.o calc.o 
	@echo '####开始链接.o文件'
	gcc -o main main.o calc.o 
calc.o: calc.h calc.c
	@echo '####开始生成calc.o文件'
	gcc -c calc.c
main.o: main.c calc.h calc.c
	@echo '####开始生成main.o文件'
	gcc -c main.c
clean:	
	@echo '####开始删除所有.o文件'	
	rm -rf *.o
