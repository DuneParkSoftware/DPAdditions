//
//  DPUIKitAdditionsSpecs.m
//  DPAdditions
//
//  Created by Eric D. Baker on 11/8/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

@import XCTest;
#import "Kiwi.h"

#import "UIKit+DPAdditions.h"

SPEC_BEGIN(DPUIKitAdditionsSpecs)

describe(@"UIKit Additions", ^{

    describe(@"UIBarButtonItem", ^{

        it(@"should init fixed space items", ^{
            id item = [UIBarButtonItem dp_fixedSpaceItem];
            [item shouldNotBeNil];
            [[item should] beKindOfClass:[UIBarButtonItem class]];

            UIBarButtonItem *btnItem = (UIBarButtonItem *)item;
            [[btnItem target] shouldBeNil];
            [[@([btnItem action] == nil) should] beYes];
        });

        it(@"should init flexible space items", ^{
            id item = [UIBarButtonItem dp_flexibleSpaceItem];
            [item shouldNotBeNil];
            [[item should] beKindOfClass:[UIBarButtonItem class]];

            UIBarButtonItem *btnItem = (UIBarButtonItem *)item;
            [[btnItem target] shouldBeNil];
            [[@([btnItem action] == nil) should] beYes];
        });
});

});

SPEC_END
