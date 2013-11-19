//
//  UIView+DPAdditions.h
//  DPAdditions
//
//  Created by Eric D. Baker on 11/19/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import UIKit;

@interface UIView (DPAdditions)

- (BOOL)endEditing:(BOOL)force completion:(void (^)(BOOL didEndEditing))completion;

@end
