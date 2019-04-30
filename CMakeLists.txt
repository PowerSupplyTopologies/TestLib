cmake_minimum_required(VERSION 3.8)
project(TestLib VERSION 1.0.0 LANGUAGES CXX)


include(GNUInstallDirs)
set(INSTALL_CONFIGDIR ${CMAKE_INSTALL_LIBDIR}/cmake/TestLib)

include(CMakePackageConfigHelpers)
write_basic_package_version_file(
    ${CMAKE_CURRENT_BINARY_DIR}/TestLibConfigVersion.cmake
    VERSION ${PROJECT_VERSION}
    COMPATIBILITY AnyNewerVersion
)


configure_package_config_file(${CMAKE_CURRENT_LIST_DIR}/cmake/TestLibConfig.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/TestLibConfig.cmake
    INSTALL_DESTINATION ${INSTALL_CONFIGDIR}
)

install(FILES
    ${CMAKE_CURRENT_BINARY_DIR}/TestLibConfig.cmake
    ${CMAKE_CURRENT_BINARY_DIR}/TestLibConfigVersion.cmake
    DESTINATION ${INSTALL_CONFIGDIR}
)

add_subdirectory(TestLib.Base)
add_subdirectory(TestLib.Ext)
