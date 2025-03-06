#include<iostream>

int global_extern = 0;
static int global_static = 0;

void inc_vars(){
    std::cout << "increasing... \n";
    global_extern++;
    global_static++;
}

void print_vars() {
    std::cout 
            << "global_extern: " << global_extern << '\n'
            << "global_static: " << global_static << std::endl;

}