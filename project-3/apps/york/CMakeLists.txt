cmake_minimum_required( VERSION 2.6 )

project(york)

collect_all_src_directories( . source_file_dirs_list )

message( "source file dirs list = ${source_file_dirs_list}" )

foreach(dir ${source_file_dirs_list})
    aux_source_directory( ${dir} source_files_list )
endforeach()

#aux_source_directory( src source_files_list )

collect_all_hdr_directories( . header_file_dirs_list )
include_directories( ${header_file_dirs_list} )

#include_directories(inc)

add_executable( ${PROJECT_NAME} ${source_files_list} )

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION "./")

