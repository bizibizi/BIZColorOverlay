//
//  UIImage+BIZColorOverlay.h
//  BIZColorOverlay
//
//  Created by IgorBizi@mail.ru on 12/9/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIImage (BIZColorOverlay)
- (UIImage *)imageWithColorOverlay:(UIColor *)color;
- (UIImage *)removeOverlay;
@end
