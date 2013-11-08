//
//  NSString+DPAdditions.m
//  DPAdditionsDemo
//
//  Created by Eric D. Baker on 11/7/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "NSString+DPAdditions.h"

@implementation NSString (DPAdditions)

- (BOOL)isBlank {
    return [self lengthWhenTrimmed] < 1;
}

- (BOOL)isEmpty {
    return [self length] < 1;
}

- (NSUInteger)lengthWhenTrimmed {
    return [[[self copy] trim] length];
}

- (NSString *)trim {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
