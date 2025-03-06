COMPILER=g++
all: program_1

#	program 1
program_1:	program_1.o vars.o vars.hpp libgreeter.a
	${COMPILER} program_1.o vars.o -L. -lgreeter -o program_1

program_1.o: program_1.cpp
	${COMPILER} -c program_1.cpp -o program_1.o

vars.o: vars.cpp
	${COMPILER} -c vars.cpp -o vars.o

#lib greeter
greeter.o: greeter.cpp 
	${COMPILER} -c greeter.cpp -o greeter.o

libgreeter.a: greeter.o
	ar rcs libgreeter.a greeter.o


#	cleaning procedure
.PHONY: clean
clean: 
	rm -f program_1.o vars.o greeter.o libgreeter.a
	#clear

#	git update
.PHONY: gitt
gitt: all clean
	git add .
	git commit -m 'gitt'
	git push
