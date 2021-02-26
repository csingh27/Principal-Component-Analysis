#include <ar_geometry/mesh.h>

namespace ar_geometry {

Mesh::Mesh(vertex_list const& vertices, triangle_list const& triangles)
    : vertices(vertices)
    , triangles(triangles)
{
}

double Mesh::surface_area() const
{
    double area = 0.0;
    for (auto const& triangle : triangles) {
        Eigen::Vector3d const a = vertices[triangle[1]] - vertices[triangle[0]];
        Eigen::Vector3d const b = vertices[triangle[2]] - vertices[triangle[0]];
        //area = ?
    }
    return area;
}

}  // namespace ar_geometry
