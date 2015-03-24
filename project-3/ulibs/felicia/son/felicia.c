#include <stdio.h>

#include "felicia.h"

void felicia_hello(void)
{
    printf("[%d] felicia hello\n", FELICIA_ID);
}

void felicia_bye(void)
{
    printf("[%d] felicia bye\n", FELICIA_ID);
}
