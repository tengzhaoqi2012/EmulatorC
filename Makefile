main:   main.o calc.o
	gcc -o main main.o calc.o
calc.o: calc.h calc.c
	gcc -c calc.c
main.o: main.c calc.h calc.c
	gcc -c main.c
clean:	
	rm -rf *.o
