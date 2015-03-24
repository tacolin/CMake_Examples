############################################################################
############################################################################

macro( collect_all_src_directories input output )
    file(GLOB_RECURSE src_files_list "${input}/*.c" "${input}/*.C" 
                                     "${input}/*.cpp" "${input}/*.CPP")
    set(src_dirs_list "")

    foreach( src_file_path ${src_files_list} )
        get_filename_component( src_file_path ${src_file_path} PATH )
        set( src_dirs_list ${src_dirs_list} ${src_file_path} )
    endforeach()

    list(REMOVE_DUPLICATES src_dirs_list)
    set(${output} ${src_dirs_list})
endmacro()

############################################################################
############################################################################

macro( collect_all_hdr_directories input output )
    file(GLOB_RECURSE hdr_files_list "${input}/*.h" "${input}*.H" 
                                     "${input}*.hpp" "${input}*.HPP")
    set(hdr_dirs_list "")
 
    foreach( hdr_file_path ${hdr_files_list} )
        get_filename_component( hdr_file_path ${hdr_file_path} PATH )
        set( hdr_dirs_list ${hdr_dirs_list} ${hdr_file_path} )
    endforeach( )

    list(REMOVE_DUPLICATES hdr_dirs_list)
    set(${output} ${hdr_dirs_list})
endmacro()


############################################################################
############################################################################
