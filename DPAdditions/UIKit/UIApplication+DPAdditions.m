//
//  UIApplication+DPAdditions.m
//  DPAdditionsDemo
//
//  Created by Eric D. Baker on 11/8/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "UIApplication+DPAdditions.h"

@implementation UIApplication (DPAdditions)

+ (id<UIApplicationDelegate>)dp_delegate {
    return [[UIApplication sharedApplication] delegate];
}

@end
