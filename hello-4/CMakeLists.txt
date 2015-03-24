cmake_minimum_required( VERSION 2.6 )

project(hello-cmake)

aux_source_directory( src1 source_files_list1 )
aux_source_directory( src2 source_files_list2 )

message( "src1 = ${source_files_list1}")
message( "src2 = ${source_files_list2}")

add_executable( hello-output ${source_files_list1} ${source_files_list2} )
#add_executable( hello-output src1/main.c src1/hello-print.c src2/bye-print.c )

include_directories(inc1 inc2)

set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})

install(TARGETS hello-output RUNTIME DESTINATION output)

