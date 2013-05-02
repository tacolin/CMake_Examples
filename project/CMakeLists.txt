cmake_minimum_required( VERSION 2.6 )

set( CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_SOURCE_DIR}/z_output" )
set( CMAKE_INSTALL_RPATH  "../shared_lib")

#set( aaa "taco")
#message(" aaa = ${aaa}")
#set( aaa "york")
#message(" cmake install prefix = ${cmake_install_prefix}")

add_suBdirEctory( felicia )
add_subdirectory( jack )
add_subdirectory( taco )
add_subdirectory( york )

