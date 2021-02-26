#include <ar_geometry/box.h>

namespace ar_geometry {

Box::Box(double width, double height, double depth)
    : width(width)
    , height(height)
    , depth(depth)
{
}

double Box::surface_area() const
{
    return 2.0 * width * height + 2.0 * height * depth + 2.0 * depth * width ;
}

}  // namespace ar_geometry
