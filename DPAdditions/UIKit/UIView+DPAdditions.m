//
//  UIView+DPAdditions.m
//  DPAdditions
//
//  Created by Eric D. Baker on 11/19/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "UIView+DPAdditions.h"

@interface DPKeyboardStateMonitor : NSObject
+ (instancetype)sharedInstance;
@property (readonly, nonatomic) BOOL isKeyboardVisible;
@end

@implementation UIView (DPAdditions)

- (BOOL)endEditing:(BOOL)force completion:(void (^)(BOOL))completion {
    if (!completion) return [self endEditing:force];

    if (![[DPKeyboardStateMonitor sharedInstance] isKeyboardVisible]) {
        completion(YES);
        return YES;
    }

    BOOL didEndEditing = NO;
    __block id observer = [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardDidHideNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
        [[NSNotificationCenter defaultCenter] removeObserver:observer];
        completion(didEndEditing);
    }];

    didEndEditing = [self endEditing:force];
    if (!didEndEditing) {
        [[NSNotificationCenter defaultCenter] removeObserver:observer];
        completion(didEndEditing);
    }
    return didEndEditing;
}

@end

@interface DPKeyboardStateMonitor ()
@property (assign, nonatomic) BOOL isKeyboardVisible;
@end

static DPKeyboardStateMonitor *sharedInstance = nil;

@implementation DPKeyboardStateMonitor

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
}

+ (instancetype)sharedInstance {
    return sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if (!self) return nil;

    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardWillShowNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
        [[DPKeyboardStateMonitor sharedInstance] setIsKeyboardVisible:YES];
    }];

    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardDidHideNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
        [[DPKeyboardStateMonitor sharedInstance] setIsKeyboardVisible:NO];
    }];

    return self;
}

@end