//
//  UINavigationController+DPAdditions.m
//  DPAdditions
//
//  Created by Eric D. Baker on 11/18/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "UINavigationController+DPAdditions.h"

@implementation UINavigationController (DPAdditions)

- (BOOL)isPresentingViewControllerOfClass:(Class)viewControllerClass {
    return [self.visibleViewController isKindOfClass:viewControllerClass];
}

- (BOOL)popToViewControllerOfClass:(Class)viewControllerClass animated:(BOOL)animated {
    if ([self isPresentingViewControllerOfClass:viewControllerClass]) return YES;

    NSArray *viewControllers = [self.viewControllers filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings) {
        return [evaluatedObject isKindOfClass:viewControllerClass];
    }]];

    if ([viewControllers count] > 0) {
        [self popToViewController:[viewControllers lastObject] animated:animated];
        return YES;
    }

    return NO;
}

@end
