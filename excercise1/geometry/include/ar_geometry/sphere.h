#ifndef AR_GEOMETRY_CAPSULE_H
#define AR_GEOMETRY_CAPSULE_H

#include <ar_geometry/geometry.h>

namespace ar_geometry {

class Sphere : public Geometry
{
public:
    Sphere(double radius);
    double surface_area() const override;

private:
    double radius;
};

}  // namespace ar_geometry

#endif  // AR_GEOMETRY_CAPSULE_H
