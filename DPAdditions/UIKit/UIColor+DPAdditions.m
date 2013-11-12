//
//  UIColor+DPAdditions.m
//  DPAdditions
//
//  Created by Eric D. Baker on 11/9/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "UIColor+DPAdditions.h"

@implementation UIColor (DPAdditions)

- (UIColor *)colorWithBrightnessComponent:(CGFloat)brightnessComponent {
    CGFloat hue, saturation, brightness, alpha;
    UIColor *color = nil;
    if ([self getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha]) {
        color = [UIColor colorWithHue:hue saturation:saturation brightness:brightnessComponent alpha:alpha];
    }
    return color;
}

@end
