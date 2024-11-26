all: main
clean: main main.o potenze.o
	rm -rf main main.o potenze.o
main: main.o potenze.o
	gcc -o main main.o potenze.o
main.o: main.c potenze.h
	gcc -c -o main.o main.c
potenze.o: potenze.c potenze.h
	gcc -c -o potenze.o potenze.c 
