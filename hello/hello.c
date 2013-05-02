#include <stdio.h>

extern void york_hello(void);

int main(int argc, char* argv[])
{
    printf("hello cmake\n");
    york_hello();
    return 0;
}
