//
//  UITableView+DPAdditions.h
//  DPAdditions
//
//  Created by Eric D. Baker on 11/11/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import UIKit;

/**
 A block to execute when tintColorDidChange is received.
 */
typedef void(^DPTintColorDidChangeBlock)(UITableView *tableView);

/**
 Additional UITableView support and convenience methods.
 */
@interface UITableView (DPAdditions)

/**
 Returns or sets a block to execute whenever the table view receives a
 tintColorDidChange message.
 */
@property (copy, nonatomic, setter = set_dp_tintColorDidChangeBlock:) DPTintColorDidChangeBlock dp_tintColorDidChangeBlock;

/**
 Returns the default block implementation for the dp_tintColorDidChangeBlock
 property. This implementation is not active unless it is implicitly set to the
 property.
 */
+ (DPTintColorDidChangeBlock)defaultDPTintColorDidChangeBlock;

@end
