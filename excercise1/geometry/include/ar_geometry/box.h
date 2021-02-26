#ifndef AR_GEOMETRY_BOX_H
#define AR_GEOMETRY_BOX_H

#include <ar_geometry/geometry.h>

namespace ar_geometry {

class Box : public Geometry
{
public:
    Box(double width, double height, double depth);
    double surface_area() const override;

private:
    double width;
    double height;
    double depth;
};

}  // namespace ar_geometry

#endif  // AR_GEOMETRY_BOX_H
