#include<iostream>
#include<cstdlib>
#include<ctime>
#include "orthos.hpp"
 
 
int orthos::getRand(void)
{
    srand(time(NULL));
    return rand();
}

int orthos::version(void)
{
    return 1;
}