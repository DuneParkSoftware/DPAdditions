//
//  AFHTTPSessionManager+DPAFAdditions.h
//  DPAdditions
//
//  Created by Eric D. Baker on 11/12/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface AFHTTPSessionManager (DPAFAdditions)

- (NSURLSessionDataTask *)GET:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))completion;
- (NSURLSessionDataTask *)HEAD:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(void (^)(NSURLSessionDataTask *task, NSError *error))completion;
- (NSURLSessionDataTask *)POST:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))completion;
- (NSURLSessionDataTask *)POST:(NSString *)URLString parameters:(NSDictionary *)parameters constructingBodyWithBlock:(void (^)(id<AFMultipartFormData>))block completion:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))completion;
- (NSURLSessionDataTask *)PUT:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))completion;
- (NSURLSessionDataTask *)PATCH:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))completion;
- (NSURLSessionDataTask *)DELETE:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(void (^)(NSURLSessionDataTask *task, id responseObject, NSError *error))completion;

@end
