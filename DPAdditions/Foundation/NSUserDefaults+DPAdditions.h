//
//  NSUserDefaults+DPAdditions.h
//  DPAdditions
//
//  Created by Eric D. Baker on 11/12/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import Foundation;

@interface NSUserDefaults (DPAdditions)

/**
 Returns the string value for the given key. If the value is nil, then the
 default value is returned.
 
 @param key The key.
 @param defaultValue The value to return if the string is nil.
 @returns The string value.
 */
- (NSString *)stringForKey:(NSString *)key defaultValue:(NSString *)defaultValue;

@end
