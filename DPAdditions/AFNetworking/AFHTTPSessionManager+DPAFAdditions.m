//
//  AFHTTPSessionManager+DPAFAdditions.m
//  DPAdditionsDemo
//
//  Created by Eric D. Baker on 11/12/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "AFHTTPSessionManager+DPAFAdditions.h"

@implementation AFHTTPSessionManager (DPAFAdditions)

- (NSURLSessionDataTask *)GET:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))completion {
    return [self GET:URLString parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        completion(task, responseObject, nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completion(task, nil, error);
    }];
}

- (NSURLSessionDataTask *)HEAD:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(void (^)(NSURLSessionDataTask *task, NSError *error))completion {
    return [self HEAD:URLString parameters:parameters success:^(NSURLSessionDataTask *task) {
        completion(task, nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completion(task, error);
    }];
}

- (NSURLSessionDataTask *)POST:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))completion {
    return [self POST:URLString parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        completion(task, responseObject, nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completion(task, nil, error);
    }];
}

- (NSURLSessionDataTask *)POST:(NSString *)URLString parameters:(NSDictionary *)parameters constructingBodyWithBlock:(void (^)(id<AFMultipartFormData>))block completion:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))completion {
    return [self POST:URLString parameters:parameters constructingBodyWithBlock:block success:^(NSURLSessionDataTask *task, id responseObject) {
        completion(task, responseObject, nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completion(task, nil, error);
    }];
}

- (NSURLSessionDataTask *)PUT:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))completion {
    return [self PUT:URLString parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        completion(task, responseObject, nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completion(task, nil, error);
    }];
}

- (NSURLSessionDataTask *)PATCH:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))completion {
    return [self PATCH:URLString parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        completion(task, responseObject, nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completion(task, nil, error);
    }];
};

- (NSURLSessionDataTask *)DELETE:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))completion {
    return [self DELETE:URLString parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        completion(task, responseObject, nil);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        completion(task, nil, error);
    }];
}

@end
