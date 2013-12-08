//
//  UITableViewCell+DPRACAdditions.h
//  DPAdditions
//
//  Created by Eric D. Baker on 11/21/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import UIKit;

@class RACDisposable;

@interface UITableViewCell (DPRACAdditions)

- (void)dp_registerRACObservation:(RACDisposable *)disposable;
- (void)dp_registerRACObservations:(NSArray *)observations;
- (void)dp_unregisterRACObservations;

@end
