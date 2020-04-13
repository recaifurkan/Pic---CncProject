#include "../Point.h"

#include "../application/Application.h"


void PointTestInit(){
    usart.writeLine("Point Test Starting");
    Point point1 = Point_init3D(10,10,10);
    Point point2 = Point_init3D(20,20,20);
    int equals = Point_equals(&point1 , &point2);
    usart.writeInt(equals,1);
    usart.writeLine("");
    float distance = Point_distance(&point1,&point2);
    usart.writeFloat(distance,5);    
}
