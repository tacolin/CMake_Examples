cmake_minimum_required( VERSION 2.6 )

set( module_name "york" )
set( module_file "${module_name}.ko" )

collect_all_hdr_directories( "${G_ROOT_DIR}/modules" hdr_files_dir_list )
include_directories( ${hdr_files_dir_list} )

collect_all_src_directories( . src_files_dir_list )
foreach( src_dir ${src_files_dir_list} )
    aux_source_directory( ${src_dir} src_files_list )
endforeach()

set( output_dir ${CMAKE_CURRENT_BINARY_DIR} )

generate_kbuild( ${module_name} "${src_files_list}" "${hdr_files_dir_list}" ${output_dir} ${CMAKE_CURRENT_SOURCE_DIR} )

set( kbuild_cmd ${CMAKE_MAKE_PROGRAM} -C ${G_LINUX_KERNEL_DIRECTORY} ARCH=${G_LINUX_KERNEL_ARCH} M=${output_dir} modules )

#generate_symbolic_links( "${src_files_list}" "${output_dir}" )

add_custom_command( OUTPUT  ${output_dir}/${module_file} 
                    COMMAND ${kbuild_cmd}
                    WORKING_DIRECTORY ${output_dir} 
                    DEPENDS ${src_files_list} ${output_dir}/Kbuild VERBATIM )

add_custom_target( ${module_name}
                   ALL 
                   DEPENDS ${output_dir}/${module_file} )

#add_custom_target( "${output_dir}/%.o: ${CMAKE_CURRENT_SOURCE_DIR}/%.c" "$(call cmd,force_checksrc)" COMMAND "$(call if_changed_rule,cc_o_c)" )

install( FILES ${output_dir}/${module_file}
         DESTINATION "module" )
