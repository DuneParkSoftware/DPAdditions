//
//  RACSignal+DPAdditions.m
//  DPAdditions
//
//  Created by Eric D. Baker on 10/29/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import <ReactiveCocoa/ReactiveCocoa.h>
#import "RACSignal+DPAdditions.h"

@implementation RACSignal (DPAdditions)

- (RACSignal *)dp_doErrorOrCompleted:(void (^)(NSError *error, BOOL completed))errorOrCompletedBlock {
    return [[self doError:^(NSError *error) {
        errorOrCompletedBlock(error, NO);
    }] doCompleted:^{
        errorOrCompletedBlock(nil, YES);
    }];
}

- (RACSignal *)dp_doNext:(void (^)(id))nextBlock errorOrCompleted:(void (^)(NSError *error, BOOL completed))errorOrCompletedBlock {
    return [[[self doNext:^(id x) {
        nextBlock(x);
    }] doError:^(NSError *error) {
        errorOrCompletedBlock(error, NO);
    }] doCompleted:^{
        errorOrCompletedBlock(nil, YES);
    }];
}

- (RACSignal *)dp_doNext:(void (^)(id))nextBlock error:(void (^)(NSError *))errorBlock completed:(void (^)())completedBlock {
    return [[[self doNext:^(id x) {
        nextBlock(x);
    }] doError:^(NSError *error) {
        errorBlock(error);
    }] doCompleted:^{
        completedBlock();
    }];
}

- (RACDisposable *)dp_subscribeErrorOrCompleted:(void (^)(NSError *, BOOL))errorOrCompletedBlock {
    return [self subscribeError:^(NSError *error) {
        errorOrCompletedBlock(error, NO);
    } completed:^{
        errorOrCompletedBlock(nil, YES);
    }];
}

- (RACDisposable *)dp_subscribeNext:(void (^)(id))nextBlock errorOrCompleted:(void (^)(NSError *, BOOL))errorOrCompletedBlock {
    return [self subscribeNext:^(id x) {
        nextBlock(x);
    } error:^(NSError *error) {
        errorOrCompletedBlock(error, NO);
    } completed:^{
        errorOrCompletedBlock(nil, YES);
    }];
}

@end
