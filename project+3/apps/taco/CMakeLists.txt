cmake_minimum_required( VERSION 2.6 )

project(taco)

collect_all_src_directories( . source_file_dirs_list )

foreach(dir ${source_file_dirs_list})
    aux_source_directory( ${dir} source_files_list )
endforeach()

#aux_source_directory( src source_files_list )

collect_all_hdr_directories( . header_file_dirs_list )
include_directories( ${header_file_dirs_list} )

#include_directories(inc)

add_executable( ${PROJECT_NAME} ${source_files_list} )

add_definitions( -DFELICIA_AISATSU )
target_link_libraries( ${PROJECT_NAME} felicia )
#include_directories( ../../ulibs/felicia/inc )

add_definitions( -DJACK_AISATSU )
target_link_libraries( ${PROJECT_NAME} jack )
#include_directories( ../../ulibs/jack/inc )

collect_all_hdr_directories( ../../ulibs ulib_header_file_dirs_list )
include_directories( ${ulib_header_file_dirs_list} )

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION daemon)

