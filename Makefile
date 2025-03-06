all: program_1

program_1:	program_1.o vars.o vars.hpp
	g++ program_1.o vars.o vars.hpp -o program_1

program_1.o: program_1.cpp
	g++ -c program_1.cpp -o program_1.o

vars.o: vars.cpp
	g++ -c vars.cpp -o vars.o



.PHONY: clean
clean: 
	rm -f program_1 program_1.o vars.o
	clear

.PHONY: gitt
gitt: all clean
	git add .
	git commit -m 'gitt'
	git push
	