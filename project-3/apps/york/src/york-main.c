#include <stdio.h>

#include "york.h"

int main(int argc, char* argv[])
{
    printf("[%d] this is york's daemon\n", YORK_ID);

    york_hello();

    york_bye();

    printf("[%d] york daemon is over\n", YORK_ID);

    return 0;
}
