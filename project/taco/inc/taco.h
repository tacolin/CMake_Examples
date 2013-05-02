#ifndef _TACO_H_
#define _TACO_H_

//#define TACO_ID 950153

enum
{
    TACO_ID = 123456
};

static inline void taco_inline(void)
{
    printf("inline 999\n");
}

void taco_hello(void);
void taco_bye(void);

#endif 
