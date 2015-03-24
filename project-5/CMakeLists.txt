cmake_minimum_required( VERSION 2.6 )

include( rules/variables.cmake )
include( rules/functions.cmake )
include( rules/gcc.cmake )

add_subdirectory( apps )
add_subdirectory( ulibs )
add_subdirectory( modules )
