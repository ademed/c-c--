CC = g++
CFLAGS = -std=c++17 -O3 -mavx2 -funroll-loops -fopenmp -fopt-info
CPP = test_sequence_algorithms.cpp 
OBJECT = test_sequence_algorithms.o 


main: $(OBJECT)
	$(CC) $(CFLAGS) $(OBJECT) -o main

test_sequence_algorithms.o: test_sequence_algorithms.s
	$(CC) $(CFLAGS) test_sequence_algorithms.s -c

test_sequence_algorithms.s: test_sequence_algorithms.cpp
	$(CC) $(CFLAGS) test_sequence_algorithms.cpp -S

test_mxcpl_type_traits.o: test_mxcpl_type_traits.cpp
	$(CC) $(CFLAGS) test_mxcpl_type_traits.cpp -c

run: 
	@echo ...Running.......
	./main
	@echo ...COMPLETED.

clean:
	rm *.o *.s main

