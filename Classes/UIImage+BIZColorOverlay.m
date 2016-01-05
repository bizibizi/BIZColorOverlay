//
//  UIImage+BIZColorOverlay.m
//  BIZColorOverlay
//
//  Created by IgorBizi@mail.ru on 12/9/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import "UIImage+BIZColorOverlay.h"


@implementation UIImage (BIZColorOverlay)


- (UIImage *)imageWithColorOverlay:(UIColor *)color
{
    //create context
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGRect rect = CGRectMake(0.0, 0.0, self.size.width, self.size.height);
    
    [self drawInRect:rect];
    
    //fg
    CGContextSetBlendMode(context, kCGBlendModeMultiply);
    
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    
    //mask
    [self drawInRect:rect blendMode:kCGBlendModeDestinationIn alpha:1.0];
    
    //end
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (UIImage *)removeOverlay
{
    return [self imageWithColorOverlay:[UIColor whiteColor]];
}


@end
