program_1:	program_1.o vars.o vars.hpp
	g++ program_1.o vars.o vars.hpp -o program_1

program_1.o: program_1.cpp
	g++ -c program_1.cpp -o program_1.o

vars.o: vars.cpp
	g++ -c vars.cpp -o vars.o

clean: 
	rm -f program_1 program_1.o vars.o