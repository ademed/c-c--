#declare variable
CC = g++
CCFLAGS = -std=c++17 -O3 -mavx

 main: main.o
	$(CC) $(CCFLAGS) -o main main.o  

 main.o: main.s
	$(CC) $(CCFLAGS) -c main.s  

main.s: main.cpp
	$(CC) $(CCFLAGS) -S main.cpp 

clean:
	rm -rf main