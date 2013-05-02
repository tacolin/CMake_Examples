#include <linux/types.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>

#include "york.h"

void york_hello(void)
{
    info("[%d] york hello\n", YORK_ID);
}

void york_bye(void)
{
    info("[%d] york bye\n", YORK_ID);
}
