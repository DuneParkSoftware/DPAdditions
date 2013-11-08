//
//  NSString+DPAdditions.h
//  DPAdditionsDemo
//
//  Created by Eric D. Baker on 11/7/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import Foundation;

@interface NSString (DPAdditions)

- (BOOL)isBlank;
- (BOOL)isEmpty;

- (NSUInteger)lengthWhenTrimmed;

- (NSString *)trim;

@end
