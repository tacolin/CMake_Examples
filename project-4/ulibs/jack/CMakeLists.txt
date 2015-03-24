cmake_minimum_required( VERSION 2.6 )

project(jack)

collect_all_src_directories( . source_file_dirs_list )

foreach(dir ${source_file_dirs_list})
    aux_source_directory( ${dir} source_files_list )
endforeach()

#aux_source_directory( src source_files_list )

collect_all_hdr_directories( . header_file_dirs_list )
include_directories( ${header_file_dirs_list} )

#include_directories( inc )

add_library( ${PROJECT_NAME} STATIC ${source_files_list} )

install(TARGETS ${PROJECT_NAME} ARCHIVE DESTINATION static_lib)

