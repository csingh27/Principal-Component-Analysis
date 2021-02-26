find_package(GTest REQUIRED)

add_executable(test_geometries
    test_geometries.cpp
)

target_link_libraries(test_geometries
    PUBLIC
    ar_geometry
    GTest::gtest
)

add_test(
    NAME test_geometries
    COMMAND test_geometries
)