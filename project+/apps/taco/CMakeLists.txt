cmake_minimum_required( VERSION 2.6 )

project(taco)

aux_source_directory( src source_files_list )

include_directories(inc)

add_executable( ${PROJECT_NAME} ${source_files_list} )

add_definitions( -DFELICIA_AISATSU )
target_link_libraries( ${PROJECT_NAME} felicia )
include_directories( ../../ulibs/felicia/inc )

add_definitions( -DJACK_AISATSU )
target_link_libraries( ${PROJECT_NAME} jack )
include_directories( ../../ulibs/jack/inc )

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION daemon)

