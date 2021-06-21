#declare variable
CC = g++
CCFLAGS = -O3 -std=c++17 -fopenmp -mavx 

main: main.o
	$(CC) $(CCFLAGS) -o main main.o  

main.o: main.cpp
	$(CC) -c main.cpp 

clean:
	rm -f *.o 