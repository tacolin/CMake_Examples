cmake_minimum_required( VERSION 2.6 )

project(york)

aux_source_directory( src source_files_list )

include_directories(inc)

add_definitions( -lm )

add_executable( ${PROJECT_NAME} ${source_files_list} )

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION "./")

