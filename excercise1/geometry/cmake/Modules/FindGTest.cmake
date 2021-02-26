find_path(
    GTEST_SRC
    NAMES
        src/gtest.cc
    HINTS
        /usr/src/gtest
)

set(GTest_FOUND FALSE)
set(GTEST_DST "${CMAKE_BINARY_DIR}")
set(GTEST_PRJ "${GTEST_DST}/gtest")
set(GTEST_BUILD "${GTEST_PRJ}/build")
set(GTEST_INSTALL "${GTEST_PRJ}/install")

if (NOT TARGET GTest::gtest)
    if (NOT GTEST_SRC STREQUAL "GTEST_SRC-NOTFOUND")
        message(STATUS "Found gtest sources at ${GTEST_SRC}.")
        message(STATUS "Building gtest here.")
        # message(STATUS "GTEST_PRJ: ${GTEST_PRJ}")
        # message(STATUS "GTEST_BUILD: ${GTEST_BUILD}")
        # message(STATUS "GTEST_INSTALL: ${GTEST_INSTALL}")

        execute_process(
            COMMAND
                mkdir -p ${GTEST_DST}
        )
        execute_process(
            COMMAND
                cp -r ${GTEST_SRC}/ ${GTEST_DST}
        )
        execute_process(
            COMMAND
                mkdir -p ${GTEST_BUILD}
        )
        execute_process(
            COMMAND
                ${CMAKE_COMMAND} -G ${CMAKE_GENERATOR} -DCMAKE_INSTALL_PREFIX=${GTEST_INSTALL} ..
            WORKING_DIRECTORY
                ${GTEST_BUILD}
            OUTPUT_QUIET
        )
        execute_process(
            COMMAND
                ${CMAKE_COMMAND} --build .
            WORKING_DIRECTORY
                ${GTEST_BUILD}
            OUTPUT_QUIET
        )
        execute_process(
            COMMAND
                make install
            WORKING_DIRECTORY
                ${GTEST_BUILD}
            OUTPUT_QUIET
        )

        # Prevent GoogleTest from overriding our compiler/linker options
        # when building with Visual Studio
        set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

        if (NOT TARGET GTest::gtest)
            add_library(GTest::gtest STATIC IMPORTED GLOBAL)
            set_target_properties(GTest::gtest PROPERTIES
                INTERFACE_INCLUDE_DIRECTORIES ${GTEST_INSTALL}/include
                IMPORTED_LOCATION ${GTEST_INSTALL}/lib/libgtest.a
                INTERFACE_LINK_LIBRARIES pthread
            )
        endif()

        if (NOT TARGET GTest::gtest_main)
            add_library(GTest::gtest_main STATIC IMPORTED GLOBAL)
            set_target_properties(GTest::gtest_main PROPERTIES
                INTERFACE_INCLUDE_DIRECTORIES ${GTEST_INSTALL}/include
                IMPORTED_LOCATION ${GTEST_INSTALL}/lib/libgtest_main.a
                INTERFACE_LINK_LIBRARIES pthread
            )
        endif()

        set(GTest_FOUND TRUE)
    endif()
else()
    set(GTest_FOUND TRUE)
endif()
