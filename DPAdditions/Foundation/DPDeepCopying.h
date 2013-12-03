//
//  DPDeepCopying.h
//  DPAdditions
//
//  Created by Eric D. Baker on 12/3/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import Foundation;

@protocol DPDeepCopying <NSObject>

@required
- (instancetype)dp_deepCopyWithZone:(NSZone *)zone;

@optional
- (instancetype)dp_deepCopy;

@end
