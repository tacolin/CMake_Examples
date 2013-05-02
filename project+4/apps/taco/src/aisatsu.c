#include <stdio.h>

#include "taco.h"

void taco_hello(void)
{
    printf("[%d] taco hello\n", TACO_ID);
}

void taco_bye(void)
{
    printf("[%d] taco bye\n", TACO_ID);
}
