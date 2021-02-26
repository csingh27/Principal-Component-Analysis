#include <ar_geometry/sphere.h>
#include <cmath>

namespace ar_geometry {

Sphere::Sphere(double radius)
    : radius(radius)
{
}

double Sphere::surface_area() const
{
    return 4.0 * M_PI * radius * radius;
}

}  // namespace ar_geometry
