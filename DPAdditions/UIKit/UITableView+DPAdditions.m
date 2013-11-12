//
//  UITableView+DPAdditions.m
//  DPAdditions
//
//  Created by Eric D. Baker on 11/11/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import <objc/runtime.h>
#import "UITableView+DPAdditions.h"

static const void *DPTintColorDidChangeBlockKey = &DPTintColorDidChangeBlockKey;

@implementation UITableView (DPAdditions)

- (DPTintColorDidChangeBlock)dp_tintColorDidChangeBlock {
    return objc_getAssociatedObject(self, DPTintColorDidChangeBlockKey);
}

- (void)set_dp_tintColorDidChangeBlock:(DPTintColorDidChangeBlock)dp_tintColorDidChangeBlock {
    objc_setAssociatedObject(self, DPTintColorDidChangeBlockKey, dp_tintColorDidChangeBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void)tintColorDidChange {
    DPTintColorDidChangeBlock block = [self dp_tintColorDidChangeBlock];
    if (block) {
        block(self);
    }
}

+ (DPTintColorDidChangeBlock)defaultDPTintColorDidChangeBlock {
    return ^(UITableView *tableView) {
        [tableView reloadRowsAtIndexPaths:tableView.indexPathsForVisibleRows withRowAnimation:UITableViewRowAnimationNone];
    };
}

@end
