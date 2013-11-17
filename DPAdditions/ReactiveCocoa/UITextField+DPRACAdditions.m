//
//  UITextField+DPRACAdditions.m
//  DPAdditions
//
//  Created by Eric D. Baker on 11/10/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa.h>
#import "UITextField+DPRACAdditions.h"

@implementation UITextField (DPRACAdditions)

- (void)dp_racTwoWayBindWith:(RACChannelTerminal *)terminal {
    RACChannelTerminal *fieldTerminal = [self rac_newTextChannel];
    [terminal subscribe:fieldTerminal];
    [fieldTerminal subscribe:terminal];
}

@end
