
execute_process( COMMAND uname -r
                 OUTPUT_VARIABLE linux_version
                 OUTPUT_STRIP_TRAILING_WHITESPACE)

set( G_LINUX_KERNEL_DIRECTORY "/lib/modules/${linux_version}/build" )

set( G_LINUX_KERNEL_ARCH      "i386" )

