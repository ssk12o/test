#include<iostream>
#include "vars.hpp"

int main(){
    print_vars();
    inc_vars();
    print_vars();
    std::cout << "global extern z palca: " << global_extern;   
}