#include "Point.h"
#include <stdio.h>


Point Point_init3D(float x, float y, float z) {
    Point point;
    point.x = x;
    point.y = y;
    point.z = z;
    return point;
}

Point Point_init2D( float x, float y){
    Point point;
    point.x = x;
    point.y = y;
    point.z = 0;
    return point;
    
}

int Point_equals(Point * firstPoint, Point * secondPoint) {
    return firstPoint->x == secondPoint -> x && firstPoint->y == secondPoint -> y && firstPoint->z == secondPoint ->z;
}
float Point_distance(Point * firstPoint , Point * secondPoint){
    float dis = sqrt(pow(secondPoint->x - firstPoint->x, 2) + pow(secondPoint->y - firstPoint->y, 2) + pow(secondPoint->z - firstPoint->z, 2) * 1.0);
    return dis;
}

char* Point_toString(Point * point){
    char ret[40];
    sprintf(ret,"Point:{x:%.3f,y:%.3f,z:%.3f}",
            point->x,point->y,point->z
            );
    return ret;
}