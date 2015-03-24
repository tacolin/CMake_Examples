cmake_minimum_required( VERSION 2.6 )

project(hello-cmake)

add_executable(hello-output hello-main.c hello-print.c)

include_directories(include)

set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})

install(TARGETS hello-output RUNTIME DESTINATION output)

