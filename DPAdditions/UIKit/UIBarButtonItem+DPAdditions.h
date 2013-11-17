//
//  UIBarButtonItem+DPAdditions.h
//  DPAdditions
//
//  Created by Eric D. Baker on 11/7/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import UIKit;

@interface UIBarButtonItem (DPAdditions)

+ (UIBarButtonItem *)dp_actionItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_activityIndicatorItem;
+ (UIBarButtonItem *)dp_addItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_bookmarksItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_cameraItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_cancelItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_composeItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_doneItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_editItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_fastForwardItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_fixedSpaceItem;
+ (UIBarButtonItem *)dp_flexibleSpaceItem;
+ (UIBarButtonItem *)dp_organizeItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_pageCurlItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_pauseItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_playItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_redoItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_refreshItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_replyItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_rewindItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_saveItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_searchItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_stopItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_trashItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)dp_undoItemWithTarget:(id)target action:(SEL)action;

@end
