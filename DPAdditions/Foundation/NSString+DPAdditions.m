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

+ (NSString *)dp_stringFromBoolValue:(NSNumber *)value {
    if (value && [value boolValue]) {
        return NSLocalizedString(@"YES", @"YES");
    }
    return NSLocalizedString(@"NO", @"NO");
}

+ (BOOL)dp_boolFromString:(NSString *)string {
    BOOL value = NO;

    string = [[string dp_trim] lowercaseString];
    if ([string length] > 0) {
        if ([string isEqualToString:@"true"] || [string isEqualToString:@"t"] ||
            [string isEqualToString:@"yes"] || [string isEqualToString:@"y"] ||
            [string isEqualToString:@"on"] || [string isEqualToString:@"1"] || [string isEqualToString:@"+"]) {
            value = YES;
        }
    }

    return value;
}

@end

NSString *NSStringFromBoolValue(NSNumber *value) {
    return [NSString dp_stringFromBoolValue:value];
}

BOOL BoolFromNSString(NSString *string) {
    return [NSString dp_boolFromString:string];
}
