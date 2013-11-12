//
//  NSString+DPAdditions.m
//  DPAdditions
//
//  Created by Eric D. Baker on 11/7/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "NSString+DPAdditions.h"

@implementation NSString (DPAdditions)

- (BOOL)dp_isBlank {
    return [self dp_lengthWhenTrimmed] < 1;
}

- (BOOL)dp_isEmpty {
    return [self length] < 1;
}

- (NSUInteger)dp_lengthWhenTrimmed {
    return [[[self copy] dp_trim] length];
}

- (NSString *)dp_trim {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
