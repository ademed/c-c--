CC = g++
CCFLAGS = -std=c++17 -g

 main: main.o
	$(CC) $(CCFLAGS) main.o -o main 

 main.o: main.cpp
	$(CC) $(CCFLAGS) main.cpp -c  
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