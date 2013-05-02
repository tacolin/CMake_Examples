#include <linux/types.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>

#include "york.h"

MODULE_AUTHOR("tacolin");
MODULE_DESCRIPTION("YORK KERNEL MODULE");
MODULE_LICENSE("GPL");

static int __init york_init(void)
{
    info("[%d] this is york's daemon\n", YORK_ID);
    york_hello();

    return 0;
}

static void __exit york_uninit(void)
{
    york_bye();
    info("[%d] york daemon is over\n", YORK_ID);

    return;
}

module_init( york_init );
module_exit( york_uninit );
