//
//  UITabBar+DPAdditions.m
//  DPAdditionsDemo
//
//  Created by Eric D. Baker on 11/16/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "UITabBar+DPAdditions.h"

@implementation UITabBar (DPAdditions)

- (BOOL)tabItemsAreEnabled {
    __block BOOL enabled = YES;
    [self.items enumerateObjectsUsingBlock:^(UITabBarItem *item, NSUInteger idx, BOOL *stop) {
        enabled = [item isEnabled];
        *stop = !enabled;
    }];
    return enabled;
}

- (void)setTabItemsEnabled:(BOOL)enabled {
    [self.items enumerateObjectsUsingBlock:^(UITabBarItem *item, NSUInteger idx, BOOL *stop) {
        if (![item isEnabled]) {
            [item setEnabled:NO];
        }
    }];
}

@end
