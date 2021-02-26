#include <ar_geometry/sphere.h>
#include <ar_geometry/box.h>
#include <ar_geometry/mesh.h>
#include <ar_geometry/capsule.h>
#include <gtest/gtest.h>
#include <list>
#include <memory>
#include <cmath>

using namespace ar_geometry;

std::unique_ptr<Mesh> GenerateBoxMesh(double width, double height, double depth)
{
    Mesh::vertex_list const box_vertices{
        {-width * 0.5, -height * 0.5, -depth * 0.5},
        {-width * 0.5, -height * 0.5, depth * 0.5},
        {-width * 0.5, height * 0.5, -depth * 0.5},
        {-width * 0.5, height * 0.5, depth * 0.5},
        {width * 0.5, -height * 0.5, -depth * 0.5},
        {width * 0.5, -height * 0.5, depth * 0.5},
        {width * 0.5, height * 0.5, -depth * 0.5},
        {width * 0.5, height * 0.5, depth * 0.5},
    };

    Mesh::triangle_list const box_triangles{{0, 1, 2},
                                            {1, 3, 2},
                                            {0, 4, 1},
                                            {1, 4, 5},
                                            {2, 3, 6},
                                            {3, 7, 6},
                                            {4, 6, 5},
                                            {5, 6, 7},
                                            {1, 5, 7},
                                            {1, 7, 3},
                                            {0, 4, 6},
                                            {0, 6, 2}};

    return std::make_unique<Mesh>(box_vertices, box_triangles);
}

TEST(all_geometries, surface_area)
{
    std::list<std::pair<std::unique_ptr<Geometry>, double>> shape_areas;
    shape_areas.push_back({std::make_unique<Sphere>(1.0), 4.0 * M_PI});
    shape_areas.push_back({std::make_unique<Box>(1.0, 1.0, 1.0), 6.0});
    shape_areas.push_back({GenerateBoxMesh(1.0, 1.0, 1.0), 6.0});
    shape_areas.push_back({std::make_unique<Capsule>(0.5, 1.0), 2.0 * M_PI});

    for (auto const& shape_area : shape_areas) {
        EXPECT_NEAR(shape_area.second, shape_area.first->surface_area(), 0.001);
    }
}

int main(int argc, char** argv)
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
