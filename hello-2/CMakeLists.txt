cmake_minimum_required( VERSION 2.6 )

project(hello-cmake)

add_executable(hello-output hello.c)

set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})

message( "cmake insall prefix = ${CMAKE_INSTALL_PREFIX}" )

install(TARGETS hello-output RUNTIME DESTINATION output)

