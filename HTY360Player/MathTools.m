//
//  MathTools.m
//  HTY360Player
//
//  Created by fan on 16/1/20.
//  Copyright © 2016年 Hanton. All rights reserved.
//

#import "MathTools.h"

@interface MathTools ()
{

}
@end

@implementation MathTools


+ (GLKMatrix4)getGLKMatrix4WithCRoll:(CGFloat)cRoll cYaw:(CGFloat)cYaw cPitch:(CGFloat)cPitch
{
    float cx = cos(cPitch/2);
    float sx = sin(cPitch/2);
    float cy = cos(cRoll/2);
    float sy = sin(cRoll/2);
    float cz = cos(cYaw/2);
    float sz = sin(cYaw/2);
    
    CGFloat w = cx*cy*cz + sx*sy*sz;
    CGFloat x = sx*cy*cz - cx*sy*sz;
    CGFloat y = cx*sy*cz + sx*cy*sz;
    CGFloat z = cx*cy*sz - sx*sy*cz;
    
//    NSLog(@"x--%f     y--%f    z--%f     w--%f",x,y,z,w);
    
    GLKMatrix4 ret;
    float xx = x*x;
    float yy = y*y;
    float zz = z*z;
    float xy = x*y;
    float wz = w*z;
    float wy = w*y;
    float xz = x*z;
    float yz = y*z;
    float wx = w*x;
    
    ret.m00 = 1.0f-2*(yy+zz);
    ret.m01 = 2*(xy-wz);
    ret.m02 = 2*(wy+xz);
    ret.m03 = 0.0f;
    
    ret.m10 = 2*(xy+wz);
    ret.m11 = 1.0f-2*(xx+zz);
    ret.m12 = 2*(yz-wx);
    ret.m13 = 0.0f;
    
    ret.m20 = 2*(xy-wy);
    ret.m21 = 2*(yz+wx);
    ret.m22 = 1.0f-2*(xx+yy);
    ret.m23 = 0.0f;
    
    ret.m30 = 0.0f;
    ret.m31 = 0.0f;
    ret.m32 = 0.0f;
    ret.m33 = 1.0f;
    
    return ret;
}
@end
