#include <stdio.h>
#include <stdlib.h>
#include "Point.h"


int main()
{

    Point point1 = Point_init3D(10,10,10);
    Point point2 = Point_init3D(20,20,20);
    Point point3 = Point_init3D(20,20,20);
    int equals = Point_equals(&point3 , &point2);
    printf("%d \n", equals);

    float distance = Point_distance(&point1,&point2);
    printf("%.6f", distance);
    return 0;
}
