//
//  NSUserDefaults+DPAdditions.m
//  DPAdditions
//
//  Created by Eric D. Baker on 11/12/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "NSUserDefaults+DPAdditions.h"

@implementation NSUserDefaults (DPAdditions)

- (NSString *)stringForKey:(NSString *)key defaultValue:(NSString *)defaultValue {
    id value = [self objectForKey:key];
    if (!value) return defaultValue;
    return value;
}

@end
