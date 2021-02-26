#ifndef AR_GEOMETRY_MESH_H
#define AR_GEOMETRY_MESH_H

#include <ar_geometry/geometry.h>
#include <eigen3/Eigen/Eigen>

namespace ar_geometry {

class Mesh : public Geometry
{
public:
    using vertex_list   = std::vector<Eigen::Vector3d, Eigen::aligned_allocator<Eigen::Vector3d>>;
    using triangle_list = std::vector<Eigen::Vector3i, Eigen::aligned_allocator<Eigen::Vector3i>>;

    Mesh(vertex_list const&, triangle_list const&);
    double surface_area() const override;

private:
    vertex_list vertices;
    triangle_list triangles;
};

}  // namespace ar_geometry

#endif  // AR_GEOMETRY_MESH_H