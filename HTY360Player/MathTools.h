//
//  MathTools.h
//  HTY360Player
//
//  Created by fan on 16/1/20.
//  Copyright © 2016年 Hanton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>


@interface MathTools : NSObject

+ (GLKMatrix4)getGLKMatrix4WithCRoll:(CGFloat)cRoll cYaw:(CGFloat)cYaw cPitch:(CGFloat)cPitch;
@end
