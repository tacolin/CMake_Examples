#include <stdio.h>

#include "york.h"

void york_hello(void)
{
    printf("[%d] york hello\n", YORK_ID);
}

void york_bye(void)
{
    printf("[%d] york bye\n", YORK_ID);
}
