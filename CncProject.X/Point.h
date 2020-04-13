/* 
 * File:   Point.h
 * Author: By Rfb
 *
 * Created on 12 Nisan 2020 Pazar, 23:31
 */

#ifndef POINT_H
#define	POINT_H

#ifdef	__cplusplus
extern "C" {
#endif
    
    #include<math.h>

    
    typedef struct Point{
        float x;
        float y;
        float z;
    }Point;
    Point Point_init3D( float x, float y, float z);
    Point Point_init2D( float x, float y);
    int Point_equals(Point * firstPoint , Point * secondPoint);
    float Point_distance(Point * firstPoint , Point * secondPoint);
    char* Point_toString(Point * point); 
    




#ifdef	__cplusplus
}
#endif

#endif	/* POINT_H */

