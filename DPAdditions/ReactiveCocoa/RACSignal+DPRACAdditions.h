//
//  RACSignal+DPRACAdditions.h
//  DPAdditions
//
//  Created by Eric D. Baker on 10/29/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "RACSignal.h"

@interface RACSignal (DPRACAdditions)

- (RACSignal *)dp_doErrorOrCompleted:(void (^)(NSError *error, BOOL completed))errorOrCompletedBlock;
- (RACSignal *)dp_doNext:(void (^)(id))nextBlock errorOrCompleted:(void (^)(NSError *error, BOOL completed))errorOrCompletedBlock;
- (RACSignal *)dp_doNext:(void (^)(id))nextBlock error:(void (^)(NSError *error))errorBlock completed:(void (^)())completedBlock;

- (RACDisposable *)dp_subscribeErrorOrCompleted:(void (^)(NSError *error, BOOL completed))errorOrCompletedBlock;
- (RACDisposable *)dp_subscribeNext:(void (^)(id x))nextBlock errorOrCompleted:(void (^)(NSError *error, BOOL completed))errorOrCompletedBlock;

@end
