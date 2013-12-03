//
//  MTLModel+DPAdditions.m
//  DPAdditions
//
//  Created by Eric D. Baker on 12/3/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "MTLModel+DPAdditions.h"

@implementation MTLModel (DPAdditions)

#pragma mark - DPDeepCopying

- (instancetype)dp_deepCopyWithZone:(NSZone *)zone {
    NSMutableDictionary *copyDict = [NSMutableDictionary dictionary];

    [self.dictionaryValue enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        id objCopy = nil;
        if ([obj conformsToProtocol:@protocol(DPDeepCopying)]) {
            objCopy = [obj dp_deepCopyWithZone:zone];
        } else if ([obj conformsToProtocol:@protocol(NSCopying)]) {
            objCopy = [obj copyWithZone:zone];
        } else {
            objCopy = obj;
        }

        if (objCopy != nil) {
            copyDict[key] = objCopy;
        }
    }];

    return [[self.class allocWithZone:zone] initWithDictionary:[copyDict copyWithZone:zone] error:NULL];
}

- (instancetype)dp_deepCopy {
    return [self dp_deepCopyWithZone:nil];
}

@end
