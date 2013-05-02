##################################################################
#  global variables
##################################################################

set( G_ROOT_DIR ${CMAKE_CURRENT_SOURCE_DIR} )

##################################################################
#  global compile flags
##################################################################

add_definitions(-W)
add_definitions(-Wall)
add_definitions(-Wno-unused-parameter)
add_definitions(-Wno-sign-compare)
#add_definitions(-Wno-missing-field-initializers)
#add_definitions(-Wno-override-init)


##################################################################
#  install path and relative link path
##################################################################

set( CMAKE_INSTALL_PREFIX "${G_ROOT_DIR}/image" )
set( CMAKE_INSTALL_RPATH  "shared_lib" )
