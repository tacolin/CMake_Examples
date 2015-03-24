#ifndef _YORK_H_
#define _YORK_H_

#define YORK_ID 980409

#define info(a, b...) printk(KERN_EMERG a, ##b)

void york_hello(void);
void york_bye(void);

#endif //_YORK_H_
