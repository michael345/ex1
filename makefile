all: Sroot MacSin

clean:
	-rm MacSin.o Sroot.o MacSin Sroot

MacSin: MacSin.o
	gcc  -o MacSin MacSin.o -lm -ansi -pedantic-errors -g

MacSin.o: MacSin.c
	gcc -ansi -pedantic-errors -c -Wall -g -lm MacSin.c

Sroot: Sroot.o
	gcc -o Sroot Sroot.o -lm -ansi -pedantic-errors -g

Sroot.o: Sroot.c
	gcc -ansi -pedantic-errors -c -Wall -g -lm Sroot.c