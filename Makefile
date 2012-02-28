Irrelevant-Name : main.o dictionary.o linkedlist.o
	gcc -o Irrelevant-Name -O -Wall -std=c99 main.o dictionary.o linkedlist.o

main.o : main.c dictionary.h
	gcc -O -c -Wall -std=c99 main.c

dictionary.o : dictionary.c dictionary.h linkedlist.h
	gcc -O -c -Wall -std=c99 dictionary.c

linkedlist.o : linkedlist.c linkedlist.h
	gcc -O -c -Wall -std=c99 linkedlist.c

