//
//  DPNavigationController.m
//  DPAdditions
//
//  Created by Eric D. Baker on 11/19/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "DPNavigationController.h"

@implementation DPNavigationController {
    BOOL _dp_viewWillAppearFirstTime;
    BOOL _dp_viewDidAppearFirstTime;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _dp_viewWillAppearFirstTime = YES;
    _dp_viewDidAppearFirstTime = YES;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self dp_viewWillAppearFirstTime:_dp_viewWillAppearFirstTime animated:animated];

    if (_dp_viewWillAppearFirstTime) {
        _dp_viewWillAppearFirstTime = NO;
    }
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    [self dp_viewDidAppearFirstTime:_dp_viewDidAppearFirstTime animated:animated];

    if (_dp_viewDidAppearFirstTime) {
        _dp_viewDidAppearFirstTime = NO;
    }
}

- (void)dp_viewWillAppearFirstTime:(BOOL)firstTime animated:(BOOL)animated {
}

- (void)dp_viewDidAppearFirstTime:(BOOL)firstTime animated:(BOOL)animated {
}

@end
