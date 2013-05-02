cmake_minimum_required( VERSION 2.6 )

project(taco)

aux_source_directory( src source_files_list )

include_directories(inc)

add_executable( tacoExe ${source_files_list} )

add_definitions( -DFELICIA_AISATSU )
target_link_libraries( tacoExe felicia )
include_directories( ../felicia/inc )

add_definitions( -DJACK_AISATSU )
target_link_libraries( tacoExe jack )
include_directories( ../jack/inc )

install(TARGETS tacoExe RUNTIME DESTINATION daemon)

