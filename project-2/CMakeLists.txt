cmake_minimum_required( VERSION 2.6 )

set( CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_SOURCE_DIR}/output" )
set( CMAKE_INSTALL_RPATH  "./shared_lib")

add_subdirectory( apps )
add_subdirectory( ulibs )

