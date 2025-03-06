all: program_1


#	program 1
program_1:	program_1.o vars.o vars.hpp libgreeter.a
	g++ program_1.o vars.o -L. -lgreeter -o program_1

program_1.o: program_1.cpp
	g++ -c program_1.cpp -o program_1.o

vars.o: vars.cpp
	g++ -c vars.cpp -o vars.o

# 	lib greeter
greeter.o: greeter.cpp greeter.hpp
	g++ -c greeter.cpp -o greeter.o

libgreeter.a: greeter.o
	ar rcs libgreeter.a greeter.o



.PHONY: clean
clean: 
	rm -f program_1 program_1.o vars.o greeter.o libgreeter.a
	clear

.PHONY: gitt
gitt: all clean
	git add .
	git commit -m 'gitt'
	git push
