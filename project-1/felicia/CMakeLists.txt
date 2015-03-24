cmake_minimum_required( VERSION 2.6 )

project( felicia )

aux_source_directory(src source_files_list)

include_directories(inc)

add_library(${PROJECT_NAME} SHARED ${source_files_list})

install(TARGETS ${PROJECT_NAME} LIBRARY DESTINATION shared_lib)

