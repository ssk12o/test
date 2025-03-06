#include <iostream>
#include "vars.hpp"
#include "greeter.hpp"

// czym jest marchewkowa breja??

int main()
{
    // dodatek nowych funkcjonalności
    std::cout << "dodatki nowe:\n";
    std::cout << greeter::english() << std::endl;
    std::cout << greeter::polish() << std::endl;
    std::cout << greeter::greek() << std::endl;

    // zmiana2
    std::cout << "\nbajo jajo" << std::endl;
    print_vars();
    inc_vars();
    print_vars();
    std::cout << "global extern z palca: " << global_extern << std::endl;
}