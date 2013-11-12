//
//  UITextField+DPRACAdditions.h
//  DPAdditions
//
//  Created by Eric D. Baker on 11/10/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import UIKit;

@class RACChannelTerminal;

@interface UITextField (DPRACAdditions)

- (void)dp_racTwoWayBindWith:(RACChannelTerminal *)terminal;

@end
