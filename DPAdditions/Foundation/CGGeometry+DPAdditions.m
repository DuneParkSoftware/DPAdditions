//
//  CGGeometry+DPAdditions.m
//  DPAdditions
//
//  Created by Eric D. Baker on 11/16/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "CGGeometry+DPAdditions.h"

CGPoint CGPointCopy(CGPoint aPoint) {
    return CGPointMake(aPoint.x, aPoint.y);
}

CGRect CGRectCopy(CGRect aRect) {
    return CGRectMake(aRect.origin.x, aRect.origin.y, aRect.size.width, aRect.size.height);
}

CGSize CGSizeCopy(CGSize aSize) {
    return CGSizeMake(aSize.width, aSize.height);
}
