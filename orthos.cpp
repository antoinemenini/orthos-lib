#include<iostream>
#include<cstdlib>
#include <chrono>
#include "orthos.hpp"
 
 
int orthos::getRand(void)
{
	int seed = (int)(std::chrono::system_clock::now().time_since_epoch() / std::chrono::milliseconds(1));
    srand(seed);
    return rand();
}

int orthos::version(void)
{
    return 1;
}