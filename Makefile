.PHONY: all test clean

OBJECTS = main.o dictionary.o linkedlist.o
GCC_FLAGS = -O -c -Wall -std=c99
LD_FLAGS = -O -Wall -std=c99

all: Irrelevant-Name

test: GCC_FLAGS += -DUNIT_TESTS
test: all
	./Irrelevant-Name

clean:
	rm $(OBJECTS) Irrelevant-Name

Irrelevant-Name : $(OBJECTS)
	gcc -o $@ $(LD_FLAGS) $(OBJECTS)

main.o : main.c dictionary.h
	gcc $(GCC_FLAGS) $<

dictionary.o : dictionary.c dictionary.h linkedlist.h
	gcc $(GCC_FLAGS) $<

linkedlist.o : linkedlist.c linkedlist.h
	gcc $(GCC_FLAGS) $<

