//
//  UIBarButtonItem+DPAdditions.m
//  DPAdditions
//
//  Created by Eric D. Baker on 11/7/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "UIBarButtonItem+DPAdditions.h"

@implementation UIBarButtonItem (DPAdditions)

+ (UIBarButtonItem *)dp_actionItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:target action:action];
}

+ (UIBarButtonItem *)dp_activityIndicatorItem {
    UIActivityIndicatorView *activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [activityIndicatorView startAnimating];
    return [[UIBarButtonItem alloc] initWithCustomView:activityIndicatorView];
}

+ (UIBarButtonItem *)dp_addItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:target action:action];
}

+ (UIBarButtonItem *)dp_bookmarksItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:target action:action];
}

+ (UIBarButtonItem *)dp_cameraItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:target action:action];
}

+ (UIBarButtonItem *)dp_cancelItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:target action:action];
}

+ (UIBarButtonItem *)dp_composeItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:target action:action];
}

+ (UIBarButtonItem *)dp_doneItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:target action:action];
}

+ (UIBarButtonItem *)dp_editItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:target action:action];
}

+ (UIBarButtonItem *)dp_fastForwardItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:target action:action];
}

+ (UIBarButtonItem *)dp_fixedSpaceItem {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
}

+ (UIBarButtonItem *)dp_flexibleSpaceItem {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
}

+ (UIBarButtonItem *)dp_itemWithCustomView:(UIView *)view {
    return [[UIBarButtonItem alloc] initWithCustomView:view];
}

+ (UIBarButtonItem *)dp_organizeItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:target action:action];
}

+ (UIBarButtonItem *)dp_pageCurlItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPageCurl target:target action:action];
}

+ (UIBarButtonItem *)dp_pauseItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPause target:target action:action];
}

+ (UIBarButtonItem *)dp_playItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:target action:action];
}

+ (UIBarButtonItem *)dp_redoItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRedo target:target action:action];
}

+ (UIBarButtonItem *)dp_refreshItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:target action:action];
}

+ (UIBarButtonItem *)dp_replyItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:target action:action];
}

+ (UIBarButtonItem *)dp_rewindItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:target action:action];
}

+ (UIBarButtonItem *)dp_saveItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:target action:action];
}

+ (UIBarButtonItem *)dp_searchItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:target action:action];
}

+ (UIBarButtonItem *)dp_stopItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:target action:action];
}

+ (UIBarButtonItem *)dp_trashItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemTrash target:target action:action];
}

+ (UIBarButtonItem *)dp_undoItemWithTarget:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemUndo target:target action:action];
}

@end
