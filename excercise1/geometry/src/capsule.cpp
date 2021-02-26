#include <ar_geometry/capsule.h>
#include <cmath>

namespace ar_geometry {

Capsule::Capsule(double radius, double height)
    : radius(radius)
    , height(height)
{
}

double Capsule::surface_area() const
{
    return 2.0 * M_PI * radius * height + 4.0 * M_PI * radius * radius;
}

}  // namespace ar_geometry
