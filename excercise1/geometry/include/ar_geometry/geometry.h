#ifndef AR_GEOMETRY_GEOMETRY_H
#define AR_GEOMETRY_GEOMETRY_H

namespace ar_geometry {

class Geometry
{
public:
    virtual double surface_area() const = 0;
};

}  // namespace ar_geometry

#endif  // GEOMETRY_H
