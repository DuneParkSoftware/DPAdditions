//
//  UIBarButtonItem+DPAdditions.m
//  DPAdditionsDemo
//
//  Created by Eric D. Baker on 11/7/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "UIBarButtonItem+DPAdditions.h"

@implementation UIBarButtonItem (DPAdditions)

+ (UIBarButtonItem *)fixedSpaceItem {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
}

+ (UIBarButtonItem *)flexibleSpaceItem {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
}

@end
