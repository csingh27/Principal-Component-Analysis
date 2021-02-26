#ifndef AR_GEOMETRY_CAPSULE_H
#define AR_GEOMETRY_CAPSULE_H

#include <ar_geometry/geometry.h>

namespace ar_geometry {

class Capsule : public Geometry
{
public:
    Capsule(double radius, double height);
    double surface_area() const override;

private:
    double radius;
    double height;
};

}  // namespace ar_geometry

#endif  // AR_GEOMETRY_CAPSULE_H
