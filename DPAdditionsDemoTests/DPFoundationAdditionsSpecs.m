//
//  DPFoundationAdditionsSpecs.m
//  DPAdditionsDemo
//
//  Created by Eric D. Baker on 11/8/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import XCTest;
#import "Kiwi.h"

#import "NSString+DPAdditions.h"

SPEC_BEGIN(DPFoundationAdditionsSpecs)

describe(@"Foundation Additions", ^{

    describe(@"NSString", ^{
        __block NSString *testString;
        __block NSString *blankString;
        __block NSString *emptyString;

        beforeEach(^{
            testString = @"   foo bar   ";
            blankString = @"   ";
            emptyString = @"";
        });

        it(@"should detect blank and empty strings", ^{
            [[@([testString dp_isBlank]) should] beNo];
            [[@([testString dp_isEmpty]) should] beNo];

            [[@([blankString dp_isBlank]) should] beYes];
            [[@([blankString dp_isEmpty]) should] beNo];

            [[@([emptyString dp_isBlank]) should] beYes];
            [[@([emptyString dp_isEmpty]) should] beYes];
        });

        it(@"should know the length if trimmed, without actually trimming", ^{
            [[@([testString dp_lengthWhenTrimmed]) should] equal:@7];
            [[testString should] equal:@"   foo bar   "];
        });

        it(@"should trim", ^{
            [[[testString dp_trim] should] equal:@"foo bar"];
        });

    });
});

SPEC_END
