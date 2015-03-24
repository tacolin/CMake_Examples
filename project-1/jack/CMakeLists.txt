cmake_minimum_required( VERSION 2.6 )

project(jack)

aux_source_directory( src source_files_list )

include_directories( inc )

add_library( ${PROJECT_NAME} STATIC ${source_files_list} )

install(TARGETS ${PROJECT_NAME} ARCHIVE DESTINATION static_lib)

