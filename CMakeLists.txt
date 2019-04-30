cmake_minimum_required(VERSION 3.8)
project(TestLib VERSION 1.0.0 LANGUAGES CXX)

list(INSERT CMAKE_MODULE_PATH 0 ${CMAKE_SOURCE_DIR}/cmake)
include("${CMAKE_CURRENT_LIST_DIR}/cmake/TestLibConfig.cmake")

add_subdirectory(TestLib.Base)
add_subdirectory(TestLib.Ext)
