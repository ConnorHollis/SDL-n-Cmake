cmake_minimum_required(VERSION 3.21)

project(SDLnCMAKE   VERSION 0.1.0
                   	DESCRIPTION "SDL N' CMAKE"
                   	LANGUAGES CXX)

set(CMAKE_MODULE_PATH ${CMAKE_HOME_DIRECTORY}/cmake/modules ${CMAKE_MODULE_PATH})

# Only do these if this is the main project, and not if it is included through add_subdirectory
if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
  # Optionally set things like CMAKE_CXX_STANDARD, CMAKE_POSITION_INDEPENDENT_CODE here

  # Let's ensure -std=c++xx instead of -std=g++xx
  set(CMAKE_CXX_EXTENSIONS OFF)

  # Let's nicely support folders in IDEs
  set_property(GLOBAL PROPERTY USE_FOLDERS ON)

  # Directories
  set(PROJECT_ROOT_DIR        ${CMAKE_HOME_DIRECTORY})
  set(PROJECT_EXTERNALS_DIR   ${CMAKE_HOME_DIRECTORY}/external)
  set(PROJECT_BIN_DIR         ${CMAKE_HOME_DIRECTORY}/bin)
  set(PROJECT_WORKING_DIR     ${CMAKE_HOME_DIRECTORY})

  # Lib and exe output paths
  set( EXECUTABLE_OUTPUT_PATH ${PROJECT_BIN_DIR} )
  set( BINARY_OUTPUT_PATH ${PROJECT_BIN_DIR} )

  # Externals
  include(cmake/externals.txt)
endif()

add_subdirectory(source)