cmake_minimum_required(VERSION 2.8)
file(GLOB SWAT_SRCS *.f *.f90)
project(swat Fortran)
add_executable(swat ${SWAT_SRCS})

set_source_files_properties(
  ${SWAT_SRCS}
  PROPERTIES COMPILE_FLAGS -ffree-line-length-none
             COMPILE_FLAGS -ffixed-line-length-none)

set(INSTALL_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../bin)
install(TARGETS swat RUNTIME DESTINATION ${INSTALL_DIR})

