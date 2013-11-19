//
//  UINavigationController+DPAdditions.h
//  DPAdditions
//
//  Created by Eric D. Baker on 11/18/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import UIKit;

@interface UINavigationController (DPAdditions)

/**
 Returns whether the visible view controller kind is of the given class.
 */
- (BOOL)isPresentingViewControllerOfClass:(Class)viewControllerClass;

/**
 Searches the navigation stack of view controllers for a view controller kind of
 the given class. If one is found, then it is presented, and this method returns
 YES. Otherwise, this method returns NO. If more than one view controller of the
 given class kind is in the stack, it is undefined as to which one is presented.
 */
- (BOOL)popToViewControllerOfClass:(Class)viewControllerClass animated:(BOOL)animated;

@end
