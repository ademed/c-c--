CC = g++
CCFLAGS = -std=c++17 -O3 -mavx -fopenmp

 main: main.o
	$(CC) $(CCFLAGS) main.o -o main 

 main.o: main.s
	$(CC) $(CCFLAGS) main.s -c  

main.s: main.cpp
	$(CC) $(CCFLAGS) main.cpp -S 

clean:
	-rm *.o main *.s

# CC = gcc
# CCFLAGS = -std=c99

#  main: main.o
# 	$(CC) $(CCFLAGS) -o main main.o  

#  main.o: main.s
# 	$(CC) $(CCFLAGS) -c main.s  

# main.s: main.c
# 	$(CC) $(CCFLAGS) -S main.c 

# clean:
# 	rm -rf main