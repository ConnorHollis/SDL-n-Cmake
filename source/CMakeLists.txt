file(GLOB_RECURSE PROJECT_FILES CONFIGURE_DEPENDS *.h *.cpp)

add_executable( SDLnCMAKE ${PROJECT_FILES} )

add_dependencies( SDLnCMAKE SDL2 )

target_link_libraries( SDLnCMAKE PUBLIC SDL2main SDL2 )

# Windows specific settings
if(WIN32)
  target_compile_options( SDLnCMAKE PRIVATE "/W4" )

  # IDEs should put the files in a nice place
  source_group( TREE "${PROJECT_SOURCE_DIR}/source" PREFIX "" FILES ${PROJECT_FILES})

  # Set working dir for VS
  set_property( TARGET SDLnCMAKE PROPERTY VS_DEBUGGER_WORKING_DIRECTORY ${PROJECT_ROOT_DIR} )
  
  add_custom_command( TARGET SDLnCMAKE POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different
        $<TARGET_FILE:SDL2>
        $<TARGET_FILE_DIR:SDLnCMAKE> )
endif()
