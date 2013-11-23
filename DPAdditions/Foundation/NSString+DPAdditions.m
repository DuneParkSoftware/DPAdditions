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

- (NSArray *)dp_rangesOfString:(NSString *)aString {
    return [self dp_rangesOfString:aString caseInsensitive:NO];
}

- (NSArray *)dp_rangesOfString:(NSString *)aString caseInsensitive:(BOOL)caseInsensitive {
    NSArray *ranges = [NSArray array];
    NSInteger length = [self length];
    NSRange range = NSMakeRange(0, length);
    while (range.location != NSNotFound) {
        range = [self rangeOfString:aString options:(caseInsensitive ? NSCaseInsensitiveSearch : 0) range:range];
        if (range.location != NSNotFound) {
            ranges = [ranges arrayByAddingObject:[NSValue valueWithRange:range]];
            range = NSMakeRange(range.location + range.length, length - (range.location + range.length));
        }
    }
    return ranges;
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
