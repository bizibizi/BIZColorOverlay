//
//  ViewController.m
//  BIZChangeImageColorProgrammaticaly
//
//  Created by IgorBizi@mail.ru on 12/9/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+BIZColorOverlay.h"


@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *imageViews;

@end

@implementation ViewController


- (IBAction)changeColorButtonAction:(UIButton *)sender
{
    NSArray *images = @[ [UIImage imageNamed:@"like"], [UIImage imageNamed:@"selected"], [UIImage imageNamed:@"star"] ];
    UIColor *color = sender.backgroundColor;
    for (UIImageView *i in self.imageViews)
    {
        UIImage *image = images[[self.imageViews indexOfObject:i]];
        i.image = [image imageWithColorOverlay:color];
    }
}

@end
