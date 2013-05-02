#include <stdio.h>

#include "jack.h"

void jack_hello(void)
{
    printf("[%d] jack hello\n", JACK_ID);
}

void jack_bye(void)
{
    printf("[%d] jack bye\n", JACK_ID);
}
