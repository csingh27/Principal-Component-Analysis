cmake_minimum_required(VERSION 3.10.2)
project(geometry_exercise VERSION 1.0.0)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED On)


set(BUILD_PEDANTIC_DOC "Build the project with -Wall, -Wextra and -Wpedantic.")
option(BUILD_PEDANTIC ${BUILD_PEDANTIC_DOC} Off)

if (BUILD_PEDANTIC)
    # Global compile options because I don't want to add it to all targets
    # and if new targets are added, adding these might be forgotten.
    add_compile_options(-Wall -Wpedantic -Wextra)
endif()

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake/Modules)

include(GNUInstallDirs)

add_library(ar_geometry SHARED
    src/sphere.cpp
    src/box.cpp
    src/mesh.cpp
    src/capsule.cpp
)

target_include_directories(ar_geometry
    PUBLIC
    $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

include(CTest)

if (BUILD_TESTING)
    add_subdirectory(tests)
endif()
