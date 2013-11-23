//
//  NSString+DPAdditions.h
//  DPAdditions
//
//  Created by Eric D. Baker on 11/7/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import Foundation;

@interface NSString (DPAdditions)

- (BOOL)dp_isBlank;
- (BOOL)dp_isEmpty;

- (NSUInteger)dp_lengthWhenTrimmed;
- (NSString *)dp_trim;

- (NSArray *)dp_rangesOfString:(NSString *)aString;
- (NSArray *)dp_rangesOfString:(NSString *)aString caseInsensitive:(BOOL)caseInsensitive;

+ (NSString *)dp_stringFromBoolValue:(NSNumber *)value;
+ (NSString *)dp_stringFromBOOL:(BOOL)aBool;
+ (BOOL)dp_boolFromString:(NSString *)string;

@end

extern NSString *NSStringFromBoolValue(NSNumber *value);
extern NSString *NSStringFromBOOL(BOOL aBool);
extern BOOL BoolFromNSString(NSString *string);
