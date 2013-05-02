#include <stdio.h>

#include "taco.h"

#ifdef FELICIA_AISATSU
    #include "felicia.h"
#endif

#ifdef JACK_AISATSU
    #include "jack.h"
#endif

int main(int argc, char* argv[])
{
    printf("[%d] this is taco daemon\n", TACO_ID);

    taco_hello();
    taco_bye();
    taco_inline();

    #ifdef FELICIA_AISATSU
        felicia_hello();
        felicia_bye();
    #endif

    #ifdef JACK_AISATSU
        jack_hello();
        jack_bye();
    #endif

    printf("[%d] taco daemon is over\n", TACO_ID);

    return 0;
}
