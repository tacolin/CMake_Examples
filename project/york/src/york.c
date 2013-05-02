#include <stdio.h>
#include <math.h>
#include "york.h"

int main(int argc, char* argv[])
{
    printf("[%d] this is york's daemon\n", YORK_ID);

    printf("[%d] 9 sqrt = %f\n", YORK_ID, sqrt(9) );

    york_hello();

    york_bye();

    printf("[%d] york daemon is over\n", YORK_ID);

    return 0;
}
