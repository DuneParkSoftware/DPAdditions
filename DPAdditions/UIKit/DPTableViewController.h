//
//  DPTableViewController.h
//  DPAdditions
//
//  Created by Eric D. Baker on 11/19/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import UIKit;

@interface DPTableViewController : UITableViewController

- (void)dp_viewWillAppearFirstTime:(BOOL)firstTime animated:(BOOL)animated;
- (void)dp_viewDidAppearFirstTime:(BOOL)firstTime animated:(BOOL)animated;

@end
