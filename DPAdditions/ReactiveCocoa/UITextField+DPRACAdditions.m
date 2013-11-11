//
//  UITextField+DPRACAdditions.m
//  DPAdditionsDemo
//
//  Created by Eric D. Baker on 11/10/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa.h>
#import <objc/runtime.h>
#import "UITextField+DPRACAdditions.h"

static const void* DPRACTwoWayBindingSubscription1Key = &DPRACTwoWayBindingSubscription1Key;
static const void* DPRACTwoWayBindingSubscription2Key = &DPRACTwoWayBindingSubscription2Key;

@implementation UITextField (DPRACAdditions)

- (void)dp_racTwoWayBindWith:(RACChannelTerminal *)terminal {
    RACChannelTerminal *fieldTerminal = [self rac_newTextChannel];

    RACDisposable *disposable = [terminal subscribe:fieldTerminal];
    objc_setAssociatedObject(self, DPRACTwoWayBindingSubscription1Key, disposable, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

    disposable = [fieldTerminal subscribe:terminal];
    objc_setAssociatedObject(self, DPRACTwoWayBindingSubscription2Key, disposable, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)dealloc {
    RACDisposable *disposable;

    disposable = objc_getAssociatedObject(self, DPRACTwoWayBindingSubscription1Key);
    if (disposable) {
        [disposable dispose];
        disposable = nil;
        objc_setAssociatedObject(self, DPRACTwoWayBindingSubscription1Key, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }

    disposable = objc_getAssociatedObject(self, DPRACTwoWayBindingSubscription2Key);
    if (disposable) {
        [disposable dispose];
        disposable = nil;
        objc_setAssociatedObject(self, DPRACTwoWayBindingSubscription2Key, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

@end
