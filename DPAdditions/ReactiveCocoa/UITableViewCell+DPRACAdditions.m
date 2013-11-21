//
//  UITableViewCell+DPRACAdditions.m
//  DPAdditionsDemo
//
//  Created by Eric D. Baker on 11/21/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "UITableViewCell+DPRACAdditions.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import <objc/runtime.h>

static const void *DPTableViewCellRACObservationsArrayKey = &DPTableViewCellRACObservationsArrayKey;

@implementation UITableViewCell (DPRACAdditions)

- (void)dp_registerRACObservation:(RACDisposable *)disposable {
    if (!disposable) return;

    __block NSMutableArray *observations = objc_getAssociatedObject(self, DPTableViewCellRACObservationsArrayKey);
    if (!observations) {
        observations = [NSMutableArray array];
        objc_setAssociatedObject(self, DPTableViewCellRACObservationsArrayKey, observations, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

        [[self rac_prepareForReuseSignal] subscribeNext:^(id x) {
            [observations enumerateObjectsUsingBlock:^(RACDisposable *obj, NSUInteger idx, BOOL *stop) {
                [obj dispose];
            }];

            [observations removeAllObjects];
            objc_setAssociatedObject(self, DPTableViewCellRACObservationsArrayKey, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
            observations = nil;
        }];
}

    if (![observations containsObject:disposable]) {
        [observations addObject:disposable];
    }
}

@end
