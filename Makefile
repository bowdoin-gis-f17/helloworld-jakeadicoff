CC = g++ -O3
CFLAGS = -std=c++11 -Wall -Wno-sign-compare

hi : main.o 
	$(CC) -o $@ main.o 

main.o : main.cpp main.h
	$(CC) -c $(CFLAGS) main.cpp -o $@

clean:
	rm *.o
	rm hi