######################################################################
#  collect all source code files' directories
#  merge them to a list (output)
######################################################################

function( collect_all_src_directories input output )
    file(GLOB_RECURSE src_files_list "${input}/*.c" "${input}/*.C" 
                                     "${input}/*.cpp" "${input}/*.CPP")
    set( src_dirs_list "")

    foreach( src_file_path ${src_files_list} )
        get_filename_component( src_file_path ${src_file_path} PATH )
        set( src_dirs_list ${src_dirs_list} ${src_file_path} )   
    endforeach()
    
    list(REMOVE_DUPLICATES src_dirs_list)
    set(${output} ${src_dirs_list} PARENT_SCOPE)
endfunction()

                                                                                     
######################################################################
#  collect all header files' directories
#  merge them to a list (output)
######################################################################

function( collect_all_hdr_directories input output )
    file(GLOB_RECURSE hdr_files_list "${input}/*.h" "${input}*.H"  
                                     "${input}*.hpp" "${input}*.HPP")        
    set(hdr_dirs_list "")    
    
    foreach( hdr_file_path ${hdr_files_list} )    
        get_filename_component( hdr_file_path ${hdr_file_path} PATH )        
        set( hdr_dirs_list ${hdr_dirs_list} ${hdr_file_path} )        
    endforeach( )
    
    list(REMOVE_DUPLICATES hdr_dirs_list)    
    set(${output} ${hdr_dirs_list} PARENT_SCOPE)
endfunction()

######################################################################
#  collect all sub-directories
#  merge them to a list (output)
######################################################################

function( collect_all_subdirectories input output )
    set( members "" )
    set( subdirectory_list "" )
    file( GLOB members "${input}/*" )

    foreach( mem ${members} )
        if( IS_DIRECTORY ${mem} )
            set(sub_directory_list ${sub_directory_list} ${mem} )
        endif()
    endforeach()

    set( ${output} ${sub_directory_list} PARENT_SCOPE )
endfunction()

######################################################################
#  cp -rf src_dir dst_dir
#  but do not copy CMakeLists.txt
######################################################################

function( copy_directory src_dir dst_dir )
    file( REMOVE_RECURSE ${dst_dir} )
    file( MAKE_DIRECTORY ${dst_dir} )

    file( GLOB_RECURSE all_files_list 
          RELATIVE "${src_dir}" "${src_dir}/*" )

    foreach( file ${all_files_list} )
        set( file_path "${src_dir}/${file}" )
        if ( NOT IS_DIRECTORY ${file_path} )
            configure_file( ${file_path} "${dst_dir}/${file}" 
                            COPYONLY @ONLY )
        endif()
    endforeach()

    if( EXISTS "${dst_dir}/CMakeLists.txt" )
        file( REMOVE "${dst_dir}/CMakeLists.txt" )
    endif()
endfunction()

######################################################################
#  generate the Kbuild (kernel module make file)
######################################################################

function( generate_kbuild arg1 arg2 arg3 arg4 arg5)
    set( moduleName ${arg1} )
    set( srcFileList ${arg2} )
    set( hdrFileDirList ${arg3} )
    set( outputDir ${arg4} )
    set( srcDir ${arg5} )

    if( EXISTS "${outputDir}/Kbuild" )
        file( REMOVE "${outputDir}/Kbuild" )
    endif()
    
    file( WRITE  "${outputDir}/Kbuild" "OBJ_DIR = ${outputDir}\n")
    file( APPEND "${outputDir}/Kbuild" "SRC_DIR = ${srcDir}\n")
    
    file( APPEND "${outputDir}/Kbuild" "obj-m := ${moduleName}.o\n" )
    file( APPEND "${outputDir}/Kbuild" "\n" )
    file( APPEND "${outputDir}/Kbuild" "${moduleName}-objs :=\n" )

    foreach(srcFile ${srcFileList} )
        string( REPLACE ".c" ".o" srcFile ${srcFile} )
        get_filename_component( srcFile ${srcFile} NAME )

        file( APPEND "${outputDir}/Kbuild" "${moduleName}-objs += ${srcFile}\n" )
    endforeach()

    file( APPEND "${outputDir}/Kbuild" "\n" )

    foreach(hdrDir ${hdrFileDirList} )
        file( APPEND "${outputDir}/Kbuild" "EXTRA_CFLAGS += -I${hdrDir}\n" )
    endforeach()

    file( APPEND "${outputDir}/Kbuild" "\n" )

    foreach(srcFile ${srcFileList} )
        get_filename_component( srcFileName ${srcFile} NAME )
        string( REPLACE ".c" ".o" objFileName ${srcFileName} )
        
        file( APPEND "${outputDir}/Kbuild" "${outputDir}/${objFileName}: ${srcFile}\n" )
        
        file( APPEND "${outputDir}/Kbuild" "\t$(call cmd,force_checksrc)\n")
        
        file( APPEND "${outputDir}/Kbuild" "\t$(call if_changed_rule,cc_o_c)\n")
        
        file( APPEND "${outputDir}/Kbuild" "\n" )

    endforeach()

endfunction()

