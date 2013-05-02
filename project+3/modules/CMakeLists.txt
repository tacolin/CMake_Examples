cmake_minimum_required( VERSION 2.6 )

collect_all_hdr_directories( . kernel_hdr_dirs_list )
include_directories( ${kernel_hdr_dirs_list} )

collect_all_subdirectories( . sub_dir_list )

foreach( sub_dir ${sub_dir_list})
    add_subdirectory( ${sub_dir} )
endforeach()

